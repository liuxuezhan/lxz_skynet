--
-- $Id$
--

module( "resmng" )
svnnum("$Id$")

EQUIP_1 = 1
EQUIP_2 = 2
EQUIP_3 = 3
EQUIP_4 = 4
EQUIP_5 = 5
EQUIP_6 = 6
EQUIP_7 = 7
EQUIP_8 = 8
EQUIP_9 = 9
EQUIP_10 = 10
EQUIP_11 = 11
EQUIP_12 = 12
EQUIP_13 = 13
EQUIP_14 = 14
EQUIP_15 = 15
EQUIP_16 = 16
EQUIP_17 = 17
EQUIP_18 = 18
EQUIP_19 = 19
EQUIP_20 = 20
EQUIP_21 = 21
EQUIP_22 = 22
EQUIP_23 = 23
EQUIP_24 = 24
EQUIP_25 = 25
EQUIP_26 = 26
EQUIP_27 = 27
EQUIP_28 = 28
EQUIP_29 = 29
EQUIP_30 = 30
EQUIP_31 = 31
EQUIP_32 = 32
EQUIP_33 = 33
EQUIP_34 = 34
EQUIP_35 = 35
EQUIP_36 = 36
EQUIP_37 = 37
EQUIP_38 = 38
EQUIP_39 = 39
EQUIP_40 = 40
EQUIP_41 = 41
EQUIP_42 = 42
EQUIP_43 = 43
EQUIP_44 = 44
EQUIP_45 = 45
EQUIP_46 = 46
EQUIP_47 = 47
EQUIP_48 = 48
EQUIP_49 = 49
EQUIP_50 = 50
EQUIP_51 = 51
EQUIP_52 = 52
EQUIP_53 = 53
EQUIP_54 = 54
EQUIP_55 = 55
EQUIP_56 = 56
EQUIP_57 = 57
EQUIP_58 = 58
EQUIP_59 = 59
EQUIP_60 = 60
EQUIP_61 = 61
EQUIP_62 = 62
EQUIP_63 = 63
EQUIP_64 = 64
EQUIP_65 = 65
EQUIP_66 = 66
EQUIP_67 = 67
EQUIP_68 = 68
EQUIP_69 = 69
EQUIP_70 = 70
EQUIP_71 = 71
EQUIP_72 = 72
EQUIP_73 = 73
EQUIP_74 = 74
EQUIP_75 = 75
EQUIP_76 = 76
EQUIP_77 = 77
EQUIP_78 = 78
EQUIP_79 = 79
EQUIP_80 = 80
EQUIP_81 = 81
EQUIP_82 = 82
EQUIP_83 = 83
EQUIP_84 = 84
EQUIP_85 = 85
EQUIP_86 = 86
EQUIP_87 = 87
EQUIP_88 = 88
EQUIP_89 = 89
EQUIP_90 = 90
EQUIP_91 = 91
EQUIP_92 = 92
EQUIP_93 = 93
EQUIP_94 = 94
EQUIP_95 = 95
EQUIP_96 = 96
EQUIP_97 = 97
EQUIP_98 = 98
EQUIP_99 = 99
EQUIP_100 = 100
EQUIP_101 = 101
EQUIP_102 = 102
EQUIP_103 = 103
EQUIP_104 = 104
EQUIP_105 = 105
EQUIP_106 = 106
EQUIP_107 = 107
EQUIP_108 = 108
EQUIP_109 = 109
EQUIP_110 = 110
EQUIP_111 = 111
EQUIP_112 = 112
EQUIP_113 = 113
EQUIP_114 = 114
EQUIP_115 = 115
EQUIP_116 = 116
EQUIP_117 = 117
EQUIP_118 = 118
EQUIP_119 = 119
EQUIP_120 = 120
EQUIP_121 = 121
EQUIP_122 = 122
EQUIP_123 = 123
EQUIP_124 = 124
EQUIP_125 = 125
EQUIP_126 = 126
EQUIP_127 = 127
EQUIP_128 = 128
EQUIP_129 = 129
EQUIP_130 = 130
EQUIP_131 = 131
EQUIP_132 = 132
EQUIP_133 = 133
EQUIP_134 = 134
EQUIP_135 = 135
EQUIP_136 = 136
EQUIP_137 = 137
EQUIP_138 = 138
EQUIP_139 = 139
EQUIP_140 = 140
EQUIP_141 = 141
EQUIP_142 = 142
EQUIP_143 = 143
EQUIP_144 = 144
EQUIP_145 = 145
EQUIP_146 = 146
EQUIP_147 = 147
EQUIP_148 = 148
EQUIP_149 = 149
EQUIP_150 = 150
EQUIP_151 = 151
EQUIP_152 = 152
EQUIP_153 = 153
EQUIP_154 = 154
EQUIP_155 = 155
EQUIP_156 = 156
EQUIP_157 = 157
EQUIP_158 = 158
EQUIP_159 = 159
EQUIP_160 = 160
EQUIP_161 = 161
EQUIP_162 = 162
EQUIP_163 = 163
EQUIP_164 = 164
EQUIP_165 = 165
EQUIP_166 = 166
EQUIP_167 = 167
EQUIP_168 = 168
EQUIP_169 = 169
EQUIP_170 = 170
EQUIP_171 = 171
EQUIP_172 = 172
EQUIP_173 = 173
EQUIP_174 = 174
EQUIP_175 = 175
EQUIP_176 = 176
EQUIP_177 = 177
EQUIP_178 = 178
EQUIP_179 = 179
EQUIP_180 = 180
EQUIP_181 = 181
EQUIP_182 = 182
EQUIP_183 = 183
EQUIP_184 = 184
EQUIP_185 = 185
EQUIP_186 = 186
EQUIP_187 = 187
EQUIP_188 = 188
EQUIP_189 = 189
EQUIP_190 = 190
EQUIP_191 = 191
EQUIP_192 = 192
EQUIP_193 = 193
EQUIP_194 = 194
EQUIP_195 = 195
EQUIP_196 = 196
EQUIP_197 = 197
EQUIP_198 = 198
EQUIP_199 = 199
EQUIP_200 = 200
EQUIP_201 = 201
EQUIP_202 = 202
EQUIP_203 = 203
EQUIP_204 = 204
EQUIP_205 = 205
EQUIP_206 = 206
EQUIP_207 = 207
EQUIP_208 = 208
EQUIP_209 = 209
EQUIP_210 = 210
EQUIP_211 = 211
EQUIP_212 = 212
EQUIP_213 = 213
EQUIP_214 = 214
EQUIP_215 = 215
EQUIP_216 = 216
EQUIP_217 = 217
EQUIP_218 = 218
EQUIP_219 = 219
EQUIP_220 = 220
EQUIP_221 = 221
EQUIP_222 = 222
EQUIP_223 = 223
EQUIP_224 = 224
EQUIP_225 = 225
EQUIP_226 = 226
EQUIP_227 = 227
EQUIP_228 = 228
EQUIP_229 = 229
EQUIP_230 = 230
EQUIP_231 = 231
EQUIP_232 = 232
EQUIP_233 = 233
EQUIP_234 = 234
EQUIP_235 = 235
EQUIP_236 = 236
EQUIP_237 = 237
EQUIP_238 = 238
EQUIP_239 = 239
EQUIP_240 = 240
EQUIP_241 = 241
EQUIP_242 = 242
EQUIP_243 = 243
EQUIP_244 = 244
EQUIP_245 = 245
EQUIP_246 = 246
EQUIP_247 = 247
EQUIP_248 = 248
EQUIP_249 = 249
EQUIP_250 = 250
EQUIP_251 = 251
EQUIP_252 = 252
EQUIP_253 = 253
EQUIP_254 = 254
EQUIP_255 = 255
EQUIP_256 = 256
EQUIP_257 = 257
EQUIP_258 = 258
EQUIP_259 = 259
EQUIP_260 = 260
EQUIP_261 = 261
EQUIP_262 = 262
EQUIP_263 = 263
EQUIP_264 = 264
EQUIP_265 = 265
EQUIP_266 = 266
EQUIP_267 = 267
EQUIP_268 = 268
EQUIP_269 = 269
EQUIP_270 = 270
EQUIP_271 = 271
EQUIP_272 = 272
EQUIP_273 = 273
EQUIP_274 = 274
EQUIP_275 = 275
EQUIP_276 = 276
EQUIP_277 = 277
EQUIP_278 = 278
EQUIP_279 = 279
EQUIP_280 = 280
EQUIP_281 = 281
EQUIP_282 = 282
EQUIP_283 = 283
EQUIP_284 = 284
EQUIP_285 = 285
EQUIP_286 = 286
EQUIP_287 = 287
EQUIP_288 = 288
EQUIP_289 = 289
EQUIP_290 = 290
EQUIP_291 = 291
EQUIP_292 = 292
EQUIP_293 = 293
EQUIP_294 = 294
EQUIP_295 = 295
EQUIP_296 = 296
EQUIP_297 = 297
EQUIP_298 = 298
EQUIP_299 = 299
EQUIP_300 = 300
EQUIP_301 = 301
EQUIP_302 = 302
EQUIP_303 = 303
EQUIP_304 = 304
EQUIP_305 = 305
EQUIP_306 = 306
EQUIP_307 = 307
EQUIP_308 = 308
EQUIP_309 = 309
EQUIP_310 = 310
EQUIP_311 = 311
EQUIP_312 = 312
EQUIP_313 = 313
EQUIP_314 = 314
EQUIP_315 = 315
EQUIP_316 = 316
EQUIP_317 = 317
EQUIP_318 = 318
EQUIP_319 = 319
EQUIP_320 = 320
EQUIP_321 = 321
EQUIP_322 = 322
EQUIP_323 = 323
EQUIP_324 = 324
EQUIP_325 = 325
EQUIP_326 = 326
EQUIP_327 = 327
EQUIP_328 = 328
EQUIP_329 = 329
EQUIP_330 = 330
EQUIP_331 = 331
EQUIP_332 = 332
EQUIP_333 = 333
EQUIP_334 = 334
EQUIP_335 = 335
EQUIP_336 = 336
EQUIP_337 = 337
EQUIP_338 = 338
EQUIP_339 = 339
EQUIP_340 = 340
EQUIP_341 = 341
EQUIP_342 = 342
EQUIP_343 = 343
EQUIP_344 = 344
EQUIP_345 = 345
EQUIP_346 = 346
EQUIP_347 = 347
EQUIP_348 = 348
EQUIP_349 = 349
EQUIP_350 = 350
EQUIP_351 = 351
EQUIP_352 = 352
EQUIP_353 = 353
EQUIP_354 = 354
EQUIP_355 = 355
EQUIP_356 = 356
EQUIP_357 = 357
EQUIP_358 = 358
EQUIP_359 = 359
EQUIP_360 = 360
EQUIP_361 = 361
EQUIP_362 = 362
EQUIP_363 = 363
EQUIP_364 = 364
EQUIP_365 = 365
EQUIP_366 = 366
EQUIP_367 = 367
EQUIP_368 = 368
EQUIP_369 = 369
EQUIP_370 = 370
EQUIP_371 = 371
EQUIP_372 = 372
EQUIP_373 = 373
EQUIP_374 = 374
EQUIP_375 = 375
EQUIP_376 = 376
EQUIP_377 = 377
EQUIP_378 = 378
EQUIP_379 = 379
EQUIP_380 = 380
EQUIP_381 = 381
EQUIP_382 = 382
EQUIP_383 = 383
EQUIP_384 = 384
EQUIP_385 = 385
EQUIP_386 = 386
EQUIP_387 = 387
EQUIP_388 = 388
EQUIP_389 = 389
EQUIP_390 = 390
EQUIP_391 = 391
EQUIP_392 = 392
EQUIP_393 = 393
EQUIP_394 = 394
EQUIP_395 = 395
EQUIP_396 = 396
EQUIP_397 = 397
EQUIP_398 = 398
EQUIP_399 = 399
EQUIP_400 = 400
EQUIP_401 = 401
EQUIP_402 = 402
EQUIP_403 = 403
EQUIP_404 = 404
EQUIP_405 = 405
EQUIP_406 = 406
EQUIP_407 = 407
EQUIP_408 = 408
EQUIP_409 = 409
EQUIP_410 = 410
EQUIP_411 = 411
EQUIP_412 = 412
EQUIP_413 = 413
EQUIP_414 = 414
EQUIP_415 = 415
EQUIP_416 = 416
EQUIP_417 = 417
EQUIP_418 = 418
EQUIP_419 = 419
EQUIP_420 = 420
EQUIP_421 = 421
EQUIP_422 = 422
EQUIP_423 = 423
EQUIP_424 = 424
EQUIP_425 = 425
EQUIP_426 = 426
EQUIP_427 = 427
EQUIP_428 = 428
EQUIP_429 = 429
EQUIP_430 = 430
EQUIP_431 = 431
EQUIP_432 = 432
EQUIP_433 = 433
EQUIP_434 = 434
EQUIP_435 = 435
EQUIP_436 = 436
EQUIP_437 = 437
EQUIP_438 = 438
EQUIP_439 = 439
EQUIP_440 = 440
EQUIP_441 = 441
EQUIP_442 = 442
EQUIP_443 = 443
EQUIP_444 = 444
EQUIP_445 = 445
EQUIP_446 = 446
EQUIP_447 = 447
EQUIP_448 = 448
EQUIP_449 = 449
EQUIP_450 = 450
EQUIP_10000 = 10000
EQUIP_10001 = 10001
EQUIP_10002 = 10002
EQUIP_10003 = 10003
EQUIP_10004 = 10004
EQUIP_10005 = 10005
EQUIP_10010 = 10010
EQUIP_10011 = 10011
EQUIP_10012 = 10012
EQUIP_10013 = 10013
EQUIP_10014 = 10014
EQUIP_10015 = 10015
EQUIP_10020 = 10020
EQUIP_10021 = 10021
EQUIP_10022 = 10022
EQUIP_10023 = 10023
EQUIP_10024 = 10024
EQUIP_10025 = 10025
EQUIP_10030 = 10030
EQUIP_10031 = 10031
EQUIP_10032 = 10032
EQUIP_10033 = 10033
EQUIP_10034 = 10034
EQUIP_10035 = 10035
EQUIP_10040 = 10040
EQUIP_10041 = 10041
EQUIP_10042 = 10042
EQUIP_10043 = 10043
EQUIP_10044 = 10044
EQUIP_10045 = 10045
EQUIP_10050 = 10050
EQUIP_10051 = 10051
EQUIP_10052 = 10052
EQUIP_10053 = 10053
EQUIP_10054 = 10054
EQUIP_10055 = 10055
EQUIP_10060 = 10060
EQUIP_10061 = 10061
EQUIP_10062 = 10062
EQUIP_10063 = 10063
EQUIP_10064 = 10064
EQUIP_10065 = 10065
EQUIP_10070 = 10070
EQUIP_10071 = 10071
EQUIP_10072 = 10072
EQUIP_10073 = 10073
EQUIP_10074 = 10074
EQUIP_10075 = 10075
EQUIP_10080 = 10080
EQUIP_10081 = 10081
EQUIP_10082 = 10082
EQUIP_10083 = 10083
EQUIP_10084 = 10084
EQUIP_10085 = 10085
