--[[ .____ ________ ___. _____ __ | | __ _______ \_____ \\_ |___/ ____\_ __ ______ ____ _____ _/ |_ ___________ | | | | \__ \ / | \| __ \ __\ | \/ ___// ___\\__ \\ __\/ _ \_ __ \ | |___| | // __ \_/ | \ \_\ \ | | | /\___ \\ \___ / __ \| | ( <_> ) | \/ |_______ \____/(____ /\_______ /___ /__| |____//____ >\___ >____ /__| \____/|__| \/ \/ \/ \/ \/ \/ \/ \_Welcome to LuaObfuscator.com (Alpha 0.9.16) ~ Much Love, Ferib ]]-- local v0 = tonumber; local v1 = string.byte; local v2 = string.char; local v3 = string.sub; local v4 = string.gsub; local v5 = string.rep; local v6 = table.concat; local v7 = table.insert; local v8 = math.ldexp; local v9 = getfenv or function() 	return _ENV; end; local v10 = setmetatable; local v11 = pcall; local v12 = select; local v13 = unpack or table.unpack; local v14 = tonumber; local function v15(v16, v17, ...) 	local v18 = 1; 	local v19; 	v16 = v4(v3(v16, 5), "..", function(v30) 		if (v1(v30, 2) == 79) then 			v19 = v0(v3(v30, 1, 1)); 			return ""; 		else 			local v67 = 0; 			local v68; 			while true do 				if (v67 == 0) then 					v68 = v2(v0(v30, 16)); 					if v19 then 						local v94 = v5(v68, v19); 						v19 = nil; 						return v94; 					else 						return v68; 					end 					break; 				end 			end 		end 	end); 	local function v20(v31, v32, v33) 		if v33 then 			local v69 = (v31 / (2 ^ (v32 - (2 - 1)))) % ((5 - (3 + 0)) ^ (((v33 - (1 - 0)) - (v32 - (2 - (1 - 0)))) + (620 - (555 + 64)))); 			return v69 - (v69 % 1); 		else 			local v70 = 931 - ((2494 - (1523 + 114)) + 74); 			local v71; 			while true do 				if (v70 == (568 - (367 + 201))) then 					v71 = (929 - (214 + 713)) ^ (v32 - (1 + 0)); 					return (((v31 % (v71 + v71)) >= v71) and (1 + 0)) or (877 - (282 + 595)); 				end 			end 		end 	end 	local function v21() 		local v34 = v1(v16, v18, v18); 		v18 = v18 + 1; 		return v34; 	end 	local function v22() 		local v35, v36 = v1(v16, v18, v18 + (1272 - (226 + 1044))); 		v18 = v18 + (8 - 6); 		return (v36 * (373 - (32 + 85))) + v35; 	end 	local function v23() 		local v37, v38, v39, v40 = v1(v16, v18, v18 + 3 + 0); 		v18 = v18 + 1 + 3; 		return (v40 * (16778173 - (892 + (120 - 55)))) + (v39 * (156337 - 90801)) + (v38 * (469 - 213)) + v37; 	end 	local function v24() 		local v41 = v23(); 		local v42 = v23(); 		local v43 = 351 - ((273 - 186) + 263); 		local v44 = (v20(v42, (199 - (10 + 8)) - (67 + 113), 15 + 5) * ((4 - (7 - 5)) ^ (24 + 8))) + v41; 		local v45 = v20(v42, 21, 123 - (534 - (416 + 26))); 		local v46 = ((v20(v42, (3141 - 2157) - (345 + 457 + 150)) == 1) and -(2 - 1)) or (1 - 0); 		if (v45 == (0 + 0)) then 			if (v44 == (997 - (915 + 82))) then 				return v46 * 0; 			else 				local v75 = 0; 				while true do 					if (v75 == (0 - 0)) then 						v45 = 1 + 0; 						v43 = 0 - 0; 						break; 					end 				end 			end 		elseif (v45 == (3234 - (1069 + 118))) then 			return ((v44 == (0 - 0)) and (v46 * ((1 - 0) / ((0 - 0) + 0)))) or (v46 * NaN); 		end 		return v8(v46, v45 - (1817 - 794)) * (v43 + (v44 / ((2 + 0) ^ (843 - (368 + 423))))); 	end 	local function v25(v47) 		local v48; 		if not v47 then 			v47 = v23(); 			if (v47 == (438 - (145 + 293))) then 				return ""; 			end 		end 		v48 = v3(v16, v18, (v18 + v47) - (431 - (44 + 386))); 		v18 = v18 + v47; 		local v49 = {}; 		for v65 = (473 + 1014) - (998 + 488), #v48 do 			v49[v65] = v2(v1(v3(v48, v65, v65))); 		end 		return v6(v49); 	end 	local v26 = v23; 	local function v27(...) 		return {...}, v12("#", ...); 	end 	local function v28() 		local v50 = 1695 - (1229 + 466); 		local v51; 		local v52; 		local v53; 		local v54; 		local v55; 		local v56; 		local v57; 		while true do 			if (v50 == (579 - (386 + 192))) then 				v53 = nil; 				v54 = nil; 				v50 = 1208 - (696 + 510); 			end 			if (v50 == (3 - 1)) then 				v55 = nil; 				v56 = nil; 				v50 = 1265 - (1091 + 171); 			end 			if ((0 + 0) == v50) then 				v51 = 0 - 0; 				v52 = nil; 				v50 = 3 - 2; 			end 			if (v50 ~= (377 - (123 + 251))) then 			else 				v57 = nil; 				while true do 					local v76 = 0 - 0; 					while true do 						if (v76 ~= (699 - (208 + 490))) then 						else 							if (3 ~= v51) then 							else 								for v103 = 1 + 0, v23() do 									v53[v103 - (1 + 0)] = v28(); 								end 								return v55; 							end 							if (v51 ~= (838 - (660 + 176))) then 							else 								local v99 = 0 + 0; 								local v100; 								while true do 									if (v99 ~= 0) then 									else 										v100 = 0; 										while true do 											if (v100 ~= (202 - (14 + 188))) then 											else 												local v149 = 675 - (534 + 141); 												while true do 													if (v149 ~= (0 + 0)) then 													else 														for v167 = 1, v56 do 															local v168 = 0 + 0; 															local v169; 															local v170; 															local v171; 															local v172; 															while true do 																if (v168 == (0 + 0)) then 																	v169 = 0; 																	v170 = nil; 																	v168 = 1 - 0; 																end 																if (v168 ~= (2 - 0)) then 																else 																	while true do 																		if (v169 ~= 1) then 																		else 																			v172 = nil; 																			while true do 																				if (v170 ~= 0) then 																				else 																					local v179 = 0 - 0; 																					while true do 																						if (v179 ~= 1) then 																						else 																							v170 = 1; 																							break; 																						end 																						if (v179 == (0 + 0)) then 																							v171 = v21(); 																							v172 = nil; 																							v179 = 1 + 0; 																						end 																					end 																				end 																				if (v170 ~= 1) then 																				else 																					if (v171 == 1) then 																						v172 = v21() ~= (396 - (115 + 281)); 																					elseif (v171 == (4 - 2)) then 																						v172 = v24(); 																					elseif (v171 == 3) then 																						v172 = v25(); 																					end 																					v57[v167] = v172; 																					break; 																				end 																			end 																			break; 																		end 																		if ((0 + 0) ~= v169) then 																		else 																			v170 = 0; 																			v171 = nil; 																			v169 = 2 - 1; 																		end 																	end 																	break; 																end 																if (v168 ~= 1) then 																else 																	v171 = nil; 																	v172 = nil; 																	v168 = 7 - 5; 																end 															end 														end 														v55[870 - (550 + 317)] = v21(); 														v149 = 1; 													end 													if (v149 ~= (1 - 0)) then 													else 														v100 = 1; 														break; 													end 												end 											end 											if (v100 == (1 - 0)) then 												for v155 = 2 - 1, v23() do 													local v156 = 285 - (134 + 151); 													local v157; 													while true do 														if (v156 == 0) then 															v157 = v21(); 															if (v20(v157, 1, 1666 - (970 + 695)) ~= 0) then 															else 																local v173 = 0 - 0; 																local v174; 																local v175; 																local v176; 																local v177; 																local v178; 																while true do 																	if ((1991 - (582 + 1408)) ~= v173) then 																	else 																		v176 = nil; 																		v177 = nil; 																		v173 = 2; 																	end 																	if (0 ~= v173) then 																	else 																		v174 = 0 - 0; 																		v175 = nil; 																		v173 = 1; 																	end 																	if (v173 ~= (2 - 0)) then 																	else 																		v178 = nil; 																		while true do 																			if (2 == v174) then 																				while true do 																					if (v175 == 2) then 																						local v181 = 0; 																						while true do 																							if (v181 ~= 0) then 																							else 																								local v189 = 0; 																								while true do 																									if (v189 ~= (3 - 2)) then 																									else 																										v181 = 1825 - (1195 + 629); 																										break; 																									end 																									if (v189 ~= (0 - 0)) then 																									else 																										if (v20(v177, 1, 242 - (187 + 54)) == (781 - (162 + 618))) then 																											v178[2] = v57[v178[2 + 0]]; 																										end 																										if (v20(v177, 2, 2) ~= (1 + 0)) then 																										else 																											v178[6 - 3] = v57[v178[4 - 1]]; 																										end 																										v189 = 1 + 0; 																									end 																								end 																							end 																							if (v181 ~= (1637 - (1373 + 263))) then 																							else 																								v175 = 1003 - (451 + 549); 																								break; 																							end 																						end 																					end 																					if (v175 == 3) then 																						if (v20(v177, 3, 3) == 1) then 																							v178[2 + 2] = v57[v178[5 - 1]]; 																						end 																						v52[v155] = v178; 																						break; 																					end 																					if (v175 ~= (0 - 0)) then 																					else 																						v176 = v20(v157, 1386 - (746 + 638), 3); 																						v177 = v20(v157, 2 + 2, 6); 																						v175 = 1 - 0; 																					end 																					if (v175 == (342 - (218 + 123))) then 																						v178 = {v22(),v22(),nil,nil}; 																						if (v176 == 0) then 																							local v185 = 0; 																							local v186; 																							local v187; 																							local v188; 																							while true do 																								if ((1 + 0) ~= v185) then 																								else 																									v188 = nil; 																									while true do 																										if (1 ~= v186) then 																										else 																											while true do 																												if (v187 == 0) then 																													v188 = 0; 																													while true do 																														if (v188 == 0) then 																															v178[3] = v22(); 																															v178[4] = v22(); 																															break; 																														end 																													end 																													break; 																												end 																											end 																											break; 																										end 																										if (v186 ~= (560 - (306 + 254))) then 																										else 																											v187 = 0 + 0; 																											v188 = nil; 																											v186 = 1 - 0; 																										end 																									end 																									break; 																								end 																								if (v185 ~= 0) then 																								else 																									v186 = 1467 - (899 + 568); 																									v187 = nil; 																									v185 = 1 + 0; 																								end 																							end 																						elseif (v176 == (2 - 1)) then 																							v178[606 - (268 + 335)] = v23(); 																						elseif (v176 == 2) then 																							v178[293 - (60 + 230)] = v23() - (2 ^ 16); 																						elseif (v176 == (575 - (426 + 146))) then 																							local v196 = 0 + 0; 																							local v197; 																							while true do 																								if (v196 == (1456 - (282 + 1174))) then 																									v197 = 0; 																									while true do 																										if (v197 == 0) then 																											v178[3] = v23() - (2 ^ (827 - (569 + 242))); 																											v178[4] = v22(); 																											break; 																										end 																									end 																									break; 																								end 																							end 																						end 																						v175 = 5 - 3; 																					end 																				end 																				break; 																			end 																			if (v174 == (0 + 0)) then 																				v175 = 1024 - (706 + 318); 																				v176 = nil; 																				v174 = 1252 - (721 + 530); 																			end 																			if (v174 == 1) then 																				v177 = nil; 																				v178 = nil; 																				v174 = 1273 - (945 + 326); 																			end 																		end 																		break; 																	end 																end 															end 															break; 														end 													end 												end 												v51 = 3; 												break; 											end 										end 										break; 									end 								end 							end 							break; 						end 						if (v76 ~= 0) then 						else 							if (v51 ~= 0) then 							else 								local v101 = 0 - 0; 								local v102; 								while true do 									if (v101 ~= 0) then 									else 										v102 = 0; 										while true do 											if ((0 + 0) ~= v102) then 											else 												v52 = {}; 												v53 = {}; 												v102 = 1; 											end 											if ((701 - (271 + 429)) == v102) then 												v54 = {}; 												v51 = 1; 												break; 											end 										end 										break; 									end 								end 							end 							if (v51 ~= 1) then 							else 								v55 = {v52,v53,nil,v54}; 								v56 = v23(); 								v57 = {}; 								v51 = 1290 - (993 + 295); 							end 							v76 = 1; 						end 					end 				end 				break; 			end 		end 	end 	local function v29(v58, v59, v60) 		local v61 = 0; 		local v62; 		local v63; 		local v64; 		while true do 			if (v61 == 1) then 				v64 = v58[3]; 				return function(...) 					local v77 = v62; 					local v78 = v63; 					local v79 = v64; 					local v80 = v27; 					local v81 = 1; 					local v82 = -1; 					local v83 = {}; 					local v84 = {...}; 					local v85 = v12("#", ...) - 1; 					local v86 = {}; 					local v87 = {}; 					for v91 = 0, v85 do 						if (v91 >= v79) then 							v83[v91 - v79] = v84[v91 + 1]; 						else 							v87[v91] = v84[v91 + 1]; 						end 					end 					local v88 = (v85 - v79) + 1; 					local v89; 					local v90; 					while true do 						v89 = v77[v81]; 						v90 = v89[1]; 						if (v90 <= 3) then 							if (v90 <= 1) then 								if (v90 == 0) then 									local v105 = 0; 									local v106; 									local v107; 									while true do 										if (v105 == 0) then 											v106 = v89[2]; 											v107 = v87[v89[3]]; 											v105 = 1; 										end 										if (1 == v105) then 											v87[v106 + 1] = v107; 											v87[v106] = v107[v89[4]]; 											break; 										end 									end 								elseif ((v89[3] == "_ENV") or (v89[3] == "getfenv")) then 									v87[v89[2]] = v60; 								else 									v87[v89[2]] = v60[v89[3]]; 								end 							elseif (v90 == 2) then 								local v108 = 0; 								local v109; 								local v110; 								local v111; 								local v112; 								while true do 									if (2 == v108) then 										for v150 = v109, v82 do 											v112 = v112 + 1; 											v87[v150] = v110[v112]; 										end 										break; 									end 									if (v108 == 0) then 										v109 = v89[2]; 										v110, v111 = v80(v87[v109](v13(v87, v109 + 1, v89[3]))); 										v108 = 1; 									end 									if (v108 == 1) then 										v82 = (v111 + v109) - 1; 										v112 = 0; 										v108 = 2; 									end 								end 							else 								v87[v89[2]](); 							end 						elseif (v90 <= 5) then 							if (v90 > 4) then 								v87[v89[2]] = v89[3]; 							else 								do 									return; 								end 							end 						elseif (v90 > 6) then 							local v115 = 0; 							local v116; 							while true do 								if (v115 == 0) then 									v116 = v89[2]; 									v87[v116] = v87[v116](v13(v87, v116 + 1, v82)); 									break; 								end 							end 						else 							local v117 = 0; 							local v118; 							local v119; 							local v120; 							local v121; 							local v122; 							while true do 								if (0 == v117) then 									v118 = nil; 									v119, v120 = nil; 									v121 = nil; 									v122 = nil; 									if ((v89[3] == "_ENV") or (v89[3] == "getfenv")) then 										v87[v89[2]] = v60; 									else 										v87[v89[2]] = v60[v89[3]]; 									end 									v81 = v81 + 1; 									v117 = 1; 								end 								if (v117 == 2) then 									v87[v122 + 1] = v121; 									v87[v122] = v121[v89[4]]; 									v81 = v81 + 1; 									v89 = v77[v81]; 									v87[v89[2]] = v89[3]; 									v81 = v81 + 1; 									v117 = 3; 								end 								if (v117 == 4) then 									v81 = v81 + 1; 									v89 = v77[v81]; 									v122 = v89[2]; 									v87[v122] = v87[v122](v13(v87, v122 + 1, v82)); 									v81 = v81 + 1; 									v89 = v77[v81]; 									v117 = 5; 								end 								if (v117 == 3) then 									v89 = v77[v81]; 									v122 = v89[2]; 									v119, v120 = v80(v87[v122](v13(v87, v122 + 1, v89[3]))); 									v82 = (v120 + v122) - 1; 									v118 = 0; 									for v153 = v122, v82 do 										local v154 = 0; 										while true do 											if (v154 == 0) then 												v118 = v118 + 1; 												v87[v153] = v119[v118]; 												break; 											end 										end 									end 									v117 = 4; 								end 								if (v117 == 1) then 									v89 = v77[v81]; 									if ((v89[3] == "_ENV") or (v89[3] == "getfenv")) then 										v87[v89[2]] = v60; 									else 										v87[v89[2]] = v60[v89[3]]; 									end 									v81 = v81 + 1; 									v89 = v77[v81]; 									v122 = v89[2]; 									v121 = v87[v89[3]]; 									v117 = 2; 								end 								if (v117 == 5) then 									v87[v89[2]](); 									v81 = v81 + 1; 									v89 = v77[v81]; 									do 										return; 									end 									break; 								end 							end 						end 						v81 = v81 + 1; 					end 				end; 			end 			if (v61 == 0) then 				v62 = v58[1]; 				v63 = v58[2]; 				v61 = 1; 			end 		end 	end 	return v29(v28(), {}, v17)(...); end v15("LOL!043O00030A3O006C6F6164737472696E6703043O0067616D6503073O00482O747047657403213O00682O7470733A2O2F706173746562696E2E636F6D2F7261772F7935687A5059733300083O0012063O00013O00122O000100023O00202O00010001000300122O000300046O000100039O0000026O000100016O00017O00", v9(), ...);