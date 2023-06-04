; This function is a debugging feature to give the player Tsunekazu Ishihara's
; favorite Pokemon. This is indicated by the overpowered Exeggutor, which
; Ishihara (president of Creatures Inc.) said was his favorite Pokemon in an ABC
; interview on February 8, 2000.
; "Exeggutor is my favorite. That's because I was always using this character
; while I was debugging the program."
; http://www.ign.com/articles/2000/02/09/abc-news-pokamon-chat-transcript

SetIshiharaTeam:
	ld de, IshiharaTeam
.loop
	ld a, [de]
	cp -1
	ret z
	ld [wcf91], a
	inc de
	ld a, [de]
	ld [wCurEnemyLVL], a
	inc de
	call AddPartyMon
	jr .loop

IshiharaTeam:
	db EXEGGUTOR_A, 90
	db MELTAN, 90
	db TRAMPEL, 90
IF DEF(_DEBUG)
	db TAUROS_PB, 90
	db SNORLAX, 50
ENDC
	db -1 ; end

DebugStart:
IF DEF(_DEBUG)
	xor a ; PLAYER_PARTY_DATA
	ld [wMonDataLocation], a
	
	; Fly anywhere.
	dec a ; $ff
	ld [wTownVisitedFlag], a
	ld [wTownVisitedFlag + 1], a
	
	; This hack was coded by transfems.
	ld a, 1
	ld [wPlayerSex], a
	
	; Test Candy Jar Evolution
	ld a, 39
	ld [wCandyJarCount], a
	
	; Get all badges except Earth Badge.
	ld a, ~(1 << BIT_EARTHBADGE)
	ld [wObtainedBadges], a

	call SetIshiharaTeam

	; Exeggutor (Pokemon 1) gets four HM moves.
	ld hl, wPartyMon1Moves
	ld a, FLY
	ld [hli], a
	ld a, CUT
	ld [hli], a
	ld a, SURF
	ld [hli], a
	ld a, STRENGTH
	ld [hl], a
	ld hl, wPartyMon1PP
	ld a, 15
	ld [hli], a
	ld a, 30
	ld [hli], a
	ld a, 15
	ld [hli], a
	ld [hl], a

	; Jolteon (Pokemon 3) gets Thunderbolt.
	; Adjusted for Trampel
	ld hl, wPartyMon3Moves + 3
	ld a, EARTHQUAKE
	ld [hl], a
	ld hl, wPartyMon3PP + 3
	ld a, 15
	ld [hl], a
	
	; Blaze Tauros (Pokemon 4) has a full moveset
	ld hl, wPartyMon4Moves
	ld a, FIRE_BLAST
	ld [hli], a
	ld a, LOW_KICK
	ld [hli], a
	ld a, FIRE_SPIN
	ld [hli], a
	ld a, HYPER_BEAM
	ld [hl], a
	ld hl, wPartyMon1PP
	ld a, 99
	ld [hli], a
	ld a, 99
	ld [hli], a
	ld a, 99
	ld [hli], a
	ld [hl], a
	
	; Articuno (Pokemon 5) gets Fly.
	ld hl, wPartyMon5Moves
	ld a, FLY
	ld [hl], a
	ld hl, wPartyMon5PP
	ld a, 15
	ld [hl], a

	; Kadabra (Pokemon 6) gets Flash and Teleport
	ld hl, wPartyMon6Moves + 2
	ld a, FLASH
	ld [hl], a
	ld hl, wPartyMon6PP + 2
	ld a, 15
	ld [hl], a
	ld a, TELEPORT
	ld [hl], a

	; Get some debug items.
	ld hl, wNumBagItems
	ld de, DebugItemsList
.items_loop
	ld a, [de]
	cp -1
	jr z, .items_end
	ld [wcf91], a
	inc de
	ld a, [de]
	inc de
	ld [wItemQuantity], a
	call AddItemToInventory
	jr .items_loop
.items_end

	; Complete the Pokédex.
	ld hl, wPokedexOwned
	call DebugSetPokedexEntries
	ld hl, wPokedexSeen
	call DebugSetPokedexEntries
	SetEvent EVENT_GOT_POKEDEX

	; Rival chose Squirtle,
	; Player chose Charmander.
	ld hl, wRivalStarter
	ld a, STARTER2
	ld [hli], a
	inc hl ; hl = wPlayerStarter
	ld a, STARTER1
	ld [hl], a

	ret

DebugSetPokedexEntries:
	ld b, wPokedexOwnedEnd - wPokedexOwned
	ld a, %11111111
.loop
	ld [hli], a
	dec b
	jr nz, .loop
	ld [hl], %01111111
	ret

DebugItemsList:
	db POKE_BALL, 99
	db MYSTERY_BOX, 1
	db CANDY_JAR, 1
	db BICYCLE, 1
	db FULL_RESTORE, 99
	db MAX_REPEL, 99
	db RARE_CANDY, 99
	db MASTER_BALL, 99
	db ULTRA_BALL, 99
	db SECRET_KEY, 1
	db CARD_KEY, 1
	db S_S_TICKET, 1
	db CITRINE_PASS, 1
	db SUPER_ROD, 1
	db COIN_CASE, 1
	db POKE_FLUTE, 1
	db SILPH_SCOPE, 1
	db OLD_SEA_MAP, 1
	db UP_GRADE, 1
	db TM_MEGA_PUNCH, 1
	db HM_SURF, 1
	db METAL_COAT, 99
	db BLK_AUGURITE, 99
	db BOTTLE_CAP, 99
	db -1 ; end

DebugUnusedList:
	db -1 ; end
ELSE
	ret
ENDC
