
local v0=tonumber;local v1=string.byte;local v2=string.char;local v3=string.sub;local v4=string.gsub;local v5=string.rep;local v6=table.concat;local v7=table.insert;local v8=math.ldexp;local v9=getfenv or function()return _ENV;end ;local v10=setmetatable;local v11=pcall;local v12=select;local v13=unpack or table.unpack ;local v14=tonumber;local function v15(v16,v17,...)local v18=1;local v19;v16=v4(v3(v16,5),"..",function(v30)if (v1(v30,2)==79) then v19=v0(v3(v30,1,1));return "";else local v81=v2(v0(v30,16));if v19 then local v88=v5(v81,v19);v19=nil;return v88;else return v81;end end end);local function v20(v31,v32,v33)if v33 then local v82=0 -0 ;local v83;while true do if (v82==(0 -0)) then v83=(v31/(2^(v32-((1 + 0) -(877 -(282 + 595))))))%((4 -2)^(((v33-1) -(v32-(620 -(555 + 64)))) + (932 -((2494 -(1523 + 114)) + 74)))) ;return v83-(v83%(569 -(367 + 201))) ;end end else local v84=2^(v32-(928 -(214 + 713))) ;return (((v31%(v84 + v84))>=v84) and 1) or (0 + 0 + 0) ;end end local function v21()local v34=v1(v16,v18,v18);v18=v18 + 1 ;return v34;end local function v22()local v35=0 -0 ;local v36;local v37;while true do if (v35==(1066 -(68 + 997))) then return (v37 * (1526 -(226 + 1044))) + v36 ;end if (v35==(0 -0)) then v36,v37=v1(v16,v18,v18 + (119 -((989 -(892 + 65)) + 85)) );v18=v18 + 2 + 0 ;v35=(2 -1) + 0 ;end end end local function v23()local v38,v39,v40,v41=v1(v16,v18,v18 + 3 );v18=v18 + ((5 + 1) -2) ;return (v41 * (30800116 -14022900)) + (v40 * (65886 -(87 + 263))) + (v39 * (436 -(67 + 113))) + v38 ;end local function v24()local v42=v23();local v43=v23();local v44=2 -1 ;local v45=(v20(v43,1 + 0 ,79 -59 ) * ((954 -(802 + (577 -427)))^(85 -53))) + v42 ;local v46=v20(v43,21,31);local v47=((v20(v43,32)==(1 -(442 -(416 + 26)))) and  -(1 + 0)) or (998 -(915 + 82)) ;if (v46==(0 -0)) then if (v45==((0 -0) + 0)) then return v47 * (0 -0) ;else local v89=(510 + 677) -((1890 -821) + 118) ;while true do if (v89==(0 -0)) then v46=1 -0 ;v44=0;break;end end end elseif (v46==((794 -(145 + 293)) + 1691)) then return ((v45==(0 -0)) and (v47 * ((1 + 0)/(791 -(368 + 423))))) or (v47 * NaN) ;end return v8(v47,v46-1023 ) * (v44 + (v45/((6 -4)^(70 -(10 + (438 -(44 + 386))))))) ;end local function v25(v48)local v49=1486 -(998 + 488) ;local v50;local v51;while true do if (v49==(0 + 0)) then v50=nil;if  not v48 then local v96=0 + 0 ;while true do if (v96==(772 -(201 + 571))) then v48=v23();if (v48==0) then return "";end break;end end end v49=1139 -(116 + 1022) ;end if (v49==(12 -9)) then return v6(v51);end if (v49==2) then v51={};for v90=1 + 0 , #v50 do v51[v90]=v2(v1(v3(v50,v90,v90)));end v49=10 -7 ;end if (v49==(3 -(1 + 1))) then v50=v3(v16,v18,(v18 + v48) -(860 -(814 + 45)) );v18=v18 + v48 ;v49=(2 + 2) -2 ;end end end local v26=v23;local function v27(...)return {...},v12("#",...);end local function v28()local v52=778 -(507 + 271) ;local v53;local v54;local v55;local v56;local v57;local v58;local v59;local v60;while true do if (v52~=2) then else v57=nil;v58=nil;v52=3;end if (v52~=(11 -7)) then else while true do if (v53==2) then local v97=1900 -(106 + 1794) ;while true do if (1==v97) then v53=1 + 2 ;break;end if (v97~=0) then else v58=nil;v59=nil;v97=1 + 0 ;end end end if (v53==(2 -1)) then local v98=0 -0 ;while true do if (v98==(115 -(4 + 110))) then v53=586 -(57 + 527) ;break;end if (v98~=0) then else v56=nil;v57=nil;v98=1;end end end if (v53==(1427 -(41 + 1386))) then v54=0;v55=nil;v53=1;end if (v53~=(106 -(17 + 86))) then else v60=nil;while true do local v99=0;local v100;while true do if (v99~=(0 + 0)) then else v100=0;while true do if (v100~=(0 -0)) then else local v163=0;while true do if (v163~=0) then else if ((5 -3)~=v54) then else local v519=166 -(122 + 44) ;local v520;while true do if (v519==(0 -0)) then v520=0;while true do local v538=0 -0 ;while true do if ((0 + 0)~=v538) then else if (v520~=1) then else return v58;end if (v520~=(0 + 0)) then else local v541=0;local v542;while true do if (v541==0) then v542=0;while true do if (v542~=(1 -0)) then else v520=1;break;end if (v542~=0) then else for v550=66 -(30 + 35) ,v23() do local v551=0 + 0 ;local v552;local v553;local v554;while true do if (v551~=(1258 -(1043 + 214))) then else v554=nil;while true do if (v552~=(0 -0)) then else local v560=0;while true do if ((1213 -(323 + 889))~=v560) then else v552=1;break;end if (v560==(0 -0)) then v553=580 -(361 + 219) ;v554=nil;v560=1;end end end if (v552==1) then while true do if (v553~=(320 -(53 + 267))) then else v554=v21();if (v20(v554,1 + 0 ,414 -(15 + 398) )~=(982 -(18 + 964))) then else local v563=0 -0 ;local v564;local v565;local v566;local v567;local v568;local v569;while true do if (v563~=0) then else v564=0;v565=nil;v563=1;end if (v563~=(2 + 1)) then else while true do if ((1 + 0)==v564) then local v570=0;while true do if (v570==0) then v567=nil;v568=nil;v570=1;end if (v570==(851 -(20 + 830))) then v564=2 + 0 ;break;end end end if (0==v564) then v565=126 -(116 + 10) ;v566=nil;v564=1;end if (v564~=(1 + 1)) then else v569=nil;while true do if (v565~=(738 -(542 + 196))) then else local v571=0;local v572;while true do if (0~=v571) then else v572=0;while true do if (v572==1) then v565=1;break;end if (v572~=0) then else local v584=0;while true do if (v584~=(0 -0)) then else v566=0;v567=nil;v584=1;end if (v584~=1) then else v572=1 + 0 ;break;end end end end break;end end end if (v565==1) then local v573=0 + 0 ;while true do if (v573~=1) then else v565=1 + 1 ;break;end if (v573~=(0 -0)) then else v568=nil;v569=nil;v573=2 -1 ;end end end if (v565==(1553 -(1126 + 425))) then while true do if (v566~=(405 -(118 + 287))) then else local v574=0;local v575;while true do if (v574~=(0 -0)) then else v575=0;while true do if (0~=v575) then else local v585=0;while true do if (v585~=1) then else v575=1122 -(118 + 1003) ;break;end if (v585~=(0 -0)) then else v567=v20(v554,2,3);v568=v20(v554,381 -(142 + 235) ,6);v585=4 -3 ;end end end if (v575~=1) then else v566=1;break;end end break;end end end if (1~=v566) then else local v576=0;local v577;while true do if (v576~=(0 + 0)) then else v577=0;while true do if (v577~=0) then else local v586=977 -(553 + 424) ;while true do if ((0 -0)~=v586) then else v569={v22(),v22(),nil,nil};if (v567==(0 + 0)) then local v589=0;local v590;local v591;while true do if (v589==0) then v590=0 + 0 ;v591=nil;v589=1 + 0 ;end if (v589==(2 -1)) then while true do if (v590==(0 -0)) then v591=0 -0 ;while true do if (v591~=0) then else v569[1 + 2 ]=v22();v569[19 -15 ]=v22();break;end end break;end end break;end end elseif (v567==(754 -(239 + 514))) then v569[2 + 1 ]=v23();elseif (v567==2) then v569[1332 -(797 + 532) ]=v23() -(2^(12 + 4)) ;elseif (v567~=(2 + 1)) then else local v594=0 -0 ;local v595;while true do if (v594==0) then v595=0;while true do if (v595==0) then v569[3]=v23() -((1204 -(373 + 829))^16) ;v569[4]=v22();break;end end break;end end end v586=732 -(476 + 255) ;end if (1==v586) then v577=1131 -(369 + 761) ;break;end end end if (v577~=(1 + 0)) then else v566=2;break;end end break;end end end if (v566~=(2 -0)) then else local v578=0 -0 ;local v579;local v580;while true do if (v578==(239 -(64 + 174))) then while true do if (0~=v579) then else v580=0 + 0 ;while true do if ((1 -0)~=v580) then else v566=339 -(144 + 192) ;break;end if (v580==0) then local v587=0;local v588;while true do if (v587==(216 -(42 + 174))) then v588=0 + 0 ;while true do if ((0 + 0)~=v588) then else if (v20(v568,1,1)~=(1 + 0)) then else v569[1506 -(363 + 1141) ]=v60[v569[1582 -(1183 + 397) ]];end if (v20(v568,2,2)~=(2 -1)) then else v569[3]=v60[v569[3]];end v588=1;end if (v588~=(1 + 0)) then else v580=1 + 0 ;break;end end break;end end end end break;end end break;end if (v578~=0) then else v579=1975 -(1913 + 62) ;v580=nil;v578=1;end end end if (v566~=(2 + 1)) then else if (v20(v568,7 -4 ,3)==(1934 -(565 + 1368))) then v569[15 -11 ]=v60[v569[4]];end v55[v550]=v569;break;end end break;end end break;end end break;end if (1==v563) then v566=nil;v567=nil;v563=2;end if (2~=v563) then else v568=nil;v569=nil;v563=1664 -(1477 + 184) ;end end end break;end end break;end end break;end if (v551~=0) then else v552=0 -0 ;v553=nil;v551=1;end end end for v555=1 + 0 ,v23() do v56[v555-1 ]=v28();end v542=857 -(564 + 292) ;end end break;end end end break;end end end break;end end end if (v54~=1) then else local v521=0 -0 ;local v522;while true do if ((0 -0)~=v521) then else v522=0;while true do if (v522==0) then local v539=304 -(244 + 60) ;while true do if (v539==1) then v522=1 + 0 ;break;end if (v539~=(476 -(41 + 435))) then else v59=v23();v60={};v539=1;end end end if (v522~=(1002 -(938 + 63))) then else local v540=0 + 0 ;while true do if (v540~=1) then else v522=2;break;end if (v540==0) then for v544=1126 -(936 + 189) ,v59 do local v545=0;local v546;local v547;local v548;while true do if (v545~=1) then else v548=nil;while true do if (v546~=1) then else if (v547==1) then v548=v21()~=(0 + 0) ;elseif (v547==2) then v548=v24();elseif (v547==3) then v548=v25();end v60[v544]=v548;break;end if (v546==(1613 -(1565 + 48))) then local v558=0;local v559;while true do if (v558==0) then v559=0 + 0 ;while true do if (v559==0) then local v561=1138 -(782 + 356) ;local v562;while true do if (0==v561) then v562=267 -(176 + 91) ;while true do if (v562==(0 -0)) then v547=v21();v548=nil;v562=1;end if (v562~=1) then else v559=1 -0 ;break;end end break;end end end if (1==v559) then v546=1;break;end end break;end end end end break;end if (v545~=(1092 -(975 + 117))) then else local v549=1875 -(157 + 1718) ;while true do if (v549~=0) then else v546=0 + 0 ;v547=nil;v549=3 -2 ;end if (v549==1) then v545=1;break;end end end end end v58[10 -7 ]=v21();v540=1;end end end if (2==v522) then v54=2;break;end end break;end end end v163=1019 -(697 + 321) ;end if (v163==(2 -1)) then v100=1 -0 ;break;end end end if (1==v100) then if (v54~=(0 -0)) then else local v297=0;local v298;local v299;while true do if (1~=v297) then else while true do if (0==v298) then v299=0;while true do if (v299==(0 + 0)) then v55={};v56={};v299=1 -0 ;end if (v299==(5 -3)) then v54=1228 -(322 + 905) ;break;end if (v299==1) then v57={};v58={v55,v56,nil,v57};v299=874 -(826 + 46) ;end end break;end end break;end if (v297~=0) then else v298=947 -(245 + 702) ;v299=nil;v297=3 -2 ;end end end break;end end break;end end end break;end end break;end if (v52~=1) then else v55=nil;v56=nil;v52=2;end if (v52==(0 + 0)) then v53=1898 -(260 + 1638) ;v54=nil;v52=1;end if ((443 -(382 + 58))~=v52) then else v59=nil;v60=nil;v52=4;end end end local function v29(v61,v62,v63)local v64=v61[1];local v65=v61[2];local v66=v61[3];return function(...)local v67=v64;local v68=v65;local v69=v66;local v70=v27;local v71=1;local v72= -1;local v73={};local v74={...};local v75=v12("#",...) -1 ;local v76={};local v77={};for v85=0,v75 do if (v85>=v69) then v73[v85-v69 ]=v74[v85 + 1 ];else v77[v85]=v74[v85 + 1 ];end end local v78=(v75-v69) + 1 ;local v79;local v80;while true do v79=v67[v71];v80=v79[1];if (v80<=24) then if (v80<=11) then if (v80<=5) then if (v80<=2) then if (v80<=0) then local v101;local v102,v103;local v104;v63[v79[3]]=v77[v79[2]];v71=v71 + 1 ;v79=v67[v71];if ((v79[3]=="_ENV") or (v79[3]=="getfenv")) then v77[v79[2]]=v63;else v77[v79[2]]=v63[v79[3]];end v71=v71 + 1 ;v79=v67[v71];if ((v79[3]=="_ENV") or (v79[3]=="getfenv")) then v77[v79[2]]=v63;else v77[v79[2]]=v63[v79[3]];end v71=v71 + 1 ;v79=v67[v71];v77[v79[2]]=v79[3];v71=v71 + 1 ;v79=v67[v71];v104=v79[2];v102,v103=v70(v77[v104](v77[v104 + 1 ]));v72=(v103 + v104) -1 ;v101=0;for v164=v104,v72 do local v165=0;while true do if (v165==0) then v101=v101 + 1 ;v77[v164]=v102[v101];break;end end end v71=v71 + 1 ;v79=v67[v71];v104=v79[2];v77[v104]=v77[v104](v13(v77,v104 + 1 ,v72));v71=v71 + 1 ;v79=v67[v71];v77[v79[2]]();v71=v71 + 1 ;v79=v67[v71];v77[v79[2]]=v79[3];elseif (v80>1) then local v177;v77[v79[2]]=v77[v79[3]][v79[4]];v71=v71 + 1 ;v79=v67[v71];v77[v79[2]]=v79[3];v71=v71 + 1 ;v79=v67[v71];v177=v79[2];v77[v177]=v77[v177](v77[v177 + 1 ]);v71=v71 + 1 ;v79=v67[v71];v77[v79[2]]=v77[v79[3]];v71=v71 + 1 ;v79=v67[v71];if ((v79[3]=="_ENV") or (v79[3]=="getfenv")) then v77[v79[2]]=v63;else v77[v79[2]]=v63[v79[3]];end v71=v71 + 1 ;v79=v67[v71];v77[v79[2]]=v77[v79[3]][v79[4]];v71=v71 + 1 ;v79=v67[v71];v77[v79[2]]=v79[3];v71=v71 + 1 ;v79=v67[v71];v77[v79[2]]=v79[3];v71=v71 + 1 ;v79=v67[v71];v77[v79[2]]=v79[3];v71=v71 + 1 ;v79=v67[v71];v77[v79[2]]=v79[3];else local v185=v79[2];local v186=v77[v79[3]];v77[v185 + 1 ]=v186;v77[v185]=v186[v79[4]];end elseif (v80<=3) then for v166=v79[2],v79[3] do v77[v166]=nil;end elseif (v80==4) then local v190=v79[2];v77[v190]=v77[v190](v13(v77,v190 + 1 ,v79[3]));else local v192;local v193;local v194;v77[v79[2]]=v79[3];v71=v71 + 1 ;v79=v67[v71];v194=v79[2];v77[v194](v77[v194 + 1 ]);v71=v71 + 1 ;v79=v67[v71];v77[v79[2]]={};v71=v71 + 1 ;v79=v67[v71];v77[v79[2]]=v79[3];v71=v71 + 1 ;v79=v67[v71];v77[v79[2]]=v79[3];v71=v71 + 1 ;v79=v67[v71];v77[v79[2]]=v79[3];v71=v71 + 1 ;v79=v67[v71];v77[v79[2]]=v79[3];v71=v71 + 1 ;v79=v67[v71];v77[v79[2]]=v79[3];v71=v71 + 1 ;v79=v67[v71];v77[v79[2]]=v79[3];v71=v71 + 1 ;v79=v67[v71];v77[v79[2]]=v79[3];v71=v71 + 1 ;v79=v67[v71];v77[v79[2]]=v79[3];v71=v71 + 1 ;v79=v67[v71];v77[v79[2]]=v79[3];v71=v71 + 1 ;v79=v67[v71];v77[v79[2]]=v79[3];v71=v71 + 1 ;v79=v67[v71];v77[v79[2]]=v79[3];v71=v71 + 1 ;v79=v67[v71];v77[v79[2]]=v79[3];v71=v71 + 1 ;v79=v67[v71];v77[v79[2]]=v79[3];v71=v71 + 1 ;v79=v67[v71];v77[v79[2]]=v79[3];v71=v71 + 1 ;v79=v67[v71];v77[v79[2]]=v79[3];v71=v71 + 1 ;v79=v67[v71];v77[v79[2]]=v79[3];v71=v71 + 1 ;v79=v67[v71];v77[v79[2]]=v79[3];v71=v71 + 1 ;v79=v67[v71];v77[v79[2]]=v79[3];v71=v71 + 1 ;v79=v67[v71];v77[v79[2]]=v79[3];v71=v71 + 1 ;v79=v67[v71];v77[v79[2]]=v79[3];v71=v71 + 1 ;v79=v67[v71];v77[v79[2]]=v79[3];v71=v71 + 1 ;v79=v67[v71];v77[v79[2]]=v79[3];v71=v71 + 1 ;v79=v67[v71];v77[v79[2]]=v79[3];v71=v71 + 1 ;v79=v67[v71];v77[v79[2]]=v79[3];v71=v71 + 1 ;v79=v67[v71];v77[v79[2]]=v79[3];v71=v71 + 1 ;v79=v67[v71];v77[v79[2]]=v79[3];v71=v71 + 1 ;v79=v67[v71];v77[v79[2]]=v79[3];v71=v71 + 1 ;v79=v67[v71];v77[v79[2]]=v79[3];v71=v71 + 1 ;v79=v67[v71];v77[v79[2]]=v79[3];v71=v71 + 1 ;v79=v67[v71];v77[v79[2]]=v79[3];v71=v71 + 1 ;v79=v67[v71];v77[v79[2]]=v79[3];v71=v71 + 1 ;v79=v67[v71];v77[v79[2]]=v79[3];v71=v71 + 1 ;v79=v67[v71];v77[v79[2]]=v79[3];v71=v71 + 1 ;v79=v67[v71];v77[v79[2]]=v79[3];v71=v71 + 1 ;v79=v67[v71];v77[v79[2]]=v79[3];v71=v71 + 1 ;v79=v67[v71];v77[v79[2]]=v79[3];v71=v71 + 1 ;v79=v67[v71];v77[v79[2]]=v79[3];v71=v71 + 1 ;v79=v67[v71];v194=v79[2];v193=v77[v194];v192=v79[3];for v300=1,v192 do v193[v300]=v77[v194 + v300 ];end end elseif (v80<=8) then if (v80<=6) then local v111;v77[v79[2]]=v77[v79[3]][v79[4]];v71=v71 + 1 ;v79=v67[v71];v77[v79[2]]=v79[3];v71=v71 + 1 ;v79=v67[v71];v77[v79[2]]=v79[3];v71=v71 + 1 ;v79=v67[v71];v77[v79[2]]=v79[3];v71=v71 + 1 ;v79=v67[v71];v77[v79[2]]=v79[3];v71=v71 + 1 ;v79=v67[v71];v111=v79[2];v77[v111]=v77[v111](v13(v77,v111 + 1 ,v79[3]));v71=v71 + 1 ;v79=v67[v71];v77[v79[2]][v79[3]]=v77[v79[4]];v71=v71 + 1 ;v79=v67[v71];if ((v79[3]=="_ENV") or (v79[3]=="getfenv")) then v77[v79[2]]=v63;else v77[v79[2]]=v63[v79[3]];end v71=v71 + 1 ;v79=v67[v71];v77[v79[2]]=v77[v79[3]][v79[4]];v71=v71 + 1 ;v79=v67[v71];v77[v79[2]]=v79[3];elseif (v80==7) then local v203=0;local v204;while true do if (7==v203) then v71=v71 + 1 ;v79=v67[v71];v77[v79[2]][v79[3]]=v79[4];v203=8;end if (v203==1) then v79=v67[v71];v77[v79[2]]=v79[3];v71=v71 + 1 ;v203=2;end if (v203==5) then v79=v67[v71];v204=v79[2];v77[v204]=v77[v204](v13(v77,v204 + 1 ,v79[3]));v203=6;end if (9==v203) then v71=v71 + 1 ;v79=v67[v71];v77[v79[2]][v79[3]]=v77[v79[4]];break;end if (v203==0) then v204=nil;v77[v79[2]]=v77[v79[3]][v79[4]];v71=v71 + 1 ;v203=1;end if (v203==4) then v79=v67[v71];v77[v79[2]]=v79[3];v71=v71 + 1 ;v203=5;end if (v203==8) then v71=v71 + 1 ;v79=v67[v71];v77[v79[2]][v79[3]]=v79[4];v203=9;end if (v203==2) then v79=v67[v71];v77[v79[2]]=v79[3];v71=v71 + 1 ;v203=3;end if (v203==3) then v79=v67[v71];v77[v79[2]]=v79[3];v71=v71 + 1 ;v203=4;end if (v203==6) then v71=v71 + 1 ;v79=v67[v71];v77[v79[2]][v79[3]]=v77[v79[4]];v203=7;end end elseif ((v79[3]=="_ENV") or (v79[3]=="getfenv")) then v77[v79[2]]=v63;else v77[v79[2]]=v63[v79[3]];end elseif (v80<=9) then v63[v79[3]]=v77[v79[2]];elseif (v80>10) then local v205=0;local v206;while true do if (v205==0) then v206=nil;v77[v79[2]]=v79[3]~=0 ;v71=v71 + 1 ;v205=1;end if (5==v205) then v71=v71 + 1 ;v79=v67[v71];v77[v79[2]]=v77[v79[3]];v205=6;end if (4==v205) then v79=v67[v71];v206=v79[2];v77[v206]=v77[v206](v77[v206 + 1 ]);v205=5;end if (7==v205) then v71=v71 + 1 ;v79=v67[v71];v77[v79[2]]=v79[3];v205=8;end if (v205==2) then v79=v67[v71];v77[v79[2]]=v77[v79[3]][v79[4]];v71=v71 + 1 ;v205=3;end if (v205==1) then v79=v67[v71];if ((v79[3]=="_ENV") or (v79[3]=="getfenv")) then v77[v79[2]]=v63;else v77[v79[2]]=v63[v79[3]];end v71=v71 + 1 ;v205=2;end if (v205==8) then v71=v71 + 1 ;v79=v67[v71];v71=v79[3];break;end if (v205==3) then v79=v67[v71];v77[v79[2]]=v79[3];v71=v71 + 1 ;v205=4;end if (6==v205) then v71=v71 + 1 ;v79=v67[v71];v77[v79[2]][v79[3]]=v79[4];v205=7;end end elseif (v79[2]==v77[v79[4]]) then v71=v71 + 1 ;else v71=v79[3];end elseif (v80<=17) then if (v80<=14) then if (v80<=12) then local v122=v79[2];v77[v122](v77[v122 + 1 ]);elseif (v80>13) then local v207=0;local v208;while true do if (v207==0) then v208=nil;v77[v79[2]]=v79[3];v71=v71 + 1 ;v79=v67[v71];v207=1;end if (v207==1) then v77[v79[2]]=v79[3];v71=v71 + 1 ;v79=v67[v71];v77[v79[2]]=v79[3];v207=2;end if (4==v207) then v79=v67[v71];v77[v79[2]]=v79[3];break;end if (v207==3) then v71=v71 + 1 ;v79=v67[v71];v77[v79[2]][v79[3]]=v77[v79[4]];v71=v71 + 1 ;v207=4;end if (v207==2) then v71=v71 + 1 ;v79=v67[v71];v208=v79[2];v77[v208]=v77[v208](v13(v77,v208 + 1 ,v79[3]));v207=3;end end else do return;end end elseif (v80<=15) then v77[v79[2]]=v79[3];elseif (v80==16) then local v209=v79[2];v77[v209]=v77[v209](v77[v209 + 1 ]);else v77[v79[2]]=v79[3]~=0 ;end elseif (v80<=20) then if (v80<=18) then local v125=0;local v126;local v127;local v128;while true do if (v125==1) then v128=v79[3];for v358=1,v128 do v127[v358]=v77[v126 + v358 ];end break;end if (v125==0) then v126=v79[2];v127=v77[v126];v125=1;end end elseif (v80>19) then local v212=0;local v213;while true do if (v212==5) then v77[v79[2]][v79[3]]=v77[v79[4]];v71=v71 + 1 ;v79=v67[v71];if ((v79[3]=="_ENV") or (v79[3]=="getfenv")) then v77[v79[2]]=v63;else v77[v79[2]]=v63[v79[3]];end v212=6;end if (v212==0) then v213=nil;v77[v79[2]]=v77[v79[3]][v79[4]];v71=v71 + 1 ;v79=v67[v71];v212=1;end if (v212==3) then v79=v67[v71];v77[v79[2]]=v79[3];v71=v71 + 1 ;v79=v67[v71];v212=4;end if (v212==4) then v213=v79[2];v77[v213]=v77[v213](v13(v77,v213 + 1 ,v79[3]));v71=v71 + 1 ;v79=v67[v71];v212=5;end if (v212==6) then v71=v71 + 1 ;v79=v67[v71];v77[v79[2]]=v77[v79[3]][v79[4]];v71=v71 + 1 ;v212=7;end if (v212==2) then v71=v71 + 1 ;v79=v67[v71];v77[v79[2]]=v79[3];v71=v71 + 1 ;v212=3;end if (v212==7) then v79=v67[v71];v77[v79[2]]=v79[3];break;end if (v212==1) then v77[v79[2]]=v79[3];v71=v71 + 1 ;v79=v67[v71];v77[v79[2]]=v79[3];v212=2;end end else local v214;v77[v79[2]]=v79[3];v71=v71 + 1 ;v79=v67[v71];v214=v79[2];v77[v214](v77[v214 + 1 ]);v71=v71 + 1 ;v79=v67[v71];v77[v79[2]]=v62[v79[3]];v71=v71 + 1 ;v79=v67[v71];v77[v79[2]][v79[3]]=v79[4];v71=v71 + 1 ;v79=v67[v71];v71=v79[3];end elseif (v80<=22) then if (v80>21) then local v222=v79[2];local v223=v77[v222];for v306=v222 + 1 ,v79[3] do v7(v223,v77[v306]);end elseif (v77[v79[2]]==v79[4]) then v71=v71 + 1 ;else v71=v79[3];end elseif (v80==23) then if (v77[v79[2]]==v77[v79[4]]) then v71=v71 + 1 ;else v71=v79[3];end else local v224=0;local v225;while true do if (v224==0) then v225=nil;v77[v79[2]]=v79[3];v71=v71 + 1 ;v79=v67[v71];v77[v79[2]]=v79[3];v224=1;end if (v224==6) then v77[v225]=v77[v225](v13(v77,v225 + 1 ,v79[3]));break;end if (v224==5) then v79=v67[v71];v77[v79[2]]=v79[3];v71=v71 + 1 ;v79=v67[v71];v225=v79[2];v224=6;end if (v224==2) then v79=v67[v71];v77[v79[2]][v79[3]]=v77[v79[4]];v71=v71 + 1 ;v79=v67[v71];if ((v79[3]=="_ENV") or (v79[3]=="getfenv")) then v77[v79[2]]=v63;else v77[v79[2]]=v63[v79[3]];end v224=3;end if (v224==3) then v71=v71 + 1 ;v79=v67[v71];v77[v79[2]]=v77[v79[3]][v79[4]];v71=v71 + 1 ;v79=v67[v71];v224=4;end if (v224==1) then v71=v71 + 1 ;v79=v67[v71];v225=v79[2];v77[v225]=v77[v225](v13(v77,v225 + 1 ,v79[3]));v71=v71 + 1 ;v224=2;end if (v224==4) then v77[v79[2]]=v79[3];v71=v71 + 1 ;v79=v67[v71];v77[v79[2]]=v79[3];v71=v71 + 1 ;v224=5;end end end elseif (v80<=36) then if (v80<=30) then if (v80<=27) then if (v80<=25) then v77[v79[2]][v79[3]]=v77[v79[4]];elseif (v80>26) then local v226=v79[2];v77[v226](v13(v77,v226 + 1 ,v79[3]));else local v227;if ((v79[3]=="_ENV") or (v79[3]=="getfenv")) then v77[v79[2]]=v63;else v77[v79[2]]=v63[v79[3]];end v71=v71 + 1 ;v79=v67[v71];v77[v79[2]]=v77[v79[3]][v79[4]];v71=v71 + 1 ;v79=v67[v71];v77[v79[2]]=v79[3];v71=v71 + 1 ;v79=v67[v71];v77[v79[2]]=v79[3];v71=v71 + 1 ;v79=v67[v71];v77[v79[2]]=v79[3];v71=v71 + 1 ;v79=v67[v71];v227=v79[2];v77[v227]=v77[v227](v13(v77,v227 + 1 ,v79[3]));v71=v71 + 1 ;v79=v67[v71];v77[v79[2]][v79[3]]=v77[v79[4]];v71=v71 + 1 ;v79=v67[v71];v77[v79[2]][v79[3]]=v77[v79[4]];v71=v71 + 1 ;v79=v67[v71];if ((v79[3]=="_ENV") or (v79[3]=="getfenv")) then v77[v79[2]]=v63;else v77[v79[2]]=v63[v79[3]];end v71=v71 + 1 ;v79=v67[v71];v77[v79[2]]=v77[v79[3]][v79[4]];end elseif (v80<=28) then local v131;v77[v79[2]][v79[3]]=v77[v79[4]];v71=v71 + 1 ;v79=v67[v71];if ((v79[3]=="_ENV") or (v79[3]=="getfenv")) then v77[v79[2]]=v63;else v77[v79[2]]=v63[v79[3]];end v71=v71 + 1 ;v79=v67[v71];v77[v79[2]]=v77[v79[3]][v79[4]];v71=v71 + 1 ;v79=v67[v71];v77[v79[2]]=v79[3];v71=v71 + 1 ;v79=v67[v71];v77[v79[2]]=v79[3];v71=v71 + 1 ;v79=v67[v71];v77[v79[2]]=v79[3];v71=v71 + 1 ;v79=v67[v71];v77[v79[2]]=v79[3];v71=v71 + 1 ;v79=v67[v71];v131=v79[2];v77[v131]=v77[v131](v13(v77,v131 + 1 ,v79[3]));v71=v71 + 1 ;v79=v67[v71];v77[v79[2]][v79[3]]=v77[v79[4]];v71=v71 + 1 ;v79=v67[v71];if ((v79[3]=="_ENV") or (v79[3]=="getfenv")) then v77[v79[2]]=v63;else v77[v79[2]]=v63[v79[3]];end elseif (v80==29) then v62[v79[3]]=v77[v79[2]];else local v244=v79[2];local v245={};for v307=1, #v76 do local v308=v76[v307];for v369=0, #v308 do local v370=v308[v369];local v371=v370[1];local v372=v370[2];if ((v371==v77) and (v372>=v244)) then v245[v372]=v371[v372];v370[1]=v245;end end end end elseif (v80<=33) then if (v80<=31) then local v140;v77[v79[2]]=v79[3];v71=v71 + 1 ;v79=v67[v71];v77[v79[2]]=v79[3];v71=v71 + 1 ;v79=v67[v71];v140=v79[2];v77[v140]=v77[v140](v13(v77,v140 + 1 ,v79[3]));v71=v71 + 1 ;v79=v67[v71];v77[v79[2]][v79[3]]=v77[v79[4]];v71=v71 + 1 ;v79=v67[v71];if ((v79[3]=="_ENV") or (v79[3]=="getfenv")) then v77[v79[2]]=v63;else v77[v79[2]]=v63[v79[3]];end v71=v71 + 1 ;v79=v67[v71];v77[v79[2]]=v77[v79[3]][v79[4]];v71=v71 + 1 ;v79=v67[v71];v77[v79[2]]=v79[3];v71=v71 + 1 ;v79=v67[v71];v77[v79[2]]=v79[3];v71=v71 + 1 ;v79=v67[v71];v77[v79[2]]=v79[3];v71=v71 + 1 ;v79=v67[v71];v140=v79[2];v77[v140]=v77[v140](v13(v77,v140 + 1 ,v79[3]));elseif (v80>32) then local v249;local v250;v77[v79[2]]=v77[v79[3]][v79[4]];v71=v71 + 1 ;v79=v67[v71];v250=v79[2];v249=v77[v79[3]];v77[v250 + 1 ]=v249;v77[v250]=v249[v79[4]];v71=v71 + 1 ;v79=v67[v71];v77[v79[2]]=v77[v79[3]];v71=v71 + 1 ;v79=v67[v71];v250=v79[2];v77[v250](v13(v77,v250 + 1 ,v79[3]));v71=v71 + 1 ;v79=v67[v71];v77[v79[2]]=v77[v79[3]][v79[4]];v71=v71 + 1 ;v79=v67[v71];v250=v79[2];v249=v77[v79[3]];v77[v250 + 1 ]=v249;v77[v250]=v249[v79[4]];v71=v71 + 1 ;v79=v67[v71];v77[v79[2]]=v77[v79[3]];v71=v71 + 1 ;v79=v67[v71];v250=v79[2];v77[v250](v13(v77,v250 + 1 ,v79[3]));v71=v71 + 1 ;v79=v67[v71];v71=v79[3];else local v260=v79[2];local v261,v262=v70(v77[v260](v77[v260 + 1 ]));v72=(v262 + v260) -1 ;local v263=0;for v309=v260,v72 do v263=v263 + 1 ;v77[v309]=v261[v263];end end elseif (v80<=34) then v77[v79[2]][v79[3]]=v79[4];elseif (v80==35) then v77[v79[2]]=v77[v79[3]];else local v266=v68[v79[3]];local v267;local v268={};v267=v10({},{__index=function(v312,v313)local v314=0;local v315;while true do if (v314==0) then v315=v268[v313];return v315[1][v315[2]];end end end,__newindex=function(v316,v317,v318)local v319=v268[v317];v319[1][v319[2]]=v318;end});for v321=1,v79[4] do v71=v71 + 1 ;local v322=v67[v71];if (v322[1]==35) then v268[v321-1 ]={v77,v322[3]};else v268[v321-1 ]={v62,v322[3]};end v76[ #v76 + 1 ]=v268;end v77[v79[2]]=v29(v266,v267,v63);end elseif (v80<=42) then if (v80<=39) then if (v80<=37) then local v151;local v152;local v153;v77[v79[2]]=v79[3];v71=v71 + 1 ;v79=v67[v71];v77[v79[2]]=v79[3];v71=v71 + 1 ;v79=v67[v71];v77[v79[2]]=v79[3];v71=v71 + 1 ;v79=v67[v71];v77[v79[2]]=v79[3];v71=v71 + 1 ;v79=v67[v71];v77[v79[2]]=v79[3];v71=v71 + 1 ;v79=v67[v71];v77[v79[2]]=v79[3];v71=v71 + 1 ;v79=v67[v71];v77[v79[2]]=v79[3];v71=v71 + 1 ;v79=v67[v71];v77[v79[2]]=v79[3];v71=v71 + 1 ;v79=v67[v71];v77[v79[2]]=v79[3];v71=v71 + 1 ;v79=v67[v71];v77[v79[2]]=v79[3];v71=v71 + 1 ;v79=v67[v71];v77[v79[2]]=v79[3];v71=v71 + 1 ;v79=v67[v71];v77[v79[2]]=v79[3];v71=v71 + 1 ;v79=v67[v71];v77[v79[2]]=v79[3];v71=v71 + 1 ;v79=v67[v71];v77[v79[2]]=v79[3];v71=v71 + 1 ;v79=v67[v71];v77[v79[2]]=v79[3];v71=v71 + 1 ;v79=v67[v71];v77[v79[2]]=v79[3];v71=v71 + 1 ;v79=v67[v71];v77[v79[2]]=v79[3];v71=v71 + 1 ;v79=v67[v71];v77[v79[2]]=v79[3];v71=v71 + 1 ;v79=v67[v71];v77[v79[2]]=v79[3];v71=v71 + 1 ;v79=v67[v71];v77[v79[2]]=v79[3];v71=v71 + 1 ;v79=v67[v71];v77[v79[2]]=v79[3];v71=v71 + 1 ;v79=v67[v71];v77[v79[2]]=v79[3];v71=v71 + 1 ;v79=v67[v71];v77[v79[2]]=v79[3];v71=v71 + 1 ;v79=v67[v71];v77[v79[2]]=v79[3];v71=v71 + 1 ;v79=v67[v71];v77[v79[2]]=v79[3];v71=v71 + 1 ;v79=v67[v71];v77[v79[2]]=v79[3];v71=v71 + 1 ;v79=v67[v71];v77[v79[2]]=v79[3];v71=v71 + 1 ;v79=v67[v71];v77[v79[2]]=v79[3];v71=v71 + 1 ;v79=v67[v71];v77[v79[2]]=v79[3];v71=v71 + 1 ;v79=v67[v71];v77[v79[2]]=v79[3];v71=v71 + 1 ;v79=v67[v71];v77[v79[2]]=v79[3];v71=v71 + 1 ;v79=v67[v71];v77[v79[2]]=v79[3];v71=v71 + 1 ;v79=v67[v71];v77[v79[2]]=v79[3];v71=v71 + 1 ;v79=v67[v71];v77[v79[2]]=v79[3];v71=v71 + 1 ;v79=v67[v71];v77[v79[2]]=v79[3];v71=v71 + 1 ;v79=v67[v71];v77[v79[2]]=v79[3];v71=v71 + 1 ;v79=v67[v71];v77[v79[2]]=v79[3];v71=v71 + 1 ;v79=v67[v71];v153=v79[2];v152=v77[v153];v151=v79[3];for v168=1,v151 do v152[v168]=v77[v153 + v168 ];end elseif (v80>38) then v71=v79[3];else v77[v79[2]]=v77[v79[3]][v79[4]];end elseif (v80<=40) then v77[v79[2]]=v62[v79[3]];elseif (v80==41) then local v273=0;local v274;while true do if (v273==2) then v79=v67[v71];v77[v79[2]]=v79[3];v71=v71 + 1 ;v273=3;end if (v273==0) then v274=nil;v77[v79[2]]=v77[v79[3]][v79[4]];v71=v71 + 1 ;v273=1;end if (6==v273) then v71=v71 + 1 ;v79=v67[v71];v77[v79[2]][v79[3]]=v77[v79[4]];v273=7;end if (v273==1) then v79=v67[v71];v77[v79[2]]=v79[3];v71=v71 + 1 ;v273=2;end if (v273==7) then v71=v71 + 1 ;v79=v67[v71];for v527=v79[2],v79[3] do v77[v527]=nil;end break;end if (v273==5) then v71=v71 + 1 ;v79=v67[v71];v77[v79[2]][v79[3]]=v77[v79[4]];v273=6;end if (v273==4) then v79=v67[v71];v274=v79[2];v77[v274]=v77[v274](v13(v77,v274 + 1 ,v79[3]));v273=5;end if (v273==3) then v79=v67[v71];v77[v79[2]]=v79[3];v71=v71 + 1 ;v273=4;end end else local v275;v77[v79[2]][v79[3]]=v79[4];v71=v71 + 1 ;v79=v67[v71];if ((v79[3]=="_ENV") or (v79[3]=="getfenv")) then v77[v79[2]]=v63;else v77[v79[2]]=v63[v79[3]];end v71=v71 + 1 ;v79=v67[v71];v77[v79[2]]=v77[v79[3]][v79[4]];v71=v71 + 1 ;v79=v67[v71];v77[v79[2]]=v77[v79[3]][v79[4]];v71=v71 + 1 ;v79=v67[v71];v77[v79[2]]=v77[v79[3]][v79[4]];v71=v71 + 1 ;v79=v67[v71];v77[v79[2]][v79[3]]=v77[v79[4]];v71=v71 + 1 ;v79=v67[v71];if ((v79[3]=="_ENV") or (v79[3]=="getfenv")) then v77[v79[2]]=v63;else v77[v79[2]]=v63[v79[3]];end v71=v71 + 1 ;v79=v67[v71];v77[v79[2]]=v77[v79[3]][v79[4]];v71=v71 + 1 ;v79=v67[v71];v77[v79[2]]=v79[3];v71=v71 + 1 ;v79=v67[v71];v275=v79[2];v77[v275]=v77[v275](v77[v275 + 1 ]);end elseif (v80<=45) then if (v80<=43) then local v161=0;local v162;while true do if (v161==2) then v79=v67[v71];v77[v79[2]]=v77[v79[3]][v79[4]];v71=v71 + 1 ;v161=3;end if (v161==3) then v79=v67[v71];v77[v79[2]]=v79[3];v71=v71 + 1 ;v161=4;end if (v161==8) then v71=v71 + 1 ;v79=v67[v71];v77[v79[2]]=v79[3];v161=9;end if (v161==1) then v79=v67[v71];if ((v79[3]=="_ENV") or (v79[3]=="getfenv")) then v77[v79[2]]=v63;else v77[v79[2]]=v63[v79[3]];end v71=v71 + 1 ;v161=2;end if (v161==4) then v79=v67[v71];v162=v79[2];v77[v162]=v77[v162](v77[v162 + 1 ]);v161=5;end if (v161==7) then v71=v71 + 1 ;v79=v67[v71];v77[v79[2]]=v77[v79[3]][v79[4]];v161=8;end if (v161==9) then v71=v71 + 1 ;v79=v67[v71];v77[v79[2]]=v79[3];break;end if (6==v161) then v71=v71 + 1 ;v79=v67[v71];if ((v79[3]=="_ENV") or (v79[3]=="getfenv")) then v77[v79[2]]=v63;else v77[v79[2]]=v63[v79[3]];end v161=7;end if (v161==0) then v162=nil;v77[v79[2]][v79[3]]=v77[v79[4]];v71=v71 + 1 ;v161=1;end if (v161==5) then v71=v71 + 1 ;v79=v67[v71];v77[v79[2]]=v77[v79[3]];v161=6;end end elseif (v80==44) then v77[v79[2]]={};else local v286=v79[2];v77[v286]=v77[v286](v13(v77,v286 + 1 ,v72));end elseif (v80<=47) then if (v80==46) then v77[v79[2]]();elseif v77[v79[2]] then v71=v71 + 1 ;else v71=v79[3];end elseif (v80==48) then v77[v79[2]]= not v77[v79[3]];else local v289;v77[v79[2]]=v79[3];v71=v71 + 1 ;v79=v67[v71];v289=v79[2];v77[v289](v77[v289 + 1 ]);v71=v71 + 1 ;v79=v67[v71];v77[v79[2]]=v62[v79[3]];v71=v71 + 1 ;v79=v67[v71];v77[v79[2]][v79[3]]=v79[4];v71=v71 + 1 ;v79=v67[v71];v71=v79[3];end v71=v71 + 1 ;end end;end return v29(v28(),{},v17)(...);end v15("LOL!3A3O00028O00026O00184003043O005465787403063O005375626D6974030A3O0054657874436F6C6F723303063O00436F6C6F723303073O0066726F6D524742025O00E06F4003063O00506172656E7403083O00496E7374616E63652O033O006E6577030A3O005465787442752O746F6E026O001C40026O00084003093O004472612O6761626C652O0103073O0054657874426F7803043O0053697A6503053O005544696D3202CD5OCCEC3F026O66D63F026O001040027O0040029A5O99D93F026O00D03F03083O00506F736974696F6E026O33D33F03103O004261636B67726F756E64436F6C6F723303063O00416374697665026O002040026O002240029A5O99C93F029A5O99E93F026O005E40025O00E06A4003073O00476574204B6579029A5O99A93F030F3O00506C616365686F6C6465725465787403093O00456E746572204B6579030A3O00546578745363616C6564026O001440026O00F03F030C3O0052657365744F6E537061776E0100030C3O00446973706C61794F72646572026O00244003043O0067616D6503073O00506C6179657273030B3O004C6F63616C506C6179657203093O00506C6179657247756903053O004672616D65026O33E33F03113O004D6F75736542752O746F6E31436C69636B03073O00436F2O6E65637403093O004861766546756E584403093O005363722O656E47756903043O004E616D65030B3O0050612O73776F726447756900C43O00120F3O00014O0003000100093O0026153O0013000100020004273O0013000100302200060003000400121A000A00063O00202O000A000A000700122O000B00083O00122O000C00083O00122O000D00086O000A000D000200102O00060005000A00102O00060009000400122O000A000A3O00202O000A000A000B00120F000B000C4O0010000A000200022O00230007000A3O00120F3O000D3O0026153O00250001000E0004273O002500010030220004000F001000102B00040009000300122O000A000A3O00202O000A000A000B00122O000B00116O000A000200024O0005000A3O00122O000A00133O00202O000A000A000B00122O000B00143O00122O000C00013O00120F000D00153O00120F000E00014O0004000A000E000200101900050012000A00120F3O00163O000E0A0017004000013O0004273O00400001001208000A00133O002014000A000A000B00122O000B00183O00122O000C00013O00122O000D00193O00122O000E00016O000A000E000200102O00040012000A00122O000A00133O00202O000A000A000B00122O000B001B3O00120F000C00013O001218000D00153O00122O000E00016O000A000E000200102O0004001A000A00122O000A00063O00202O000A000A000700122O000B00083O00122O000C00083O00122O000D00086O000A000D00020010190004001C000A0030220004001D001000120F3O000E3O000E0A001E005000013O0004273O00500001001208000A00063O002029000A000A000700122O000B00083O00122O000C00083O00122O000D00086O000A000D000200102O00070005000A00102O0007000900044O000800083O00062400083O000100032O00233O00054O00233O00014O00233O00033O00120F3O001F3O0026153O006B0001000D0004273O006B0001001208000A00133O002014000A000A000B00122O000B001B3O00122O000C00013O00122O000D00203O00122O000E00016O000A000E000200102O00070012000A00122O000A00133O00202O000A000A000B00122O000B00153O00120F000C00013O001218000D00213O00122O000E00016O000A000E000200102O0007001A000A00122O000A00063O00202O000A000A000700122O000B00013O00122O000C00223O00122O000D00236O000A000D00020010190007001C000A00302200070003002400120F3O001E3O000E0A0016007900013O0004273O00790001001208000A00133O002007000A000A000B00122O000B00253O00122O000C00013O00122O000D00203O00122O000E00016O000A000E000200102O0005001A000A00302O00050026002700302O00050028001000102O00050009000400120F3O00293O0026153O00880001002A0004273O008800010030220003002B002C00302A0003002D002E00122O000A002F3O00202O000A000A003000202O000A000A003100202O000A000A003200102O00030009000A00122O000A000A3O00202O000A000A000B00122O000B00336O000A000200022O00230004000A3O00120F3O00173O0026153O00A7000100290004273O00A70001001208000A000A3O002002000A000A000B00122O000B000C6O000A000200024O0006000A3O00122O000A00133O00202O000A000A000B00122O000B001B3O00122O000C00013O00122O000D00203O00122O000E00014O0004000A000E000200101C00060012000A00122O000A00133O00202O000A000A000B00122O000B00153O00122O000C00013O00122O000D00343O00122O000E00016O000A000E000200102O0006001A000A00122O000A00063O002026000A000A000700120E000B00013O00122O000C00223O00122O000D00236O000A000D000200102O0006001C000A00124O00023O0026153O00B60001001F0004273O00B600012O0003000900093O00062400090001000100022O00233O00024O00233O00073O002021000A0006003500202O000A000A00364O000C00086O000A000C000100202O000A0007003500202O000A000A00364O000C00096O000A000C000100044O00C200010026153O0002000100010004273O0002000100120F000100374O000B00025O00122O000A000A3O00202O000A000A000B00122O000B00386O000A000200024O0003000A3O00302O00030039003A00124O002A3O00044O000200012O001E8O000D3O00013O00023O00383O00028O00026O00F03F03043O0054657874027O004003053O0053746F726503093O0053616665706C616365026O00084003083O0056616C7561626C65030C3O00526F636B6574204672756974030A3O005370696E204672756974030A3O0043686F70204672756974030C3O00537072696E67204672756974030A3O00426F6D62204672756974030B3O00536D6F6B65204672756974030B3O005370696B65204672756974030B3O00466C616D6520467275697403123O00426972643A2046616C636F6E20467275697403093O00496365204672756974030A3O0053616E64204672756974030A3O004461726B204672756974030D3O004469616D6F6E64204672756974030B3O004C69676874204672756974030C3O0052752O626572204672756974030D3O0042612O72696572204672756974030B3O0047686F7374204672756974030B3O004D61676D61204672756974030B3O005175616B6520467275697403133O0048756D616E3A2042752O646861204672756974030A3O004C6F7665204672756974030C3O00537069646572204672756974030B3O00536F756E6420467275697403133O00426972643A2050686F656E6978204672756974030C3O00506F7274616C204672756974030A3O005061696E204672756974030E3O00426C692O7A617264204672756974030D3O0047726176697479204672756974030D3O004D612O6D6F7468204672756974030B3O00446F756768204672756974030C3O00536861646F77204672756974030B3O0056656E6F6D204672756974030D3O00436F6E74726F6C204672756974030C3O00537069726974204672756974030C3O00447261676F6E204672756974030D3O004C656F7061726420467275697403073O00576562682O6F6B034O00026O00104003073O0044657374726F7903053O007072696E7403113O00436F2O726563742070612O73776F72642103063O0046727569747303063O00526570656174030A3O006C6F6164737472696E6703043O0067616D6503513O00682O7470733A2O2F676973742E67697468756275736572636F6E74656E742E636F6D2F4E6F744875627269732F3465366664632O386438346333306166613962323863353930663237332O62662F726177031E3O00496E636F2O726563742070612O73776F72642E2054727920616761696E2E00AE3O00120F3O00014O0003000100023O0026153O00A7000100020004273O00A7000100261500010004000100010004273O000400012O002800035O0020260002000300032O0028000300013O000617000200A1000100030004273O00A1000100120F000300013O0026150003001B000100040004273O001B000100120F000400013O00261500040016000100010004273O001600012O0011000500013O001209000500054O0011000500013O001209000500063O00120F000400023O0026150004000F000100020004273O000F000100120F000300073O0004273O001B00010004273O000F000100261500030050000100020004273O0050000100120F000400013O00261500040022000100020004273O0022000100120F000300043O0004273O005000010026150004001E000100010004273O001E00012O002C0005001A3O001225000600093O00122O0007000A3O00122O0008000B3O00122O0009000C3O00122O000A000D3O00122O000B000E3O00122O000C000F3O00122O000D00103O00122O000E00113O00122O000F00123O00122O001000133O00122O001100143O00122O001200153O00122O001300163O00122O001400173O00122O001500183O00122O001600193O00122O0017001A3O00122O0018001B3O00122O0019001C3O00122O001A001D3O00122O001B001E3O00122O001C001F3O00122O001D00203O00122O001E00213O00122O001F00213O00122O002000223O00122O002100233O00122O002200243O00122O002300253O00122O002400263O00122O002500273O00122O002600283O00122O002700293O00122O0028002A3O00122O0029002B3O00122O002A002C6O000500250001001209000500083O00120F0005002E3O0012090005002D3O00120F000400023O0004273O001E0001002615000300560001002F0004273O005600012O0028000400023O0020010004000400302O000C0004000200010004273O00AD00010026150003008C000100010004273O008C000100120F000400013O0026150004005D000100020004273O005D000100120F000300023O0004273O008C000100261500040059000100010004273O00590001001208000500313O001205000600326O0005000200014O0005001A3O00122O000600093O00122O0007000A3O00122O0008000B3O00122O0009000C3O00122O000A000D3O00122O000B000E3O00122O000C000F3O00122O000D00103O00122O000E00113O00122O000F00123O00122O001000133O00122O001100143O00122O001200153O00122O001300163O00122O001400173O00122O001500183O00122O001600193O00122O0017001A3O00122O0018001B3O00122O0019001C3O00122O001A001D3O00122O001B001E3O00122O001C001F3O00122O001D00203O00122O001E00213O00122O001F00213O00122O002000223O00122O002100233O00122O002200243O00122O002300253O00122O002400263O00122O002500273O00122O002600283O00122O002700293O00122O0028002A3O00122O0029002B3O00122O002A002C6O000500250001001209000500333O00120F000400023O0004273O005900010026150003000C000100070004273O000C000100120F000400013O0026150004009A000100010004273O009A00012O0011000500013O00122O000500343O00122O000500353O00122O000600363O00122O000700376O000600076O00053O00024O00050001000100122O000400023O0026150004008F000100020004273O008F000100120F0003002F3O0004273O000C00010004273O008F00010004273O000C00010004273O00AD0001001208000300313O00120F000400384O000C0003000200010004273O00AD00010004273O000400010004273O00AD0001000E0A0001000200013O0004273O0002000100120F000100014O0003000200023O00120F3O00023O0004273O000200012O000D3O00017O000A3O00028O00030C3O00736574636C6970626F617264032D3O00682O7470733A2O2F7363726970636865636B2E67726561742D736974652E6E65742F3F706167655F69643D333103053O007072696E7403193O0050612O73776F72642073656E7420746F2062726F777365722E03043O005465787403073O00476574204B6579030E3O0047652O74696E67206B65793O2E03103O00506173746520696E2042726F77736572026O00F03F002D3O00120F3O00013O0026153O0025000100010004273O00250001001208000100023O00120F000200034O000C0001000200012O002800015O00062F0001001A00013O0004273O001A000100120F000100014O0003000200023O0026150001000B000100010004273O000B000100120F000200013O0026150002000E000100010004273O000E0001001208000300043O001231000400056O0003000200014O000300013O00302O00030006000700044O002400010004273O000E00010004273O002400010004273O000B00010004273O0024000100120F000100013O0026150001001B000100010004273O001B0001001208000200043O001231000300086O0002000200014O000200013O00302O00020006000900044O002400010004273O001B000100120F3O000A3O0026153O00010001000A0004273O000100012O002800016O0030000100014O001D00015O0004273O002C00010004273O000100012O000D3O00017O00",v9(),...);