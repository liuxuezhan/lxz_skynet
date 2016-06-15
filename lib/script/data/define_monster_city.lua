--
-- $Id$
--

module( "resmng" )
svnnum("$Id$")

BOSS_1 = 1001001
BOSS_2 = 1001002
BOSS_3 = 1001003
BOSS_4 = 1001004
BOSS_5 = 1001005
BOSS_6 = 1001006
BOSS_7 = 1001007
BOSS_8 = 1001008
BOSS_9 = 1001009
BOSS_10 = 1001010
BOSS_11 = 1001011
BOSS_12 = 1001012
BOSS_13 = 1001013
BOSS_14 = 1001014
BOSS_15 = 1001015
BOSS_16 = 1001016
BOSS_17 = 1001017
BOSS_18 = 1001018
BOSS_19 = 1001019
BOSS_20 = 1001020
BOSS_21 = 2001001
BOSS_22 = 2001002
BOSS_23 = 2001003
BOSS_24 = 2001004
BOSS_25 = 2001005
BOSS_26 = 2001006
BOSS_27 = 2001007
BOSS_28 = 2001008
BOSS_29 = 2001009
BOSS_30 = 2001010
BOSS_31 = 2001011
BOSS_32 = 2001012
BOSS_33 = 2001013
BOSS_34 = 2001014
BOSS_35 = 2001015
BOSS_36 = 2001016
BOSS_37 = 2001017
BOSS_38 = 2001018
BOSS_39 = 2001019
BOSS_40 = 2001020
BOSS_41 = 3001001
BOSS_42 = 3001002
BOSS_43 = 3001003
BOSS_44 = 3001004
BOSS_45 = 3001005
BOSS_46 = 3001006
BOSS_47 = 3001007
BOSS_48 = 3001008
BOSS_49 = 3001009
BOSS_50 = 3001010
BOSS_51 = 3001011
BOSS_52 = 3001012
BOSS_53 = 3001013
BOSS_54 = 3001014
BOSS_55 = 3001015
BOSS_56 = 3001016
BOSS_57 = 3001017
BOSS_58 = 3001018
BOSS_59 = 3001019
BOSS_60 = 3001020
BOSS_61 = 4001001
BOSS_62 = 4001002
BOSS_63 = 4001003
BOSS_64 = 4001004
BOSS_65 = 4001005
BOSS_66 = 4001006
BOSS_67 = 4001007
BOSS_68 = 4001008
BOSS_69 = 4001009
BOSS_70 = 4001010
BOSS_71 = 4001011
BOSS_72 = 4001012
BOSS_73 = 4001013
BOSS_74 = 4001014
BOSS_75 = 4001015
BOSS_76 = 4001016
BOSS_77 = 4001017
BOSS_78 = 4001018
BOSS_79 = 4001019
BOSS_80 = 4001020
BOSS_81 = 5001001
BOSS_82 = 5001002
BOSS_83 = 5001003
BOSS_84 = 5001004
BOSS_85 = 5001005
BOSS_86 = 5001006
BOSS_87 = 5001007
BOSS_88 = 5001008
BOSS_89 = 5001009
BOSS_90 = 5001010
BOSS_91 = 5001011
BOSS_92 = 5001012
BOSS_93 = 5001013
BOSS_94 = 5001014
BOSS_95 = 5001015
BOSS_96 = 5001016
BOSS_97 = 5001017
BOSS_98 = 5001018
BOSS_99 = 5001019
BOSS_100 = 5001020
BOSS_101 = 1002001
BOSS_102 = 1002002
BOSS_103 = 1002003
BOSS_104 = 1002004
BOSS_105 = 1002005
BOSS_106 = 1002006
BOSS_107 = 1002007
BOSS_108 = 1002008
BOSS_109 = 1002009
BOSS_110 = 1002010
BOSS_111 = 1002011
BOSS_112 = 1002012
BOSS_113 = 1002013
BOSS_114 = 1002014
BOSS_115 = 1002015
BOSS_116 = 1002016
BOSS_117 = 1002017
BOSS_118 = 1002018
BOSS_119 = 1002019
BOSS_120 = 1002020
BOSS_121 = 2002001
BOSS_122 = 2002002
BOSS_123 = 2002003
BOSS_124 = 2002004
BOSS_125 = 2002005
BOSS_126 = 2002006
BOSS_127 = 2002007
BOSS_128 = 2002008
BOSS_129 = 2002009
BOSS_130 = 2002010
BOSS_131 = 2002011
BOSS_132 = 2002012
BOSS_133 = 2002013
BOSS_134 = 2002014
BOSS_135 = 2002015
BOSS_136 = 2002016
BOSS_137 = 2002017
BOSS_138 = 2002018
BOSS_139 = 2002019
BOSS_140 = 2002020
BOSS_141 = 3002001
BOSS_142 = 3002002
BOSS_143 = 3002003
BOSS_144 = 3002004
BOSS_145 = 3002005
BOSS_146 = 3002006
BOSS_147 = 3002007
BOSS_148 = 3002008
BOSS_149 = 3002009
BOSS_150 = 3002010
BOSS_151 = 3002011
BOSS_152 = 3002012
BOSS_153 = 3002013
BOSS_154 = 3002014
BOSS_155 = 3002015
BOSS_156 = 3002016
BOSS_157 = 3002017
BOSS_158 = 3002018
BOSS_159 = 3002019
BOSS_160 = 3002020
BOSS_161 = 4002001
BOSS_162 = 4002002
BOSS_163 = 4002003
BOSS_164 = 4002004
BOSS_165 = 4002005
BOSS_166 = 4002006
BOSS_167 = 4002007
BOSS_168 = 4002008
BOSS_169 = 4002009
BOSS_170 = 4002010
BOSS_171 = 4002011
BOSS_172 = 4002012
BOSS_173 = 4002013
BOSS_174 = 4002014
BOSS_175 = 4002015
BOSS_176 = 4002016
BOSS_177 = 4002017
BOSS_178 = 4002018
BOSS_179 = 4002019
BOSS_180 = 4002020
BOSS_181 = 5002001
BOSS_182 = 5002002
BOSS_183 = 5002003
BOSS_184 = 5002004
BOSS_185 = 5002005
BOSS_186 = 5002006
BOSS_187 = 5002007
BOSS_188 = 5002008
BOSS_189 = 5002009
BOSS_190 = 5002010
BOSS_191 = 5002011
BOSS_192 = 5002012
BOSS_193 = 5002013
BOSS_194 = 5002014
BOSS_195 = 5002015
BOSS_196 = 5002016
BOSS_197 = 5002017
BOSS_198 = 5002018
BOSS_199 = 5002019
BOSS_200 = 5002020
BOSS_201 = 1003001
BOSS_202 = 1003002
BOSS_203 = 1003003
BOSS_204 = 1003004
BOSS_205 = 1003005
BOSS_206 = 1003006
BOSS_207 = 1003007
BOSS_208 = 1003008
BOSS_209 = 1003009
BOSS_210 = 1003010
BOSS_211 = 1003011
BOSS_212 = 1003012
BOSS_213 = 1003013
BOSS_214 = 1003014
BOSS_215 = 1003015
BOSS_216 = 1003016
BOSS_217 = 1003017
BOSS_218 = 1003018
BOSS_219 = 1003019
BOSS_220 = 1003020
BOSS_221 = 2003001
BOSS_222 = 2003002
BOSS_223 = 2003003
BOSS_224 = 2003004
BOSS_225 = 2003005
BOSS_226 = 2003006
BOSS_227 = 2003007
BOSS_228 = 2003008
BOSS_229 = 2003009
BOSS_230 = 2003010
BOSS_231 = 2003011
BOSS_232 = 2003012
BOSS_233 = 2003013
BOSS_234 = 2003014
BOSS_235 = 2003015
BOSS_236 = 2003016
BOSS_237 = 2003017
BOSS_238 = 2003018
BOSS_239 = 2003019
BOSS_240 = 2003020
BOSS_241 = 3003001
BOSS_242 = 3003002
BOSS_243 = 3003003
BOSS_244 = 3003004
BOSS_245 = 3003005
BOSS_246 = 3003006
BOSS_247 = 3003007
BOSS_248 = 3003008
BOSS_249 = 3003009
BOSS_250 = 3003010
BOSS_251 = 3003011
BOSS_252 = 3003012
BOSS_253 = 3003013
BOSS_254 = 3003014
BOSS_255 = 3003015
BOSS_256 = 3003016
BOSS_257 = 3003017
BOSS_258 = 3003018
BOSS_259 = 3003019
BOSS_260 = 3003020
BOSS_261 = 4003001
BOSS_262 = 4003002
BOSS_263 = 4003003
BOSS_264 = 4003004
BOSS_265 = 4003005
BOSS_266 = 4003006
BOSS_267 = 4003007
BOSS_268 = 4003008
BOSS_269 = 4003009
BOSS_270 = 4003010
BOSS_271 = 4003011
BOSS_272 = 4003012
BOSS_273 = 4003013
BOSS_274 = 4003014
BOSS_275 = 4003015
BOSS_276 = 4003016
BOSS_277 = 4003017
BOSS_278 = 4003018
BOSS_279 = 4003019
BOSS_280 = 4003020
BOSS_281 = 5003001
BOSS_282 = 5003002
BOSS_283 = 5003003
BOSS_284 = 5003004
BOSS_285 = 5003005
BOSS_286 = 5003006
BOSS_287 = 5003007
BOSS_288 = 5003008
BOSS_289 = 5003009
BOSS_290 = 5003010
BOSS_291 = 5003011
BOSS_292 = 5003012
BOSS_293 = 5003013
BOSS_294 = 5003014
BOSS_295 = 5003015
BOSS_296 = 5003016
BOSS_297 = 5003017
BOSS_298 = 5003018
BOSS_299 = 5003019
BOSS_300 = 5003020
BOSS_301 = 1004001
BOSS_302 = 1004002
BOSS_303 = 1004003
BOSS_304 = 1004004
BOSS_305 = 1004005
BOSS_306 = 1004006
BOSS_307 = 1004007
BOSS_308 = 1004008
BOSS_309 = 1004009
BOSS_310 = 1004010
BOSS_311 = 1004011
BOSS_312 = 1004012
BOSS_313 = 1004013
BOSS_314 = 1004014
BOSS_315 = 1004015
BOSS_316 = 1004016
BOSS_317 = 1004017
BOSS_318 = 1004018
BOSS_319 = 1004019
BOSS_320 = 1004020
BOSS_321 = 2004001
BOSS_322 = 2004002
BOSS_323 = 2004003
BOSS_324 = 2004004
BOSS_325 = 2004005
BOSS_326 = 2004006
BOSS_327 = 2004007
BOSS_328 = 2004008
BOSS_329 = 2004009
BOSS_330 = 2004010
BOSS_331 = 2004011
BOSS_332 = 2004012
BOSS_333 = 2004013
BOSS_334 = 2004014
BOSS_335 = 2004015
BOSS_336 = 2004016
BOSS_337 = 2004017
BOSS_338 = 2004018
BOSS_339 = 2004019
BOSS_340 = 2004020
BOSS_341 = 3004001
BOSS_342 = 3004002
BOSS_343 = 3004003
BOSS_344 = 3004004
BOSS_345 = 3004005
BOSS_346 = 3004006
BOSS_347 = 3004007
BOSS_348 = 3004008
BOSS_349 = 3004009
BOSS_350 = 3004010
BOSS_351 = 3004011
BOSS_352 = 3004012
BOSS_353 = 3004013
BOSS_354 = 3004014
BOSS_355 = 3004015
BOSS_356 = 3004016
BOSS_357 = 3004017
BOSS_358 = 3004018
BOSS_359 = 3004019
BOSS_360 = 3004020
BOSS_361 = 4004001
BOSS_362 = 4004002
BOSS_363 = 4004003
BOSS_364 = 4004004
BOSS_365 = 4004005
BOSS_366 = 4004006
BOSS_367 = 4004007
BOSS_368 = 4004008
BOSS_369 = 4004009
BOSS_370 = 4004010
BOSS_371 = 4004011
BOSS_372 = 4004012
BOSS_373 = 4004013
BOSS_374 = 4004014
BOSS_375 = 4004015
BOSS_376 = 4004016
BOSS_377 = 4004017
BOSS_378 = 4004018
BOSS_379 = 4004019
BOSS_380 = 4004020
BOSS_381 = 5004001
BOSS_382 = 5004002
BOSS_383 = 5004003
BOSS_384 = 5004004
BOSS_385 = 5004005
BOSS_386 = 5004006
BOSS_387 = 5004007
BOSS_388 = 5004008
BOSS_389 = 5004009
BOSS_390 = 5004010
BOSS_391 = 5004011
BOSS_392 = 5004012
BOSS_393 = 5004013
BOSS_394 = 5004014
BOSS_395 = 5004015
BOSS_396 = 5004016
BOSS_397 = 5004017
BOSS_398 = 5004018
BOSS_399 = 5004019
BOSS_400 = 5004020
