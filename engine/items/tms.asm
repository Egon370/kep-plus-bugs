; tests if mon [wcf91] can learn move [wMoveNum]
CanLearnTM:
	ld a, [wcf91]
	ld [wd0b5], a
	call GetMonHeader
	ld hl, wMonHLearnset
	push hl
	ld a, [wMoveNum]
	ld b, a
	ld c, $0
	ld hl, TechnicalMachines
.findTMloop
	ld a, [hli]
	cp b
	jr z, .TMfoundLoop
	inc c
	jr .findTMloop
.TMfoundLoop
	pop hl
	ld b, FLAG_TEST
	predef_jump FlagActionPredef

; converts TM/HM number in wPokeStorage into move number
; HMs start at 51
TMToMove:
	ld a, [wPokeStorage]
	dec a
	ld hl, TechnicalMachines
	ld b, $0
	ld c, a
	add hl, bc
	ld a, [hl]
	ld [wPokeStorage], a
	ret

INCLUDE "data/moves/tmhm_moves.asm"
