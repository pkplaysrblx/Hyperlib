
local v0=tonumber;local v1=string.byte;local v2=string.char;local v3=string.sub;local v4=string.gsub;local v5=string.rep;local v6=table.concat;local v7=table.insert;local v8=math.ldexp;local v9=getfenv or function()return _ENV;end ;local v10=setmetatable;local v11=pcall;local v12=select;local v13=unpack or table.unpack ;local v14=tonumber;local function v15(v16,v17,...)local v18=0;local v19;local v20;local v21;local v22;local v23;local v24;local v25;local v26;local v27;local v28;local v29;local v30;while true do if (v18==5) then v30=nil;function v30(v31,v32,v33)local v34=0;local v35;local v36;local v37;while true do if (v34==0) then v35=v31[1];v36=v31[2];v34=1;end if (v34==1) then v37=v31[3];return function(...)local v80=v35;local v81=v36;local v82=v37;local v83=v28;local v84=1;local v85= -1;local v86={};local v87={...};local v88=v12("#",...) -1 ;local v89={};local v90={};for v94=0,v88 do if (v94>=v82) then v86[v94-v82 ]=v87[v94 + 1 ];else v90[v94]=v87[v94 + 1 ];end end local v91=(v88-v82) + 1 ;local v92;local v93;while true do local v95=0;while true do if (v95==1) then if (v93<=17) then if (v93<=8) then if (v93<=3) then if (v93<=1) then if (v93==0) then local v114;v90[v92[2]]=v92[3];v84=v84 + 1 ;v92=v80[v84];v114=v92[2];v90[v114](v90[v114 + 1 ]);v84=v84 + 1 ;v92=v80[v84];v90[v92[2]]=v32[v92[3]];v84=v84 + 1 ;v92=v80[v84];v90[v92[2]][v92[3]]=v92[4];v84=v84 + 1 ;v92=v80[v84];v84=v92[3];else v32[v92[3]]=v90[v92[2]];end elseif (v93==2) then v90[v92[2]]=v92[3];elseif ((v92[3]=="_ENV") or (v92[3]=="getfenv")) then v90[v92[2]]=v33;else v90[v92[2]]=v33[v92[3]];end elseif (v93<=5) then if (v93==4) then v90[v92[2]]=v90[v92[3]];else local v128=v92[2];local v129={};for v177=1, #v89 do local v178=0;local v179;while true do if (0==v178) then v179=v89[v177];for v401=0, #v179 do local v402=0;local v403;local v404;local v405;while true do if (v402==0) then v403=v179[v401];v404=v403[1];v402=1;end if (v402==1) then v405=v403[2];if ((v404==v90) and (v405>=v128)) then v129[v405]=v404[v405];v403[1]=v129;end break;end end end break;end end end end elseif (v93<=6) then local v130=v92[2];v90[v130]=v90[v130](v13(v90,v130 + 1 ,v85));elseif (v93==7) then v90[v92[2]]=v90[v92[3]][v92[4]];else local v187=0;local v188;while true do if (v187==0) then v188=v92[2];v90[v188](v13(v90,v188 + 1 ,v92[3]));break;end end end elseif (v93<=12) then if (v93<=10) then if (v93==9) then local v132=0;local v133;while true do if (v132==2) then v84=v84 + 1 ;v92=v80[v84];v90[v92[2]]=v92[3];v84=v84 + 1 ;v92=v80[v84];v90[v92[2]]=v92[3];v132=3;end if (1==v132) then v84=v84 + 1 ;v92=v80[v84];if ((v92[3]=="_ENV") or (v92[3]=="getfenv")) then v90[v92[2]]=v33;else v90[v92[2]]=v33[v92[3]];end v84=v84 + 1 ;v92=v80[v84];v90[v92[2]]=v90[v92[3]][v92[4]];v132=2;end if (v132==0) then v133=nil;v133=v92[2];v90[v133]=v90[v133](v13(v90,v133 + 1 ,v92[3]));v84=v84 + 1 ;v92=v80[v84];v90[v92[2]][v92[3]]=v90[v92[4]];v132=1;end if (v132==5) then v90[v92[2]][v92[3]]=v90[v92[4]];break;end if (v132==3) then v84=v84 + 1 ;v92=v80[v84];v90[v92[2]]=v92[3];v84=v84 + 1 ;v92=v80[v84];v90[v92[2]]=v92[3];v132=4;end if (v132==4) then v84=v84 + 1 ;v92=v80[v84];v133=v92[2];v90[v133]=v90[v133](v13(v90,v133 + 1 ,v92[3]));v84=v84 + 1 ;v92=v80[v84];v132=5;end end else v90[v92[2]]();end elseif (v93>11) then local v134=0;local v135;while true do if (v134==0) then v135=v92[2];v90[v135]=v90[v135](v90[v135 + 1 ]);break;end end else local v136=0;local v137;local v138;while true do if (v136==1) then v90[v137 + 1 ]=v138;v90[v137]=v138[v92[4]];break;end if (v136==0) then v137=v92[2];v138=v90[v92[3]];v136=1;end end end elseif (v93<=14) then if (v93==13) then local v139=0;local v140;local v141;local v142;local v143;local v144;while true do if (1==v139) then v92=v80[v84];v144=v92[2];v90[v144](v90[v144 + 1 ]);v84=v84 + 1 ;v92=v80[v84];if ((v92[3]=="_ENV") or (v92[3]=="getfenv")) then v90[v92[2]]=v33;else v90[v92[2]]=v33[v92[3]];end v139=2;end if (7==v139) then v92=v80[v84];v84=v92[3];break;end if (v139==5) then for v398=v144,v85 do local v399=0;while true do if (v399==0) then v140=v140 + 1 ;v90[v398]=v141[v140];break;end end end v84=v84 + 1 ;v92=v80[v84];v144=v92[2];v90[v144]=v90[v144](v13(v90,v144 + 1 ,v85));v84=v84 + 1 ;v139=6;end if (v139==2) then v84=v84 + 1 ;v92=v80[v84];if ((v92[3]=="_ENV") or (v92[3]=="getfenv")) then v90[v92[2]]=v33;else v90[v92[2]]=v33[v92[3]];end v84=v84 + 1 ;v92=v80[v84];v144=v92[2];v139=3;end if (v139==4) then v84=v84 + 1 ;v92=v80[v84];v144=v92[2];v141,v142=v83(v90[v144](v13(v90,v144 + 1 ,v92[3])));v85=(v142 + v144) -1 ;v140=0;v139=5;end if (v139==0) then v140=nil;v141,v142=nil;v143=nil;v144=nil;v90[v92[2]]=v92[3];v84=v84 + 1 ;v139=1;end if (v139==3) then v143=v90[v92[3]];v90[v144 + 1 ]=v143;v90[v144]=v143[v92[4]];v84=v84 + 1 ;v92=v80[v84];v90[v92[2]]=v92[3];v139=4;end if (v139==6) then v92=v80[v84];v90[v92[2]]();v84=v84 + 1 ;v92=v80[v84];v90[v92[2]]=v92[3];v84=v84 + 1 ;v139=7;end end else v90[v92[2]]=v92[3]~=0 ;end elseif (v93<=15) then if (v90[v92[2]]==v90[v92[4]]) then v84=v84 + 1 ;else v84=v92[3];end elseif (v93>16) then local v190=0;local v191;local v192;local v193;while true do if (v190==2) then for v440=1,v92[4] do local v441=0;local v442;while true do if (v441==0) then v84=v84 + 1 ;v442=v80[v84];v441=1;end if (v441==1) then if (v442[1]==4) then v193[v440-1 ]={v90,v442[3]};else v193[v440-1 ]={v32,v442[3]};end v89[ #v89 + 1 ]=v193;break;end end end v90[v92[2]]=v30(v191,v192,v33);break;end if (v190==0) then v191=v81[v92[3]];v192=nil;v190=1;end if (v190==1) then v193={};v192=v10({},{__index=function(v443,v444)local v445=0;local v446;while true do if (v445==0) then v446=v193[v444];return v446[1][v446[2]];end end end,__newindex=function(v447,v448,v449)local v450=v193[v448];v450[1][v450[2]]=v449;end});v190=2;end end else local v194=0;local v195;local v196;local v197;local v198;while true do if (v194==0) then v195=v92[2];v196,v197=v83(v90[v195](v13(v90,v195 + 1 ,v92[3])));v194=1;end if (v194==1) then v85=(v197 + v195) -1 ;v198=0;v194=2;end if (v194==2) then for v452=v195,v85 do v198=v198 + 1 ;v90[v452]=v196[v198];end break;end end end elseif (v93<=26) then if (v93<=21) then if (v93<=19) then if (v93>18) then local v146=0;local v147;while true do if (v146==0) then v147=v92[2];v90[v147]=v90[v147](v13(v90,v147 + 1 ,v92[3]));break;end end else local v148=0;local v149;while true do if (v148==1) then v90[v92[2]]=v92[3];v84=v84 + 1 ;v92=v80[v84];v90[v92[2]]=v92[3];v148=2;end if (v148==3) then v92=v80[v84];v90[v92[2]]=v92[3];v84=v84 + 1 ;v92=v80[v84];v148=4;end if (v148==0) then v149=nil;v90[v92[2]]=v90[v92[3]][v92[4]];v84=v84 + 1 ;v92=v80[v84];v148=1;end if (7==v148) then v92=v80[v84];v90[v92[2]]=v92[3];break;end if (v148==5) then v90[v92[2]][v92[3]]=v90[v92[4]];v84=v84 + 1 ;v92=v80[v84];if ((v92[3]=="_ENV") or (v92[3]=="getfenv")) then v90[v92[2]]=v33;else v90[v92[2]]=v33[v92[3]];end v148=6;end if (v148==6) then v84=v84 + 1 ;v92=v80[v84];v90[v92[2]]=v90[v92[3]][v92[4]];v84=v84 + 1 ;v148=7;end if (v148==4) then v149=v92[2];v90[v149]=v90[v149](v13(v90,v149 + 1 ,v92[3]));v84=v84 + 1 ;v92=v80[v84];v148=5;end if (2==v148) then v84=v84 + 1 ;v92=v80[v84];v90[v92[2]]=v92[3];v84=v84 + 1 ;v148=3;end end end elseif (v93>20) then v90[v92[2]][v92[3]]=v90[v92[4]];else local v152=v92[2];v90[v152](v90[v152 + 1 ]);end elseif (v93<=23) then if (v93==22) then v84=v92[3];else local v154;v90[v92[2]][v92[3]]=v90[v92[4]];v84=v84 + 1 ;v92=v80[v84];if ((v92[3]=="_ENV") or (v92[3]=="getfenv")) then v90[v92[2]]=v33;else v90[v92[2]]=v33[v92[3]];end v84=v84 + 1 ;v92=v80[v84];v90[v92[2]]=v90[v92[3]][v92[4]];v84=v84 + 1 ;v92=v80[v84];v90[v92[2]]=v92[3];v84=v84 + 1 ;v92=v80[v84];v154=v92[2];v90[v154]=v90[v154](v90[v154 + 1 ]);v84=v84 + 1 ;v92=v80[v84];if ((v92[3]=="_ENV") or (v92[3]=="getfenv")) then v90[v92[2]]=v33;else v90[v92[2]]=v33[v92[3]];end v84=v84 + 1 ;v92=v80[v84];v90[v92[2]]=v90[v92[3]][v92[4]];v84=v84 + 1 ;v92=v80[v84];v90[v92[2]]=v92[3];v84=v84 + 1 ;v92=v80[v84];v90[v92[2]]=v92[3];v84=v84 + 1 ;v92=v80[v84];v90[v92[2]]=v92[3];end elseif (v93<=24) then local v163=0;local v164;while true do if (v163==5) then v90[v92[2]][v92[3]]=v92[4];v84=v84 + 1 ;v92=v80[v84];if ((v92[3]=="_ENV") or (v92[3]=="getfenv")) then v90[v92[2]]=v33;else v90[v92[2]]=v33[v92[3]];end v163=6;end if (v163==6) then v84=v84 + 1 ;v92=v80[v84];v90[v92[2]]=v90[v92[3]][v92[4]];v84=v84 + 1 ;v163=7;end if (3==v163) then v92=v80[v84];v164=v92[2];v90[v164]=v90[v164](v13(v90,v164 + 1 ,v92[3]));v84=v84 + 1 ;v163=4;end if (v163==0) then v164=nil;v90[v92[2]]=v90[v92[3]][v92[4]];v84=v84 + 1 ;v92=v80[v84];v163=1;end if (v163==2) then v84=v84 + 1 ;v92=v80[v84];v90[v92[2]]=v92[3];v84=v84 + 1 ;v163=3;end if (4==v163) then v92=v80[v84];v90[v92[2]][v92[3]]=v90[v92[4]];v84=v84 + 1 ;v92=v80[v84];v163=5;end if (v163==1) then v90[v92[2]]=v92[3];v84=v84 + 1 ;v92=v80[v84];v90[v92[2]]=v92[3];v163=2;end if (v163==7) then v92=v80[v84];v90[v92[2]]=v92[3];break;end end elseif (v93==25) then if (v90[v92[2]]==v92[4]) then v84=v84 + 1 ;else v84=v92[3];end else v90[v92[2]]=v32[v92[3]];end elseif (v93<=31) then if (v93<=28) then if (v93==27) then local v165=0;local v166;while true do if (v165==3) then v84=v84 + 1 ;v92=v80[v84];if ((v92[3]=="_ENV") or (v92[3]=="getfenv")) then v90[v92[2]]=v33;else v90[v92[2]]=v33[v92[3]];end v84=v84 + 1 ;v165=4;end if (1==v165) then v166=v92[2];v90[v166]=v90[v166](v13(v90,v166 + 1 ,v92[3]));v84=v84 + 1 ;v92=v80[v84];v165=2;end if (v165==4) then v92=v80[v84];v90[v92[2]]=v90[v92[3]][v92[4]];v84=v84 + 1 ;v92=v80[v84];v165=5;end if (7==v165) then v92=v80[v84];v166=v92[2];v90[v166]=v90[v166](v13(v90,v166 + 1 ,v92[3]));break;end if (v165==0) then v166=nil;v90[v92[2]]=v92[3];v84=v84 + 1 ;v92=v80[v84];v165=1;end if (v165==5) then v90[v92[2]]=v92[3];v84=v84 + 1 ;v92=v80[v84];v90[v92[2]]=v92[3];v165=6;end if (v165==6) then v84=v84 + 1 ;v92=v80[v84];v90[v92[2]]=v92[3];v84=v84 + 1 ;v165=7;end if (v165==2) then v90[v92[2]][v92[3]]=v90[v92[4]];v84=v84 + 1 ;v92=v80[v84];v90[v92[2]][v92[3]]=v92[4];v165=3;end end else do return;end end elseif (v93<=29) then local v167;v90[v92[2]]=v92[3];v84=v84 + 1 ;v92=v80[v84];v90[v92[2]]=v92[3]~=0 ;v84=v84 + 1 ;v92=v80[v84];if ((v92[3]=="_ENV") or (v92[3]=="getfenv")) then v90[v92[2]]=v33;else v90[v92[2]]=v33[v92[3]];end v84=v84 + 1 ;v92=v80[v84];v90[v92[2]]=v90[v92[3]][v92[4]];v84=v84 + 1 ;v92=v80[v84];v90[v92[2]]=v92[3];v84=v84 + 1 ;v92=v80[v84];v167=v92[2];v90[v167]=v90[v167](v90[v167 + 1 ]);v84=v84 + 1 ;v92=v80[v84];v90[v92[2]][v92[3]]=v92[4];v84=v84 + 1 ;v92=v80[v84];v90[v92[2]][v92[3]]=v92[4];v84=v84 + 1 ;v92=v80[v84];v90[v92[2]][v92[3]]=v92[4];v84=v84 + 1 ;v92=v80[v84];if ((v92[3]=="_ENV") or (v92[3]=="getfenv")) then v90[v92[2]]=v33;else v90[v92[2]]=v33[v92[3]];end v84=v84 + 1 ;v92=v80[v84];v90[v92[2]]=v90[v92[3]][v92[4]];v84=v84 + 1 ;v92=v80[v84];v90[v92[2]]=v90[v92[3]][v92[4]];v84=v84 + 1 ;v92=v80[v84];v90[v92[2]]=v90[v92[3]][v92[4]];v84=v84 + 1 ;v92=v80[v84];v90[v92[2]][v92[3]]=v90[v92[4]];v84=v84 + 1 ;v92=v80[v84];if ((v92[3]=="_ENV") or (v92[3]=="getfenv")) then v90[v92[2]]=v33;else v90[v92[2]]=v33[v92[3]];end v84=v84 + 1 ;v92=v80[v84];v90[v92[2]]=v90[v92[3]][v92[4]];v84=v84 + 1 ;v92=v80[v84];v90[v92[2]]=v92[3];v84=v84 + 1 ;v92=v80[v84];v167=v92[2];v90[v167]=v90[v167](v90[v167 + 1 ]);v84=v84 + 1 ;v92=v80[v84];if ((v92[3]=="_ENV") or (v92[3]=="getfenv")) then v90[v92[2]]=v33;else v90[v92[2]]=v33[v92[3]];end v84=v84 + 1 ;v92=v80[v84];v90[v92[2]]=v90[v92[3]][v92[4]];v84=v84 + 1 ;v92=v80[v84];v90[v92[2]]=v92[3];v84=v84 + 1 ;v92=v80[v84];v90[v92[2]]=v92[3];v84=v84 + 1 ;v92=v80[v84];v90[v92[2]]=v92[3];v84=v84 + 1 ;v92=v80[v84];v90[v92[2]]=v92[3];v84=v84 + 1 ;v92=v80[v84];v167=v92[2];v90[v167]=v90[v167](v13(v90,v167 + 1 ,v92[3]));v84=v84 + 1 ;v92=v80[v84];v90[v92[2]][v92[3]]=v90[v92[4]];v84=v84 + 1 ;v92=v80[v84];if ((v92[3]=="_ENV") or (v92[3]=="getfenv")) then v90[v92[2]]=v33;else v90[v92[2]]=v33[v92[3]];end v84=v84 + 1 ;v92=v80[v84];v90[v92[2]]=v90[v92[3]][v92[4]];v84=v84 + 1 ;v92=v80[v84];v90[v92[2]]=v92[3];v84=v84 + 1 ;v92=v80[v84];v90[v92[2]]=v92[3];v84=v84 + 1 ;v92=v80[v84];v90[v92[2]]=v92[3];v84=v84 + 1 ;v92=v80[v84];v90[v92[2]]=v92[3];v84=v84 + 1 ;v92=v80[v84];v167=v92[2];v90[v167]=v90[v167](v13(v90,v167 + 1 ,v92[3]));v84=v84 + 1 ;v92=v80[v84];v90[v92[2]][v92[3]]=v90[v92[4]];v84=v84 + 1 ;v92=v80[v84];if ((v92[3]=="_ENV") or (v92[3]=="getfenv")) then v90[v92[2]]=v33;else v90[v92[2]]=v33[v92[3]];end v84=v84 + 1 ;v92=v80[v84];v90[v92[2]]=v90[v92[3]][v92[4]];v84=v84 + 1 ;v92=v80[v84];v90[v92[2]]=v92[3];v84=v84 + 1 ;v92=v80[v84];v90[v92[2]]=v92[3];v84=v84 + 1 ;v92=v80[v84];v90[v92[2]]=v92[3];v84=v84 + 1 ;v92=v80[v84];v167=v92[2];v90[v167]=v90[v167](v13(v90,v167 + 1 ,v92[3]));v84=v84 + 1 ;v92=v80[v84];v90[v92[2]][v92[3]]=v90[v92[4]];v84=v84 + 1 ;v92=v80[v84];v90[v92[2]][v92[3]]=v92[4];v84=v84 + 1 ;v92=v80[v84];v90[v92[2]][v92[3]]=v92[4];v84=v84 + 1 ;v92=v80[v84];v90[v92[2]][v92[3]]=v90[v92[4]];v84=v84 + 1 ;v92=v80[v84];if ((v92[3]=="_ENV") or (v92[3]=="getfenv")) then v90[v92[2]]=v33;else v90[v92[2]]=v33[v92[3]];end v84=v84 + 1 ;v92=v80[v84];v90[v92[2]]=v90[v92[3]][v92[4]];v84=v84 + 1 ;v92=v80[v84];v90[v92[2]]=v92[3];v84=v84 + 1 ;v92=v80[v84];v167=v92[2];v90[v167]=v90[v167](v90[v167 + 1 ]);v84=v84 + 1 ;v92=v80[v84];if ((v92[3]=="_ENV") or (v92[3]=="getfenv")) then v90[v92[2]]=v33;else v90[v92[2]]=v33[v92[3]];end v84=v84 + 1 ;v92=v80[v84];v90[v92[2]]=v90[v92[3]][v92[4]];v84=v84 + 1 ;v92=v80[v84];v90[v92[2]]=v92[3];v84=v84 + 1 ;v92=v80[v84];v90[v92[2]]=v92[3];v84=v84 + 1 ;v92=v80[v84];v90[v92[2]]=v92[3];v84=v84 + 1 ;v92=v80[v84];v90[v92[2]]=v92[3];v84=v84 + 1 ;v92=v80[v84];v167=v92[2];v90[v167]=v90[v167](v13(v90,v167 + 1 ,v92[3]));v84=v84 + 1 ;v92=v80[v84];v90[v92[2]][v92[3]]=v90[v92[4]];v84=v84 + 1 ;v92=v80[v84];if ((v92[3]=="_ENV") or (v92[3]=="getfenv")) then v90[v92[2]]=v33;else v90[v92[2]]=v33[v92[3]];end v84=v84 + 1 ;v92=v80[v84];v90[v92[2]]=v90[v92[3]][v92[4]];v84=v84 + 1 ;v92=v80[v84];v90[v92[2]]=v92[3];v84=v84 + 1 ;v92=v80[v84];v90[v92[2]]=v92[3];v84=v84 + 1 ;v92=v80[v84];v90[v92[2]]=v92[3];v84=v84 + 1 ;v92=v80[v84];v90[v92[2]]=v92[3];v84=v84 + 1 ;v92=v80[v84];v167=v92[2];v90[v167]=v90[v167](v13(v90,v167 + 1 ,v92[3]));v84=v84 + 1 ;v92=v80[v84];v90[v92[2]][v92[3]]=v90[v92[4]];v84=v84 + 1 ;v92=v80[v84];v90[v92[2]][v92[3]]=v92[4];v84=v84 + 1 ;v92=v80[v84];v90[v92[2]][v92[3]]=v92[4];v84=v84 + 1 ;v92=v80[v84];v90[v92[2]][v92[3]]=v90[v92[4]];v84=v84 + 1 ;v92=v80[v84];if ((v92[3]=="_ENV") or (v92[3]=="getfenv")) then v90[v92[2]]=v33;else v90[v92[2]]=v33[v92[3]];end v84=v84 + 1 ;v92=v80[v84];v90[v92[2]]=v90[v92[3]][v92[4]];v84=v84 + 1 ;v92=v80[v84];v90[v92[2]]=v92[3];v84=v84 + 1 ;v92=v80[v84];v167=v92[2];v90[v167]=v90[v167](v90[v167 + 1 ]);v84=v84 + 1 ;v92=v80[v84];if ((v92[3]=="_ENV") or (v92[3]=="getfenv")) then v90[v92[2]]=v33;else v90[v92[2]]=v33[v92[3]];end v84=v84 + 1 ;v92=v80[v84];v90[v92[2]]=v90[v92[3]][v92[4]];v84=v84 + 1 ;v92=v80[v84];v90[v92[2]]=v92[3];v84=v84 + 1 ;v92=v80[v84];v90[v92[2]]=v92[3];v84=v84 + 1 ;v92=v80[v84];v90[v92[2]]=v92[3];v84=v84 + 1 ;v92=v80[v84];v90[v92[2]]=v92[3];v84=v84 + 1 ;v92=v80[v84];v167=v92[2];v90[v167]=v90[v167](v13(v90,v167 + 1 ,v92[3]));v84=v84 + 1 ;v92=v80[v84];v90[v92[2]][v92[3]]=v90[v92[4]];v84=v84 + 1 ;v92=v80[v84];if ((v92[3]=="_ENV") or (v92[3]=="getfenv")) then v90[v92[2]]=v33;else v90[v92[2]]=v33[v92[3]];end elseif (v93>30) then local v243;local v244;local v245;local v246;local v247;local v248;local v249;v90[v92[2]]=v90[v92[3]][v92[4]];v84=v84 + 1 ;v92=v80[v84];v249=v92[2];v248=v90[v92[3]];v90[v249 + 1 ]=v248;v90[v249]=v248[v92[4]];v84=v84 + 1 ;v92=v80[v84];v90[v92[2]]=v90[v92[3]];v84=v84 + 1 ;v92=v80[v84];v249=v92[2];v90[v249](v13(v90,v249 + 1 ,v92[3]));v84=v84 + 1 ;v92=v80[v84];v90[v92[2]]=v90[v92[3]][v92[4]];v84=v84 + 1 ;v92=v80[v84];v249=v92[2];v248=v90[v92[3]];v90[v249 + 1 ]=v248;v90[v249]=v248[v92[4]];v84=v84 + 1 ;v92=v80[v84];v90[v92[2]]=v90[v92[3]];v84=v84 + 1 ;v92=v80[v84];v249=v92[2];v90[v249](v13(v90,v249 + 1 ,v92[3]));v84=v84 + 1 ;v92=v80[v84];v249=v92[2];v247={};for v387=1, #v89 do local v388=0;while true do if (v388==0) then v246=v89[v387];for v459=0, #v246 do local v460=0;while true do if (v460==1) then v243=v245[2];if ((v244==v90) and (v243>=v249)) then v247[v243]=v244[v243];v245[1]=v247;end break;end if (v460==0) then v245=v246[v459];v244=v245[1];v460=1;end end end break;end end end v84=v84 + 1 ;v92=v80[v84];do return;end else local v258=0;local v259;while true do if (v258==0) then v259=nil;v90[v92[2]]=v92[3];v84=v84 + 1 ;v92=v80[v84];v258=1;end if (v258==3) then v84=v84 + 1 ;v92=v80[v84];v84=v92[3];break;end if (v258==1) then v259=v92[2];v90[v259](v90[v259 + 1 ]);v84=v84 + 1 ;v92=v80[v84];v258=2;end if (2==v258) then v90[v92[2]]=v32[v92[3]];v84=v84 + 1 ;v92=v80[v84];v90[v92[2]][v92[3]]=v92[4];v258=3;end end end elseif (v93<=33) then if (v93>32) then if (v92[2]==v90[v92[4]]) then v84=v84 + 1 ;else v84=v92[3];end else for v180=v92[2],v92[3] do v90[v180]=nil;end end elseif (v93<=34) then if v90[v92[2]] then v84=v84 + 1 ;else v84=v92[3];end elseif (v93==35) then v90[v92[2]]= not v90[v92[3]];else v90[v92[2]][v92[3]]=v92[4];end v84=v84 + 1 ;break;end if (v95==0) then v92=v80[v84];v93=v92[1];v95=1;end end end end;end end end return v30(v29(),{},v17)(...);end if (v18==3) then function v25()local v38=0;local v39;local v40;local v41;local v42;local v43;local v44;while true do if (v38==1) then v41=2 -1 ;v42=(v21(v40,2 -1 ,36 -16 ) * ((3 -(351 -(87 + 263)))^32)) + v39 ;v38=(184 -(67 + 113)) -2 ;end if (v38==(622 -(555 + 64))) then if (v43==(931 -(857 + 55 + 19))) then if (v42==(568 -(367 + 201))) then return v44 * (927 -(214 + (1750 -1037))) ;else v43=1;v41=0 + 0 ;end elseif (v43==2047) then return ((v42==(0 + 0)) and (v44 * (1/(877 -(282 + 595))))) or (v44 * NaN) ;end return v8(v44,v43-(2660 -(1523 + 114)) ) * (v41 + (v42/((2 + 0 + 0)^(73 -21)))) ;end if (v38==(1065 -(68 + 997))) then v39=v24();v40=v24();v38=(5051 -3780) -(226 + 1044) ;end if (v38==(8 -6)) then v43=v21(v40,138 -(32 + 85) ,31);v44=((v21(v40,32 + 0 )==(1 + 0)) and  -(958 -((1844 -(802 + 150)) + 65))) or (2 -1) ;v38=5 -2 ;end end end v26=nil;function v26(v45)local v46;if  not v45 then v45=v24();if (v45==0) then return "";end end v46=v3(v16,v19,(v19 + v45) -(2 -1) );v19=v19 + v45 ;local v47={};for v70=1 -0 , #v46 do v47[v70]=v2(v1(v3(v46,v70,v70)));end return v6(v47);end v27=v24;v18=4;end if (v18==1) then function v21(v48,v49,v50)if v50 then local v72=(v48/((2 + 0)^(v49-(998 -(915 + 82)))))%((5 -3)^(((v50-(1 + 0)) -(v49-1)) + 1)) ;return v72-(v72%(1 -0)) ;else local v73=((2111 -922) -(1069 + 118))^(v49-(2 -1)) ;return (((v48%(v73 + v73))>=v73) and ((1 + 0) -0)) or (0 + 0) ;end end v22=nil;function v22()local v51=442 -(416 + 26) ;local v52;while true do if ((792 -(368 + 423))==v51) then return v52;end if (v51==(0 -0)) then v52=v1(v16,v19,v19);v19=v19 + (19 -(10 + 8)) ;v51=3 -2 ;end end end v23=nil;v18=2;end if (v18==4) then v28=nil;function v28(...)return {...},v12("#",...);end v29=nil;function v29()local v53=0;local v54;local v55;local v56;local v57;local v58;local v59;local v60;local v61;while true do if (v53==1) then v56=nil;v57=nil;v53=2;end if (v53==(4 -2)) then v58=nil;v59=nil;v53=3;end if (v53~=(2 + 1)) then else v60=nil;v61=nil;v53=2 + 2 ;end if ((7 -3)~=v53) then else while true do if (v54==1) then local v96=1274 -(388 + 886) ;while true do if (v96~=(0 -0)) then else v57=nil;v58=nil;v96=1 + 0 ;end if (v96==(561 -(306 + 254))) then v54=2;break;end end end if (v54==(1 + 1)) then local v97=0 -0 ;local v98;while true do if (v97~=(1467 -(899 + 568))) then else v98=0 + 0 ;while true do if (v98==(0 -0)) then v59=nil;v60=nil;v98=1;end if ((604 -(268 + 335))~=v98) then else v54=293 -(60 + 230) ;break;end end break;end end end if (v54~=(575 -(426 + 146))) then else v61=nil;while true do local v104=0 + 0 ;local v105;while true do if (v104~=0) then else v105=0;while true do if (v105==0) then local v110=0;local v111;while true do if (v110==0) then v111=1456 -(282 + 1174) ;while true do if (v111~=(812 -(569 + 242))) then else v105=1;break;end if (v111~=0) then else if (v55==(5 -3)) then local v389=0;local v390;while true do if (v389==(0 + 0)) then v390=0;while true do local v461=0;while true do if (v461==0) then if (v390==1) then return v59;end if (v390~=(1024 -(706 + 318))) then else local v485=0;while true do if (v485~=0) then else for v489=1,v24() do local v490=0;local v491;local v492;local v493;while true do if ((1251 -(721 + 530))==v490) then v491=0;v492=nil;v490=1;end if ((1272 -(945 + 326))==v490) then v493=nil;while true do if (v491==0) then local v500=0;while true do if (v500~=(0 -0)) then else v492=0 + 0 ;v493=nil;v500=1;end if (v500~=1) then else v491=1;break;end end end if (v491~=1) then else while true do if (v492==(700 -(271 + 429))) then v493=v22();if (v21(v493,1 + 0 ,1501 -(1408 + 92) )~=(1086 -(461 + 625))) then else local v503=0;local v504;local v505;local v506;local v507;while true do if (v503==0) then v504=1288 -(993 + 295) ;v505=nil;v503=1 + 0 ;end if ((1173 -(418 + 753))==v503) then while true do if (v504==0) then local v509=0 + 0 ;while true do if (v509==1) then v504=1;break;end if (0~=v509) then else v505=v21(v493,2,3);v506=v21(v493,1 + 3 ,2 + 4 );v509=1 + 0 ;end end end if (v504==3) then if (v21(v506,532 -(406 + 123) ,1772 -(1749 + 20) )==1) then v507[4]=v61[v507[1 + 3 ]];end v56[v489]=v507;break;end if (v504~=(1324 -(1249 + 73))) then else if (v21(v506,1,1)~=1) then else v507[2]=v61[v507[2]];end if (v21(v506,1 + 1 ,2)~=1) then else v507[3]=v61[v507[3]];end v504=3;end if (v504~=1) then else local v511=0;while true do if (v511==1) then v504=2;break;end if (v511~=(1145 -(466 + 679))) then else v507={v23(),v23(),nil,nil};if (v505==(1900 -(106 + 1794))) then local v518=0;local v519;local v520;while true do if (v518~=(1 + 0)) then else while true do if (v519==0) then v520=0 + 0 ;while true do if (v520~=(0 -0)) then else v507[7 -4 ]=v23();v507[4]=v23();break;end end break;end end break;end if (v518==(114 -(4 + 110))) then v519=584 -(57 + 527) ;v520=nil;v518=1428 -(41 + 1386) ;end end elseif (v505==1) then v507[106 -(17 + 86) ]=v24();elseif (v505==2) then v507[3]=v24() -(2^16) ;elseif (v505==(3 + 0)) then local v523=0 -0 ;local v524;while true do if ((0 -0)==v523) then v524=0;while true do if (v524==0) then v507[169 -(122 + 44) ]=v24() -((2 -0)^16) ;v507[4]=v23();break;end end break;end end end v511=1;end end end end break;end if (v503~=1) then else v506=nil;v507=nil;v503=2;end end end break;end end break;end end break;end end end for v494=3 -2 ,v24() do v57[v494-1 ]=v29();end v485=1 + 0 ;end if (v485==1) then v390=1 + 0 ;break;end end end break;end end end break;end end end if (v55~=(0 -0)) then else local v391=65 -(30 + 35) ;local v392;local v393;while true do if (1==v391) then while true do if (v392~=(0 + 0)) then else v393=1257 -(1043 + 214) ;while true do if (v393==2) then v55=3 -2 ;break;end if (v393==1) then local v486=0;while true do if (v486~=(1212 -(323 + 889))) then else v58={};v59={v56,v57,nil,v58};v486=321 -(53 + 267) ;end if (v486==(1 + 0)) then v393=2;break;end end end if (v393~=0) then else local v487=413 -(15 + 398) ;while true do if (v487==(983 -(18 + 964))) then v393=3 -2 ;break;end if (v487==0) then v56={};v57={};v487=1 + 0 ;end end end end break;end end break;end if (v391==(0 + 0)) then v392=850 -(20 + 830) ;v393=nil;v391=1 + 0 ;end end end v111=127 -(116 + 10) ;end end break;end end end if (v105==1) then if (v55==1) then local v112=0 + 0 ;local v113;while true do if ((738 -(542 + 196))~=v112) then else v113=0;while true do if (1==v113) then local v394=0 -0 ;while true do if (v394~=(0 + 0)) then else for v462=1,v60 do local v463=0 + 0 ;local v464;local v465;local v466;local v467;while true do if (0~=v463) then else v464=0 + 0 ;v465=nil;v463=2 -1 ;end if (v463==1) then v466=nil;v467=nil;v463=2;end if (v463~=2) then else while true do if (v464==0) then local v488=0 -0 ;while true do if (v488==(1551 -(1126 + 425))) then local v496=405 -(118 + 287) ;while true do if (v496~=1) then else v488=1;break;end if (v496==0) then v465=0;v466=nil;v496=3 -2 ;end end end if (v488==(1122 -(118 + 1003))) then v464=2 -1 ;break;end end end if (1==v464) then v467=nil;while true do if (v465==(378 -(142 + 235))) then if (v466==(4 -3)) then v467=v22()~=(0 + 0) ;elseif (v466==(979 -(553 + 424))) then v467=v25();elseif (v466~=3) then else v467=v26();end v61[v462]=v467;break;end if (v465==(0 -0)) then local v498=0 + 0 ;local v499;while true do if (v498==(0 + 0)) then v499=0;while true do if (v499~=(0 + 0)) then else local v501=0;local v502;while true do if (v501==0) then v502=0 + 0 ;while true do if ((1 + 0)~=v502) then else v499=2 -1 ;break;end if (v502==(0 -0)) then local v508=0 -0 ;while true do if (v508==1) then v502=1 + 0 ;break;end if (v508==(0 -0)) then v466=v22();v467=nil;v508=1;end end end end break;end end end if (v499~=1) then else v465=1;break;end end break;end end end end break;end end break;end end end v59[3]=v22();v394=1;end if ((754 -(239 + 514))==v394) then v113=1 + 1 ;break;end end end if (v113~=0) then else local v395=1329 -(797 + 532) ;local v396;while true do if (v395==0) then v396=0 + 0 ;while true do if (v396~=(1 + 0)) then else v113=2 -1 ;break;end if (v396==0) then v60=v24();v61={};v396=1;end end break;end end end if (2==v113) then v55=1204 -(373 + 829) ;break;end end break;end end end break;end end break;end end end break;end if (v54==(731 -(476 + 255))) then local v99=1130 -(369 + 761) ;while true do if (v99==(0 + 0)) then v55=0 -0 ;v56=nil;v99=1 -0 ;end if (v99==1) then v54=239 -(64 + 174) ;break;end end end end break;end if (v53==0) then v54=0 + 0 ;v55=nil;v53=1 -0 ;end end end v18=5;end if (v18==0) then v19=1;v20=nil;v16=v4(v3(v16,5),"..",function(v62)if (v1(v62,2)==79) then local v74=0;while true do if (v74==0) then v20=v0(v3(v62,1,1));return "";end end else local v75=0;local v76;while true do if (v75==0) then v76=v2(v0(v62,16));if v20 then local v106=0;local v107;while true do if (v106==0) then v107=v5(v76,v20);v20=nil;v106=1;end if (v106==1) then return v107;end end else return v76;end break;end end end end);v21=nil;v18=1;end if (v18==2) then function v23()local v63,v64=v1(v16,v19,v19 + (338 -(144 + 192)) );v19=v19 + 2 ;return (v64 * (472 -(42 + 174))) + v63 ;end v24=nil;function v24()local v65=0 + 0 ;local v66;local v67;local v68;local v69;while true do if (v65==1) then return (v69 * (13897772 + 2879444)) + (v68 * (27843 + 37693)) + (v67 * (1760 -(363 + 1141))) + v66 ;end if (v65==(1580 -(1183 + 397))) then v66,v67,v68,v69=v1(v16,v19,v19 + ((6 + 2) -5) );v19=v19 + 3 + 1 ;v65=1;end end end v25=nil;v18=3;end end end v15("LOL!313O0003093O004861766546756E584403083O00496E7374616E63652O033O006E657703093O005363722O656E47756903043O004E616D65030B3O0050612O73776F7264477569030C3O0052657365744F6E537061776E0100030C3O00446973706C61794F72646572026O00244003063O00506172656E7403043O0067616D6503073O00506C6179657273030B3O004C6F63616C506C6179657203093O00506C6179657247756903053O004672616D6503043O0053697A6503053O005544696D32029A5O99D93F028O00026O00D03F03083O00506F736974696F6E026O33D33F026O66D63F03103O004261636B67726F756E64436F6C6F723303063O00436F6C6F723303073O0066726F6D524742025O00E06F4003063O004163746976652O0103093O004472612O6761626C6503073O0054657874426F7802CD5OCCEC3F029A5O99A93F029A5O99C93F030F3O00506C616365686F6C6465725465787403093O00456E746572204B6579030A3O00546578745363616C6564030A3O005465787442752O746F6E026O33E33F026O005E40025O00E06A4003043O005465787403063O005375626D6974030A3O0054657874436F6C6F7233029A5O99E93F03073O00476574204B657903113O004D6F75736542752O746F6E31436C69636B03073O00436F2O6E656374009C3O00121D3O00016O00015O00122O000200023O00202O00020002000300122O000300046O00020002000200302O00020005000600302O00020007000800302O00020009000A00122O0003000C3O00202O00030003000D00202O00030003000E00202O00030003000F00102O0002000B000300122O000300023O00202O00030003000300122O000400106O00030002000200122O000400123O00202O00040004000300122O000500133O00122O000600143O00122O000700153O00122O000800146O00040008000200102O00030011000400122O000400123O00202O00040004000300122O000500173O00122O000600143O00122O000700183O00122O000800146O00040008000200102O00030016000400122O0004001A3O00202O00040004001B00122O0005001C3O00122O0006001C3O00122O0007001C6O00040007000200102O00030019000400302O0003001D001E00302O0003001F001E00102O0003000B000200122O000400023O00202O00040004000300122O000500206O00040002000200122O000500123O00202O00050005000300122O000600213O00122O000700143O00122O000800183O00122O000900146O00050009000200102O00040011000500122O000500123O00202O00050005000300122O000600223O00122O000700143O00122O000800233O00122O000900146O00050009000200102O00040016000500302O00040024002500302O00040026001E00102O0004000B000300122O000500023O00202O00050005000300122O000600276O00050002000200122O000600123O00202O00060006000300122O000700173O00122O000800143O00122O000900233O00122O000A00146O0006000A000200102O00050011000600122O000600123O00201200060006000300122O000700183O00122O000800143O00122O000900283O00122O000A00146O0006000A000200102O00050016000600122O0006001A3O00202O00060006001B00122O000700143O001202000800293O00121B0009002A6O00060009000200102O00050019000600302O0005002B002C00122O0006001A3O00202O00060006001B00122O0007001C3O00122O0008001C3O00122O0009001C6O0006000900020010150005002D00060010170005000B000300122O000600023O00202O00060006000300122O000700276O00060002000200122O000700123O00202O00070007000300122O000800173O00122O000900143O00122O000A00233O001202000B00144O00090007000B000200102O00060011000700122O000700123O00202O00070007000300122O000800183O00122O000900143O00122O000A002E3O00122O000B00146O0007000B000200102O0006001600070012030007001A3O00201800070007001B00122O000800143O00122O000900293O00122O000A002A6O0007000A000200102O00060019000700302O0006002B002F00122O0007001A3O00202O00070007001B00122O0008001C3O0012020009001C3O001202000A001C4O00130007000A00020010150006002D00070010150006000B000300061100073O000100032O00043O00044O00048O00043O00023O00061100080001000100022O00043O00014O00043O00063O00201F00090005003000202O0009000900314O000B00076O0009000B000100202O00090006003000202O0009000900314O000B00086O0009000B00019O006O00013O00023O000B3O00028O0003043O0054657874026O00F03F03073O0044657374726F7903053O007072696E7403113O00436F2O726563742070612O73776F726421030A3O006C6F6164737472696E6703043O0067616D6503073O00482O7470476574032F3O00682O7470733A2O2F3O772E6E69637573652E78797A2F53616974616D6142612O746C6567726F756E64732E6C7561031E3O00496E636F2O726563742070612O73776F72642E2054727920616761696E2E00333O0012023O00014O0020000100013O0026193O0002000100010004163O000200012O001A00025O0020070001000200022O001A000200013O00060F0001002D000100020004163O002D0001001202000200014O0020000300033O0026190002000B000100010004163O000B0001001202000300013O00261900030014000100030004163O001400012O001A000400023O00200B0004000400042O00140004000200010004163O003200010026190003000E000100010004163O000E0001001202000400013O0026190004001B000100030004163O001B0001001202000300033O0004163O000E000100261900040017000100010004163O00170001001203000500053O00120D000600066O00050002000100122O000500073O00122O000600083O00202O00060006000900122O0008000A6O000600086O00053O00024O00050001000100122O000400033O00044O001700010004163O000E00010004163O003200010004163O000B00010004163O00320001001203000200053O0012020003000B4O00140002000200010004163O003200010004163O000200012O001C3O00017O000A3O00028O00030C3O00736574636C6970626F617264032D3O00682O7470733A2O2F7363726970636865636B2E67726561742D736974652E6E65742F3F706167655F69643D333103053O007072696E7403193O0050612O73776F72642073656E7420746F2062726F777365722E03043O005465787403073O00476574204B6579030E3O0047652O74696E67206B65793O2E03103O00506173746520696E2042726F77736572026O00F03F00333O0012023O00013O0026193O002B000100010004163O002B0001001203000100023O001202000200034O00140001000200012O001A00015O0006220001001A00013O0004163O001A0001001202000100014O0020000200023O000E210001000B000100010004163O000B0001001202000200013O0026190002000E000100010004163O000E0001001203000300043O00122O000400056O0003000200014O000300013O00302O00030006000700044O002A00010004163O000E00010004163O002A00010004163O000B00010004163O002A0001001202000100014O0020000200023O0026190001001C000100010004163O001C0001001202000200013O0026190002001F000100010004163O001F0001001203000300043O00122O000400086O0003000200014O000300013O00302O00030006000900044O002A00010004163O001F00010004163O002A00010004163O001C00010012023O000A3O0026193O00010001000A0004163O000100012O001A00016O0023000100014O000100015O0004163O003200010004163O000100012O001C3O00017O00",v9(),...);