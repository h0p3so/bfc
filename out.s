.section .rodata
	.compiler: .string "bfc:1.0"
.section .bss
	.memory: .zero 30000
.section .text
.globl _start
_start:
	leaq	.memory(%rip), %r8
	addb	$13, (%r8)
.L12:
	cmpb	$0, (%r8)
	je	.R1
	subb	$1, (%r8)
	addq	$1, %r8
	addb	$2, (%r8)
	addq	$3, %r8
	addb	$5, (%r8)
	addq	$1, %r8
	addb	$2, (%r8)
	addq	$1, %r8
	addb	$1, (%r8)
	subq	$6, %r8
.R1:
	cmpb	$0, (%r8)
	jne	.L12
	addq	$5, %r8
	addb	$6, (%r8)
	addq	$1, %r8
	subb	$3, (%r8)
	addq	$10, %r8
	addb	$15, (%r8)
.L29:
	cmpb	$0, (%r8)
	je	.R19
.L22:
	cmpb	$0, (%r8)
	je	.R20
	addq	$9, %r8
.R20:
	cmpb	$0, (%r8)
	jne	.L22
	addb	$1, (%r8)
.L26:
	cmpb	$0, (%r8)
	je	.R24
	subq	$9, %r8
.R24:
	cmpb	$0, (%r8)
	jne	.L26
	addq	$9, %r8
	subb	$1, (%r8)
.R19:
	cmpb	$0, (%r8)
	jne	.L29
	addb	$1, (%r8)
.L37:
	cmpb	$0, (%r8)
	je	.R31
	addq	$8, %r8
.L35:
	cmpb	$0, (%r8)
	je	.R33
	subb	$1, (%r8)
.R33:
	cmpb	$0, (%r8)
	jne	.L35
	addq	$1, %r8
.R31:
	cmpb	$0, (%r8)
	jne	.L37
	subq	$9, %r8
.L41:
	cmpb	$0, (%r8)
	je	.R39
	subq	$9, %r8
.R39:
	cmpb	$0, (%r8)
	jne	.L41
	addq	$8, %r8
.L45:
	cmpb	$0, (%r8)
	je	.R43
	subb	$1, (%r8)
.R43:
	cmpb	$0, (%r8)
	jne	.L45
	addb	$1, (%r8)
	subq	$7, %r8
	addb	$5, (%r8)
.L58:
	cmpb	$0, (%r8)
	je	.R49
	subb	$1, (%r8)
.L56:
	cmpb	$0, (%r8)
	je	.R51
	subb	$1, (%r8)
	addq	$9, %r8
	addb	$1, (%r8)
	subq	$9, %r8
.R51:
	cmpb	$0, (%r8)
	jne	.L56
	addq	$9, %r8
.R49:
	cmpb	$0, (%r8)
	jne	.L58
	addq	$7, %r8
	addb	$1, (%r8)
	addq	$27, %r8
	addb	$1, (%r8)
	subq	$17, %r8
.L66:
	cmpb	$0, (%r8)
	je	.R64
	subq	$9, %r8
.R64:
	cmpb	$0, (%r8)
	jne	.L66
	addq	$3, %r8
.L70:
	cmpb	$0, (%r8)
	je	.R68
	subb	$1, (%r8)
.R68:
	cmpb	$0, (%r8)
	jne	.L70
	addb	$1, (%r8)
.L4114:
	cmpb	$0, (%r8)
	je	.R72
	addq	$6, %r8
.L80:
	cmpb	$0, (%r8)
	je	.R74
	addq	$7, %r8
.L78:
	cmpb	$0, (%r8)
	je	.R76
	subb	$1, (%r8)
.R76:
	cmpb	$0, (%r8)
	jne	.L78
	addq	$2, %r8
.R74:
	cmpb	$0, (%r8)
	jne	.L80
	subq	$9, %r8
.L84:
	cmpb	$0, (%r8)
	je	.R82
	subq	$9, %r8
.R82:
	cmpb	$0, (%r8)
	jne	.L84
	addq	$7, %r8
.L88:
	cmpb	$0, (%r8)
	je	.R86
	subb	$1, (%r8)
.R86:
	cmpb	$0, (%r8)
	jne	.L88
	addb	$1, (%r8)
	subq	$6, %r8
	addb	$4, (%r8)
.L101:
	cmpb	$0, (%r8)
	je	.R92
	subb	$1, (%r8)
.L99:
	cmpb	$0, (%r8)
	je	.R94
	subb	$1, (%r8)
	addq	$9, %r8
	addb	$1, (%r8)
	subq	$9, %r8
.R94:
	cmpb	$0, (%r8)
	jne	.L99
	addq	$9, %r8
.R92:
	cmpb	$0, (%r8)
	jne	.L101
	addq	$6, %r8
	addb	$1, (%r8)
	subq	$6, %r8
	addb	$7, (%r8)
.L115:
	cmpb	$0, (%r8)
	je	.R106
	subb	$1, (%r8)
.L113:
	cmpb	$0, (%r8)
	je	.R108
	subb	$1, (%r8)
	addq	$9, %r8
	addb	$1, (%r8)
	subq	$9, %r8
.R108:
	cmpb	$0, (%r8)
	jne	.L113
	addq	$9, %r8
.R106:
	cmpb	$0, (%r8)
	jne	.L115
	addq	$6, %r8
	addb	$1, (%r8)
	subq	$16, %r8
.L121:
	cmpb	$0, (%r8)
	je	.R119
	subq	$9, %r8
.R119:
	cmpb	$0, (%r8)
	jne	.L121
	addq	$3, %r8
.L3709:
	cmpb	$0, (%r8)
	je	.R123
.L126:
	cmpb	$0, (%r8)
	je	.R124
	subb	$1, (%r8)
.R124:
	cmpb	$0, (%r8)
	jne	.L126
	addq	$6, %r8
.L148:
	cmpb	$0, (%r8)
	je	.R128
	addq	$7, %r8
.L135:
	cmpb	$0, (%r8)
	je	.R130
	subb	$1, (%r8)
	subq	$6, %r8
	addb	$1, (%r8)
	addq	$6, %r8
.R130:
	cmpb	$0, (%r8)
	jne	.L135
	subq	$6, %r8
.L146:
	cmpb	$0, (%r8)
	je	.R137
	subb	$1, (%r8)
	addq	$6, %r8
	addb	$1, (%r8)
	subq	$2, %r8
	addb	$1, (%r8)
	subq	$3, %r8
	addb	$1, (%r8)
	subq	$1, %r8
.R137:
	cmpb	$0, (%r8)
	jne	.L146
	addq	$8, %r8
.R128:
	cmpb	$0, (%r8)
	jne	.L148
	subq	$9, %r8
.L152:
	cmpb	$0, (%r8)
	je	.R150
	subq	$9, %r8
.R150:
	cmpb	$0, (%r8)
	jne	.L152
	addq	$9, %r8
.L174:
	cmpb	$0, (%r8)
	je	.R154
	addq	$8, %r8
.L161:
	cmpb	$0, (%r8)
	je	.R156
	subb	$1, (%r8)
	subq	$7, %r8
	addb	$1, (%r8)
	addq	$7, %r8
.R156:
	cmpb	$0, (%r8)
	jne	.L161
	subq	$7, %r8
.L172:
	cmpb	$0, (%r8)
	je	.R163
	subb	$1, (%r8)
	addq	$7, %r8
	addb	$1, (%r8)
	subq	$2, %r8
	addb	$1, (%r8)
	subq	$3, %r8
	addb	$1, (%r8)
	subq	$2, %r8
.R163:
	cmpb	$0, (%r8)
	jne	.L172
	addq	$8, %r8
.R154:
	cmpb	$0, (%r8)
	jne	.L174
	subq	$9, %r8
.L178:
	cmpb	$0, (%r8)
	je	.R176
	subq	$9, %r8
.R176:
	cmpb	$0, (%r8)
	jne	.L178
	addq	$7, %r8
.L185:
	cmpb	$0, (%r8)
	je	.R180
	subb	$1, (%r8)
	subq	$7, %r8
	addb	$1, (%r8)
	addq	$7, %r8
.R180:
	cmpb	$0, (%r8)
	jne	.L185
	subq	$7, %r8
.L194:
	cmpb	$0, (%r8)
	je	.R187
	subb	$1, (%r8)
	addq	$7, %r8
	addb	$1, (%r8)
	subq	$2, %r8
	addb	$1, (%r8)
	subq	$5, %r8
.R187:
	cmpb	$0, (%r8)
	jne	.L194
	addq	$9, %r8
	addb	$15, (%r8)
.L244:
	cmpb	$0, (%r8)
	je	.R197
.L200:
	cmpb	$0, (%r8)
	je	.R198
	addq	$9, %r8
.R198:
	cmpb	$0, (%r8)
	jne	.L200
	addb	$1, (%r8)
	addq	$1, %r8
.L205:
	cmpb	$0, (%r8)
	je	.R203
	subb	$1, (%r8)
.R203:
	cmpb	$0, (%r8)
	jne	.L205
	addq	$1, %r8
.L209:
	cmpb	$0, (%r8)
	je	.R207
	subb	$1, (%r8)
.R207:
	cmpb	$0, (%r8)
	jne	.L209
	addq	$1, %r8
.L213:
	cmpb	$0, (%r8)
	je	.R211
	subb	$1, (%r8)
.R211:
	cmpb	$0, (%r8)
	jne	.L213
	addq	$1, %r8
.L217:
	cmpb	$0, (%r8)
	je	.R215
	subb	$1, (%r8)
.R215:
	cmpb	$0, (%r8)
	jne	.L217
	addq	$1, %r8
.L221:
	cmpb	$0, (%r8)
	je	.R219
	subb	$1, (%r8)
.R219:
	cmpb	$0, (%r8)
	jne	.L221
	addq	$1, %r8
.L225:
	cmpb	$0, (%r8)
	je	.R223
	subb	$1, (%r8)
.R223:
	cmpb	$0, (%r8)
	jne	.L225
	addq	$1, %r8
.L229:
	cmpb	$0, (%r8)
	je	.R227
	subb	$1, (%r8)
.R227:
	cmpb	$0, (%r8)
	jne	.L229
	addq	$1, %r8
.L233:
	cmpb	$0, (%r8)
	je	.R231
	subb	$1, (%r8)
.R231:
	cmpb	$0, (%r8)
	jne	.L233
	addq	$1, %r8
.L237:
	cmpb	$0, (%r8)
	je	.R235
	subb	$1, (%r8)
.R235:
	cmpb	$0, (%r8)
	jne	.L237
	subq	$9, %r8
.L241:
	cmpb	$0, (%r8)
	je	.R239
	subq	$9, %r8
.R239:
	cmpb	$0, (%r8)
	jne	.L241
	addq	$9, %r8
	subb	$1, (%r8)
.R197:
	cmpb	$0, (%r8)
	jne	.L244
	addb	$1, (%r8)
.L250:
	cmpb	$0, (%r8)
	je	.R246
	addq	$1, %r8
	addb	$1, (%r8)
	addq	$8, %r8
.R246:
	cmpb	$0, (%r8)
	jne	.L250
	subq	$9, %r8
.L254:
	cmpb	$0, (%r8)
	je	.R252
	subq	$9, %r8
.R252:
	cmpb	$0, (%r8)
	jne	.L254
	addq	$9, %r8
.L323:
	cmpb	$0, (%r8)
	je	.R256
	addq	$1, %r8
	subb	$1, (%r8)
	addq	$4, %r8
.L265:
	cmpb	$0, (%r8)
	je	.R260
	subb	$1, (%r8)
	subq	$4, %r8
	addb	$1, (%r8)
	addq	$4, %r8
.R260:
	cmpb	$0, (%r8)
	jne	.L265
	subq	$4, %r8
.L297:
	cmpb	$0, (%r8)
	je	.R267
	subb	$1, (%r8)
	addq	$4, %r8
	addb	$1, (%r8)
	subq	$5, %r8
.L292:
	cmpb	$0, (%r8)
	je	.R272
	subb	$1, (%r8)
	addq	$2, %r8
.L280:
	cmpb	$0, (%r8)
	je	.R275
	subb	$1, (%r8)
	subq	$2, %r8
	addb	$1, (%r8)
	addq	$2, %r8
.R275:
	cmpb	$0, (%r8)
	jne	.L280
	subq	$2, %r8
.L289:
	cmpb	$0, (%r8)
	je	.R282
	subb	$1, (%r8)
	addq	$2, %r8
	addb	$1, (%r8)
	addq	$2, %r8
	addb	$1, (%r8)
	subq	$4, %r8
.R282:
	cmpb	$0, (%r8)
	jne	.L289
	addb	$1, (%r8)
	addq	$9, %r8
.R272:
	cmpb	$0, (%r8)
	jne	.L292
	subq	$8, %r8
.L296:
	cmpb	$0, (%r8)
	je	.R294
	subq	$9, %r8
.R294:
	cmpb	$0, (%r8)
	jne	.L296
.R267:
	cmpb	$0, (%r8)
	jne	.L297
	addq	$9, %r8
.L301:
	cmpb	$0, (%r8)
	je	.R299
	addq	$9, %r8
.R299:
	cmpb	$0, (%r8)
	jne	.L301
	subq	$9, %r8
.L312:
	cmpb	$0, (%r8)
	je	.R303
	addq	$1, %r8
.L310:
	cmpb	$0, (%r8)
	je	.R305
	subb	$1, (%r8)
	addq	$9, %r8
	addb	$1, (%r8)
	subq	$9, %r8
.R305:
	cmpb	$0, (%r8)
	jne	.L310
	subq	$10, %r8
.R303:
	cmpb	$0, (%r8)
	jne	.L312
	addq	$1, %r8
.L319:
	cmpb	$0, (%r8)
	je	.R314
	subb	$1, (%r8)
	addq	$9, %r8
	addb	$1, (%r8)
	subq	$9, %r8
.R314:
	cmpb	$0, (%r8)
	jne	.L319
	subq	$1, %r8
	addb	$1, (%r8)
	addq	$8, %r8
.R256:
	cmpb	$0, (%r8)
	jne	.L323
	subq	$9, %r8
.L366:
	cmpb	$0, (%r8)
	je	.R325
	addq	$1, %r8
.L329:
	cmpb	$0, (%r8)
	je	.R327
	subb	$1, (%r8)
.R327:
	cmpb	$0, (%r8)
	jne	.L329
	subq	$1, %r8
	subb	$1, (%r8)
	addq	$4, %r8
.L355:
	cmpb	$0, (%r8)
	je	.R333
	subb	$1, (%r8)
	subq	$4, %r8
	addb	$1, (%r8)
	addq	$1, %r8
.L346:
	cmpb	$0, (%r8)
	je	.R338
	subq	$1, %r8
	subb	$1, (%r8)
	addq	$1, %r8
	subb	$1, (%r8)
	subq	$6, %r8
	addb	$1, (%r8)
	addq	$6, %r8
.R338:
	cmpb	$0, (%r8)
	jne	.L346
	subq	$1, %r8
.L353:
	cmpb	$0, (%r8)
	je	.R348
	subb	$1, (%r8)
	addq	$1, %r8
	addb	$1, (%r8)
	subq	$1, %r8
.R348:
	cmpb	$0, (%r8)
	jne	.L353
	addq	$4, %r8
.R333:
	cmpb	$0, (%r8)
	jne	.L355
	subq	$3, %r8
.L362:
	cmpb	$0, (%r8)
	je	.R357
	subb	$1, (%r8)
	addq	$3, %r8
	addb	$1, (%r8)
	subq	$3, %r8
.R357:
	cmpb	$0, (%r8)
	jne	.L362
	subq	$1, %r8
	addb	$1, (%r8)
	subq	$9, %r8
.R325:
	cmpb	$0, (%r8)
	jne	.L366
	addq	$9, %r8
.L372:
	cmpb	$0, (%r8)
	je	.R368
	addq	$1, %r8
	addb	$1, (%r8)
	addq	$8, %r8
.R368:
	cmpb	$0, (%r8)
	jne	.L372
	subq	$9, %r8
.L376:
	cmpb	$0, (%r8)
	je	.R374
	subq	$9, %r8
.R374:
	cmpb	$0, (%r8)
	jne	.L376
	addq	$9, %r8
.L445:
	cmpb	$0, (%r8)
	je	.R378
	addq	$1, %r8
	subb	$1, (%r8)
	addq	$5, %r8
.L387:
	cmpb	$0, (%r8)
	je	.R382
	subb	$1, (%r8)
	subq	$5, %r8
	addb	$1, (%r8)
	addq	$5, %r8
.R382:
	cmpb	$0, (%r8)
	jne	.L387
	subq	$5, %r8
.L419:
	cmpb	$0, (%r8)
	je	.R389
	subb	$1, (%r8)
	addq	$5, %r8
	addb	$1, (%r8)
	subq	$6, %r8
.L414:
	cmpb	$0, (%r8)
	je	.R394
	subb	$1, (%r8)
	addq	$3, %r8
.L402:
	cmpb	$0, (%r8)
	je	.R397
	subb	$1, (%r8)
	subq	$3, %r8
	addb	$1, (%r8)
	addq	$3, %r8
.R397:
	cmpb	$0, (%r8)
	jne	.L402
	subq	$3, %r8
.L411:
	cmpb	$0, (%r8)
	je	.R404
	subb	$1, (%r8)
	addq	$3, %r8
	addb	$1, (%r8)
	addq	$1, %r8
	addb	$1, (%r8)
	subq	$4, %r8
.R404:
	cmpb	$0, (%r8)
	jne	.L411
	addb	$1, (%r8)
	addq	$9, %r8
.R394:
	cmpb	$0, (%r8)
	jne	.L414
	subq	$8, %r8
.L418:
	cmpb	$0, (%r8)
	je	.R416
	subq	$9, %r8
.R416:
	cmpb	$0, (%r8)
	jne	.L418
.R389:
	cmpb	$0, (%r8)
	jne	.L419
	addq	$9, %r8
.L423:
	cmpb	$0, (%r8)
	je	.R421
	addq	$9, %r8
.R421:
	cmpb	$0, (%r8)
	jne	.L423
	subq	$9, %r8
.L434:
	cmpb	$0, (%r8)
	je	.R425
	addq	$2, %r8
.L432:
	cmpb	$0, (%r8)
	je	.R427
	subb	$1, (%r8)
	addq	$9, %r8
	addb	$1, (%r8)
	subq	$9, %r8
.R427:
	cmpb	$0, (%r8)
	jne	.L432
	subq	$11, %r8
.R425:
	cmpb	$0, (%r8)
	jne	.L434
	addq	$2, %r8
.L441:
	cmpb	$0, (%r8)
	je	.R436
	subb	$1, (%r8)
	addq	$9, %r8
	addb	$1, (%r8)
	subq	$9, %r8
.R436:
	cmpb	$0, (%r8)
	jne	.L441
	subq	$2, %r8
	addb	$1, (%r8)
	addq	$8, %r8
.R378:
	cmpb	$0, (%r8)
	jne	.L445
	subq	$9, %r8
.L488:
	cmpb	$0, (%r8)
	je	.R447
	addq	$1, %r8
.L451:
	cmpb	$0, (%r8)
	je	.R449
	subb	$1, (%r8)
.R449:
	cmpb	$0, (%r8)
	jne	.L451
	subq	$1, %r8
	subb	$1, (%r8)
	addq	$4, %r8
.L477:
	cmpb	$0, (%r8)
	je	.R455
	subb	$1, (%r8)
	subq	$4, %r8
	addb	$1, (%r8)
	addq	$1, %r8
.L468:
	cmpb	$0, (%r8)
	je	.R460
	subq	$1, %r8
	subb	$1, (%r8)
	addq	$1, %r8
	subb	$1, (%r8)
	subq	$6, %r8
	addb	$1, (%r8)
	addq	$6, %r8
.R460:
	cmpb	$0, (%r8)
	jne	.L468
	subq	$1, %r8
.L475:
	cmpb	$0, (%r8)
	je	.R470
	subb	$1, (%r8)
	addq	$1, %r8
	addb	$1, (%r8)
	subq	$1, %r8
.R470:
	cmpb	$0, (%r8)
	jne	.L475
	addq	$4, %r8
.R455:
	cmpb	$0, (%r8)
	jne	.L477
	subq	$3, %r8
.L484:
	cmpb	$0, (%r8)
	je	.R479
	subb	$1, (%r8)
	addq	$3, %r8
	addb	$1, (%r8)
	subq	$3, %r8
.R479:
	cmpb	$0, (%r8)
	jne	.L484
	subq	$1, %r8
	addb	$1, (%r8)
	subq	$9, %r8
.R447:
	cmpb	$0, (%r8)
	jne	.L488
	addq	$9, %r8
.L499:
	cmpb	$0, (%r8)
	je	.R490
	addq	$4, %r8
.L497:
	cmpb	$0, (%r8)
	je	.R492
	subb	$1, (%r8)
	subq	$36, %r8
	addb	$1, (%r8)
	addq	$36, %r8
.R492:
	cmpb	$0, (%r8)
	jne	.L497
	addq	$5, %r8
.R490:
	cmpb	$0, (%r8)
	jne	.L499
	subq	$9, %r8
.L503:
	cmpb	$0, (%r8)
	je	.R501
	subq	$9, %r8
.R501:
	cmpb	$0, (%r8)
	jne	.L503
	addq	$9, %r8
	addb	$15, (%r8)
.L518:
	cmpb	$0, (%r8)
	je	.R506
.L509:
	cmpb	$0, (%r8)
	je	.R507
	addq	$9, %r8
.R507:
	cmpb	$0, (%r8)
	jne	.L509
	subq	$9, %r8
	subb	$1, (%r8)
	subq	$9, %r8
.L515:
	cmpb	$0, (%r8)
	je	.R513
	subq	$9, %r8
.R513:
	cmpb	$0, (%r8)
	jne	.L515
	addq	$9, %r8
	subb	$1, (%r8)
.R506:
	cmpb	$0, (%r8)
	jne	.L518
	addb	$1, (%r8)
	addq	$21, %r8
	addb	$1, (%r8)
	subq	$3, %r8
.L525:
	cmpb	$0, (%r8)
	je	.R523
	subq	$9, %r8
.R523:
	cmpb	$0, (%r8)
	jne	.L525
	addq	$9, %r8
.L629:
	cmpb	$0, (%r8)
	je	.R527
	addq	$3, %r8
.L534:
	cmpb	$0, (%r8)
	je	.R529
	subb	$1, (%r8)
	subq	$3, %r8
	subb	$1, (%r8)
	addq	$3, %r8
.R529:
	cmpb	$0, (%r8)
	jne	.L534
	addb	$1, (%r8)
	subq	$3, %r8
.L570:
	cmpb	$0, (%r8)
	je	.R537
	subb	$1, (%r8)
	addq	$3, %r8
	subb	$1, (%r8)
	addq	$1, %r8
.L547:
	cmpb	$0, (%r8)
	je	.R542
	subb	$1, (%r8)
	subq	$4, %r8
	addb	$1, (%r8)
	addq	$4, %r8
.R542:
	cmpb	$0, (%r8)
	jne	.L547
	subq	$4, %r8
.L569:
	cmpb	$0, (%r8)
	je	.R549
	subb	$1, (%r8)
	addq	$4, %r8
	addb	$1, (%r8)
	subq	$13, %r8
.L556:
	cmpb	$0, (%r8)
	je	.R554
	subq	$9, %r8
.R554:
	cmpb	$0, (%r8)
	jne	.L556
	addq	$4, %r8
.L560:
	cmpb	$0, (%r8)
	je	.R558
	subb	$1, (%r8)
.R558:
	cmpb	$0, (%r8)
	jne	.L560
	addb	$1, (%r8)
	addq	$5, %r8
.L565:
	cmpb	$0, (%r8)
	je	.R563
	addq	$9, %r8
.R563:
	cmpb	$0, (%r8)
	jne	.L565
	addq	$1, %r8
	addb	$1, (%r8)
	subq	$1, %r8
.R549:
	cmpb	$0, (%r8)
	jne	.L569
.R537:
	cmpb	$0, (%r8)
	jne	.L570
	addb	$1, (%r8)
	addq	$4, %r8
.L578:
	cmpb	$0, (%r8)
	je	.R573
	subb	$1, (%r8)
	subq	$4, %r8
	subb	$1, (%r8)
	addq	$4, %r8
.R573:
	cmpb	$0, (%r8)
	jne	.L578
	addb	$1, (%r8)
	subq	$4, %r8
.L617:
	cmpb	$0, (%r8)
	je	.R581
	subb	$1, (%r8)
	addq	$4, %r8
	subb	$1, (%r8)
	subq	$1, %r8
.L591:
	cmpb	$0, (%r8)
	je	.R586
	subb	$1, (%r8)
	subq	$3, %r8
	addb	$1, (%r8)
	addq	$3, %r8
.R586:
	cmpb	$0, (%r8)
	jne	.L591
	subq	$3, %r8
.L616:
	cmpb	$0, (%r8)
	je	.R593
	subb	$1, (%r8)
	addq	$3, %r8
	addb	$1, (%r8)
	subq	$12, %r8
.L600:
	cmpb	$0, (%r8)
	je	.R598
	subq	$9, %r8
.R598:
	cmpb	$0, (%r8)
	jne	.L600
	addq	$3, %r8
.L604:
	cmpb	$0, (%r8)
	je	.R602
	subb	$1, (%r8)
.R602:
	cmpb	$0, (%r8)
	jne	.L604
	addb	$1, (%r8)
	addq	$6, %r8
.L609:
	cmpb	$0, (%r8)
	je	.R607
	addq	$9, %r8
.R607:
	cmpb	$0, (%r8)
	jne	.L609
	addq	$1, %r8
.L613:
	cmpb	$0, (%r8)
	je	.R611
	subb	$1, (%r8)
.R611:
	cmpb	$0, (%r8)
	jne	.L613
	addb	$1, (%r8)
	subq	$1, %r8
.R593:
	cmpb	$0, (%r8)
	jne	.L616
.R581:
	cmpb	$0, (%r8)
	jne	.L617
	addb	$1, (%r8)
	addq	$1, %r8
.L627:
	cmpb	$0, (%r8)
	je	.R620
	subb	$1, (%r8)
	subq	$1, %r8
.L625:
	cmpb	$0, (%r8)
	je	.R623
	addq	$9, %r8
.R623:
	cmpb	$0, (%r8)
	jne	.L625
	subq	$8, %r8
.R620:
	cmpb	$0, (%r8)
	jne	.L627
	addq	$8, %r8
.R527:
	cmpb	$0, (%r8)
	jne	.L629
	subq	$9, %r8
.L633:
	cmpb	$0, (%r8)
	je	.R631
	subq	$9, %r8
.R631:
	cmpb	$0, (%r8)
	jne	.L633
	subq	$7, %r8
.L642:
	cmpb	$0, (%r8)
	je	.R635
	subb	$1, (%r8)
	addq	$1, %r8
	addb	$1, (%r8)
	addq	$3, %r8
	subb	$1, (%r8)
	subq	$4, %r8
.R635:
	cmpb	$0, (%r8)
	jne	.L642
	addq	$9, %r8
	addb	$26, (%r8)
	addq	$2, %r8
.L651:
	cmpb	$0, (%r8)
	je	.R646
	subb	$1, (%r8)
	subq	$4, %r8
	addb	$1, (%r8)
	addq	$4, %r8
.R646:
	cmpb	$0, (%r8)
	jne	.L651
	subq	$4, %r8
.L662:
	cmpb	$0, (%r8)
	je	.R653
	subb	$1, (%r8)
	addq	$4, %r8
	addb	$1, (%r8)
	subq	$2, %r8
.L660:
	cmpb	$0, (%r8)
	je	.R658
	subb	$1, (%r8)
.R658:
	cmpb	$0, (%r8)
	jne	.L660
	subq	$2, %r8
.R653:
	cmpb	$0, (%r8)
	jne	.L662
	addq	$2, %r8
.L3228:
	cmpb	$0, (%r8)
	je	.R664
	subq	$7, %r8
	addb	$1, (%r8)
	subq	$1, %r8
.L678:
	cmpb	$0, (%r8)
	je	.R668
	subb	$1, (%r8)
	subq	$1, %r8
	addb	$1, (%r8)
	addq	$4, %r8
	addb	$1, (%r8)
	subq	$2, %r8
.L677:
	cmpb	$0, (%r8)
	je	.R675
	subb	$1, (%r8)
.R675:
	cmpb	$0, (%r8)
	jne	.L677
.R668:
	cmpb	$0, (%r8)
	jne	.L678
	addq	$1, %r8
.L692:
	cmpb	$0, (%r8)
	je	.R680
	subb	$1, (%r8)
	subq	$2, %r8
.L690:
	cmpb	$0, (%r8)
	je	.R683
	subb	$1, (%r8)
	addq	$1, %r8
	addb	$1, (%r8)
	addq	$3, %r8
	subb	$1, (%r8)
	subq	$4, %r8
.R683:
	cmpb	$0, (%r8)
	jne	.L690
	addq	$3, %r8
.R680:
	cmpb	$0, (%r8)
	jne	.L692
	addq	$13, %r8
.L708:
	cmpb	$0, (%r8)
	je	.R694
	addq	$2, %r8
.L698:
	cmpb	$0, (%r8)
	je	.R696
	subb	$1, (%r8)
.R696:
	cmpb	$0, (%r8)
	jne	.L698
	addq	$1, %r8
.L702:
	cmpb	$0, (%r8)
	je	.R700
	subb	$1, (%r8)
.R700:
	cmpb	$0, (%r8)
	jne	.L702
	addq	$1, %r8
.L706:
	cmpb	$0, (%r8)
	je	.R704
	subb	$1, (%r8)
.R704:
	cmpb	$0, (%r8)
	jne	.L706
	addq	$5, %r8
.R694:
	cmpb	$0, (%r8)
	jne	.L708
	subq	$9, %r8
.L712:
	cmpb	$0, (%r8)
	je	.R710
	subq	$9, %r8
.R710:
	cmpb	$0, (%r8)
	jne	.L712
	addq	$3, %r8
.L716:
	cmpb	$0, (%r8)
	je	.R714
	subb	$1, (%r8)
.R714:
	cmpb	$0, (%r8)
	jne	.L716
	addq	$6, %r8
.L736:
	cmpb	$0, (%r8)
	je	.R718
	addq	$5, %r8
.L725:
	cmpb	$0, (%r8)
	je	.R720
	subb	$1, (%r8)
	subq	$4, %r8
	addb	$1, (%r8)
	addq	$4, %r8
.R720:
	cmpb	$0, (%r8)
	jne	.L725
	subq	$4, %r8
.L734:
	cmpb	$0, (%r8)
	je	.R727
	subb	$1, (%r8)
	addq	$4, %r8
	addb	$1, (%r8)
	subq	$3, %r8
	addb	$1, (%r8)
	subq	$1, %r8
.R727:
	cmpb	$0, (%r8)
	jne	.L734
	addq	$8, %r8
.R718:
	cmpb	$0, (%r8)
	jne	.L736
	subq	$9, %r8
.L740:
	cmpb	$0, (%r8)
	je	.R738
	subq	$9, %r8
.R738:
	cmpb	$0, (%r8)
	jne	.L740
	addq	$9, %r8
.L751:
	cmpb	$0, (%r8)
	je	.R742
	addq	$2, %r8
.L749:
	cmpb	$0, (%r8)
	je	.R744
	subb	$1, (%r8)
	subq	$9, %r8
	addb	$1, (%r8)
	addq	$9, %r8
.R744:
	cmpb	$0, (%r8)
	jne	.L749
	addq	$7, %r8
.R742:
	cmpb	$0, (%r8)
	jne	.L751
	subq	$9, %r8
.L755:
	cmpb	$0, (%r8)
	je	.R753
	subq	$9, %r8
.R753:
	cmpb	$0, (%r8)
	jne	.L755
	addq	$9, %r8
	addb	$15, (%r8)
.L805:
	cmpb	$0, (%r8)
	je	.R758
.L761:
	cmpb	$0, (%r8)
	je	.R759
	addq	$9, %r8
.R759:
	cmpb	$0, (%r8)
	jne	.L761
	addb	$1, (%r8)
	addq	$1, %r8
.L766:
	cmpb	$0, (%r8)
	je	.R764
	subb	$1, (%r8)
.R764:
	cmpb	$0, (%r8)
	jne	.L766
	addq	$1, %r8
.L770:
	cmpb	$0, (%r8)
	je	.R768
	subb	$1, (%r8)
.R768:
	cmpb	$0, (%r8)
	jne	.L770
	addq	$1, %r8
.L774:
	cmpb	$0, (%r8)
	je	.R772
	subb	$1, (%r8)
.R772:
	cmpb	$0, (%r8)
	jne	.L774
	addq	$1, %r8
.L778:
	cmpb	$0, (%r8)
	je	.R776
	subb	$1, (%r8)
.R776:
	cmpb	$0, (%r8)
	jne	.L778
	addq	$1, %r8
.L782:
	cmpb	$0, (%r8)
	je	.R780
	subb	$1, (%r8)
.R780:
	cmpb	$0, (%r8)
	jne	.L782
	addq	$1, %r8
.L786:
	cmpb	$0, (%r8)
	je	.R784
	subb	$1, (%r8)
.R784:
	cmpb	$0, (%r8)
	jne	.L786
	addq	$1, %r8
.L790:
	cmpb	$0, (%r8)
	je	.R788
	subb	$1, (%r8)
.R788:
	cmpb	$0, (%r8)
	jne	.L790
	addq	$1, %r8
.L794:
	cmpb	$0, (%r8)
	je	.R792
	subb	$1, (%r8)
.R792:
	cmpb	$0, (%r8)
	jne	.L794
	addq	$1, %r8
.L798:
	cmpb	$0, (%r8)
	je	.R796
	subb	$1, (%r8)
.R796:
	cmpb	$0, (%r8)
	jne	.L798
	subq	$9, %r8
.L802:
	cmpb	$0, (%r8)
	je	.R800
	subq	$9, %r8
.R800:
	cmpb	$0, (%r8)
	jne	.L802
	addq	$9, %r8
	subb	$1, (%r8)
.R758:
	cmpb	$0, (%r8)
	jne	.L805
	addb	$1, (%r8)
.L811:
	cmpb	$0, (%r8)
	je	.R807
	addq	$1, %r8
	addb	$1, (%r8)
	addq	$8, %r8
.R807:
	cmpb	$0, (%r8)
	jne	.L811
	subq	$9, %r8
.L815:
	cmpb	$0, (%r8)
	je	.R813
	subq	$9, %r8
.R813:
	cmpb	$0, (%r8)
	jne	.L815
	addq	$9, %r8
.L884:
	cmpb	$0, (%r8)
	je	.R817
	addq	$1, %r8
	subb	$1, (%r8)
	addq	$5, %r8
.L826:
	cmpb	$0, (%r8)
	je	.R821
	subb	$1, (%r8)
	subq	$5, %r8
	addb	$1, (%r8)
	addq	$5, %r8
.R821:
	cmpb	$0, (%r8)
	jne	.L826
	subq	$5, %r8
.L858:
	cmpb	$0, (%r8)
	je	.R828
	subb	$1, (%r8)
	addq	$5, %r8
	addb	$1, (%r8)
	subq	$6, %r8
.L853:
	cmpb	$0, (%r8)
	je	.R833
	subb	$1, (%r8)
	addq	$2, %r8
.L841:
	cmpb	$0, (%r8)
	je	.R836
	subb	$1, (%r8)
	subq	$2, %r8
	addb	$1, (%r8)
	addq	$2, %r8
.R836:
	cmpb	$0, (%r8)
	jne	.L841
	subq	$2, %r8
.L850:
	cmpb	$0, (%r8)
	je	.R843
	subb	$1, (%r8)
	addq	$2, %r8
	addb	$1, (%r8)
	addq	$1, %r8
	addb	$1, (%r8)
	subq	$3, %r8
.R843:
	cmpb	$0, (%r8)
	jne	.L850
	addb	$1, (%r8)
	addq	$9, %r8
.R833:
	cmpb	$0, (%r8)
	jne	.L853
	subq	$8, %r8
.L857:
	cmpb	$0, (%r8)
	je	.R855
	subq	$9, %r8
.R855:
	cmpb	$0, (%r8)
	jne	.L857
.R828:
	cmpb	$0, (%r8)
	jne	.L858
	addq	$9, %r8
.L862:
	cmpb	$0, (%r8)
	je	.R860
	addq	$9, %r8
.R860:
	cmpb	$0, (%r8)
	jne	.L862
	subq	$9, %r8
.L873:
	cmpb	$0, (%r8)
	je	.R864
	addq	$1, %r8
.L871:
	cmpb	$0, (%r8)
	je	.R866
	subb	$1, (%r8)
	addq	$9, %r8
	addb	$1, (%r8)
	subq	$9, %r8
.R866:
	cmpb	$0, (%r8)
	jne	.L871
	subq	$10, %r8
.R864:
	cmpb	$0, (%r8)
	jne	.L873
	addq	$1, %r8
.L880:
	cmpb	$0, (%r8)
	je	.R875
	subb	$1, (%r8)
	addq	$9, %r8
	addb	$1, (%r8)
	subq	$9, %r8
.R875:
	cmpb	$0, (%r8)
	jne	.L880
	subq	$1, %r8
	addb	$1, (%r8)
	addq	$8, %r8
.R817:
	cmpb	$0, (%r8)
	jne	.L884
	subq	$9, %r8
.L927:
	cmpb	$0, (%r8)
	je	.R886
	addq	$1, %r8
.L890:
	cmpb	$0, (%r8)
	je	.R888
	subb	$1, (%r8)
.R888:
	cmpb	$0, (%r8)
	jne	.L890
	subq	$1, %r8
	subb	$1, (%r8)
	addq	$3, %r8
.L916:
	cmpb	$0, (%r8)
	je	.R894
	subb	$1, (%r8)
	subq	$3, %r8
	addb	$1, (%r8)
	addq	$1, %r8
.L907:
	cmpb	$0, (%r8)
	je	.R899
	subq	$1, %r8
	subb	$1, (%r8)
	addq	$1, %r8
	subb	$1, (%r8)
	subq	$7, %r8
	addb	$1, (%r8)
	addq	$7, %r8
.R899:
	cmpb	$0, (%r8)
	jne	.L907
	subq	$1, %r8
.L914:
	cmpb	$0, (%r8)
	je	.R909
	subb	$1, (%r8)
	addq	$1, %r8
	addb	$1, (%r8)
	subq	$1, %r8
.R909:
	cmpb	$0, (%r8)
	jne	.L914
	addq	$3, %r8
.R894:
	cmpb	$0, (%r8)
	jne	.L916
	subq	$2, %r8
.L923:
	cmpb	$0, (%r8)
	je	.R918
	subb	$1, (%r8)
	addq	$2, %r8
	addb	$1, (%r8)
	subq	$2, %r8
.R918:
	cmpb	$0, (%r8)
	jne	.L923
	subq	$1, %r8
	addb	$1, (%r8)
	subq	$9, %r8
.R886:
	cmpb	$0, (%r8)
	jne	.L927
	addq	$9, %r8
.L947:
	cmpb	$0, (%r8)
	je	.R929
	addq	$6, %r8
.L936:
	cmpb	$0, (%r8)
	je	.R931
	subb	$1, (%r8)
	subq	$5, %r8
	addb	$1, (%r8)
	addq	$5, %r8
.R931:
	cmpb	$0, (%r8)
	jne	.L936
	subq	$5, %r8
.L945:
	cmpb	$0, (%r8)
	je	.R938
	subb	$1, (%r8)
	addq	$5, %r8
	addb	$1, (%r8)
	subq	$4, %r8
	addb	$1, (%r8)
	subq	$1, %r8
.R938:
	cmpb	$0, (%r8)
	jne	.L945
	addq	$8, %r8
.R929:
	cmpb	$0, (%r8)
	jne	.L947
	subq	$9, %r8
.L951:
	cmpb	$0, (%r8)
	je	.R949
	subq	$9, %r8
.R949:
	cmpb	$0, (%r8)
	jne	.L951
	addq	$9, %r8
.L957:
	cmpb	$0, (%r8)
	je	.R953
	addq	$1, %r8
	addb	$1, (%r8)
	addq	$8, %r8
.R953:
	cmpb	$0, (%r8)
	jne	.L957
	subq	$9, %r8
.L961:
	cmpb	$0, (%r8)
	je	.R959
	subq	$9, %r8
.R959:
	cmpb	$0, (%r8)
	jne	.L961
	addq	$9, %r8
.L1030:
	cmpb	$0, (%r8)
	je	.R963
	addq	$1, %r8
	subb	$1, (%r8)
	addq	$5, %r8
.L972:
	cmpb	$0, (%r8)
	je	.R967
	subb	$1, (%r8)
	subq	$5, %r8
	addb	$1, (%r8)
	addq	$5, %r8
.R967:
	cmpb	$0, (%r8)
	jne	.L972
	subq	$5, %r8
.L1004:
	cmpb	$0, (%r8)
	je	.R974
	subb	$1, (%r8)
	addq	$5, %r8
	addb	$1, (%r8)
	subq	$6, %r8
.L999:
	cmpb	$0, (%r8)
	je	.R979
	subb	$1, (%r8)
	addq	$2, %r8
.L987:
	cmpb	$0, (%r8)
	je	.R982
	subb	$1, (%r8)
	subq	$2, %r8
	addb	$1, (%r8)
	addq	$2, %r8
.R982:
	cmpb	$0, (%r8)
	jne	.L987
	subq	$2, %r8
.L996:
	cmpb	$0, (%r8)
	je	.R989
	subb	$1, (%r8)
	addq	$2, %r8
	addb	$1, (%r8)
	addq	$2, %r8
	addb	$1, (%r8)
	subq	$4, %r8
.R989:
	cmpb	$0, (%r8)
	jne	.L996
	addb	$1, (%r8)
	addq	$9, %r8
.R979:
	cmpb	$0, (%r8)
	jne	.L999
	subq	$8, %r8
.L1003:
	cmpb	$0, (%r8)
	je	.R1001
	subq	$9, %r8
.R1001:
	cmpb	$0, (%r8)
	jne	.L1003
.R974:
	cmpb	$0, (%r8)
	jne	.L1004
	addq	$9, %r8
.L1008:
	cmpb	$0, (%r8)
	je	.R1006
	addq	$9, %r8
.R1006:
	cmpb	$0, (%r8)
	jne	.L1008
	subq	$9, %r8
.L1019:
	cmpb	$0, (%r8)
	je	.R1010
	addq	$1, %r8
.L1017:
	cmpb	$0, (%r8)
	je	.R1012
	subb	$1, (%r8)
	addq	$9, %r8
	addb	$1, (%r8)
	subq	$9, %r8
.R1012:
	cmpb	$0, (%r8)
	jne	.L1017
	subq	$10, %r8
.R1010:
	cmpb	$0, (%r8)
	jne	.L1019
	addq	$1, %r8
.L1026:
	cmpb	$0, (%r8)
	je	.R1021
	subb	$1, (%r8)
	addq	$9, %r8
	addb	$1, (%r8)
	subq	$9, %r8
.R1021:
	cmpb	$0, (%r8)
	jne	.L1026
	subq	$1, %r8
	addb	$1, (%r8)
	addq	$8, %r8
.R963:
	cmpb	$0, (%r8)
	jne	.L1030
	subq	$9, %r8
.L1073:
	cmpb	$0, (%r8)
	je	.R1032
	addq	$1, %r8
.L1036:
	cmpb	$0, (%r8)
	je	.R1034
	subb	$1, (%r8)
.R1034:
	cmpb	$0, (%r8)
	jne	.L1036
	subq	$1, %r8
	subb	$1, (%r8)
	addq	$4, %r8
.L1062:
	cmpb	$0, (%r8)
	je	.R1040
	subb	$1, (%r8)
	subq	$4, %r8
	addb	$1, (%r8)
	addq	$1, %r8
.L1053:
	cmpb	$0, (%r8)
	je	.R1045
	subq	$1, %r8
	subb	$1, (%r8)
	addq	$1, %r8
	subb	$1, (%r8)
	subq	$6, %r8
	addb	$1, (%r8)
	addq	$6, %r8
.R1045:
	cmpb	$0, (%r8)
	jne	.L1053
	subq	$1, %r8
.L1060:
	cmpb	$0, (%r8)
	je	.R1055
	subb	$1, (%r8)
	addq	$1, %r8
	addb	$1, (%r8)
	subq	$1, %r8
.R1055:
	cmpb	$0, (%r8)
	jne	.L1060
	addq	$4, %r8
.R1040:
	cmpb	$0, (%r8)
	jne	.L1062
	subq	$3, %r8
.L1069:
	cmpb	$0, (%r8)
	je	.R1064
	subb	$1, (%r8)
	addq	$3, %r8
	addb	$1, (%r8)
	subq	$3, %r8
.R1064:
	cmpb	$0, (%r8)
	jne	.L1069
	subq	$1, %r8
	addb	$1, (%r8)
	subq	$9, %r8
.R1032:
	cmpb	$0, (%r8)
	jne	.L1073
	addq	$9, %r8
.L1084:
	cmpb	$0, (%r8)
	je	.R1075
	addq	$4, %r8
.L1082:
	cmpb	$0, (%r8)
	je	.R1077
	subb	$1, (%r8)
	subq	$36, %r8
	addb	$1, (%r8)
	addq	$36, %r8
.R1077:
	cmpb	$0, (%r8)
	jne	.L1082
	addq	$5, %r8
.R1075:
	cmpb	$0, (%r8)
	jne	.L1084
	subq	$9, %r8
.L1088:
	cmpb	$0, (%r8)
	je	.R1086
	subq	$9, %r8
.R1086:
	cmpb	$0, (%r8)
	jne	.L1088
	addq	$9, %r8
.L1099:
	cmpb	$0, (%r8)
	je	.R1090
	addq	$3, %r8
.L1097:
	cmpb	$0, (%r8)
	je	.R1092
	subb	$1, (%r8)
	subq	$36, %r8
	addb	$1, (%r8)
	addq	$36, %r8
.R1092:
	cmpb	$0, (%r8)
	jne	.L1097
	addq	$6, %r8
.R1090:
	cmpb	$0, (%r8)
	jne	.L1099
	subq	$9, %r8
.L1103:
	cmpb	$0, (%r8)
	je	.R1101
	subq	$9, %r8
.R1101:
	cmpb	$0, (%r8)
	jne	.L1103
	addq	$9, %r8
	addb	$15, (%r8)
.L1118:
	cmpb	$0, (%r8)
	je	.R1106
.L1109:
	cmpb	$0, (%r8)
	je	.R1107
	addq	$9, %r8
.R1107:
	cmpb	$0, (%r8)
	jne	.L1109
	subq	$9, %r8
	subb	$1, (%r8)
	subq	$9, %r8
.L1115:
	cmpb	$0, (%r8)
	je	.R1113
	subq	$9, %r8
.R1113:
	cmpb	$0, (%r8)
	jne	.L1115
	addq	$9, %r8
	subb	$1, (%r8)
.R1106:
	cmpb	$0, (%r8)
	jne	.L1118
	addb	$1, (%r8)
.L1138:
	cmpb	$0, (%r8)
	je	.R1120
	addq	$8, %r8
.L1127:
	cmpb	$0, (%r8)
	je	.R1122
	subb	$1, (%r8)
	subq	$7, %r8
	addb	$1, (%r8)
	addq	$7, %r8
.R1122:
	cmpb	$0, (%r8)
	jne	.L1127
	subq	$7, %r8
.L1136:
	cmpb	$0, (%r8)
	je	.R1129
	subb	$1, (%r8)
	addq	$7, %r8
	addb	$1, (%r8)
	subq	$6, %r8
	addb	$1, (%r8)
	subq	$1, %r8
.R1129:
	cmpb	$0, (%r8)
	jne	.L1136
	addq	$8, %r8
.R1120:
	cmpb	$0, (%r8)
	jne	.L1138
	subq	$9, %r8
.L1142:
	cmpb	$0, (%r8)
	je	.R1140
	subq	$9, %r8
.R1140:
	cmpb	$0, (%r8)
	jne	.L1142
	addq	$9, %r8
.L1150:
	cmpb	$0, (%r8)
	je	.R1144
	addq	$6, %r8
.L1148:
	cmpb	$0, (%r8)
	je	.R1146
	subb	$1, (%r8)
.R1146:
	cmpb	$0, (%r8)
	jne	.L1148
	addq	$3, %r8
.R1144:
	cmpb	$0, (%r8)
	jne	.L1150
	subq	$9, %r8
.L1154:
	cmpb	$0, (%r8)
	je	.R1152
	subq	$9, %r8
.R1152:
	cmpb	$0, (%r8)
	jne	.L1154
	addq	$4, %r8
	addb	$1, (%r8)
	addq	$1, %r8
.L1165:
	cmpb	$0, (%r8)
	je	.R1158
	subb	$1, (%r8)
	subq	$1, %r8
	subb	$1, (%r8)
	subq	$4, %r8
	addb	$1, (%r8)
	addq	$5, %r8
.R1158:
	cmpb	$0, (%r8)
	jne	.L1165
	addq	$1, %r8
.L1190:
	cmpb	$0, (%r8)
	je	.R1167
	subb	$1, (%r8)
	subq	$6, %r8
.L1177:
	cmpb	$0, (%r8)
	je	.R1170
	subb	$1, (%r8)
	addq	$5, %r8
	addb	$1, (%r8)
	subq	$1, %r8
	addb	$2, (%r8)
	subq	$4, %r8
.R1170:
	cmpb	$0, (%r8)
	jne	.L1177
	addq	$5, %r8
.L1184:
	cmpb	$0, (%r8)
	je	.R1179
	subb	$1, (%r8)
	subq	$5, %r8
	addb	$1, (%r8)
	addq	$5, %r8
.R1179:
	cmpb	$0, (%r8)
	jne	.L1184
	subq	$1, %r8
	subb	$1, (%r8)
	addq	$1, %r8
	addb	$1, (%r8)
	addq	$1, %r8
.R1167:
	cmpb	$0, (%r8)
	jne	.L1190
	subq	$1, %r8
.L1197:
	cmpb	$0, (%r8)
	je	.R1192
	subb	$1, (%r8)
	addq	$1, %r8
	addb	$1, (%r8)
	subq	$1, %r8
.R1192:
	cmpb	$0, (%r8)
	jne	.L1197
	subq	$5, %r8
.L1204:
	cmpb	$0, (%r8)
	je	.R1199
	subb	$1, (%r8)
	addq	$5, %r8
	addb	$1, (%r8)
	subq	$5, %r8
.R1199:
	cmpb	$0, (%r8)
	jne	.L1204
	addq	$6, %r8
.L1208:
	cmpb	$0, (%r8)
	je	.R1206
	subb	$1, (%r8)
.R1206:
	cmpb	$0, (%r8)
	jne	.L1208
	subq	$6, %r8
	addb	$1, (%r8)
	addq	$4, %r8
.L1217:
	cmpb	$0, (%r8)
	je	.R1212
	subb	$1, (%r8)
	subq	$4, %r8
	subb	$1, (%r8)
	addq	$4, %r8
.R1212:
	cmpb	$0, (%r8)
	jne	.L1217
	addb	$1, (%r8)
	subq	$4, %r8
.L1528:
	cmpb	$0, (%r8)
	je	.R1220
	subb	$1, (%r8)
	addq	$4, %r8
	subb	$1, (%r8)
	addq	$5, %r8
.L1327:
	cmpb	$0, (%r8)
	je	.R1225
	addq	$2, %r8
.L1232:
	cmpb	$0, (%r8)
	je	.R1227
	subb	$1, (%r8)
	subq	$2, %r8
	subb	$1, (%r8)
	addq	$2, %r8
.R1227:
	cmpb	$0, (%r8)
	jne	.L1232
	addb	$1, (%r8)
	subq	$2, %r8
.L1268:
	cmpb	$0, (%r8)
	je	.R1235
	subb	$1, (%r8)
	addq	$2, %r8
	subb	$1, (%r8)
	addq	$1, %r8
.L1245:
	cmpb	$0, (%r8)
	je	.R1240
	subb	$1, (%r8)
	subq	$3, %r8
	addb	$1, (%r8)
	addq	$3, %r8
.R1240:
	cmpb	$0, (%r8)
	jne	.L1245
	subq	$3, %r8
.L1267:
	cmpb	$0, (%r8)
	je	.R1247
	subb	$1, (%r8)
	addq	$3, %r8
	addb	$1, (%r8)
	subq	$12, %r8
.L1254:
	cmpb	$0, (%r8)
	je	.R1252
	subq	$9, %r8
.R1252:
	cmpb	$0, (%r8)
	jne	.L1254
	addq	$3, %r8
.L1258:
	cmpb	$0, (%r8)
	je	.R1256
	subb	$1, (%r8)
.R1256:
	cmpb	$0, (%r8)
	jne	.L1258
	addb	$1, (%r8)
	addq	$6, %r8
.L1263:
	cmpb	$0, (%r8)
	je	.R1261
	addq	$9, %r8
.R1261:
	cmpb	$0, (%r8)
	jne	.L1263
	addq	$1, %r8
	addb	$1, (%r8)
	subq	$1, %r8
.R1247:
	cmpb	$0, (%r8)
	jne	.L1267
.R1235:
	cmpb	$0, (%r8)
	jne	.L1268
	addb	$1, (%r8)
	addq	$3, %r8
.L1276:
	cmpb	$0, (%r8)
	je	.R1271
	subb	$1, (%r8)
	subq	$3, %r8
	subb	$1, (%r8)
	addq	$3, %r8
.R1271:
	cmpb	$0, (%r8)
	jne	.L1276
	addb	$1, (%r8)
	subq	$3, %r8
.L1315:
	cmpb	$0, (%r8)
	je	.R1279
	subb	$1, (%r8)
	addq	$3, %r8
	subb	$1, (%r8)
	subq	$1, %r8
.L1289:
	cmpb	$0, (%r8)
	je	.R1284
	subb	$1, (%r8)
	subq	$2, %r8
	addb	$1, (%r8)
	addq	$2, %r8
.R1284:
	cmpb	$0, (%r8)
	jne	.L1289
	subq	$2, %r8
.L1314:
	cmpb	$0, (%r8)
	je	.R1291
	subb	$1, (%r8)
	addq	$2, %r8
	addb	$1, (%r8)
	subq	$11, %r8
.L1298:
	cmpb	$0, (%r8)
	je	.R1296
	subq	$9, %r8
.R1296:
	cmpb	$0, (%r8)
	jne	.L1298
	addq	$4, %r8
.L1302:
	cmpb	$0, (%r8)
	je	.R1300
	subb	$1, (%r8)
.R1300:
	cmpb	$0, (%r8)
	jne	.L1302
	addb	$1, (%r8)
	addq	$5, %r8
.L1307:
	cmpb	$0, (%r8)
	je	.R1305
	addq	$9, %r8
.R1305:
	cmpb	$0, (%r8)
	jne	.L1307
	addq	$1, %r8
.L1311:
	cmpb	$0, (%r8)
	je	.R1309
	subb	$1, (%r8)
.R1309:
	cmpb	$0, (%r8)
	jne	.L1311
	addb	$1, (%r8)
	subq	$1, %r8
.R1291:
	cmpb	$0, (%r8)
	jne	.L1314
.R1279:
	cmpb	$0, (%r8)
	jne	.L1315
	addb	$1, (%r8)
	addq	$1, %r8
.L1325:
	cmpb	$0, (%r8)
	je	.R1318
	subb	$1, (%r8)
	subq	$1, %r8
.L1323:
	cmpb	$0, (%r8)
	je	.R1321
	addq	$9, %r8
.R1321:
	cmpb	$0, (%r8)
	jne	.L1323
	subq	$8, %r8
.R1318:
	cmpb	$0, (%r8)
	jne	.L1325
	addq	$8, %r8
.R1225:
	cmpb	$0, (%r8)
	jne	.L1327
	subq	$9, %r8
.L1331:
	cmpb	$0, (%r8)
	je	.R1329
	subq	$9, %r8
.R1329:
	cmpb	$0, (%r8)
	jne	.L1331
	addq	$4, %r8
.L1338:
	cmpb	$0, (%r8)
	je	.R1333
	subb	$1, (%r8)
	subq	$4, %r8
	addb	$1, (%r8)
	addq	$4, %r8
.R1333:
	cmpb	$0, (%r8)
	jne	.L1338
	subq	$4, %r8
.L1430:
	cmpb	$0, (%r8)
	je	.R1340
	subb	$1, (%r8)
	addq	$4, %r8
	addb	$1, (%r8)
	addq	$5, %r8
.L1363:
	cmpb	$0, (%r8)
	je	.R1345
	addq	$1, %r8
	addb	$1, (%r8)
	addq	$2, %r8
.L1354:
	cmpb	$0, (%r8)
	je	.R1349
	subb	$1, (%r8)
	subq	$2, %r8
	subb	$1, (%r8)
	addq	$2, %r8
.R1349:
	cmpb	$0, (%r8)
	jne	.L1354
	subq	$2, %r8
.L1361:
	cmpb	$0, (%r8)
	je	.R1356
	subb	$1, (%r8)
	addq	$2, %r8
	addb	$1, (%r8)
	subq	$2, %r8
.R1356:
	cmpb	$0, (%r8)
	jne	.L1361
	addq	$8, %r8
.R1345:
	cmpb	$0, (%r8)
	jne	.L1363
	subq	$8, %r8
	addb	$1, (%r8)
	subq	$1, %r8
.L1424:
	cmpb	$0, (%r8)
	je	.R1367
	addq	$1, %r8
.L1399:
	cmpb	$0, (%r8)
	je	.R1369
	subb	$1, (%r8)
	addq	$5, %r8
	addb	$1, (%r8)
	subq	$4, %r8
.L1388:
	cmpb	$0, (%r8)
	je	.R1374
	subb	$1, (%r8)
	addq	$4, %r8
	subb	$1, (%r8)
	subq	$14, %r8
	addb	$1, (%r8)
	addq	$11, %r8
.L1386:
	cmpb	$0, (%r8)
	je	.R1381
	subb	$1, (%r8)
	addq	$3, %r8
	addb	$1, (%r8)
	subq	$3, %r8
.R1381:
	cmpb	$0, (%r8)
	jne	.L1386
	subq	$1, %r8
.R1374:
	cmpb	$0, (%r8)
	jne	.L1388
	addq	$1, %r8
.L1397:
	cmpb	$0, (%r8)
	je	.R1390
	subb	$1, (%r8)
	addq	$3, %r8
	subb	$1, (%r8)
	subq	$14, %r8
	addb	$1, (%r8)
	addq	$11, %r8
.R1390:
	cmpb	$0, (%r8)
	jne	.L1397
	subq	$2, %r8
.R1369:
	cmpb	$0, (%r8)
	jne	.L1399
	addq	$1, %r8
.L1415:
	cmpb	$0, (%r8)
	je	.R1401
	subb	$1, (%r8)
	addq	$4, %r8
	addb	$1, (%r8)
	subq	$3, %r8
.L1413:
	cmpb	$0, (%r8)
	je	.R1406
	subb	$1, (%r8)
	addq	$3, %r8
	subb	$1, (%r8)
	subq	$14, %r8
	addb	$1, (%r8)
	addq	$11, %r8
.R1406:
	cmpb	$0, (%r8)
	jne	.L1413
	subq	$1, %r8
.R1401:
	cmpb	$0, (%r8)
	jne	.L1415
	addq	$1, %r8
.L1422:
	cmpb	$0, (%r8)
	je	.R1417
	subb	$1, (%r8)
	addq	$3, %r8
	addb	$1, (%r8)
	subq	$3, %r8
.R1417:
	cmpb	$0, (%r8)
	jne	.L1422
	subq	$12, %r8
.R1367:
	cmpb	$0, (%r8)
	jne	.L1424
	addq	$4, %r8
.L1428:
	cmpb	$0, (%r8)
	je	.R1426
	subb	$1, (%r8)
.R1426:
	cmpb	$0, (%r8)
	jne	.L1428
	subq	$4, %r8
.R1340:
	cmpb	$0, (%r8)
	jne	.L1430
	addq	$3, %r8
.L1437:
	cmpb	$0, (%r8)
	je	.R1432
	subb	$1, (%r8)
	subq	$3, %r8
	addb	$1, (%r8)
	addq	$3, %r8
.R1432:
	cmpb	$0, (%r8)
	jne	.L1437
	subq	$3, %r8
.L1527:
	cmpb	$0, (%r8)
	je	.R1439
	subb	$1, (%r8)
	addq	$3, %r8
	addb	$1, (%r8)
	addq	$6, %r8
.L1462:
	cmpb	$0, (%r8)
	je	.R1444
	addq	$1, %r8
	addb	$1, (%r8)
	addq	$1, %r8
.L1453:
	cmpb	$0, (%r8)
	je	.R1448
	subb	$1, (%r8)
	subq	$1, %r8
	subb	$1, (%r8)
	addq	$1, %r8
.R1448:
	cmpb	$0, (%r8)
	jne	.L1453
	subq	$1, %r8
.L1460:
	cmpb	$0, (%r8)
	je	.R1455
	subb	$1, (%r8)
	addq	$1, %r8
	addb	$1, (%r8)
	subq	$1, %r8
.R1455:
	cmpb	$0, (%r8)
	jne	.L1460
	addq	$8, %r8
.R1444:
	cmpb	$0, (%r8)
	jne	.L1462
	subq	$8, %r8
	addb	$1, (%r8)
	subq	$1, %r8
.L1523:
	cmpb	$0, (%r8)
	je	.R1466
	addq	$1, %r8
.L1498:
	cmpb	$0, (%r8)
	je	.R1468
	subb	$1, (%r8)
	addq	$5, %r8
	addb	$1, (%r8)
	subq	$3, %r8
.L1487:
	cmpb	$0, (%r8)
	je	.R1473
	subb	$1, (%r8)
	addq	$3, %r8
	subb	$1, (%r8)
	subq	$14, %r8
	addb	$1, (%r8)
	addq	$10, %r8
.L1485:
	cmpb	$0, (%r8)
	je	.R1480
	subb	$1, (%r8)
	addq	$4, %r8
	addb	$1, (%r8)
	subq	$4, %r8
.R1480:
	cmpb	$0, (%r8)
	jne	.L1485
	addq	$1, %r8
.R1473:
	cmpb	$0, (%r8)
	jne	.L1487
	subq	$1, %r8
.L1496:
	cmpb	$0, (%r8)
	je	.R1489
	subb	$1, (%r8)
	addq	$4, %r8
	subb	$1, (%r8)
	subq	$14, %r8
	addb	$1, (%r8)
	addq	$10, %r8
.R1489:
	cmpb	$0, (%r8)
	jne	.L1496
	subq	$1, %r8
.R1468:
	cmpb	$0, (%r8)
	jne	.L1498
	addq	$2, %r8
.L1514:
	cmpb	$0, (%r8)
	je	.R1500
	subb	$1, (%r8)
	addq	$3, %r8
	addb	$1, (%r8)
	subq	$4, %r8
.L1512:
	cmpb	$0, (%r8)
	je	.R1505
	subb	$1, (%r8)
	addq	$4, %r8
	subb	$1, (%r8)
	subq	$14, %r8
	addb	$1, (%r8)
	addq	$10, %r8
.R1505:
	cmpb	$0, (%r8)
	jne	.L1512
	addq	$1, %r8
.R1500:
	cmpb	$0, (%r8)
	jne	.L1514
	subq	$1, %r8
.L1521:
	cmpb	$0, (%r8)
	je	.R1516
	subb	$1, (%r8)
	addq	$4, %r8
	addb	$1, (%r8)
	subq	$4, %r8
.R1516:
	cmpb	$0, (%r8)
	jne	.L1521
	subq	$11, %r8
.R1466:
	cmpb	$0, (%r8)
	jne	.L1523
	addq	$6, %r8
	addb	$1, (%r8)
	subq	$6, %r8
.R1439:
	cmpb	$0, (%r8)
	jne	.L1527
.R1220:
	cmpb	$0, (%r8)
	jne	.L1528
	addq	$4, %r8
.L1535:
	cmpb	$0, (%r8)
	je	.R1530
	subb	$1, (%r8)
	subq	$4, %r8
	addb	$1, (%r8)
	addq	$4, %r8
.R1530:
	cmpb	$0, (%r8)
	jne	.L1535
	subq	$4, %r8
.L1604:
	cmpb	$0, (%r8)
	je	.R1537
	subb	$1, (%r8)
	addq	$4, %r8
	addb	$1, (%r8)
	addq	$5, %r8
.L1544:
	cmpb	$0, (%r8)
	je	.R1542
	addq	$9, %r8
.R1542:
	cmpb	$0, (%r8)
	jne	.L1544
	subq	$9, %r8
.L1603:
	cmpb	$0, (%r8)
	je	.R1546
	addq	$1, %r8
.L1578:
	cmpb	$0, (%r8)
	je	.R1548
	subb	$1, (%r8)
	addq	$5, %r8
	addb	$1, (%r8)
	subq	$4, %r8
.L1567:
	cmpb	$0, (%r8)
	je	.R1553
	subb	$1, (%r8)
	addq	$4, %r8
	subb	$1, (%r8)
	subq	$14, %r8
	addb	$1, (%r8)
	addq	$11, %r8
.L1565:
	cmpb	$0, (%r8)
	je	.R1560
	subb	$1, (%r8)
	addq	$3, %r8
	addb	$1, (%r8)
	subq	$3, %r8
.R1560:
	cmpb	$0, (%r8)
	jne	.L1565
	subq	$1, %r8
.R1553:
	cmpb	$0, (%r8)
	jne	.L1567
	addq	$1, %r8
.L1576:
	cmpb	$0, (%r8)
	je	.R1569
	subb	$1, (%r8)
	addq	$3, %r8
	subb	$1, (%r8)
	subq	$14, %r8
	addb	$1, (%r8)
	addq	$11, %r8
.R1569:
	cmpb	$0, (%r8)
	jne	.L1576
	subq	$2, %r8
.R1548:
	cmpb	$0, (%r8)
	jne	.L1578
	addq	$1, %r8
.L1594:
	cmpb	$0, (%r8)
	je	.R1580
	subb	$1, (%r8)
	addq	$4, %r8
	addb	$1, (%r8)
	subq	$3, %r8
.L1592:
	cmpb	$0, (%r8)
	je	.R1585
	subb	$1, (%r8)
	addq	$3, %r8
	subb	$1, (%r8)
	subq	$14, %r8
	addb	$1, (%r8)
	addq	$11, %r8
.R1585:
	cmpb	$0, (%r8)
	jne	.L1592
	subq	$1, %r8
.R1580:
	cmpb	$0, (%r8)
	jne	.L1594
	addq	$1, %r8
.L1601:
	cmpb	$0, (%r8)
	je	.R1596
	subb	$1, (%r8)
	addq	$3, %r8
	addb	$1, (%r8)
	subq	$3, %r8
.R1596:
	cmpb	$0, (%r8)
	jne	.L1601
	subq	$12, %r8
.R1546:
	cmpb	$0, (%r8)
	jne	.L1603
.R1537:
	cmpb	$0, (%r8)
	jne	.L1604
	addq	$1, %r8
.L1608:
	cmpb	$0, (%r8)
	je	.R1606
	subb	$1, (%r8)
.R1606:
	cmpb	$0, (%r8)
	jne	.L1608
	addq	$2, %r8
.L1612:
	cmpb	$0, (%r8)
	je	.R1610
	subb	$1, (%r8)
.R1610:
	cmpb	$0, (%r8)
	jne	.L1612
	addq	$1, %r8
.L1616:
	cmpb	$0, (%r8)
	je	.R1614
	subb	$1, (%r8)
.R1614:
	cmpb	$0, (%r8)
	jne	.L1616
	addq	$5, %r8
.L1628:
	cmpb	$0, (%r8)
	je	.R1618
	addq	$2, %r8
.L1622:
	cmpb	$0, (%r8)
	je	.R1620
	subb	$1, (%r8)
.R1620:
	cmpb	$0, (%r8)
	jne	.L1622
	addq	$1, %r8
.L1626:
	cmpb	$0, (%r8)
	je	.R1624
	subb	$1, (%r8)
.R1624:
	cmpb	$0, (%r8)
	jne	.L1626
	addq	$6, %r8
.R1618:
	cmpb	$0, (%r8)
	jne	.L1628
	subq	$9, %r8
.L1632:
	cmpb	$0, (%r8)
	je	.R1630
	subq	$9, %r8
.R1630:
	cmpb	$0, (%r8)
	jne	.L1632
	addq	$9, %r8
.L1652:
	cmpb	$0, (%r8)
	je	.R1634
	addq	$5, %r8
.L1641:
	cmpb	$0, (%r8)
	je	.R1636
	subb	$1, (%r8)
	subq	$4, %r8
	addb	$1, (%r8)
	addq	$4, %r8
.R1636:
	cmpb	$0, (%r8)
	jne	.L1641
	subq	$4, %r8
.L1650:
	cmpb	$0, (%r8)
	je	.R1643
	subb	$1, (%r8)
	addq	$4, %r8
	addb	$1, (%r8)
	subq	$3, %r8
	addb	$1, (%r8)
	subq	$1, %r8
.R1643:
	cmpb	$0, (%r8)
	jne	.L1650
	addq	$8, %r8
.R1634:
	cmpb	$0, (%r8)
	jne	.L1652
	subq	$9, %r8
.L1656:
	cmpb	$0, (%r8)
	je	.R1654
	subq	$9, %r8
.R1654:
	cmpb	$0, (%r8)
	jne	.L1656
	addq	$9, %r8
	addb	$15, (%r8)
.L1706:
	cmpb	$0, (%r8)
	je	.R1659
.L1662:
	cmpb	$0, (%r8)
	je	.R1660
	addq	$9, %r8
.R1660:
	cmpb	$0, (%r8)
	jne	.L1662
	addb	$1, (%r8)
	addq	$1, %r8
.L1667:
	cmpb	$0, (%r8)
	je	.R1665
	subb	$1, (%r8)
.R1665:
	cmpb	$0, (%r8)
	jne	.L1667
	addq	$1, %r8
.L1671:
	cmpb	$0, (%r8)
	je	.R1669
	subb	$1, (%r8)
.R1669:
	cmpb	$0, (%r8)
	jne	.L1671
	addq	$1, %r8
.L1675:
	cmpb	$0, (%r8)
	je	.R1673
	subb	$1, (%r8)
.R1673:
	cmpb	$0, (%r8)
	jne	.L1675
	addq	$1, %r8
.L1679:
	cmpb	$0, (%r8)
	je	.R1677
	subb	$1, (%r8)
.R1677:
	cmpb	$0, (%r8)
	jne	.L1679
	addq	$1, %r8
.L1683:
	cmpb	$0, (%r8)
	je	.R1681
	subb	$1, (%r8)
.R1681:
	cmpb	$0, (%r8)
	jne	.L1683
	addq	$1, %r8
.L1687:
	cmpb	$0, (%r8)
	je	.R1685
	subb	$1, (%r8)
.R1685:
	cmpb	$0, (%r8)
	jne	.L1687
	addq	$1, %r8
.L1691:
	cmpb	$0, (%r8)
	je	.R1689
	subb	$1, (%r8)
.R1689:
	cmpb	$0, (%r8)
	jne	.L1691
	addq	$1, %r8
.L1695:
	cmpb	$0, (%r8)
	je	.R1693
	subb	$1, (%r8)
.R1693:
	cmpb	$0, (%r8)
	jne	.L1695
	addq	$1, %r8
.L1699:
	cmpb	$0, (%r8)
	je	.R1697
	subb	$1, (%r8)
.R1697:
	cmpb	$0, (%r8)
	jne	.L1699
	subq	$9, %r8
.L1703:
	cmpb	$0, (%r8)
	je	.R1701
	subq	$9, %r8
.R1701:
	cmpb	$0, (%r8)
	jne	.L1703
	addq	$9, %r8
	subb	$1, (%r8)
.R1659:
	cmpb	$0, (%r8)
	jne	.L1706
	addb	$1, (%r8)
.L1712:
	cmpb	$0, (%r8)
	je	.R1708
	addq	$1, %r8
	addb	$1, (%r8)
	addq	$8, %r8
.R1708:
	cmpb	$0, (%r8)
	jne	.L1712
	subq	$9, %r8
.L1716:
	cmpb	$0, (%r8)
	je	.R1714
	subq	$9, %r8
.R1714:
	cmpb	$0, (%r8)
	jne	.L1716
	addq	$9, %r8
.L1785:
	cmpb	$0, (%r8)
	je	.R1718
	addq	$1, %r8
	subb	$1, (%r8)
	addq	$4, %r8
.L1727:
	cmpb	$0, (%r8)
	je	.R1722
	subb	$1, (%r8)
	subq	$4, %r8
	addb	$1, (%r8)
	addq	$4, %r8
.R1722:
	cmpb	$0, (%r8)
	jne	.L1727
	subq	$4, %r8
.L1759:
	cmpb	$0, (%r8)
	je	.R1729
	subb	$1, (%r8)
	addq	$4, %r8
	addb	$1, (%r8)
	subq	$5, %r8
.L1754:
	cmpb	$0, (%r8)
	je	.R1734
	subb	$1, (%r8)
	addq	$2, %r8
.L1742:
	cmpb	$0, (%r8)
	je	.R1737
	subb	$1, (%r8)
	subq	$2, %r8
	addb	$1, (%r8)
	addq	$2, %r8
.R1737:
	cmpb	$0, (%r8)
	jne	.L1742
	subq	$2, %r8
.L1751:
	cmpb	$0, (%r8)
	je	.R1744
	subb	$1, (%r8)
	addq	$2, %r8
	addb	$1, (%r8)
	addq	$1, %r8
	addb	$1, (%r8)
	subq	$3, %r8
.R1744:
	cmpb	$0, (%r8)
	jne	.L1751
	addb	$1, (%r8)
	addq	$9, %r8
.R1734:
	cmpb	$0, (%r8)
	jne	.L1754
	subq	$8, %r8
.L1758:
	cmpb	$0, (%r8)
	je	.R1756
	subq	$9, %r8
.R1756:
	cmpb	$0, (%r8)
	jne	.L1758
.R1729:
	cmpb	$0, (%r8)
	jne	.L1759
	addq	$9, %r8
.L1763:
	cmpb	$0, (%r8)
	je	.R1761
	addq	$9, %r8
.R1761:
	cmpb	$0, (%r8)
	jne	.L1763
	subq	$9, %r8
.L1774:
	cmpb	$0, (%r8)
	je	.R1765
	addq	$1, %r8
.L1772:
	cmpb	$0, (%r8)
	je	.R1767
	subb	$1, (%r8)
	addq	$9, %r8
	addb	$1, (%r8)
	subq	$9, %r8
.R1767:
	cmpb	$0, (%r8)
	jne	.L1772
	subq	$10, %r8
.R1765:
	cmpb	$0, (%r8)
	jne	.L1774
	addq	$1, %r8
.L1781:
	cmpb	$0, (%r8)
	je	.R1776
	subb	$1, (%r8)
	addq	$9, %r8
	addb	$1, (%r8)
	subq	$9, %r8
.R1776:
	cmpb	$0, (%r8)
	jne	.L1781
	subq	$1, %r8
	addb	$1, (%r8)
	addq	$8, %r8
.R1718:
	cmpb	$0, (%r8)
	jne	.L1785
	subq	$9, %r8
.L1828:
	cmpb	$0, (%r8)
	je	.R1787
	addq	$1, %r8
.L1791:
	cmpb	$0, (%r8)
	je	.R1789
	subb	$1, (%r8)
.R1789:
	cmpb	$0, (%r8)
	jne	.L1791
	subq	$1, %r8
	subb	$1, (%r8)
	addq	$3, %r8
.L1817:
	cmpb	$0, (%r8)
	je	.R1795
	subb	$1, (%r8)
	subq	$3, %r8
	addb	$1, (%r8)
	addq	$1, %r8
.L1808:
	cmpb	$0, (%r8)
	je	.R1800
	subq	$1, %r8
	subb	$1, (%r8)
	addq	$1, %r8
	subb	$1, (%r8)
	subq	$7, %r8
	addb	$1, (%r8)
	addq	$7, %r8
.R1800:
	cmpb	$0, (%r8)
	jne	.L1808
	subq	$1, %r8
.L1815:
	cmpb	$0, (%r8)
	je	.R1810
	subb	$1, (%r8)
	addq	$1, %r8
	addb	$1, (%r8)
	subq	$1, %r8
.R1810:
	cmpb	$0, (%r8)
	jne	.L1815
	addq	$3, %r8
.R1795:
	cmpb	$0, (%r8)
	jne	.L1817
	subq	$2, %r8
.L1824:
	cmpb	$0, (%r8)
	je	.R1819
	subb	$1, (%r8)
	addq	$2, %r8
	addb	$1, (%r8)
	subq	$2, %r8
.R1819:
	cmpb	$0, (%r8)
	jne	.L1824
	subq	$1, %r8
	addb	$1, (%r8)
	subq	$9, %r8
.R1787:
	cmpb	$0, (%r8)
	jne	.L1828
	addq	$9, %r8
.L1839:
	cmpb	$0, (%r8)
	je	.R1830
	addq	$3, %r8
.L1837:
	cmpb	$0, (%r8)
	je	.R1832
	subb	$1, (%r8)
	subq	$36, %r8
	addb	$1, (%r8)
	addq	$36, %r8
.R1832:
	cmpb	$0, (%r8)
	jne	.L1837
	addq	$6, %r8
.R1830:
	cmpb	$0, (%r8)
	jne	.L1839
	subq	$9, %r8
.L1843:
	cmpb	$0, (%r8)
	je	.R1841
	subq	$9, %r8
.R1841:
	cmpb	$0, (%r8)
	jne	.L1843
	addq	$5, %r8
.L1847:
	cmpb	$0, (%r8)
	je	.R1845
	subb	$1, (%r8)
.R1845:
	cmpb	$0, (%r8)
	jne	.L1847
	addq	$4, %r8
	addb	$15, (%r8)
.L1862:
	cmpb	$0, (%r8)
	je	.R1850
.L1853:
	cmpb	$0, (%r8)
	je	.R1851
	addq	$9, %r8
.R1851:
	cmpb	$0, (%r8)
	jne	.L1853
	subq	$9, %r8
	subb	$1, (%r8)
	subq	$9, %r8
.L1859:
	cmpb	$0, (%r8)
	je	.R1857
	subq	$9, %r8
.R1857:
	cmpb	$0, (%r8)
	jne	.L1859
	addq	$9, %r8
	subb	$1, (%r8)
.R1850:
	cmpb	$0, (%r8)
	jne	.L1862
	addb	$1, (%r8)
.L1966:
	cmpb	$0, (%r8)
	je	.R1864
	addq	$3, %r8
.L1871:
	cmpb	$0, (%r8)
	je	.R1866
	subb	$1, (%r8)
	subq	$3, %r8
	subb	$1, (%r8)
	addq	$3, %r8
.R1866:
	cmpb	$0, (%r8)
	jne	.L1871
	addb	$1, (%r8)
	subq	$3, %r8
.L1907:
	cmpb	$0, (%r8)
	je	.R1874
	subb	$1, (%r8)
	addq	$3, %r8
	subb	$1, (%r8)
	addq	$1, %r8
.L1884:
	cmpb	$0, (%r8)
	je	.R1879
	subb	$1, (%r8)
	subq	$4, %r8
	addb	$1, (%r8)
	addq	$4, %r8
.R1879:
	cmpb	$0, (%r8)
	jne	.L1884
	subq	$4, %r8
.L1906:
	cmpb	$0, (%r8)
	je	.R1886
	subb	$1, (%r8)
	addq	$4, %r8
	addb	$1, (%r8)
	subq	$13, %r8
.L1893:
	cmpb	$0, (%r8)
	je	.R1891
	subq	$9, %r8
.R1891:
	cmpb	$0, (%r8)
	jne	.L1893
	addq	$4, %r8
.L1897:
	cmpb	$0, (%r8)
	je	.R1895
	subb	$1, (%r8)
.R1895:
	cmpb	$0, (%r8)
	jne	.L1897
	addb	$1, (%r8)
	addq	$5, %r8
.L1902:
	cmpb	$0, (%r8)
	je	.R1900
	addq	$9, %r8
.R1900:
	cmpb	$0, (%r8)
	jne	.L1902
	addq	$1, %r8
	addb	$1, (%r8)
	subq	$1, %r8
.R1886:
	cmpb	$0, (%r8)
	jne	.L1906
.R1874:
	cmpb	$0, (%r8)
	jne	.L1907
	addb	$1, (%r8)
	addq	$4, %r8
.L1915:
	cmpb	$0, (%r8)
	je	.R1910
	subb	$1, (%r8)
	subq	$4, %r8
	subb	$1, (%r8)
	addq	$4, %r8
.R1910:
	cmpb	$0, (%r8)
	jne	.L1915
	addb	$1, (%r8)
	subq	$4, %r8
.L1954:
	cmpb	$0, (%r8)
	je	.R1918
	subb	$1, (%r8)
	addq	$4, %r8
	subb	$1, (%r8)
	subq	$1, %r8
.L1928:
	cmpb	$0, (%r8)
	je	.R1923
	subb	$1, (%r8)
	subq	$3, %r8
	addb	$1, (%r8)
	addq	$3, %r8
.R1923:
	cmpb	$0, (%r8)
	jne	.L1928
	subq	$3, %r8
.L1953:
	cmpb	$0, (%r8)
	je	.R1930
	subb	$1, (%r8)
	addq	$3, %r8
	addb	$1, (%r8)
	subq	$12, %r8
.L1937:
	cmpb	$0, (%r8)
	je	.R1935
	subq	$9, %r8
.R1935:
	cmpb	$0, (%r8)
	jne	.L1937
	addq	$3, %r8
.L1941:
	cmpb	$0, (%r8)
	je	.R1939
	subb	$1, (%r8)
.R1939:
	cmpb	$0, (%r8)
	jne	.L1941
	addb	$1, (%r8)
	addq	$6, %r8
.L1946:
	cmpb	$0, (%r8)
	je	.R1944
	addq	$9, %r8
.R1944:
	cmpb	$0, (%r8)
	jne	.L1946
	addq	$1, %r8
.L1950:
	cmpb	$0, (%r8)
	je	.R1948
	subb	$1, (%r8)
.R1948:
	cmpb	$0, (%r8)
	jne	.L1950
	addb	$1, (%r8)
	subq	$1, %r8
.R1930:
	cmpb	$0, (%r8)
	jne	.L1953
.R1918:
	cmpb	$0, (%r8)
	jne	.L1954
	addb	$1, (%r8)
	addq	$1, %r8
.L1964:
	cmpb	$0, (%r8)
	je	.R1957
	subb	$1, (%r8)
	subq	$1, %r8
.L1962:
	cmpb	$0, (%r8)
	je	.R1960
	addq	$9, %r8
.R1960:
	cmpb	$0, (%r8)
	jne	.L1962
	subq	$8, %r8
.R1957:
	cmpb	$0, (%r8)
	jne	.L1964
	addq	$8, %r8
.R1864:
	cmpb	$0, (%r8)
	jne	.L1966
	subq	$9, %r8
.L1970:
	cmpb	$0, (%r8)
	je	.R1968
	subq	$9, %r8
.R1968:
	cmpb	$0, (%r8)
	jne	.L1970
	addq	$3, %r8
.L1977:
	cmpb	$0, (%r8)
	je	.R1972
	subb	$1, (%r8)
	subq	$3, %r8
	addb	$1, (%r8)
	addq	$3, %r8
.R1972:
	cmpb	$0, (%r8)
	jne	.L1977
	subq	$3, %r8
.L2064:
	cmpb	$0, (%r8)
	je	.R1979
	subb	$1, (%r8)
	addq	$3, %r8
	addb	$1, (%r8)
	addq	$6, %r8
.L2002:
	cmpb	$0, (%r8)
	je	.R1984
	addq	$1, %r8
	addb	$1, (%r8)
	addq	$3, %r8
.L1993:
	cmpb	$0, (%r8)
	je	.R1988
	subb	$1, (%r8)
	subq	$3, %r8
	subb	$1, (%r8)
	addq	$3, %r8
.R1988:
	cmpb	$0, (%r8)
	jne	.L1993
	subq	$3, %r8
.L2000:
	cmpb	$0, (%r8)
	je	.R1995
	subb	$1, (%r8)
	addq	$3, %r8
	addb	$1, (%r8)
	subq	$3, %r8
.R1995:
	cmpb	$0, (%r8)
	jne	.L2000
	addq	$8, %r8
.R1984:
	cmpb	$0, (%r8)
	jne	.L2002
	subq	$8, %r8
	addb	$1, (%r8)
	subq	$1, %r8
.L2063:
	cmpb	$0, (%r8)
	je	.R2006
	addq	$1, %r8
.L2038:
	cmpb	$0, (%r8)
	je	.R2008
	subb	$1, (%r8)
	addq	$1, %r8
	addb	$1, (%r8)
	addq	$1, %r8
.L2027:
	cmpb	$0, (%r8)
	je	.R2013
	subb	$1, (%r8)
	subq	$1, %r8
	subb	$1, (%r8)
	subq	$10, %r8
	addb	$1, (%r8)
	addq	$12, %r8
.L2025:
	cmpb	$0, (%r8)
	je	.R2020
	subb	$1, (%r8)
	subq	$2, %r8
	addb	$1, (%r8)
	addq	$2, %r8
.R2020:
	cmpb	$0, (%r8)
	jne	.L2025
	subq	$1, %r8
.R2013:
	cmpb	$0, (%r8)
	jne	.L2027
	addq	$1, %r8
.L2036:
	cmpb	$0, (%r8)
	je	.R2029
	subb	$1, (%r8)
	subq	$2, %r8
	subb	$1, (%r8)
	subq	$10, %r8
	addb	$1, (%r8)
	addq	$12, %r8
.R2029:
	cmpb	$0, (%r8)
	jne	.L2036
	subq	$3, %r8
.R2008:
	cmpb	$0, (%r8)
	jne	.L2038
	addq	$2, %r8
.L2054:
	cmpb	$0, (%r8)
	je	.R2040
	subb	$1, (%r8)
	subq	$1, %r8
	addb	$1, (%r8)
	addq	$2, %r8
.L2052:
	cmpb	$0, (%r8)
	je	.R2045
	subb	$1, (%r8)
	subq	$2, %r8
	subb	$1, (%r8)
	subq	$10, %r8
	addb	$1, (%r8)
	addq	$12, %r8
.R2045:
	cmpb	$0, (%r8)
	jne	.L2052
	subq	$1, %r8
.R2040:
	cmpb	$0, (%r8)
	jne	.L2054
	addq	$1, %r8
.L2061:
	cmpb	$0, (%r8)
	je	.R2056
	subb	$1, (%r8)
	subq	$2, %r8
	addb	$1, (%r8)
	addq	$2, %r8
.R2056:
	cmpb	$0, (%r8)
	jne	.L2061
	subq	$13, %r8
.R2006:
	cmpb	$0, (%r8)
	jne	.L2063
.R1979:
	cmpb	$0, (%r8)
	jne	.L2064
	addq	$4, %r8
.L2071:
	cmpb	$0, (%r8)
	je	.R2066
	subb	$1, (%r8)
	subq	$4, %r8
	addb	$1, (%r8)
	addq	$4, %r8
.R2066:
	cmpb	$0, (%r8)
	jne	.L2071
	subq	$4, %r8
.L2161:
	cmpb	$0, (%r8)
	je	.R2073
	subb	$1, (%r8)
	addq	$4, %r8
	addb	$1, (%r8)
	addq	$5, %r8
.L2096:
	cmpb	$0, (%r8)
	je	.R2078
	addq	$1, %r8
	addb	$1, (%r8)
	addq	$2, %r8
.L2087:
	cmpb	$0, (%r8)
	je	.R2082
	subb	$1, (%r8)
	subq	$2, %r8
	subb	$1, (%r8)
	addq	$2, %r8
.R2082:
	cmpb	$0, (%r8)
	jne	.L2087
	subq	$2, %r8
.L2094:
	cmpb	$0, (%r8)
	je	.R2089
	subb	$1, (%r8)
	addq	$2, %r8
	addb	$1, (%r8)
	subq	$2, %r8
.R2089:
	cmpb	$0, (%r8)
	jne	.L2094
	addq	$8, %r8
.R2078:
	cmpb	$0, (%r8)
	jne	.L2096
	subq	$8, %r8
	addb	$1, (%r8)
	subq	$1, %r8
.L2157:
	cmpb	$0, (%r8)
	je	.R2100
	addq	$1, %r8
.L2132:
	cmpb	$0, (%r8)
	je	.R2102
	subb	$1, (%r8)
	addq	$1, %r8
	addb	$1, (%r8)
	addq	$2, %r8
.L2121:
	cmpb	$0, (%r8)
	je	.R2107
	subb	$1, (%r8)
	subq	$2, %r8
	subb	$1, (%r8)
	subq	$10, %r8
	addb	$1, (%r8)
	addq	$11, %r8
.L2119:
	cmpb	$0, (%r8)
	je	.R2114
	subb	$1, (%r8)
	subq	$1, %r8
	addb	$1, (%r8)
	addq	$1, %r8
.R2114:
	cmpb	$0, (%r8)
	jne	.L2119
	addq	$1, %r8
.R2107:
	cmpb	$0, (%r8)
	jne	.L2121
	subq	$1, %r8
.L2130:
	cmpb	$0, (%r8)
	je	.R2123
	subb	$1, (%r8)
	subq	$1, %r8
	subb	$1, (%r8)
	subq	$10, %r8
	addb	$1, (%r8)
	addq	$11, %r8
.R2123:
	cmpb	$0, (%r8)
	jne	.L2130
	subq	$2, %r8
.R2102:
	cmpb	$0, (%r8)
	jne	.L2132
	addq	$3, %r8
.L2148:
	cmpb	$0, (%r8)
	je	.R2134
	subb	$1, (%r8)
	subq	$2, %r8
	addb	$1, (%r8)
	addq	$1, %r8
.L2146:
	cmpb	$0, (%r8)
	je	.R2139
	subb	$1, (%r8)
	subq	$1, %r8
	subb	$1, (%r8)
	subq	$10, %r8
	addb	$1, (%r8)
	addq	$11, %r8
.R2139:
	cmpb	$0, (%r8)
	jne	.L2146
	addq	$1, %r8
.R2134:
	cmpb	$0, (%r8)
	jne	.L2148
	subq	$1, %r8
.L2155:
	cmpb	$0, (%r8)
	je	.R2150
	subb	$1, (%r8)
	subq	$1, %r8
	addb	$1, (%r8)
	addq	$1, %r8
.R2150:
	cmpb	$0, (%r8)
	jne	.L2155
	subq	$12, %r8
.R2100:
	cmpb	$0, (%r8)
	jne	.L2157
	addq	$5, %r8
	addb	$1, (%r8)
	subq	$5, %r8
.R2073:
	cmpb	$0, (%r8)
	jne	.L2161
	addq	$9, %r8
.L2177:
	cmpb	$0, (%r8)
	je	.R2163
	addq	$3, %r8
.L2167:
	cmpb	$0, (%r8)
	je	.R2165
	subb	$1, (%r8)
.R2165:
	cmpb	$0, (%r8)
	jne	.L2167
	addq	$1, %r8
.L2171:
	cmpb	$0, (%r8)
	je	.R2169
	subb	$1, (%r8)
.R2169:
	cmpb	$0, (%r8)
	jne	.L2171
	addq	$1, %r8
.L2175:
	cmpb	$0, (%r8)
	je	.R2173
	subb	$1, (%r8)
.R2173:
	cmpb	$0, (%r8)
	jne	.L2175
	addq	$4, %r8
.R2163:
	cmpb	$0, (%r8)
	jne	.L2177
	subq	$9, %r8
.L2181:
	cmpb	$0, (%r8)
	je	.R2179
	subq	$9, %r8
.R2179:
	cmpb	$0, (%r8)
	jne	.L2181
	addq	$3, %r8
.L2185:
	cmpb	$0, (%r8)
	je	.R2183
	subb	$1, (%r8)
.R2183:
	cmpb	$0, (%r8)
	jne	.L2185
	addq	$1, %r8
.L2189:
	cmpb	$0, (%r8)
	je	.R2187
	subb	$1, (%r8)
.R2187:
	cmpb	$0, (%r8)
	jne	.L2189
	addq	$5, %r8
.L2209:
	cmpb	$0, (%r8)
	je	.R2191
	addq	$7, %r8
.L2198:
	cmpb	$0, (%r8)
	je	.R2193
	subb	$1, (%r8)
	subq	$6, %r8
	addb	$1, (%r8)
	addq	$6, %r8
.R2193:
	cmpb	$0, (%r8)
	jne	.L2198
	subq	$6, %r8
.L2207:
	cmpb	$0, (%r8)
	je	.R2200
	subb	$1, (%r8)
	addq	$6, %r8
	addb	$1, (%r8)
	subq	$4, %r8
	addb	$1, (%r8)
	subq	$2, %r8
.R2200:
	cmpb	$0, (%r8)
	jne	.L2207
	addq	$8, %r8
.R2191:
	cmpb	$0, (%r8)
	jne	.L2209
	subq	$9, %r8
.L2213:
	cmpb	$0, (%r8)
	je	.R2211
	subq	$9, %r8
.R2211:
	cmpb	$0, (%r8)
	jne	.L2213
	addq	$4, %r8
	addb	$1, (%r8)
	addq	$1, %r8
.L2224:
	cmpb	$0, (%r8)
	je	.R2217
	subb	$1, (%r8)
	subq	$1, %r8
	subb	$1, (%r8)
	subq	$4, %r8
	addb	$1, (%r8)
	addq	$5, %r8
.R2217:
	cmpb	$0, (%r8)
	jne	.L2224
	addq	$2, %r8
.L2249:
	cmpb	$0, (%r8)
	je	.R2226
	subb	$1, (%r8)
	subq	$7, %r8
.L2236:
	cmpb	$0, (%r8)
	je	.R2229
	subb	$1, (%r8)
	addq	$5, %r8
	addb	$1, (%r8)
	subq	$1, %r8
	addb	$2, (%r8)
	subq	$4, %r8
.R2229:
	cmpb	$0, (%r8)
	jne	.L2236
	addq	$5, %r8
.L2243:
	cmpb	$0, (%r8)
	je	.R2238
	subb	$1, (%r8)
	subq	$5, %r8
	addb	$1, (%r8)
	addq	$5, %r8
.R2238:
	cmpb	$0, (%r8)
	jne	.L2243
	subq	$1, %r8
	subb	$1, (%r8)
	addq	$1, %r8
	addb	$1, (%r8)
	addq	$2, %r8
.R2226:
	cmpb	$0, (%r8)
	jne	.L2249
	subq	$2, %r8
.L2256:
	cmpb	$0, (%r8)
	je	.R2251
	subb	$1, (%r8)
	addq	$2, %r8
	addb	$1, (%r8)
	subq	$2, %r8
.R2251:
	cmpb	$0, (%r8)
	jne	.L2256
	subq	$5, %r8
.L2263:
	cmpb	$0, (%r8)
	je	.R2258
	subb	$1, (%r8)
	addq	$5, %r8
	addb	$1, (%r8)
	subq	$5, %r8
.R2258:
	cmpb	$0, (%r8)
	jne	.L2263
	addb	$1, (%r8)
	addq	$4, %r8
.L2271:
	cmpb	$0, (%r8)
	je	.R2266
	subb	$1, (%r8)
	subq	$4, %r8
	subb	$1, (%r8)
	addq	$4, %r8
.R2266:
	cmpb	$0, (%r8)
	jne	.L2271
	addb	$1, (%r8)
	subq	$4, %r8
.L2599:
	cmpb	$0, (%r8)
	je	.R2274
	subb	$1, (%r8)
	addq	$4, %r8
	subb	$1, (%r8)
	addq	$5, %r8
.L2381:
	cmpb	$0, (%r8)
	je	.R2279
	addq	$3, %r8
.L2286:
	cmpb	$0, (%r8)
	je	.R2281
	subb	$1, (%r8)
	subq	$3, %r8
	subb	$1, (%r8)
	addq	$3, %r8
.R2281:
	cmpb	$0, (%r8)
	jne	.L2286
	addb	$1, (%r8)
	subq	$3, %r8
.L2322:
	cmpb	$0, (%r8)
	je	.R2289
	subb	$1, (%r8)
	addq	$3, %r8
	subb	$1, (%r8)
	subq	$1, %r8
.L2299:
	cmpb	$0, (%r8)
	je	.R2294
	subb	$1, (%r8)
	subq	$2, %r8
	addb	$1, (%r8)
	addq	$2, %r8
.R2294:
	cmpb	$0, (%r8)
	jne	.L2299
	subq	$2, %r8
.L2321:
	cmpb	$0, (%r8)
	je	.R2301
	subb	$1, (%r8)
	addq	$2, %r8
	addb	$1, (%r8)
	subq	$11, %r8
.L2308:
	cmpb	$0, (%r8)
	je	.R2306
	subq	$9, %r8
.R2306:
	cmpb	$0, (%r8)
	jne	.L2308
	addq	$4, %r8
.L2312:
	cmpb	$0, (%r8)
	je	.R2310
	subb	$1, (%r8)
.R2310:
	cmpb	$0, (%r8)
	jne	.L2312
	addb	$1, (%r8)
	addq	$5, %r8
.L2317:
	cmpb	$0, (%r8)
	je	.R2315
	addq	$9, %r8
.R2315:
	cmpb	$0, (%r8)
	jne	.L2317
	addq	$1, %r8
	addb	$1, (%r8)
	subq	$1, %r8
.R2301:
	cmpb	$0, (%r8)
	jne	.L2321
.R2289:
	cmpb	$0, (%r8)
	jne	.L2322
	addb	$1, (%r8)
	addq	$2, %r8
.L2330:
	cmpb	$0, (%r8)
	je	.R2325
	subb	$1, (%r8)
	subq	$2, %r8
	subb	$1, (%r8)
	addq	$2, %r8
.R2325:
	cmpb	$0, (%r8)
	jne	.L2330
	addb	$1, (%r8)
	subq	$2, %r8
.L2369:
	cmpb	$0, (%r8)
	je	.R2333
	subb	$1, (%r8)
	addq	$2, %r8
	subb	$1, (%r8)
	addq	$1, %r8
.L2343:
	cmpb	$0, (%r8)
	je	.R2338
	subb	$1, (%r8)
	subq	$3, %r8
	addb	$1, (%r8)
	addq	$3, %r8
.R2338:
	cmpb	$0, (%r8)
	jne	.L2343
	subq	$3, %r8
.L2368:
	cmpb	$0, (%r8)
	je	.R2345
	subb	$1, (%r8)
	addq	$3, %r8
	addb	$1, (%r8)
	subq	$12, %r8
.L2352:
	cmpb	$0, (%r8)
	je	.R2350
	subq	$9, %r8
.R2350:
	cmpb	$0, (%r8)
	jne	.L2352
	addq	$3, %r8
.L2356:
	cmpb	$0, (%r8)
	je	.R2354
	subb	$1, (%r8)
.R2354:
	cmpb	$0, (%r8)
	jne	.L2356
	addb	$1, (%r8)
	addq	$6, %r8
.L2361:
	cmpb	$0, (%r8)
	je	.R2359
	addq	$9, %r8
.R2359:
	cmpb	$0, (%r8)
	jne	.L2361
	addq	$1, %r8
.L2365:
	cmpb	$0, (%r8)
	je	.R2363
	subb	$1, (%r8)
.R2363:
	cmpb	$0, (%r8)
	jne	.L2365
	addb	$1, (%r8)
	subq	$1, %r8
.R2345:
	cmpb	$0, (%r8)
	jne	.L2368
.R2333:
	cmpb	$0, (%r8)
	jne	.L2369
	addb	$1, (%r8)
	addq	$1, %r8
.L2379:
	cmpb	$0, (%r8)
	je	.R2372
	subb	$1, (%r8)
	subq	$1, %r8
.L2377:
	cmpb	$0, (%r8)
	je	.R2375
	addq	$9, %r8
.R2375:
	cmpb	$0, (%r8)
	jne	.L2377
	subq	$8, %r8
.R2372:
	cmpb	$0, (%r8)
	jne	.L2379
	addq	$8, %r8
.R2279:
	cmpb	$0, (%r8)
	jne	.L2381
	subq	$9, %r8
.L2385:
	cmpb	$0, (%r8)
	je	.R2383
	subq	$9, %r8
.R2383:
	cmpb	$0, (%r8)
	jne	.L2385
	addq	$3, %r8
.L2392:
	cmpb	$0, (%r8)
	je	.R2387
	subb	$1, (%r8)
	subq	$3, %r8
	addb	$1, (%r8)
	addq	$3, %r8
.R2387:
	cmpb	$0, (%r8)
	jne	.L2392
	subq	$3, %r8
.L2499:
	cmpb	$0, (%r8)
	je	.R2394
	subb	$1, (%r8)
	addq	$3, %r8
	addb	$1, (%r8)
	addq	$6, %r8
.L2417:
	cmpb	$0, (%r8)
	je	.R2399
	addq	$1, %r8
	addb	$1, (%r8)
	addq	$1, %r8
.L2408:
	cmpb	$0, (%r8)
	je	.R2403
	subb	$1, (%r8)
	subq	$1, %r8
	subb	$1, (%r8)
	addq	$1, %r8
.R2403:
	cmpb	$0, (%r8)
	jne	.L2408
	subq	$1, %r8
.L2415:
	cmpb	$0, (%r8)
	je	.R2410
	subb	$1, (%r8)
	addq	$1, %r8
	addb	$1, (%r8)
	subq	$1, %r8
.R2410:
	cmpb	$0, (%r8)
	jne	.L2415
	addq	$8, %r8
.R2399:
	cmpb	$0, (%r8)
	jne	.L2417
	subq	$8, %r8
	addb	$1, (%r8)
	subq	$1, %r8
.L2478:
	cmpb	$0, (%r8)
	je	.R2421
	addq	$1, %r8
.L2453:
	cmpb	$0, (%r8)
	je	.R2423
	subb	$1, (%r8)
	addq	$4, %r8
	addb	$1, (%r8)
	subq	$2, %r8
.L2442:
	cmpb	$0, (%r8)
	je	.R2428
	subb	$1, (%r8)
	addq	$2, %r8
	subb	$1, (%r8)
	subq	$13, %r8
	addb	$1, (%r8)
	addq	$10, %r8
.L2440:
	cmpb	$0, (%r8)
	je	.R2435
	subb	$1, (%r8)
	addq	$3, %r8
	addb	$1, (%r8)
	subq	$3, %r8
.R2435:
	cmpb	$0, (%r8)
	jne	.L2440
	addq	$1, %r8
.R2428:
	cmpb	$0, (%r8)
	jne	.L2442
	subq	$1, %r8
.L2451:
	cmpb	$0, (%r8)
	je	.R2444
	subb	$1, (%r8)
	addq	$3, %r8
	subb	$1, (%r8)
	subq	$13, %r8
	addb	$1, (%r8)
	addq	$10, %r8
.R2444:
	cmpb	$0, (%r8)
	jne	.L2451
	subq	$1, %r8
.R2423:
	cmpb	$0, (%r8)
	jne	.L2453
	addq	$2, %r8
.L2469:
	cmpb	$0, (%r8)
	je	.R2455
	subb	$1, (%r8)
	addq	$2, %r8
	addb	$1, (%r8)
	subq	$3, %r8
.L2467:
	cmpb	$0, (%r8)
	je	.R2460
	subb	$1, (%r8)
	addq	$3, %r8
	subb	$1, (%r8)
	subq	$13, %r8
	addb	$1, (%r8)
	addq	$10, %r8
.R2460:
	cmpb	$0, (%r8)
	jne	.L2467
	addq	$1, %r8
.R2455:
	cmpb	$0, (%r8)
	jne	.L2469
	subq	$1, %r8
.L2476:
	cmpb	$0, (%r8)
	je	.R2471
	subb	$1, (%r8)
	addq	$3, %r8
	addb	$1, (%r8)
	subq	$3, %r8
.R2471:
	cmpb	$0, (%r8)
	jne	.L2476
	subq	$11, %r8
.R2421:
	cmpb	$0, (%r8)
	jne	.L2478
	addq	$5, %r8
.L2482:
	cmpb	$0, (%r8)
	je	.R2480
	subb	$1, (%r8)
.R2480:
	cmpb	$0, (%r8)
	jne	.L2482
	addq	$2, %r8
.L2489:
	cmpb	$0, (%r8)
	je	.R2484
	subb	$1, (%r8)
	subq	$7, %r8
	addb	$1, (%r8)
	addq	$7, %r8
.R2484:
	cmpb	$0, (%r8)
	jne	.L2489
	subq	$7, %r8
.L2498:
	cmpb	$0, (%r8)
	je	.R2491
	subb	$1, (%r8)
	addq	$7, %r8
	addb	$1, (%r8)
	subq	$2, %r8
	addb	$1, (%r8)
	subq	$5, %r8
.R2491:
	cmpb	$0, (%r8)
	jne	.L2498
.R2394:
	cmpb	$0, (%r8)
	jne	.L2499
	addq	$4, %r8
.L2506:
	cmpb	$0, (%r8)
	je	.R2501
	subb	$1, (%r8)
	subq	$4, %r8
	addb	$1, (%r8)
	addq	$4, %r8
.R2501:
	cmpb	$0, (%r8)
	jne	.L2506
	subq	$4, %r8
.L2593:
	cmpb	$0, (%r8)
	je	.R2508
	subb	$1, (%r8)
	addq	$4, %r8
	addb	$1, (%r8)
	addq	$5, %r8
.L2531:
	cmpb	$0, (%r8)
	je	.R2513
	addq	$1, %r8
	addb	$1, (%r8)
	addq	$2, %r8
.L2522:
	cmpb	$0, (%r8)
	je	.R2517
	subb	$1, (%r8)
	subq	$2, %r8
	subb	$1, (%r8)
	addq	$2, %r8
.R2517:
	cmpb	$0, (%r8)
	jne	.L2522
	subq	$2, %r8
.L2529:
	cmpb	$0, (%r8)
	je	.R2524
	subb	$1, (%r8)
	addq	$2, %r8
	addb	$1, (%r8)
	subq	$2, %r8
.R2524:
	cmpb	$0, (%r8)
	jne	.L2529
	addq	$8, %r8
.R2513:
	cmpb	$0, (%r8)
	jne	.L2531
	subq	$8, %r8
	addb	$1, (%r8)
	subq	$1, %r8
.L2592:
	cmpb	$0, (%r8)
	je	.R2535
	addq	$1, %r8
.L2567:
	cmpb	$0, (%r8)
	je	.R2537
	subb	$1, (%r8)
	addq	$4, %r8
	addb	$1, (%r8)
	subq	$3, %r8
.L2556:
	cmpb	$0, (%r8)
	je	.R2542
	subb	$1, (%r8)
	addq	$3, %r8
	subb	$1, (%r8)
	subq	$13, %r8
	addb	$1, (%r8)
	addq	$11, %r8
.L2554:
	cmpb	$0, (%r8)
	je	.R2549
	subb	$1, (%r8)
	addq	$2, %r8
	addb	$1, (%r8)
	subq	$2, %r8
.R2549:
	cmpb	$0, (%r8)
	jne	.L2554
	subq	$1, %r8
.R2542:
	cmpb	$0, (%r8)
	jne	.L2556
	addq	$1, %r8
.L2565:
	cmpb	$0, (%r8)
	je	.R2558
	subb	$1, (%r8)
	addq	$2, %r8
	subb	$1, (%r8)
	subq	$13, %r8
	addb	$1, (%r8)
	addq	$11, %r8
.R2558:
	cmpb	$0, (%r8)
	jne	.L2565
	subq	$2, %r8
.R2537:
	cmpb	$0, (%r8)
	jne	.L2567
	addq	$1, %r8
.L2583:
	cmpb	$0, (%r8)
	je	.R2569
	subb	$1, (%r8)
	addq	$3, %r8
	addb	$1, (%r8)
	subq	$2, %r8
.L2581:
	cmpb	$0, (%r8)
	je	.R2574
	subb	$1, (%r8)
	addq	$2, %r8
	subb	$1, (%r8)
	subq	$13, %r8
	addb	$1, (%r8)
	addq	$11, %r8
.R2574:
	cmpb	$0, (%r8)
	jne	.L2581
	subq	$1, %r8
.R2569:
	cmpb	$0, (%r8)
	jne	.L2583
	addq	$1, %r8
.L2590:
	cmpb	$0, (%r8)
	je	.R2585
	subb	$1, (%r8)
	addq	$2, %r8
	addb	$1, (%r8)
	subq	$2, %r8
.R2585:
	cmpb	$0, (%r8)
	jne	.L2590
	subq	$12, %r8
.R2535:
	cmpb	$0, (%r8)
	jne	.L2592
.R2508:
	cmpb	$0, (%r8)
	jne	.L2593
	addq	$4, %r8
.L2597:
	cmpb	$0, (%r8)
	je	.R2595
	subb	$1, (%r8)
.R2595:
	cmpb	$0, (%r8)
	jne	.L2597
	subq	$4, %r8
.R2274:
	cmpb	$0, (%r8)
	jne	.L2599
	addq	$4, %r8
.L2606:
	cmpb	$0, (%r8)
	je	.R2601
	subb	$1, (%r8)
	subq	$4, %r8
	addb	$1, (%r8)
	addq	$4, %r8
.R2601:
	cmpb	$0, (%r8)
	jne	.L2606
	subq	$4, %r8
.L2695:
	cmpb	$0, (%r8)
	je	.R2608
	subb	$1, (%r8)
	addq	$4, %r8
	addb	$1, (%r8)
	addq	$1, %r8
.L2615:
	cmpb	$0, (%r8)
	je	.R2613
	subb	$1, (%r8)
.R2613:
	cmpb	$0, (%r8)
	jne	.L2615
	addq	$2, %r8
.L2622:
	cmpb	$0, (%r8)
	je	.R2617
	subb	$1, (%r8)
	subq	$7, %r8
	addb	$1, (%r8)
	addq	$7, %r8
.R2617:
	cmpb	$0, (%r8)
	jne	.L2622
	subq	$7, %r8
.L2631:
	cmpb	$0, (%r8)
	je	.R2624
	subb	$1, (%r8)
	addq	$7, %r8
	addb	$1, (%r8)
	subq	$2, %r8
	addb	$1, (%r8)
	subq	$5, %r8
.R2624:
	cmpb	$0, (%r8)
	jne	.L2631
	addq	$9, %r8
.L2635:
	cmpb	$0, (%r8)
	je	.R2633
	addq	$9, %r8
.R2633:
	cmpb	$0, (%r8)
	jne	.L2635
	subq	$9, %r8
.L2694:
	cmpb	$0, (%r8)
	je	.R2637
	addq	$1, %r8
.L2669:
	cmpb	$0, (%r8)
	je	.R2639
	subb	$1, (%r8)
	addq	$4, %r8
	addb	$1, (%r8)
	subq	$3, %r8
.L2658:
	cmpb	$0, (%r8)
	je	.R2644
	subb	$1, (%r8)
	addq	$3, %r8
	subb	$1, (%r8)
	subq	$13, %r8
	addb	$1, (%r8)
	addq	$11, %r8
.L2656:
	cmpb	$0, (%r8)
	je	.R2651
	subb	$1, (%r8)
	addq	$2, %r8
	addb	$1, (%r8)
	subq	$2, %r8
.R2651:
	cmpb	$0, (%r8)
	jne	.L2656
	subq	$1, %r8
.R2644:
	cmpb	$0, (%r8)
	jne	.L2658
	addq	$1, %r8
.L2667:
	cmpb	$0, (%r8)
	je	.R2660
	subb	$1, (%r8)
	addq	$2, %r8
	subb	$1, (%r8)
	subq	$13, %r8
	addb	$1, (%r8)
	addq	$11, %r8
.R2660:
	cmpb	$0, (%r8)
	jne	.L2667
	subq	$2, %r8
.R2639:
	cmpb	$0, (%r8)
	jne	.L2669
	addq	$1, %r8
.L2685:
	cmpb	$0, (%r8)
	je	.R2671
	subb	$1, (%r8)
	addq	$3, %r8
	addb	$1, (%r8)
	subq	$2, %r8
.L2683:
	cmpb	$0, (%r8)
	je	.R2676
	subb	$1, (%r8)
	addq	$2, %r8
	subb	$1, (%r8)
	subq	$13, %r8
	addb	$1, (%r8)
	addq	$11, %r8
.R2676:
	cmpb	$0, (%r8)
	jne	.L2683
	subq	$1, %r8
.R2671:
	cmpb	$0, (%r8)
	jne	.L2685
	addq	$1, %r8
.L2692:
	cmpb	$0, (%r8)
	je	.R2687
	subb	$1, (%r8)
	addq	$2, %r8
	addb	$1, (%r8)
	subq	$2, %r8
.R2687:
	cmpb	$0, (%r8)
	jne	.L2692
	subq	$12, %r8
.R2637:
	cmpb	$0, (%r8)
	jne	.L2694
.R2608:
	cmpb	$0, (%r8)
	jne	.L2695
	addq	$9, %r8
.L2707:
	cmpb	$0, (%r8)
	je	.R2697
	addq	$2, %r8
.L2701:
	cmpb	$0, (%r8)
	je	.R2699
	subb	$1, (%r8)
.R2699:
	cmpb	$0, (%r8)
	jne	.L2701
	addq	$1, %r8
.L2705:
	cmpb	$0, (%r8)
	je	.R2703
	subb	$1, (%r8)
.R2703:
	cmpb	$0, (%r8)
	jne	.L2705
	addq	$6, %r8
.R2697:
	cmpb	$0, (%r8)
	jne	.L2707
	subq	$9, %r8
.L2711:
	cmpb	$0, (%r8)
	je	.R2709
	subq	$9, %r8
.R2709:
	cmpb	$0, (%r8)
	jne	.L2711
	addq	$3, %r8
.L2715:
	cmpb	$0, (%r8)
	je	.R2713
	subb	$1, (%r8)
.R2713:
	cmpb	$0, (%r8)
	jne	.L2715
	addq	$1, %r8
.L2719:
	cmpb	$0, (%r8)
	je	.R2717
	subb	$1, (%r8)
.R2717:
	cmpb	$0, (%r8)
	jne	.L2719
	addq	$5, %r8
.L2739:
	cmpb	$0, (%r8)
	je	.R2721
	addq	$5, %r8
.L2728:
	cmpb	$0, (%r8)
	je	.R2723
	subb	$1, (%r8)
	subq	$4, %r8
	addb	$1, (%r8)
	addq	$4, %r8
.R2723:
	cmpb	$0, (%r8)
	jne	.L2728
	subq	$4, %r8
.L2737:
	cmpb	$0, (%r8)
	je	.R2730
	subb	$1, (%r8)
	addq	$4, %r8
	addb	$1, (%r8)
	subq	$3, %r8
	addb	$1, (%r8)
	subq	$1, %r8
.R2730:
	cmpb	$0, (%r8)
	jne	.L2737
	addq	$8, %r8
.R2721:
	cmpb	$0, (%r8)
	jne	.L2739
	subq	$9, %r8
.L2743:
	cmpb	$0, (%r8)
	je	.R2741
	subq	$9, %r8
.R2741:
	cmpb	$0, (%r8)
	jne	.L2743
	addq	$9, %r8
.L2763:
	cmpb	$0, (%r8)
	je	.R2745
	addq	$6, %r8
.L2752:
	cmpb	$0, (%r8)
	je	.R2747
	subb	$1, (%r8)
	subq	$5, %r8
	addb	$1, (%r8)
	addq	$5, %r8
.R2747:
	cmpb	$0, (%r8)
	jne	.L2752
	subq	$5, %r8
.L2761:
	cmpb	$0, (%r8)
	je	.R2754
	subb	$1, (%r8)
	addq	$5, %r8
	addb	$1, (%r8)
	subq	$3, %r8
	addb	$1, (%r8)
	subq	$2, %r8
.R2754:
	cmpb	$0, (%r8)
	jne	.L2761
	addq	$8, %r8
.R2745:
	cmpb	$0, (%r8)
	jne	.L2763
	subq	$9, %r8
.L2767:
	cmpb	$0, (%r8)
	je	.R2765
	subq	$9, %r8
.R2765:
	cmpb	$0, (%r8)
	jne	.L2767
	addq	$9, %r8
	addb	$15, (%r8)
.L2817:
	cmpb	$0, (%r8)
	je	.R2770
.L2773:
	cmpb	$0, (%r8)
	je	.R2771
	addq	$9, %r8
.R2771:
	cmpb	$0, (%r8)
	jne	.L2773
	addb	$1, (%r8)
	addq	$1, %r8
.L2778:
	cmpb	$0, (%r8)
	je	.R2776
	subb	$1, (%r8)
.R2776:
	cmpb	$0, (%r8)
	jne	.L2778
	addq	$1, %r8
.L2782:
	cmpb	$0, (%r8)
	je	.R2780
	subb	$1, (%r8)
.R2780:
	cmpb	$0, (%r8)
	jne	.L2782
	addq	$1, %r8
.L2786:
	cmpb	$0, (%r8)
	je	.R2784
	subb	$1, (%r8)
.R2784:
	cmpb	$0, (%r8)
	jne	.L2786
	addq	$1, %r8
.L2790:
	cmpb	$0, (%r8)
	je	.R2788
	subb	$1, (%r8)
.R2788:
	cmpb	$0, (%r8)
	jne	.L2790
	addq	$1, %r8
.L2794:
	cmpb	$0, (%r8)
	je	.R2792
	subb	$1, (%r8)
.R2792:
	cmpb	$0, (%r8)
	jne	.L2794
	addq	$1, %r8
.L2798:
	cmpb	$0, (%r8)
	je	.R2796
	subb	$1, (%r8)
.R2796:
	cmpb	$0, (%r8)
	jne	.L2798
	addq	$1, %r8
.L2802:
	cmpb	$0, (%r8)
	je	.R2800
	subb	$1, (%r8)
.R2800:
	cmpb	$0, (%r8)
	jne	.L2802
	addq	$1, %r8
.L2806:
	cmpb	$0, (%r8)
	je	.R2804
	subb	$1, (%r8)
.R2804:
	cmpb	$0, (%r8)
	jne	.L2806
	addq	$1, %r8
.L2810:
	cmpb	$0, (%r8)
	je	.R2808
	subb	$1, (%r8)
.R2808:
	cmpb	$0, (%r8)
	jne	.L2810
	subq	$9, %r8
.L2814:
	cmpb	$0, (%r8)
	je	.R2812
	subq	$9, %r8
.R2812:
	cmpb	$0, (%r8)
	jne	.L2814
	addq	$9, %r8
	subb	$1, (%r8)
.R2770:
	cmpb	$0, (%r8)
	jne	.L2817
	addb	$1, (%r8)
.L2823:
	cmpb	$0, (%r8)
	je	.R2819
	addq	$1, %r8
	addb	$1, (%r8)
	addq	$8, %r8
.R2819:
	cmpb	$0, (%r8)
	jne	.L2823
	subq	$9, %r8
.L2827:
	cmpb	$0, (%r8)
	je	.R2825
	subq	$9, %r8
.R2825:
	cmpb	$0, (%r8)
	jne	.L2827
	addq	$9, %r8
.L2896:
	cmpb	$0, (%r8)
	je	.R2829
	addq	$1, %r8
	subb	$1, (%r8)
	addq	$4, %r8
.L2838:
	cmpb	$0, (%r8)
	je	.R2833
	subb	$1, (%r8)
	subq	$4, %r8
	addb	$1, (%r8)
	addq	$4, %r8
.R2833:
	cmpb	$0, (%r8)
	jne	.L2838
	subq	$4, %r8
.L2870:
	cmpb	$0, (%r8)
	je	.R2840
	subb	$1, (%r8)
	addq	$4, %r8
	addb	$1, (%r8)
	subq	$5, %r8
.L2865:
	cmpb	$0, (%r8)
	je	.R2845
	subb	$1, (%r8)
	addq	$2, %r8
.L2853:
	cmpb	$0, (%r8)
	je	.R2848
	subb	$1, (%r8)
	subq	$2, %r8
	addb	$1, (%r8)
	addq	$2, %r8
.R2848:
	cmpb	$0, (%r8)
	jne	.L2853
	subq	$2, %r8
.L2862:
	cmpb	$0, (%r8)
	je	.R2855
	subb	$1, (%r8)
	addq	$2, %r8
	addb	$1, (%r8)
	addq	$2, %r8
	addb	$1, (%r8)
	subq	$4, %r8
.R2855:
	cmpb	$0, (%r8)
	jne	.L2862
	addb	$1, (%r8)
	addq	$9, %r8
.R2845:
	cmpb	$0, (%r8)
	jne	.L2865
	subq	$8, %r8
.L2869:
	cmpb	$0, (%r8)
	je	.R2867
	subq	$9, %r8
.R2867:
	cmpb	$0, (%r8)
	jne	.L2869
.R2840:
	cmpb	$0, (%r8)
	jne	.L2870
	addq	$9, %r8
.L2874:
	cmpb	$0, (%r8)
	je	.R2872
	addq	$9, %r8
.R2872:
	cmpb	$0, (%r8)
	jne	.L2874
	subq	$9, %r8
.L2885:
	cmpb	$0, (%r8)
	je	.R2876
	addq	$1, %r8
.L2883:
	cmpb	$0, (%r8)
	je	.R2878
	subb	$1, (%r8)
	addq	$9, %r8
	addb	$1, (%r8)
	subq	$9, %r8
.R2878:
	cmpb	$0, (%r8)
	jne	.L2883
	subq	$10, %r8
.R2876:
	cmpb	$0, (%r8)
	jne	.L2885
	addq	$1, %r8
.L2892:
	cmpb	$0, (%r8)
	je	.R2887
	subb	$1, (%r8)
	addq	$9, %r8
	addb	$1, (%r8)
	subq	$9, %r8
.R2887:
	cmpb	$0, (%r8)
	jne	.L2892
	subq	$1, %r8
	addb	$1, (%r8)
	addq	$8, %r8
.R2829:
	cmpb	$0, (%r8)
	jne	.L2896
	subq	$9, %r8
.L2939:
	cmpb	$0, (%r8)
	je	.R2898
	addq	$1, %r8
.L2902:
	cmpb	$0, (%r8)
	je	.R2900
	subb	$1, (%r8)
.R2900:
	cmpb	$0, (%r8)
	jne	.L2902
	subq	$1, %r8
	subb	$1, (%r8)
	addq	$4, %r8
.L2928:
	cmpb	$0, (%r8)
	je	.R2906
	subb	$1, (%r8)
	subq	$4, %r8
	addb	$1, (%r8)
	addq	$1, %r8
.L2919:
	cmpb	$0, (%r8)
	je	.R2911
	subq	$1, %r8
	subb	$1, (%r8)
	addq	$1, %r8
	subb	$1, (%r8)
	subq	$6, %r8
	addb	$1, (%r8)
	addq	$6, %r8
.R2911:
	cmpb	$0, (%r8)
	jne	.L2919
	subq	$1, %r8
.L2926:
	cmpb	$0, (%r8)
	je	.R2921
	subb	$1, (%r8)
	addq	$1, %r8
	addb	$1, (%r8)
	subq	$1, %r8
.R2921:
	cmpb	$0, (%r8)
	jne	.L2926
	addq	$4, %r8
.R2906:
	cmpb	$0, (%r8)
	jne	.L2928
	subq	$3, %r8
.L2935:
	cmpb	$0, (%r8)
	je	.R2930
	subb	$1, (%r8)
	addq	$3, %r8
	addb	$1, (%r8)
	subq	$3, %r8
.R2930:
	cmpb	$0, (%r8)
	jne	.L2935
	subq	$1, %r8
	addb	$1, (%r8)
	subq	$9, %r8
.R2898:
	cmpb	$0, (%r8)
	jne	.L2939
	addq	$9, %r8
.L2945:
	cmpb	$0, (%r8)
	je	.R2941
	addq	$1, %r8
	addb	$1, (%r8)
	addq	$8, %r8
.R2941:
	cmpb	$0, (%r8)
	jne	.L2945
	subq	$9, %r8
.L2949:
	cmpb	$0, (%r8)
	je	.R2947
	subq	$9, %r8
.R2947:
	cmpb	$0, (%r8)
	jne	.L2949
	addq	$9, %r8
.L3018:
	cmpb	$0, (%r8)
	je	.R2951
	addq	$1, %r8
	subb	$1, (%r8)
	addq	$5, %r8
.L2960:
	cmpb	$0, (%r8)
	je	.R2955
	subb	$1, (%r8)
	subq	$5, %r8
	addb	$1, (%r8)
	addq	$5, %r8
.R2955:
	cmpb	$0, (%r8)
	jne	.L2960
	subq	$5, %r8
.L2992:
	cmpb	$0, (%r8)
	je	.R2962
	subb	$1, (%r8)
	addq	$5, %r8
	addb	$1, (%r8)
	subq	$6, %r8
.L2987:
	cmpb	$0, (%r8)
	je	.R2967
	subb	$1, (%r8)
	addq	$3, %r8
.L2975:
	cmpb	$0, (%r8)
	je	.R2970
	subb	$1, (%r8)
	subq	$3, %r8
	addb	$1, (%r8)
	addq	$3, %r8
.R2970:
	cmpb	$0, (%r8)
	jne	.L2975
	subq	$3, %r8
.L2984:
	cmpb	$0, (%r8)
	je	.R2977
	subb	$1, (%r8)
	addq	$3, %r8
	addb	$1, (%r8)
	addq	$1, %r8
	addb	$1, (%r8)
	subq	$4, %r8
.R2977:
	cmpb	$0, (%r8)
	jne	.L2984
	addb	$1, (%r8)
	addq	$9, %r8
.R2967:
	cmpb	$0, (%r8)
	jne	.L2987
	subq	$8, %r8
.L2991:
	cmpb	$0, (%r8)
	je	.R2989
	subq	$9, %r8
.R2989:
	cmpb	$0, (%r8)
	jne	.L2991
.R2962:
	cmpb	$0, (%r8)
	jne	.L2992
	addq	$9, %r8
.L2996:
	cmpb	$0, (%r8)
	je	.R2994
	addq	$9, %r8
.R2994:
	cmpb	$0, (%r8)
	jne	.L2996
	subq	$9, %r8
.L3007:
	cmpb	$0, (%r8)
	je	.R2998
	addq	$2, %r8
.L3005:
	cmpb	$0, (%r8)
	je	.R3000
	subb	$1, (%r8)
	addq	$9, %r8
	addb	$1, (%r8)
	subq	$9, %r8
.R3000:
	cmpb	$0, (%r8)
	jne	.L3005
	subq	$11, %r8
.R2998:
	cmpb	$0, (%r8)
	jne	.L3007
	addq	$2, %r8
.L3014:
	cmpb	$0, (%r8)
	je	.R3009
	subb	$1, (%r8)
	addq	$9, %r8
	addb	$1, (%r8)
	subq	$9, %r8
.R3009:
	cmpb	$0, (%r8)
	jne	.L3014
	subq	$2, %r8
	addb	$1, (%r8)
	addq	$8, %r8
.R2951:
	cmpb	$0, (%r8)
	jne	.L3018
	subq	$9, %r8
.L3061:
	cmpb	$0, (%r8)
	je	.R3020
	addq	$1, %r8
.L3024:
	cmpb	$0, (%r8)
	je	.R3022
	subb	$1, (%r8)
.R3022:
	cmpb	$0, (%r8)
	jne	.L3024
	subq	$1, %r8
	subb	$1, (%r8)
	addq	$4, %r8
.L3050:
	cmpb	$0, (%r8)
	je	.R3028
	subb	$1, (%r8)
	subq	$4, %r8
	addb	$1, (%r8)
	addq	$1, %r8
.L3041:
	cmpb	$0, (%r8)
	je	.R3033
	subq	$1, %r8
	subb	$1, (%r8)
	addq	$1, %r8
	subb	$1, (%r8)
	subq	$6, %r8
	addb	$1, (%r8)
	addq	$6, %r8
.R3033:
	cmpb	$0, (%r8)
	jne	.L3041
	subq	$1, %r8
.L3048:
	cmpb	$0, (%r8)
	je	.R3043
	subb	$1, (%r8)
	addq	$1, %r8
	addb	$1, (%r8)
	subq	$1, %r8
.R3043:
	cmpb	$0, (%r8)
	jne	.L3048
	addq	$4, %r8
.R3028:
	cmpb	$0, (%r8)
	jne	.L3050
	subq	$3, %r8
.L3057:
	cmpb	$0, (%r8)
	je	.R3052
	subb	$1, (%r8)
	addq	$3, %r8
	addb	$1, (%r8)
	subq	$3, %r8
.R3052:
	cmpb	$0, (%r8)
	jne	.L3057
	subq	$1, %r8
	addb	$1, (%r8)
	subq	$9, %r8
.R3020:
	cmpb	$0, (%r8)
	jne	.L3061
	addq	$9, %r8
.L3072:
	cmpb	$0, (%r8)
	je	.R3063
	addq	$4, %r8
.L3070:
	cmpb	$0, (%r8)
	je	.R3065
	subb	$1, (%r8)
	subq	$36, %r8
	addb	$1, (%r8)
	addq	$36, %r8
.R3065:
	cmpb	$0, (%r8)
	jne	.L3070
	addq	$5, %r8
.R3063:
	cmpb	$0, (%r8)
	jne	.L3072
	subq	$9, %r8
.L3076:
	cmpb	$0, (%r8)
	je	.R3074
	subq	$9, %r8
.R3074:
	cmpb	$0, (%r8)
	jne	.L3076
	addq	$9, %r8
	addb	$15, (%r8)
.L3091:
	cmpb	$0, (%r8)
	je	.R3079
.L3082:
	cmpb	$0, (%r8)
	je	.R3080
	addq	$9, %r8
.R3080:
	cmpb	$0, (%r8)
	jne	.L3082
	subq	$9, %r8
	subb	$1, (%r8)
	subq	$9, %r8
.L3088:
	cmpb	$0, (%r8)
	je	.R3086
	subq	$9, %r8
.R3086:
	cmpb	$0, (%r8)
	jne	.L3088
	addq	$9, %r8
	subb	$1, (%r8)
.R3079:
	cmpb	$0, (%r8)
	jne	.L3091
	addb	$1, (%r8)
	addq	$21, %r8
	addb	$1, (%r8)
	subq	$3, %r8
.L3098:
	cmpb	$0, (%r8)
	je	.R3096
	subq	$9, %r8
.R3096:
	cmpb	$0, (%r8)
	jne	.L3098
	addq	$9, %r8
.L3202:
	cmpb	$0, (%r8)
	je	.R3100
	addq	$3, %r8
.L3107:
	cmpb	$0, (%r8)
	je	.R3102
	subb	$1, (%r8)
	subq	$3, %r8
	subb	$1, (%r8)
	addq	$3, %r8
.R3102:
	cmpb	$0, (%r8)
	jne	.L3107
	addb	$1, (%r8)
	subq	$3, %r8
.L3143:
	cmpb	$0, (%r8)
	je	.R3110
	subb	$1, (%r8)
	addq	$3, %r8
	subb	$1, (%r8)
	addq	$1, %r8
.L3120:
	cmpb	$0, (%r8)
	je	.R3115
	subb	$1, (%r8)
	subq	$4, %r8
	addb	$1, (%r8)
	addq	$4, %r8
.R3115:
	cmpb	$0, (%r8)
	jne	.L3120
	subq	$4, %r8
.L3142:
	cmpb	$0, (%r8)
	je	.R3122
	subb	$1, (%r8)
	addq	$4, %r8
	addb	$1, (%r8)
	subq	$13, %r8
.L3129:
	cmpb	$0, (%r8)
	je	.R3127
	subq	$9, %r8
.R3127:
	cmpb	$0, (%r8)
	jne	.L3129
	addq	$4, %r8
.L3133:
	cmpb	$0, (%r8)
	je	.R3131
	subb	$1, (%r8)
.R3131:
	cmpb	$0, (%r8)
	jne	.L3133
	addb	$1, (%r8)
	addq	$5, %r8
.L3138:
	cmpb	$0, (%r8)
	je	.R3136
	addq	$9, %r8
.R3136:
	cmpb	$0, (%r8)
	jne	.L3138
	addq	$1, %r8
	addb	$1, (%r8)
	subq	$1, %r8
.R3122:
	cmpb	$0, (%r8)
	jne	.L3142
.R3110:
	cmpb	$0, (%r8)
	jne	.L3143
	addb	$1, (%r8)
	addq	$4, %r8
.L3151:
	cmpb	$0, (%r8)
	je	.R3146
	subb	$1, (%r8)
	subq	$4, %r8
	subb	$1, (%r8)
	addq	$4, %r8
.R3146:
	cmpb	$0, (%r8)
	jne	.L3151
	addb	$1, (%r8)
	subq	$4, %r8
.L3190:
	cmpb	$0, (%r8)
	je	.R3154
	subb	$1, (%r8)
	addq	$4, %r8
	subb	$1, (%r8)
	subq	$1, %r8
.L3164:
	cmpb	$0, (%r8)
	je	.R3159
	subb	$1, (%r8)
	subq	$3, %r8
	addb	$1, (%r8)
	addq	$3, %r8
.R3159:
	cmpb	$0, (%r8)
	jne	.L3164
	subq	$3, %r8
.L3189:
	cmpb	$0, (%r8)
	je	.R3166
	subb	$1, (%r8)
	addq	$3, %r8
	addb	$1, (%r8)
	subq	$12, %r8
.L3173:
	cmpb	$0, (%r8)
	je	.R3171
	subq	$9, %r8
.R3171:
	cmpb	$0, (%r8)
	jne	.L3173
	addq	$3, %r8
.L3177:
	cmpb	$0, (%r8)
	je	.R3175
	subb	$1, (%r8)
.R3175:
	cmpb	$0, (%r8)
	jne	.L3177
	addb	$1, (%r8)
	addq	$6, %r8
.L3182:
	cmpb	$0, (%r8)
	je	.R3180
	addq	$9, %r8
.R3180:
	cmpb	$0, (%r8)
	jne	.L3182
	addq	$1, %r8
.L3186:
	cmpb	$0, (%r8)
	je	.R3184
	subb	$1, (%r8)
.R3184:
	cmpb	$0, (%r8)
	jne	.L3186
	addb	$1, (%r8)
	subq	$1, %r8
.R3166:
	cmpb	$0, (%r8)
	jne	.L3189
.R3154:
	cmpb	$0, (%r8)
	jne	.L3190
	addb	$1, (%r8)
	addq	$1, %r8
.L3200:
	cmpb	$0, (%r8)
	je	.R3193
	subb	$1, (%r8)
	subq	$1, %r8
.L3198:
	cmpb	$0, (%r8)
	je	.R3196
	addq	$9, %r8
.R3196:
	cmpb	$0, (%r8)
	jne	.L3198
	subq	$8, %r8
.R3193:
	cmpb	$0, (%r8)
	jne	.L3200
	addq	$8, %r8
.R3100:
	cmpb	$0, (%r8)
	jne	.L3202
	subq	$9, %r8
.L3206:
	cmpb	$0, (%r8)
	je	.R3204
	subq	$9, %r8
.R3204:
	cmpb	$0, (%r8)
	jne	.L3206
	addq	$2, %r8
	subb	$1, (%r8)
	addq	$2, %r8
.L3215:
	cmpb	$0, (%r8)
	je	.R3210
	subb	$1, (%r8)
	subq	$4, %r8
	addb	$1, (%r8)
	addq	$4, %r8
.R3210:
	cmpb	$0, (%r8)
	jne	.L3215
	subq	$4, %r8
.L3226:
	cmpb	$0, (%r8)
	je	.R3217
	subb	$1, (%r8)
	addq	$4, %r8
	addb	$1, (%r8)
	subq	$2, %r8
.L3224:
	cmpb	$0, (%r8)
	je	.R3222
	subb	$1, (%r8)
.R3222:
	cmpb	$0, (%r8)
	jne	.L3224
	subq	$2, %r8
.R3217:
	cmpb	$0, (%r8)
	jne	.L3226
	addq	$2, %r8
.R664:
	cmpb	$0, (%r8)
	jne	.L3228
	subq	$2, %r8
	addb	$1, (%r8)
	addq	$4, %r8
.L3237:
	cmpb	$0, (%r8)
	je	.R3232
	subb	$1, (%r8)
	subq	$4, %r8
	subb	$1, (%r8)
	addq	$4, %r8
.R3232:
	cmpb	$0, (%r8)
	jne	.L3237
	addb	$1, (%r8)
	subq	$4, %r8
.L3247:
	cmpb	$0, (%r8)
	je	.R3240
	subb	$1, (%r8)
	addq	$4, %r8
	subb	$1, (%r8)
	subq	$6, %r8
	movq	$1, %rax
	movq	$1, %rdi
	movq	%r8, %rsi
	movq	$1, %rdx
	syscall
	addq	$2, %r8
.R3240:
	cmpb	$0, (%r8)
	jne	.L3247
	addq	$4, %r8
.L3254:
	cmpb	$0, (%r8)
	je	.R3249
	subb	$1, (%r8)
	subq	$7, %r8
	movq	$1, %rax
	movq	$1, %rdi
	movq	%r8, %rsi
	movq	$1, %rdx
	syscall
	addq	$7, %r8
.R3249:
	cmpb	$0, (%r8)
	jne	.L3254
	subq	$3, %r8
.L3258:
	cmpb	$0, (%r8)
	je	.R3256
	subb	$1, (%r8)
.R3256:
	cmpb	$0, (%r8)
	jne	.L3258
	addq	$1, %r8
.L3262:
	cmpb	$0, (%r8)
	je	.R3260
	subb	$1, (%r8)
.R3260:
	cmpb	$0, (%r8)
	jne	.L3262
	addq	$1, %r8
.L3266:
	cmpb	$0, (%r8)
	je	.R3264
	subb	$1, (%r8)
.R3264:
	cmpb	$0, (%r8)
	jne	.L3266
	addq	$1, %r8
.L3270:
	cmpb	$0, (%r8)
	je	.R3268
	subb	$1, (%r8)
.R3268:
	cmpb	$0, (%r8)
	jne	.L3270
	addq	$1, %r8
.L3274:
	cmpb	$0, (%r8)
	je	.R3272
	subb	$1, (%r8)
.R3272:
	cmpb	$0, (%r8)
	jne	.L3274
	addq	$1, %r8
.L3278:
	cmpb	$0, (%r8)
	je	.R3276
	subb	$1, (%r8)
.R3276:
	cmpb	$0, (%r8)
	jne	.L3278
	addq	$3, %r8
.L3306:
	cmpb	$0, (%r8)
	je	.R3280
	addq	$1, %r8
.L3284:
	cmpb	$0, (%r8)
	je	.R3282
	subb	$1, (%r8)
.R3282:
	cmpb	$0, (%r8)
	jne	.L3284
	addq	$1, %r8
.L3288:
	cmpb	$0, (%r8)
	je	.R3286
	subb	$1, (%r8)
.R3286:
	cmpb	$0, (%r8)
	jne	.L3288
	addq	$1, %r8
.L3292:
	cmpb	$0, (%r8)
	je	.R3290
	subb	$1, (%r8)
.R3290:
	cmpb	$0, (%r8)
	jne	.L3292
	addq	$1, %r8
.L3296:
	cmpb	$0, (%r8)
	je	.R3294
	subb	$1, (%r8)
.R3294:
	cmpb	$0, (%r8)
	jne	.L3296
	addq	$1, %r8
.L3300:
	cmpb	$0, (%r8)
	je	.R3298
	subb	$1, (%r8)
.R3298:
	cmpb	$0, (%r8)
	jne	.L3300
	addq	$1, %r8
.L3304:
	cmpb	$0, (%r8)
	je	.R3302
	subb	$1, (%r8)
.R3302:
	cmpb	$0, (%r8)
	jne	.L3304
	addq	$3, %r8
.R3280:
	cmpb	$0, (%r8)
	jne	.L3306
	subq	$9, %r8
.L3310:
	cmpb	$0, (%r8)
	je	.R3308
	subq	$9, %r8
.R3308:
	cmpb	$0, (%r8)
	jne	.L3310
	addq	$9, %r8
.L3318:
	cmpb	$0, (%r8)
	je	.R3312
	addq	$5, %r8
.L3316:
	cmpb	$0, (%r8)
	je	.R3314
	subb	$1, (%r8)
.R3314:
	cmpb	$0, (%r8)
	jne	.L3316
	addq	$4, %r8
.R3312:
	cmpb	$0, (%r8)
	jne	.L3318
	subq	$9, %r8
.L3322:
	cmpb	$0, (%r8)
	je	.R3320
	subq	$9, %r8
.R3320:
	cmpb	$0, (%r8)
	jne	.L3322
	addq	$1, %r8
	addb	$11, (%r8)
.L3334:
	cmpb	$0, (%r8)
	je	.R3325
	subb	$1, (%r8)
.L3332:
	cmpb	$0, (%r8)
	je	.R3327
	subb	$1, (%r8)
	addq	$9, %r8
	addb	$1, (%r8)
	subq	$9, %r8
.R3327:
	cmpb	$0, (%r8)
	jne	.L3332
	addq	$9, %r8
.R3325:
	cmpb	$0, (%r8)
	jne	.L3334
	addq	$4, %r8
	addb	$1, (%r8)
	addq	$9, %r8
	addb	$1, (%r8)
	subq	$14, %r8
.L3342:
	cmpb	$0, (%r8)
	je	.R3340
	subq	$9, %r8
.R3340:
	cmpb	$0, (%r8)
	jne	.L3342
	addq	$7, %r8
.L3349:
	cmpb	$0, (%r8)
	je	.R3344
	subb	$1, (%r8)
	subq	$7, %r8
	addb	$1, (%r8)
	addq	$7, %r8
.R3344:
	cmpb	$0, (%r8)
	jne	.L3349
	subq	$7, %r8
.L3389:
	cmpb	$0, (%r8)
	je	.R3351
	subb	$1, (%r8)
	addq	$7, %r8
	addb	$1, (%r8)
.L3357:
	cmpb	$0, (%r8)
	je	.R3355
	subb	$1, (%r8)
.R3355:
	cmpb	$0, (%r8)
	jne	.L3357
	addq	$2, %r8
.L3361:
	cmpb	$0, (%r8)
	je	.R3359
	addq	$9, %r8
.R3359:
	cmpb	$0, (%r8)
	jne	.L3361
	subq	$9, %r8
.L3388:
	cmpb	$0, (%r8)
	je	.R3363
	addq	$7, %r8
.L3370:
	cmpb	$0, (%r8)
	je	.R3365
	subb	$1, (%r8)
	subq	$6, %r8
	addb	$1, (%r8)
	addq	$6, %r8
.R3365:
	cmpb	$0, (%r8)
	jne	.L3370
	subq	$6, %r8
.L3386:
	cmpb	$0, (%r8)
	je	.R3372
	subb	$1, (%r8)
	addq	$6, %r8
	addb	$1, (%r8)
	subq	$7, %r8
.L3379:
	cmpb	$0, (%r8)
	je	.R3377
	subq	$9, %r8
.R3377:
	cmpb	$0, (%r8)
	jne	.L3379
	addq	$7, %r8
.L3383:
	cmpb	$0, (%r8)
	je	.R3381
	subb	$1, (%r8)
.R3381:
	cmpb	$0, (%r8)
	jne	.L3383
	addb	$1, (%r8)
	addq	$3, %r8
.R3372:
	cmpb	$0, (%r8)
	jne	.L3386
	subq	$10, %r8
.R3363:
	cmpb	$0, (%r8)
	jne	.L3388
.R3351:
	cmpb	$0, (%r8)
	jne	.L3389
	addq	$7, %r8
.L3396:
	cmpb	$0, (%r8)
	je	.R3391
	subb	$1, (%r8)
	subq	$7, %r8
	addb	$1, (%r8)
	addq	$7, %r8
.R3391:
	cmpb	$0, (%r8)
	jne	.L3396
	subq	$7, %r8
.L3490:
	cmpb	$0, (%r8)
	je	.R3398
	subb	$1, (%r8)
	addq	$7, %r8
	addb	$1, (%r8)
	addq	$2, %r8
.L3421:
	cmpb	$0, (%r8)
	je	.R3403
	addq	$1, %r8
	addb	$1, (%r8)
	addq	$4, %r8
.L3412:
	cmpb	$0, (%r8)
	je	.R3407
	subb	$1, (%r8)
	subq	$4, %r8
	subb	$1, (%r8)
	addq	$4, %r8
.R3407:
	cmpb	$0, (%r8)
	jne	.L3412
	subq	$4, %r8
.L3419:
	cmpb	$0, (%r8)
	je	.R3414
	subb	$1, (%r8)
	addq	$4, %r8
	addb	$1, (%r8)
	subq	$4, %r8
.R3414:
	cmpb	$0, (%r8)
	jne	.L3419
	addq	$8, %r8
.R3403:
	cmpb	$0, (%r8)
	jne	.L3421
	subq	$2, %r8
	addb	$1, (%r8)
	subq	$7, %r8
.L3434:
	cmpb	$0, (%r8)
	je	.R3425
	addq	$5, %r8
.L3432:
	cmpb	$0, (%r8)
	je	.R3427
	subb	$1, (%r8)
	addq	$2, %r8
	addb	$1, (%r8)
	subq	$2, %r8
.R3427:
	cmpb	$0, (%r8)
	jne	.L3432
	subq	$14, %r8
.R3425:
	cmpb	$0, (%r8)
	jne	.L3434
	addq	$9, %r8
.L3438:
	cmpb	$0, (%r8)
	je	.R3436
	addq	$9, %r8
.R3436:
	cmpb	$0, (%r8)
	jne	.L3438
	subq	$9, %r8
.L3481:
	cmpb	$0, (%r8)
	je	.R3440
	addq	$1, %r8
.L3444:
	cmpb	$0, (%r8)
	je	.R3442
	subb	$1, (%r8)
.R3442:
	cmpb	$0, (%r8)
	jne	.L3444
	subq	$1, %r8
	subb	$1, (%r8)
	addq	$7, %r8
.L3470:
	cmpb	$0, (%r8)
	je	.R3448
	subb	$1, (%r8)
	subq	$7, %r8
	addb	$1, (%r8)
	addq	$1, %r8
.L3461:
	cmpb	$0, (%r8)
	je	.R3453
	subq	$1, %r8
	subb	$1, (%r8)
	addq	$1, %r8
	subb	$1, (%r8)
	subq	$3, %r8
	addb	$1, (%r8)
	addq	$3, %r8
.R3453:
	cmpb	$0, (%r8)
	jne	.L3461
	subq	$1, %r8
.L3468:
	cmpb	$0, (%r8)
	je	.R3463
	subb	$1, (%r8)
	addq	$1, %r8
	addb	$1, (%r8)
	subq	$1, %r8
.R3463:
	cmpb	$0, (%r8)
	jne	.L3468
	addq	$7, %r8
.R3448:
	cmpb	$0, (%r8)
	jne	.L3470
	subq	$6, %r8
.L3477:
	cmpb	$0, (%r8)
	je	.R3472
	subb	$1, (%r8)
	addq	$6, %r8
	addb	$1, (%r8)
	subq	$6, %r8
.R3472:
	cmpb	$0, (%r8)
	jne	.L3477
	subq	$1, %r8
	addb	$1, (%r8)
	subq	$9, %r8
.R3440:
	cmpb	$0, (%r8)
	jne	.L3481
	addq	$7, %r8
	subb	$1, (%r8)
	subq	$4, %r8
.L3487:
	cmpb	$0, (%r8)
	je	.R3485
	subb	$1, (%r8)
.R3485:
	cmpb	$0, (%r8)
	jne	.L3487
	addb	$1, (%r8)
	subq	$3, %r8
.R3398:
	cmpb	$0, (%r8)
	jne	.L3490
	addb	$1, (%r8)
	addq	$7, %r8
.L3498:
	cmpb	$0, (%r8)
	je	.R3493
	subb	$1, (%r8)
	subq	$7, %r8
	subb	$1, (%r8)
	addq	$7, %r8
.R3493:
	cmpb	$0, (%r8)
	jne	.L3498
	addb	$1, (%r8)
	subq	$7, %r8
.L3707:
	cmpb	$0, (%r8)
	je	.R3501
	subb	$1, (%r8)
	addq	$7, %r8
	subb	$1, (%r8)
	addq	$2, %r8
.L3515:
	cmpb	$0, (%r8)
	je	.R3506
	addq	$5, %r8
.L3513:
	cmpb	$0, (%r8)
	je	.R3508
	subb	$1, (%r8)
	addq	$2, %r8
	addb	$1, (%r8)
	subq	$2, %r8
.R3508:
	cmpb	$0, (%r8)
	jne	.L3513
	addq	$4, %r8
.R3506:
	cmpb	$0, (%r8)
	jne	.L3515
	subq	$9, %r8
.L3558:
	cmpb	$0, (%r8)
	je	.R3517
	addq	$1, %r8
.L3521:
	cmpb	$0, (%r8)
	je	.R3519
	subb	$1, (%r8)
.R3519:
	cmpb	$0, (%r8)
	jne	.L3521
	subq	$1, %r8
	subb	$1, (%r8)
	addq	$7, %r8
.L3547:
	cmpb	$0, (%r8)
	je	.R3525
	subb	$1, (%r8)
	subq	$7, %r8
	addb	$1, (%r8)
	addq	$1, %r8
.L3538:
	cmpb	$0, (%r8)
	je	.R3530
	subq	$1, %r8
	subb	$1, (%r8)
	addq	$1, %r8
	subb	$1, (%r8)
	subq	$3, %r8
	addb	$1, (%r8)
	addq	$3, %r8
.R3530:
	cmpb	$0, (%r8)
	jne	.L3538
	subq	$1, %r8
.L3545:
	cmpb	$0, (%r8)
	je	.R3540
	subb	$1, (%r8)
	addq	$1, %r8
	addb	$1, (%r8)
	subq	$1, %r8
.R3540:
	cmpb	$0, (%r8)
	jne	.L3545
	addq	$7, %r8
.R3525:
	cmpb	$0, (%r8)
	jne	.L3547
	subq	$6, %r8
.L3554:
	cmpb	$0, (%r8)
	je	.R3549
	subb	$1, (%r8)
	addq	$6, %r8
	addb	$1, (%r8)
	subq	$6, %r8
.R3549:
	cmpb	$0, (%r8)
	jne	.L3554
	subq	$1, %r8
	addb	$1, (%r8)
	subq	$9, %r8
.R3517:
	cmpb	$0, (%r8)
	jne	.L3558
	addq	$1, %r8
	addb	$5, (%r8)
.L3570:
	cmpb	$0, (%r8)
	je	.R3561
	subb	$1, (%r8)
.L3568:
	cmpb	$0, (%r8)
	je	.R3563
	subb	$1, (%r8)
	addq	$9, %r8
	addb	$1, (%r8)
	subq	$9, %r8
.R3563:
	cmpb	$0, (%r8)
	jne	.L3568
	addq	$9, %r8
.R3561:
	cmpb	$0, (%r8)
	jne	.L3570
	addq	$4, %r8
	addb	$1, (%r8)
	subq	$5, %r8
.L3576:
	cmpb	$0, (%r8)
	je	.R3574
	subq	$9, %r8
.R3574:
	cmpb	$0, (%r8)
	jne	.L3576
	addq	$9, %r8
.L3680:
	cmpb	$0, (%r8)
	je	.R3578
	addq	$5, %r8
.L3585:
	cmpb	$0, (%r8)
	je	.R3580
	subb	$1, (%r8)
	subq	$5, %r8
	subb	$1, (%r8)
	addq	$5, %r8
.R3580:
	cmpb	$0, (%r8)
	jne	.L3585
	addb	$1, (%r8)
	subq	$5, %r8
.L3621:
	cmpb	$0, (%r8)
	je	.R3588
	subb	$1, (%r8)
	addq	$5, %r8
	subb	$1, (%r8)
	addq	$2, %r8
.L3598:
	cmpb	$0, (%r8)
	je	.R3593
	subb	$1, (%r8)
	subq	$7, %r8
	addb	$1, (%r8)
	addq	$7, %r8
.R3593:
	cmpb	$0, (%r8)
	jne	.L3598
	subq	$7, %r8
.L3620:
	cmpb	$0, (%r8)
	je	.R3600
	subb	$1, (%r8)
	addq	$7, %r8
	addb	$1, (%r8)
	subq	$16, %r8
.L3607:
	cmpb	$0, (%r8)
	je	.R3605
	subq	$9, %r8
.R3605:
	cmpb	$0, (%r8)
	jne	.L3607
	addq	$4, %r8
.L3611:
	cmpb	$0, (%r8)
	je	.R3609
	subb	$1, (%r8)
.R3609:
	cmpb	$0, (%r8)
	jne	.L3611
	addb	$1, (%r8)
	addq	$5, %r8
.L3616:
	cmpb	$0, (%r8)
	je	.R3614
	addq	$9, %r8
.R3614:
	cmpb	$0, (%r8)
	jne	.L3616
	addq	$1, %r8
	addb	$1, (%r8)
	subq	$1, %r8
.R3600:
	cmpb	$0, (%r8)
	jne	.L3620
.R3588:
	cmpb	$0, (%r8)
	jne	.L3621
	addb	$1, (%r8)
	addq	$7, %r8
.L3629:
	cmpb	$0, (%r8)
	je	.R3624
	subb	$1, (%r8)
	subq	$7, %r8
	subb	$1, (%r8)
	addq	$7, %r8
.R3624:
	cmpb	$0, (%r8)
	jne	.L3629
	addb	$1, (%r8)
	subq	$7, %r8
.L3668:
	cmpb	$0, (%r8)
	je	.R3632
	subb	$1, (%r8)
	addq	$7, %r8
	subb	$1, (%r8)
	subq	$2, %r8
.L3642:
	cmpb	$0, (%r8)
	je	.R3637
	subb	$1, (%r8)
	subq	$5, %r8
	addb	$1, (%r8)
	addq	$5, %r8
.R3637:
	cmpb	$0, (%r8)
	jne	.L3642
	subq	$5, %r8
.L3667:
	cmpb	$0, (%r8)
	je	.R3644
	subb	$1, (%r8)
	addq	$5, %r8
	addb	$1, (%r8)
	subq	$14, %r8
.L3651:
	cmpb	$0, (%r8)
	je	.R3649
	subq	$9, %r8
.R3649:
	cmpb	$0, (%r8)
	jne	.L3651
	addq	$3, %r8
.L3655:
	cmpb	$0, (%r8)
	je	.R3653
	subb	$1, (%r8)
.R3653:
	cmpb	$0, (%r8)
	jne	.L3655
	addb	$1, (%r8)
	addq	$6, %r8
.L3660:
	cmpb	$0, (%r8)
	je	.R3658
	addq	$9, %r8
.R3658:
	cmpb	$0, (%r8)
	jne	.L3660
	addq	$1, %r8
.L3664:
	cmpb	$0, (%r8)
	je	.R3662
	subb	$1, (%r8)
.R3662:
	cmpb	$0, (%r8)
	jne	.L3664
	addb	$1, (%r8)
	subq	$1, %r8
.R3644:
	cmpb	$0, (%r8)
	jne	.L3667
.R3632:
	cmpb	$0, (%r8)
	jne	.L3668
	addb	$1, (%r8)
	addq	$1, %r8
.L3678:
	cmpb	$0, (%r8)
	je	.R3671
	subb	$1, (%r8)
	subq	$1, %r8
.L3676:
	cmpb	$0, (%r8)
	je	.R3674
	addq	$9, %r8
.R3674:
	cmpb	$0, (%r8)
	jne	.L3676
	subq	$8, %r8
.R3671:
	cmpb	$0, (%r8)
	jne	.L3678
	addq	$8, %r8
.R3578:
	cmpb	$0, (%r8)
	jne	.L3680
	subq	$9, %r8
.L3684:
	cmpb	$0, (%r8)
	je	.R3682
	subq	$9, %r8
.R3682:
	cmpb	$0, (%r8)
	jne	.L3684
	addq	$4, %r8
.L3688:
	cmpb	$0, (%r8)
	je	.R3686
	subb	$1, (%r8)
.R3686:
	cmpb	$0, (%r8)
	jne	.L3688
	subq	$3, %r8
	addb	$5, (%r8)
.L3700:
	cmpb	$0, (%r8)
	je	.R3691
	subb	$1, (%r8)
.L3698:
	cmpb	$0, (%r8)
	je	.R3693
	subb	$1, (%r8)
	addq	$9, %r8
	addb	$1, (%r8)
	subq	$9, %r8
.R3693:
	cmpb	$0, (%r8)
	jne	.L3698
	addq	$9, %r8
.R3691:
	cmpb	$0, (%r8)
	jne	.L3700
	addq	$4, %r8
	subb	$1, (%r8)
	subq	$5, %r8
.L3706:
	cmpb	$0, (%r8)
	je	.R3704
	subq	$9, %r8
.R3704:
	cmpb	$0, (%r8)
	jne	.L3706
.R3501:
	cmpb	$0, (%r8)
	jne	.L3707
	addq	$3, %r8
.R123:
	cmpb	$0, (%r8)
	jne	.L3709
	subq	$4, %r8
	movq	$1, %rax
	movq	$1, %rdi
	movq	%r8, %rsi
	movq	$1, %rdx
	syscall
	addq	$10, %r8
.L3719:
	cmpb	$0, (%r8)
	je	.R3713
	addq	$6, %r8
.L3717:
	cmpb	$0, (%r8)
	je	.R3715
	subb	$1, (%r8)
.R3715:
	cmpb	$0, (%r8)
	jne	.L3717
	addq	$3, %r8
.R3713:
	cmpb	$0, (%r8)
	jne	.L3719
	subq	$9, %r8
.L3723:
	cmpb	$0, (%r8)
	je	.R3721
	subq	$9, %r8
.R3721:
	cmpb	$0, (%r8)
	jne	.L3723
	addq	$1, %r8
	addb	$10, (%r8)
.L3735:
	cmpb	$0, (%r8)
	je	.R3726
	subb	$1, (%r8)
.L3733:
	cmpb	$0, (%r8)
	je	.R3728
	subb	$1, (%r8)
	addq	$9, %r8
	addb	$1, (%r8)
	subq	$9, %r8
.R3728:
	cmpb	$0, (%r8)
	jne	.L3733
	addq	$9, %r8
.R3726:
	cmpb	$0, (%r8)
	jne	.L3735
	addq	$5, %r8
	addb	$1, (%r8)
	addq	$9, %r8
	addb	$1, (%r8)
	subq	$15, %r8
.L3743:
	cmpb	$0, (%r8)
	je	.R3741
	subq	$9, %r8
.R3741:
	cmpb	$0, (%r8)
	jne	.L3743
	addq	$8, %r8
.L3750:
	cmpb	$0, (%r8)
	je	.R3745
	subb	$1, (%r8)
	subq	$8, %r8
	addb	$1, (%r8)
	addq	$8, %r8
.R3745:
	cmpb	$0, (%r8)
	jne	.L3750
	subq	$8, %r8
.L3790:
	cmpb	$0, (%r8)
	je	.R3752
	subb	$1, (%r8)
	addq	$8, %r8
	addb	$1, (%r8)
.L3758:
	cmpb	$0, (%r8)
	je	.R3756
	subb	$1, (%r8)
.R3756:
	cmpb	$0, (%r8)
	jne	.L3758
	addq	$1, %r8
.L3762:
	cmpb	$0, (%r8)
	je	.R3760
	addq	$9, %r8
.R3760:
	cmpb	$0, (%r8)
	jne	.L3762
	subq	$9, %r8
.L3789:
	cmpb	$0, (%r8)
	je	.R3764
	addq	$8, %r8
.L3771:
	cmpb	$0, (%r8)
	je	.R3766
	subb	$1, (%r8)
	subq	$7, %r8
	addb	$1, (%r8)
	addq	$7, %r8
.R3766:
	cmpb	$0, (%r8)
	jne	.L3771
	subq	$7, %r8
.L3787:
	cmpb	$0, (%r8)
	je	.R3773
	subb	$1, (%r8)
	addq	$7, %r8
	addb	$1, (%r8)
	subq	$8, %r8
.L3780:
	cmpb	$0, (%r8)
	je	.R3778
	subq	$9, %r8
.R3778:
	cmpb	$0, (%r8)
	jne	.L3780
	addq	$8, %r8
.L3784:
	cmpb	$0, (%r8)
	je	.R3782
	subb	$1, (%r8)
.R3782:
	cmpb	$0, (%r8)
	jne	.L3784
	addb	$1, (%r8)
	addq	$2, %r8
.R3773:
	cmpb	$0, (%r8)
	jne	.L3787
	subq	$10, %r8
.R3764:
	cmpb	$0, (%r8)
	jne	.L3789
.R3752:
	cmpb	$0, (%r8)
	jne	.L3790
	addq	$8, %r8
.L3797:
	cmpb	$0, (%r8)
	je	.R3792
	subb	$1, (%r8)
	subq	$8, %r8
	addb	$1, (%r8)
	addq	$8, %r8
.R3792:
	cmpb	$0, (%r8)
	jne	.L3797
	subq	$8, %r8
.L3891:
	cmpb	$0, (%r8)
	je	.R3799
	subb	$1, (%r8)
	addq	$8, %r8
	addb	$1, (%r8)
	addq	$1, %r8
.L3822:
	cmpb	$0, (%r8)
	je	.R3804
	addq	$1, %r8
	addb	$1, (%r8)
	addq	$5, %r8
.L3813:
	cmpb	$0, (%r8)
	je	.R3808
	subb	$1, (%r8)
	subq	$5, %r8
	subb	$1, (%r8)
	addq	$5, %r8
.R3808:
	cmpb	$0, (%r8)
	jne	.L3813
	subq	$5, %r8
.L3820:
	cmpb	$0, (%r8)
	je	.R3815
	subb	$1, (%r8)
	addq	$5, %r8
	addb	$1, (%r8)
	subq	$5, %r8
.R3815:
	cmpb	$0, (%r8)
	jne	.L3820
	addq	$8, %r8
.R3804:
	cmpb	$0, (%r8)
	jne	.L3822
	subq	$1, %r8
	addb	$1, (%r8)
	subq	$8, %r8
.L3835:
	cmpb	$0, (%r8)
	je	.R3826
	addq	$6, %r8
.L3833:
	cmpb	$0, (%r8)
	je	.R3828
	subb	$1, (%r8)
	addq	$2, %r8
	addb	$1, (%r8)
	subq	$2, %r8
.R3828:
	cmpb	$0, (%r8)
	jne	.L3833
	subq	$15, %r8
.R3826:
	cmpb	$0, (%r8)
	jne	.L3835
	addq	$9, %r8
.L3839:
	cmpb	$0, (%r8)
	je	.R3837
	addq	$9, %r8
.R3837:
	cmpb	$0, (%r8)
	jne	.L3839
	subq	$9, %r8
.L3882:
	cmpb	$0, (%r8)
	je	.R3841
	addq	$1, %r8
.L3845:
	cmpb	$0, (%r8)
	je	.R3843
	subb	$1, (%r8)
.R3843:
	cmpb	$0, (%r8)
	jne	.L3845
	subq	$1, %r8
	subb	$1, (%r8)
	addq	$8, %r8
.L3871:
	cmpb	$0, (%r8)
	je	.R3849
	subb	$1, (%r8)
	subq	$8, %r8
	addb	$1, (%r8)
	addq	$1, %r8
.L3862:
	cmpb	$0, (%r8)
	je	.R3854
	subq	$1, %r8
	subb	$1, (%r8)
	addq	$1, %r8
	subb	$1, (%r8)
	subq	$2, %r8
	addb	$1, (%r8)
	addq	$2, %r8
.R3854:
	cmpb	$0, (%r8)
	jne	.L3862
	subq	$1, %r8
.L3869:
	cmpb	$0, (%r8)
	je	.R3864
	subb	$1, (%r8)
	addq	$1, %r8
	addb	$1, (%r8)
	subq	$1, %r8
.R3864:
	cmpb	$0, (%r8)
	jne	.L3869
	addq	$8, %r8
.R3849:
	cmpb	$0, (%r8)
	jne	.L3871
	subq	$7, %r8
.L3878:
	cmpb	$0, (%r8)
	je	.R3873
	subb	$1, (%r8)
	addq	$7, %r8
	addb	$1, (%r8)
	subq	$7, %r8
.R3873:
	cmpb	$0, (%r8)
	jne	.L3878
	subq	$1, %r8
	addb	$1, (%r8)
	subq	$9, %r8
.R3841:
	cmpb	$0, (%r8)
	jne	.L3882
	addq	$8, %r8
	subb	$1, (%r8)
	subq	$5, %r8
.L3888:
	cmpb	$0, (%r8)
	je	.R3886
	subb	$1, (%r8)
.R3886:
	cmpb	$0, (%r8)
	jne	.L3888
	addb	$1, (%r8)
	subq	$3, %r8
.R3799:
	cmpb	$0, (%r8)
	jne	.L3891
	addb	$1, (%r8)
	addq	$8, %r8
.L3899:
	cmpb	$0, (%r8)
	je	.R3894
	subb	$1, (%r8)
	subq	$8, %r8
	subb	$1, (%r8)
	addq	$8, %r8
.R3894:
	cmpb	$0, (%r8)
	jne	.L3899
	addb	$1, (%r8)
	subq	$8, %r8
.L4112:
	cmpb	$0, (%r8)
	je	.R3902
	subb	$1, (%r8)
	addq	$8, %r8
	subb	$1, (%r8)
	addq	$1, %r8
.L3916:
	cmpb	$0, (%r8)
	je	.R3907
	addq	$6, %r8
.L3914:
	cmpb	$0, (%r8)
	je	.R3909
	subb	$1, (%r8)
	addq	$2, %r8
	addb	$1, (%r8)
	subq	$2, %r8
.R3909:
	cmpb	$0, (%r8)
	jne	.L3914
	addq	$3, %r8
.R3907:
	cmpb	$0, (%r8)
	jne	.L3916
	subq	$9, %r8
.L3959:
	cmpb	$0, (%r8)
	je	.R3918
	addq	$1, %r8
.L3922:
	cmpb	$0, (%r8)
	je	.R3920
	subb	$1, (%r8)
.R3920:
	cmpb	$0, (%r8)
	jne	.L3922
	subq	$1, %r8
	subb	$1, (%r8)
	addq	$8, %r8
.L3948:
	cmpb	$0, (%r8)
	je	.R3926
	subb	$1, (%r8)
	subq	$8, %r8
	addb	$1, (%r8)
	addq	$1, %r8
.L3939:
	cmpb	$0, (%r8)
	je	.R3931
	subq	$1, %r8
	subb	$1, (%r8)
	addq	$1, %r8
	subb	$1, (%r8)
	subq	$2, %r8
	addb	$1, (%r8)
	addq	$2, %r8
.R3931:
	cmpb	$0, (%r8)
	jne	.L3939
	subq	$1, %r8
.L3946:
	cmpb	$0, (%r8)
	je	.R3941
	subb	$1, (%r8)
	addq	$1, %r8
	addb	$1, (%r8)
	subq	$1, %r8
.R3941:
	cmpb	$0, (%r8)
	jne	.L3946
	addq	$8, %r8
.R3926:
	cmpb	$0, (%r8)
	jne	.L3948
	subq	$7, %r8
.L3955:
	cmpb	$0, (%r8)
	je	.R3950
	subb	$1, (%r8)
	addq	$7, %r8
	addb	$1, (%r8)
	subq	$7, %r8
.R3950:
	cmpb	$0, (%r8)
	jne	.L3955
	subq	$1, %r8
	addb	$1, (%r8)
	subq	$9, %r8
.R3918:
	cmpb	$0, (%r8)
	jne	.L3959
	addq	$1, %r8
	addb	$5, (%r8)
.L3971:
	cmpb	$0, (%r8)
	je	.R3962
	subb	$1, (%r8)
.L3969:
	cmpb	$0, (%r8)
	je	.R3964
	subb	$1, (%r8)
	addq	$9, %r8
	addb	$1, (%r8)
	subq	$9, %r8
.R3964:
	cmpb	$0, (%r8)
	jne	.L3969
	addq	$9, %r8
.R3962:
	cmpb	$0, (%r8)
	jne	.L3971
	addq	$5, %r8
	addb	$1, (%r8)
	addq	$27, %r8
	addb	$1, (%r8)
	subq	$6, %r8
.L3979:
	cmpb	$0, (%r8)
	je	.R3977
	subq	$9, %r8
.R3977:
	cmpb	$0, (%r8)
	jne	.L3979
	addq	$9, %r8
.L4083:
	cmpb	$0, (%r8)
	je	.R3981
	addq	$6, %r8
.L3988:
	cmpb	$0, (%r8)
	je	.R3983
	subb	$1, (%r8)
	subq	$6, %r8
	subb	$1, (%r8)
	addq	$6, %r8
.R3983:
	cmpb	$0, (%r8)
	jne	.L3988
	addb	$1, (%r8)
	subq	$6, %r8
.L4024:
	cmpb	$0, (%r8)
	je	.R3991
	subb	$1, (%r8)
	addq	$6, %r8
	subb	$1, (%r8)
	addq	$2, %r8
.L4001:
	cmpb	$0, (%r8)
	je	.R3996
	subb	$1, (%r8)
	subq	$8, %r8
	addb	$1, (%r8)
	addq	$8, %r8
.R3996:
	cmpb	$0, (%r8)
	jne	.L4001
	subq	$8, %r8
.L4023:
	cmpb	$0, (%r8)
	je	.R4003
	subb	$1, (%r8)
	addq	$8, %r8
	addb	$1, (%r8)
	subq	$17, %r8
.L4010:
	cmpb	$0, (%r8)
	je	.R4008
	subq	$9, %r8
.R4008:
	cmpb	$0, (%r8)
	jne	.L4010
	addq	$4, %r8
.L4014:
	cmpb	$0, (%r8)
	je	.R4012
	subb	$1, (%r8)
.R4012:
	cmpb	$0, (%r8)
	jne	.L4014
	addb	$1, (%r8)
	addq	$5, %r8
.L4019:
	cmpb	$0, (%r8)
	je	.R4017
	addq	$9, %r8
.R4017:
	cmpb	$0, (%r8)
	jne	.L4019
	addq	$1, %r8
	addb	$1, (%r8)
	subq	$1, %r8
.R4003:
	cmpb	$0, (%r8)
	jne	.L4023
.R3991:
	cmpb	$0, (%r8)
	jne	.L4024
	addb	$1, (%r8)
	addq	$8, %r8
.L4032:
	cmpb	$0, (%r8)
	je	.R4027
	subb	$1, (%r8)
	subq	$8, %r8
	subb	$1, (%r8)
	addq	$8, %r8
.R4027:
	cmpb	$0, (%r8)
	jne	.L4032
	addb	$1, (%r8)
	subq	$8, %r8
.L4071:
	cmpb	$0, (%r8)
	je	.R4035
	subb	$1, (%r8)
	addq	$8, %r8
	subb	$1, (%r8)
	subq	$2, %r8
.L4045:
	cmpb	$0, (%r8)
	je	.R4040
	subb	$1, (%r8)
	subq	$6, %r8
	addb	$1, (%r8)
	addq	$6, %r8
.R4040:
	cmpb	$0, (%r8)
	jne	.L4045
	subq	$6, %r8
.L4070:
	cmpb	$0, (%r8)
	je	.R4047
	subb	$1, (%r8)
	addq	$6, %r8
	addb	$1, (%r8)
	subq	$15, %r8
.L4054:
	cmpb	$0, (%r8)
	je	.R4052
	subq	$9, %r8
.R4052:
	cmpb	$0, (%r8)
	jne	.L4054
	addq	$3, %r8
.L4058:
	cmpb	$0, (%r8)
	je	.R4056
	subb	$1, (%r8)
.R4056:
	cmpb	$0, (%r8)
	jne	.L4058
	addb	$1, (%r8)
	addq	$6, %r8
.L4063:
	cmpb	$0, (%r8)
	je	.R4061
	addq	$9, %r8
.R4061:
	cmpb	$0, (%r8)
	jne	.L4063
	addq	$1, %r8
.L4067:
	cmpb	$0, (%r8)
	je	.R4065
	subb	$1, (%r8)
.R4065:
	cmpb	$0, (%r8)
	jne	.L4067
	addb	$1, (%r8)
	subq	$1, %r8
.R4047:
	cmpb	$0, (%r8)
	jne	.L4070
.R4035:
	cmpb	$0, (%r8)
	jne	.L4071
	addb	$1, (%r8)
	addq	$1, %r8
.L4081:
	cmpb	$0, (%r8)
	je	.R4074
	subb	$1, (%r8)
	subq	$1, %r8
.L4079:
	cmpb	$0, (%r8)
	je	.R4077
	addq	$9, %r8
.R4077:
	cmpb	$0, (%r8)
	jne	.L4079
	subq	$8, %r8
.R4074:
	cmpb	$0, (%r8)
	jne	.L4081
	addq	$8, %r8
.R3981:
	cmpb	$0, (%r8)
	jne	.L4083
	subq	$9, %r8
.L4087:
	cmpb	$0, (%r8)
	je	.R4085
	subq	$9, %r8
.R4085:
	cmpb	$0, (%r8)
	jne	.L4087
	addq	$4, %r8
.L4091:
	cmpb	$0, (%r8)
	je	.R4089
	subb	$1, (%r8)
.R4089:
	cmpb	$0, (%r8)
	jne	.L4091
	subq	$3, %r8
	addb	$5, (%r8)
.L4103:
	cmpb	$0, (%r8)
	je	.R4094
	subb	$1, (%r8)
.L4101:
	cmpb	$0, (%r8)
	je	.R4096
	subb	$1, (%r8)
	addq	$9, %r8
	addb	$1, (%r8)
	subq	$9, %r8
.R4096:
	cmpb	$0, (%r8)
	jne	.L4101
	addq	$9, %r8
.R4094:
	cmpb	$0, (%r8)
	jne	.L4103
	addq	$5, %r8
	subb	$1, (%r8)
	addq	$27, %r8
	subb	$1, (%r8)
	subq	$6, %r8
.L4111:
	cmpb	$0, (%r8)
	je	.R4109
	subq	$9, %r8
.R4109:
	cmpb	$0, (%r8)
	jne	.L4111
.R3902:
	cmpb	$0, (%r8)
	jne	.L4112
	addq	$3, %r8
.R72:
	cmpb	$0, (%r8)
	jne	.L4114
	movq	$60, %rax
	xorq	%rdi, %rdi
	syscall
