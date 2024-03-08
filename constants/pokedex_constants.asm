; pokedex ids
; indexes for:
; - BaseStats (see data/pokemon/base_stats.asm)
; - MonPartyData (see data/pokemon/menu_icons.asm)
; - MonsterPalettes (see data/pokemon/palettes.asm)
	const_def 1
	const DEX_BULBASAUR  ; 1	(001)	- Starter Pokemon
	const DEX_IVYSAUR    ; 2	(002)
	const DEX_VENUSAUR   ; 3	(003)
	const DEX_CHARMANDER ; 4	(004)
	const DEX_CHARMELEON ; 5	(005)
	const DEX_CHARIZARD  ; 6	(006)
	const DEX_SQUIRTLE   ; 7	(007)
	const DEX_WARTORTLE  ; 8	(008)
	const DEX_TOTARTLE   ;		(009)
	const DEX_PIKACHU    ; 25	(010)
	const DEX_RAICHU     ; 26	(011)
	const DEX_RAICHU_A   ;		(012)
	const DEX_GOROCHU    ;   	(013)
	const DEX_EEVEE      ; 133	(014)
	const DEX_VAPOREON   ; 134	(015)
	const DEX_JOLTEON    ; 135	(016)
	const DEX_FLAREON    ; 136	(017)
	const DEX_ESPEON     ;		(018)
	const DEX_UMBREON    ;		(019)
	const DEX_LEAFEON    ;		(020)
	const DEX_GLACEON    ;		(021)
	const DEX_SYLVEON    ;		(022)
	const DEX_RATTATA    ; 19	(023)	- Route 1 to Pewter City
	const DEX_RATICATE   ; 20	(024)
	const DEX_RATICATE_A ;		(025)
	const DEX_PIDGEY     ; 16	(026)
	const DEX_PIDGEOTTO  ; 17	(027)
	const DEX_PIDGEOT    ; 18	(028)
	const DEX_COINPUR    ;		(029)
	const DEX_MEOWTH     ; 52	(030)
	const DEX_PERSIAN    ; 53	(031)
	const DEX_PERSIAN_A  ;		(032)
	const DEX_PERRSERKER ;		(033)
	const DEX_CATERPIE   ; 10	(034)
	const DEX_METAPOD    ; 11	(035)
	const DEX_BUTTERFREE ; 12	(036)
	const DEX_WEEDLE     ; 13	(037)
	const DEX_KAKUNA     ; 14	(038)
	const DEX_BEEDRILL   ; 15	(039)
	const DEX_GENTLARVA  ; 		(040)
	const DEX_PUPAL      ; 		(041)
	const DEX_CARAPTHOR  ; 		(042)
	const DEX_KOTORA     ;		(043)
	const DEX_GAOTORA    ;		(044)
	const DEX_GOROTORA   ;		(045)
	const DEX_SPEAROW    ; 21	(046)	- Route 3 + Mt. Moon
	const DEX_FEAROW     ; 22	(047)
	const DEX_NIDORAN_F  ; 29	(048)
	const DEX_NIDORINA   ; 30	(049)
	const DEX_NIDOQUEEN  ; 31	(050)
	const DEX_NIDORAN_M  ; 32	(051)
	const DEX_NIDORINO   ; 33	(052)
	const DEX_NIDOKING   ; 34	(053)
	const DEX_NIDOREIGN  ;		(054)
	const DEX_BITTYBAT   ; 41	(055)
	const DEX_ZUBAT      ; 41	(056)
	const DEX_GOLBAT     ; 42	(057)
	const DEX_CROBAT     ;		(058)
	const DEX_GEODUDE    ; 74	(059)
	const DEX_GRAVELER   ; 75	(060)
	const DEX_GOLEM      ; 76	(061)
	const DEX_GOLEM_A    ;		(062)
	const DEX_PARAS      ; 46	(063)
	const DEX_PARASECT   ; 47	(064)
	const DEX_CLEFAIRY   ; 35	(065)
	const DEX_CLEFABLE   ; 36	(066)
	const DEX_JIGGLYPUFF ; 39	(067)
	const DEX_WIGGLYTUFF ; 40	(068)
	const DEX_SANDSHREW  ; 27	(069)
	const DEX_SANDSLASH  ; 28	(070)
	const DEX_SANDSLASH_A ;		(071)
	const DEX_EKANS      ; 23	(072)  	- Route 4 to Cerulean City
	const DEX_ARBOK      ; 24	(073)
	const DEX_VULPIII    ;		(074)
	const DEX_VULPIX     ; 37	(075)
	const DEX_NINETALES  ; 38	(076)
	const DEX_NINETALES_A ; 	(077)	
	const DEX_MANKEY     ; 56	(078)
	const DEX_PRIMEAPE   ; 57	(079)
	const DEX_ANNIHILAPE ;		(080)
	const DEX_ODDISH     ; 43	(081)	- Route 24 + Route 25 + Fishing Rod 1
	const DEX_GLOOM      ; 44	(082)
	const DEX_VILEPLUME  ; 45	(083)
	const DEX_BELLOSSOM  ;		(084)
	const DEX_BELLSPROUT ; 69	(085)
	const DEX_WEEPINBELL ; 70	(086)
	const DEX_VICTREEBEL ; 71	(087)
	const DEX_BELLIGNAN  ;		(088)
	const DEX_MAGIKARP   ; 129	(089)
	const DEX_GYARADOS   ; 130	(090)
	const DEX_ORFRY      ;		(091)
	const DEX_GOLDEEN    ; 118	(092)
	const DEX_SEAKING    ; 119	(093)
	const DEX_VENONAT    ; 48	(094)
	const DEX_VENOMOTH   ; 49	(095)
	const DEX_PSYDUCK    ; 54	(096)
	const DEX_WEIRDUCK   ;		(097)
	const DEX_GOLDUCK    ; 55	(098)
	const DEX_POLIWAG    ; 60	(099)
	const DEX_POLIWHIRL  ; 61	(100)
	const DEX_POLIWRATH  ; 62	(101)
	const DEX_POLITOED   ;		(102)
	const DEX_ABRA       ; 63	(103)
	const DEX_KADABRA    ; 64	(104)
	const DEX_ALAKAZAM   ; 65	(105)
	const DEX_CHEEP      ;		(106)
	const DEX_JABETTA    ;		(107)
	const DEX_LICKITUNG  ; 108	(108)	(There's a reason we're keeping Lickitung's number.)
	const DEX_LICKILICKY ;		(109)
	const DEX_GROWLITHE  ; 58	(110)	- Route 6 - Route 11
	const DEX_ARCANINE   ; 59	(111)
	const DEX_ARCANINE_H ; 		(112)
	const DEX_FARFETCHD  ; 83 	(113)
	const DEX_LUXWAN     ;		(114)
	const DEX_SIRFETCHD  ;		(115)
	const DEX_DROWZEE    ; 96	(116)
	const DEX_HYPNO      ; 97	(117)
	const DEX_MAGNEMITE  ; 81	(118)
	const DEX_MAGNETITE  ;		(119)
	const DEX_MAGNETON   ; 82	(120)
	const DEX_MAGNEZONE  ;		(121)
	const DEX_DIGLETT    ; 50	(122)
	const DEX_DUGTRIO    ; 51	(123)
	const DEX_DUGTRIO_A  ;		(124)
	const DEX_WIGLETT    ;		(125)
	const DEX_WUGTRIO    ;		(126)
	const DEX_ONIX       ; 95	(127)
	const DEX_STEELIX    ;		(128)
	const DEX_VOLTORB    ; 100	(129)	- Route 10 - Rock Tunnel + Fishing Rod 2
	const DEX_ELECTRODE  ; 101	(130)
	const DEX_ELECTRODE_H ;		(131)
	const DEX_TENTACOOL  ; 72	(132)
	const DEX_TENTACRUEL ; 73	(133)
	const DEX_TOEDSCOOL  ;		(134)
	const DEX_TOEDSCRUEL ;		(135)
	const DEX_BLOTTLE    ;		(136)
	const DEX_PENDRAKEN  ;		(137)
	const DEX_RIBBITO    ;		(138)
	const DEX_CROAKOZUNA ;		(139)
	const DEX_MACHOP     ; 66	(140)
	const DEX_MACHOKE    ; 67	(141)
	const DEX_MACHAMP    ; 68	(142)
	const DEX_KRABBY     ; 98	(143)
	const DEX_KINGLER    ; 99	(144)
	const DEX_SLOWPOKE   ; 79	(145)
	const DEX_SLOWBRO    ; 80	(146)
	const DEX_SLOWBRO_G  ;  	(147)
	const DEX_SLOWKING   ;		(148)
	const DEX_SLOWKING_G ;		(149)
	const DEX_GAVILLAIN  ;		(150)
	const DEX_KOLTA      ;		(151)	- Route 7 + Route 8
	const DEX_PONYTA     ; 77	(152)
	const DEX_RAPIDASH   ; 78	(153)
	const DEX_RAPIDASH_G ;		(154)
	const DEX_GASTLY     ; 92	(155)	- Lavender Tower
	const DEX_HAUNTER    ; 93	(156)
	const DEX_GENGAR     ; 94	(157)
	const DEX_CUBONE     ; 104	(158)
	const DEX_MAROWAK    ; 105	(159)
	const DEX_MAROWAK_A  ;		(160)
	const DEX_GUARDIA    ;		(161)
	const DEX_BALUMBA    ;		(162)
	const DEX_DODUO      ; 84	(163)	- Route 16 - 19
	const DEX_DODRIO     ; 85 	(164)
	const DEX_GRIMER     ; 88	(165)
	const DEX_MUK        ; 89	(166)
	const DEX_MUK_A      ;		(167)
	const DEX_KOFFING    ; 109	(168)
	const DEX_WEEZING    ; 110	(169)
	const DEX_WEEZING_G  ;  	(170)
	const DEX_TANGELA    ; 114 	(171)
	const DEX_TANGROWTH  ;		(172)
	const DEX_RAMOOSE    ;		(173)
	const DEX_HITMONLEE  ; 106	(174)	- Saffron City
	const DEX_HITMONCHAN ; 107	(175)
	const DEX_HITMONTOP  ;		(176)
	const DEX_HORSEA     ; 116	(177)	- Surfing, Fishing Rod 3, Seafoam Islands
	const DEX_SEADRA     ; 117	(178)
	const DEX_KINGDRA    ;		(179)
	const DEX_SEEL       ; 86	(180)
	const DEX_DEWGONG    ; 87	(181)
	const DEX_SHELLDER   ; 90	(182)
	const DEX_CLOYSTER   ; 91	(183)
	const DEX_DISTURBAN  ;		(184)
	const DEX_STARYU     ; 120	(185)
	const DEX_STARMIE    ; 121	(186)
	const DEX_BLASTYKE   ;		(187)
	const DEX_BLASTOISE  ; 9	(188)
	const DEX_SHARPOON   ;		(189)
	const DEX_EXEGGCUTE  ; 102	(190)	- Safari Zone
	const DEX_EXEGGUTOR  ; 103	(191)
	const DEX_EXEGGUTOR_A ; 	(192)
	const DEX_RHYHORN    ; 111	(193)
	const DEX_RHYDON     ; 112	(194)
	const DEX_RHYPERIOR  ;		(195)
	const DEX_SCYTHER    ; 123	(196)
	const DEX_SCIZOR     ;		(197)
	const DEX_KLEAVOR    ;		(198)
	const DEX_PINSIR     ; 127	(199)
	const DEX_TRICULES   ;		(200)
	const DEX_KANGASKHAN ; 115	(201)
	const DEX_TRAMPEL    ; 		(202)
	const DEX_TAUROS     ; 128	(203)
	const DEX_TAUROS_P   ;		(204)
	const DEX_TAUROS_PB  ;		(205)
	const DEX_TAUROS_PA  ;		(206)
	const DEX_CHANSEY    ; 113	(207)
	const DEX_BLISSEY    ;		(208)
	const DEX_SHADEBUG   ;		(209)	- Rare/Special Pokemon
	const DEX_CACTORMUS  ;		(210)
	const DEX_MR_MIME    ; 122	(211)
	const DEX_MR_RIME    ;		(212)
	const DEX_JYNX       ; 124	(213)
	const DEX_BUU	     ;		(214)
	const DEX_ELECTABUZZ ; 125	(215)
	const DEX_ELECTIVIRE ;		(216)
	const DEX_MAGMAR     ; 126	(217)
	const DEX_MAGMORTAR  ;		(218)
	const DEX_LAPRAS     ; 131	(219)
	const DEX_DITTO      ; 132	(220)
	const DEX_MIMMEO     ;		(221)
	const DEX_PORYGON    ; 137	(222)
	const DEX_PORYGON2   ;		(223)
	const DEX_PORYGONZ   ;		(224)
	const DEX_OMANYTE    ; 138	(225)
	const DEX_OMASTAR    ; 139	(226)
	const DEX_KABUTO     ; 140	(227)
	const DEX_KABUTOPS   ; 141	(228)
	const DEX_AERODACTYL ; 142	(229)
	const DEX_DECILLA    ;		(230)
	const DEX_GAWARHED   ;		(231)
	const DEX_OMEGADGE   ;		(232)
	const DEX_SNORLAX    ; 143	(233)
 	const DEX_SCREAM_TAIL ;		(234)	- Paradoxes, (Pseudo-)Legendary and Mythical Pokemon
	const DEX_SANDY_SHOCKS ;	(235)
	const DEX_SQUEAMATA  ;		(236)
	const DEX_MINISTARE  ;		(237)
	const DEX_IGUANARCH  ;		(238)
	const DEX_DRATINI    ; 147	(239)
	const DEX_DRAGONAIR  ; 148	(240)
	const DEX_DRAGONITE  ; 149	(241)
	const DEX_ARTICUNO   ; 144	(242)
	const DEX_ARTICUNO_G ;		(243)
	const DEX_ZAPDOS     ; 145	(244)
	const DEX_ZAPDOS_G   ;		(245)
	const DEX_MOLTRES    ; 146	(246)
	const DEX_MOLTRES_G  ;		(247)
	const DEX_MEWTWO     ; 150	(248)
	const DEX_MEW        ; 151	(249)
	const DEX_MELTAN     ;		(250)
	const DEX_MELMETAL   ;		(251)

DEF NUM_POKEMON EQU const_value - 1
