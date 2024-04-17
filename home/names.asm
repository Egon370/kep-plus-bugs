GetMonName::
	push hl
	ldh a, [hLoadedROMBank]
	push af
	ld a, BANK(MonsterNames)
	ldh [hLoadedROMBank], a
	ld [MBC1RomBank], a
	ld a, [wPokeStorage]
	dec a
	ld hl, MonsterNames
	ld c, 10
	ld b, 0
	call AddNTimes
	ld de, wcd6d
	push de
	ld bc, 10
	call CopyData
	ld hl, wcd6d + 10
	ld [hl], "@"
	pop de
	pop af
	ldh [hLoadedROMBank], a
	ld [MBC1RomBank], a
	pop hl
	ret

GetItemName::
; given an item ID at [wPokeStorage], store the name of the item into a string
;     starting at wcd6d
	push hl
	push bc
	
	;If you are going to make GetName check for wNameListType=ITEM_NAME, 
	;then you have to make sure wNameListType get the proper value here. 
	;Otherwise the game can crash when trying to learn TMHM items one after the other.
	;Specifically if only TMHM items are in the current list view. - jojo
	ld a, ITEM_NAME
	ld [wNameListType], a
	
	ld a, [wPokeStorage]
	cp HM01 ; is this a TM/HM?
	jr nc, .Machine

	ld [wd0b5], a
	ld a, ITEM_NAME
	ld [wNameListType], a
	ld a, BANK(ItemNames)
	ld [wPredefBank], a
	call GetName
	jr .Finish

.Machine
	call GetMachineName
.Finish
	ld de, wcd6d ; pointer to where item name is stored in RAM
	pop bc
	pop hl
	ret

GetMachineName::
; copies the name of the TM/HM in [wPokeStorage] to wcd6d
	push hl
	push de
	push bc
	ld a, [wPokeStorage]
	push af
	cp TM01 ; is this a TM? [not HM]
	jr nc, .WriteTM
; if HM, then write "HM" and add NUM_HMS to the item ID, so we can reuse the
; TM printing code
	add NUM_HMS
	ld [wPokeStorage], a
	ld hl, HiddenPrefix ; points to "HM"
	ld bc, 2
	jr .WriteMachinePrefix
.WriteTM
	ld hl, TechnicalPrefix ; points to "TM"
	ld bc, 2
.WriteMachinePrefix
	ld de, wcd6d
	call CopyData

; now get the machine number and convert it to text
	ld a, [wPokeStorage]
	sub TM01 - 1
	ld b, "0"
.FirstDigit
	sub 10
	jr c, .SecondDigit
	inc b
	jr .FirstDigit
.SecondDigit
	add 10
	push af
	ld a, b
	ld [de], a
	inc de
	pop af
	ld b, "0"
	add b
	ld [de], a
	inc de
	ld a, "@"
	ld [de], a
	pop af
	ld [wPokeStorage], a
	pop bc
	pop de
	pop hl
	ret

TechnicalPrefix::
	db "TM"
HiddenPrefix::
	db "HM"

; sets carry if item is HM, clears carry if item is not HM
; Input: a = item ID
IsItemHM::
	cp HM01
	jr c, .notHM
	cp TM01
	ret
.notHM
	and a
	ret

; sets carry if move is an HM, clears carry if move is not an HM
; Input: a = move ID
IsMoveHM::
	ld hl, HMMoves
	ld de, 1
	jp IsInArray

HMMoves::
INCLUDE "data/moves/hm_moves.asm"

GetMoveName::
	push hl
	ld a, MOVE_NAME
	ld [wNameListType], a
	ld a, [wPokeStorage]
	ld [wd0b5], a
	ld a, BANK(MoveNames)
	ld [wPredefBank], a
	call GetName
	ld de, wcd6d ; pointer to where move name is stored in RAM
	pop hl
	ret
