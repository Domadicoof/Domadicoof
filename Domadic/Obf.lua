--[[

 .____                  ________ ___.    _____                           __                

 |    |    __ _______   \_____  \\_ |___/ ____\_ __  ______ ____ _____ _/  |_  ___________ 

 |    |   |  |  \__  \   /   |   \| __ \   __\  |  \/  ___// ___\\__  \\   __\/  _ \_  __ \

 |    |___|  |  // __ \_/    |    \ \_\ \  | |  |  /\___ \\  \___ / __ \|  | (  <_> )  | \/

 |_______ \____/(____  /\_______  /___  /__| |____//____  >\___  >____  /__|  \____/|__|   

         \/          \/         \/    \/                \/     \/     \/                   

          \_Welcome to LuaObfuscator.com   (Alpha 0.2.8) ~  Much Love, Ferib 

]]--

do local v0=tonumber;local v1=string.byte;local v2=string.char;local v3=string.sub;local v4=string.gsub;local v5=string.rep;local v6=table.concat;local v7=table.insert;local v8=math.ldexp;local v9=getfenv or function()return _ENV;end ;local v10=setmetatable;local v11=pcall;local v12=select;local v13=unpack or table.unpack ;local v14=tonumber;local function v15(v16,v17,...)local v18=1;local v19;v16=v4(v3(v16,5),"..",function(v30)if (v1(v30,2)==79) then v19=v0(v3(v30,1,1));return "";else local v80=0;local v81;while true do if (v80==0) then v81=v2(v0(v30,16));if v19 then local v96=v5(v81,v19);v19=nil;return v96;else return v81;end break;end end end end);local function v20(v31,v32,v33)if v33 then local v82=(v31/(2^(v32-(2 -1))))%((5 -3)^(((v33-(1 -0)) -(v32-(2 -1))) + (620 -(555 + 64)))) ;return v82-(v82%(932 -(857 + 74))) ;else local v83=(570 -(367 + (1078 -(282 + 595))))^(v32-(928 -(214 + 713))) ;return (((v31%(v83 + v83))>=v83) and (1 + 0)) or (0 + (1637 -(1523 + 114))) ;end end local function v21()local v34=v1(v16,v18,v18);v18=v18 + 1 ;return v34;end local function v22()local v35,v36=v1(v16,v18,v18 + 2 + 0 );v18=v18 + (2 -0) ;return (v36 * 256) + v35 ;end local function v23()local v37,v38,v39,v40=v1(v16,v18,v18 + (1068 -(68 + 222 + 775)) );v18=v18 + (1274 -((1183 -(892 + 65)) + 1044)) ;return (v40 * (73054774 -56277558)) + (v39 * (65653 -(32 + 85))) + (v38 * (251 + 5)) + v37 ;end local function v24()local v41=v23();local v42=v23();local v43=2 -1 ;local v44=(v20(v42,1 -0 ,36 -(454 -(145 + 293)) ) * (2^(382 -(87 + (693 -(44 + 386)))))) + v41 ;local v45=v20(v42,201 -((1553 -(998 + 488)) + 113) ,23 + 8 );local v46=((v20(v42,78 -46 )==(1 + 0)) and  -(1 -0)) or (1 + 0) ;if (v45==0) then if (v44==(0 -0)) then return v46 * (791 -(368 + 423)) ;else v45=3 -2 ;v43=952 -(802 + 150) ;end elseif (v45==((657 + 1408) -(10 + 8))) then return ((v44==(0 -0)) and (v46 * (((1 + 0) -0)/((772 -(201 + 571)) + 0)))) or (v46 * NaN) ;end return v8(v46,v45-(3266 -2243) ) * (v43 + (v44/((999 -(915 + 82))^(147 -95)))) ;end local function v25(v47)local v48=1138 -(116 + (1815 -793)) ;local v49;local v50;while true do if (v48==((1080 -(1020 + 60)) -0)) then v49=nil;if  not v47 then local v92=0 + 0 ;while true do if (v92==((1423 -(630 + 793)) -0)) then v47=v23();if (v47==0) then return "";end break;end end end v48=3 -2 ;end if (v48==(10 -7)) then return v6(v50);end if (v48==(861 -(814 + (213 -168)))) then v50={};for v86=1, #v49 do v50[v86]=v2(v1(v3(v49,v86,v86)));end v48=7 -4 ;end if (v48==(1 + 0)) then v49=v3(v16,v18,(v18 + v47) -(1 + 0) );v18=v18 + v47 ;v48=887 -(261 + 246 + 378) ;end end end local v26=v23;local function v27(...)return {...},v12("#",...);end local function v28()local v51=0 -0 ;local v52;local v53;local v54;local v55;local v56;local v57;local v58;local v59;while true do if (v51==(2 -1)) then v54=nil;v55=nil;v51=2;end if (v51==4) then while true do if (v52==3) then v59=nil;while true do local v97=0;local v98;while true do if (v97==(114 -(4 + 110))) then v98=584 -(57 + 527) ;while true do if (v98~=0) then else local v101=1427 -(41 + 1386) ;while true do if (v101==1) then v98=1;break;end if (v101~=(103 -(17 + 86))) then else if (v53==0) then local v146=0;local v147;while true do if (v146==0) then v147=0;while true do if (v147==(0 + 0)) then local v157=0;while true do if (v157~=0) then else v54={};v55={};v157=1 -0 ;end if (1~=v157) then else v147=1;break;end end end if (v147~=(2 -1)) then else local v158=166 -(122 + 44) ;while true do if (v158~=(0 -0)) then else v56={};v57={v54,v55,nil,v56};v158=1;end if (v158==(1 + 0)) then v147=2;break;end end end if ((3 -1)==v147) then v53=66 -(30 + 35) ;break;end end break;end end end if ((1 + 0)==v53) then local v148=1257 -(1043 + 214) ;while true do if (v148==1) then local v156=0;while true do if (v156~=0) then else for v160=1,v58 do local v161=0 -0 ;local v162;local v163;local v164;local v165;local v166;while true do if (v161==(1213 -(323 + 889))) then v164=nil;v165=nil;v161=2;end if (v161==2) then v166=nil;while true do if (v162==1) then local v174=0 -0 ;while true do if (v174==0) then v165=nil;v166=nil;v174=581 -(361 + 219) ;end if (v174~=(321 -(53 + 267))) then else v162=1 + 1 ;break;end end end if (v162==2) then while true do if (v163~=0) then else local v176=413 -(15 + 398) ;while true do if (v176==(983 -(18 + 964))) then v163=1;break;end if (v176==0) then v164=0 -0 ;v165=nil;v176=1;end end end if (v163==1) then v166=nil;while true do if (v164==1) then if (v165==(1 + 0)) then v166=v21()~=0 ;elseif (v165==2) then v166=v24();elseif (v165~=(2 + 1)) then else v166=v25();end v59[v160]=v166;break;end if ((850 -(20 + 830))==v164) then local v181=0;local v182;while true do if (0==v181) then v182=0;while true do if (v182==(1 + 0)) then v164=127 -(116 + 10) ;break;end if (v182==(0 + 0)) then local v193=0;while true do if (v193==(739 -(542 + 196))) then v182=1;break;end if ((0 -0)==v193) then v165=v21();v166=nil;v193=1 + 0 ;end end end end break;end end end end break;end end break;end if (v162==(0 + 0)) then local v175=0;while true do if ((1 + 0)~=v175) then else v162=2 -1 ;break;end if (v175~=0) then else v163=0 -0 ;v164=nil;v175=1552 -(1126 + 425) ;end end end end break;end if (v161~=(405 -(118 + 287))) then else v162=0;v163=nil;v161=3 -2 ;end end end v57[3]=v21();v156=1;end if (v156~=1) then else v148=1123 -(118 + 1003) ;break;end end end if (v148~=2) then else v53=2;break;end if (v148==0) then v58=v23();v59={};v148=1;end end end v101=1;end end end if ((2 -1)==v98) then if (v53~=(379 -(142 + 235))) then else local v129=0 -0 ;while true do if (0==v129) then for v149=1 + 0 ,v23() do local v150=0;local v151;local v152;local v153;while true do if (v150==(978 -(553 + 424))) then v153=nil;while true do if ((1 -0)==v151) then while true do if (0==v152) then v153=v21();if (v20(v153,1 + 0 ,1 + 0 )==(0 + 0)) then local v168=0;local v169;local v170;local v171;local v172;local v173;while true do if (1==v168) then v171=nil;v172=nil;v168=2;end if (v168==2) then v173=nil;while true do if (v169~=(1 + 0)) then else local v177=0;local v178;while true do if (v177==0) then v178=0 + 0 ;while true do if (v178==1) then v169=4 -2 ;break;end if (v178==(0 -0)) then v172=nil;v173=nil;v178=1;end end break;end end end if (v169==(4 -2)) then while true do if (v170==1) then local v183=0 + 0 ;while true do if (1==v183) then v170=2;break;end if (v183~=(0 -0)) then else local v191=753 -(239 + 514) ;while true do if ((0 + 0)~=v191) then else v173={v22(),v22(),nil,nil};if (v171==(0 -0)) then local v195=1202 -(373 + 829) ;local v196;while true do if (v195~=0) then else v196=0;while true do if (v196==0) then v173[3]=v22();v173[4]=v22();break;end end break;end end elseif (v171==(732 -(476 + 255))) then v173[3]=v23();elseif (v171==(1132 -(369 + 761))) then v173[2 + 1 ]=v23() -((2 -0)^16) ;elseif (v171==3) then local v205=0;local v206;while true do if (v205~=(0 -0)) then else v206=238 -(64 + 174) ;while true do if (0==v206) then v173[3]=v23() -(2^16) ;v173[4]=v22();break;end end break;end end end v191=1;end if (v191==(1 + 0)) then v183=1;break;end end end end end if (v170==(0 -0)) then local v184=0;local v185;while true do if (v184==0) then v185=336 -(144 + 192) ;while true do if (v185==(216 -(42 + 174))) then local v194=0 + 0 ;while true do if (v194~=1) then else v185=1;break;end if (v194~=(0 + 0)) then else v171=v20(v153,1 + 1 ,1507 -(363 + 1141) );v172=v20(v153,4,6);v194=1581 -(1183 + 397) ;end end end if (v185~=(2 -1)) then else v170=1 + 0 ;break;end end break;end end end if (v170==3) then if (v20(v172,3,3)==(1 + 0)) then v173[1979 -(1913 + 62) ]=v59[v173[4]];end v54[v149]=v173;break;end if (v170==2) then local v187=0 + 0 ;while true do if ((2 -1)==v187) then v170=1936 -(565 + 1368) ;break;end if (0==v187) then local v192=0 -0 ;while true do if (1==v192) then v187=1;break;end if (v192==0) then if (v20(v172,1,1662 -(1477 + 184) )~=1) then else v173[2 -0 ]=v59[v173[2]];end if (v20(v172,2,2 + 0 )==(857 -(564 + 292))) then v173[3]=v59[v173[4 -1 ]];end v192=1;end end end end end end break;end if (0==v169) then local v179=0 -0 ;while true do if ((304 -(244 + 60))==v179) then local v188=0 + 0 ;while true do if (v188~=(477 -(41 + 435))) then else v179=1;break;end if (v188~=(1001 -(938 + 63))) then else v170=0;v171=nil;v188=1 + 0 ;end end end if (1==v179) then v169=1;break;end end end end break;end if (0==v168) then v169=1125 -(936 + 189) ;v170=nil;v168=1;end end end break;end end break;end if (v151~=(0 + 0)) then else local v167=0;while true do if (v167==(1613 -(1565 + 48))) then v152=0;v153=nil;v167=1 + 0 ;end if (v167==1) then v151=1139 -(782 + 356) ;break;end end end end break;end if (v150~=0) then else v151=267 -(176 + 91) ;v152=nil;v150=2 -1 ;end end end for v154=1 -0 ,v23() do v55[v154-1 ]=v28();end v129=1093 -(975 + 117) ;end if (v129==(1876 -(157 + 1718))) then return v57;end end end break;end end break;end end end break;end if (v52==(2 + 0)) then v57=nil;v58=nil;v52=3;end if (v52==(3 -2)) then v55=nil;v56=nil;v52=6 -4 ;end if (v52~=(1018 -(697 + 321))) then else local v95=0;while true do if (v95~=1) then else v52=2 -1 ;break;end if (0~=v95) then else v53=0 -0 ;v54=nil;v95=2 -1 ;end end end end break;end if (v51~=(0 + 0)) then else v52=0 -0 ;v53=nil;v51=2 -1 ;end if (v51~=(1230 -(322 + 905))) then else v58=nil;v59=nil;v51=615 -(602 + 9) ;end if (v51~=2) then else v56=nil;v57=nil;v51=3;end end end local function v29(v60,v61,v62)local v63=v60[1];local v64=v60[2];local v65=v60[3];return function(...)local v66=v63;local v67=v64;local v68=v65;local v69=v27;local v70=1;local v71= -1;local v72={};local v73={...};local v74=v12("#",...) -1 ;local v75={};local v76={};for v84=0,v74 do if (v84>=v68) then v72[v84-v68 ]=v73[v84 + 1 ];else v76[v84]=v73[v84 + 1 ];end end local v77=(v74-v68) + 1 ;local v78;local v79;while true do local v85=0;while true do if (v85==1) then if (v79<=6) then if (v79<=2) then if (v79<=0) then local v99=v78[2];v76[v99]=v76[v99](v13(v76,v99 + 1 ,v71));elseif (v79==1) then local v102=v78[2];v76[v102]=v76[v102](v13(v76,v102 + 1 ,v71));else v76[v78[2]]=v62[v78[3]];end elseif (v79<=4) then if (v79>3) then local v106=v78[2];local v107,v108=v69(v76[v106](v13(v76,v106 + 1 ,v78[3])));v71=(v108 + v106) -1 ;local v109=0;for v127=v106,v71 do local v128=0;while true do if (v128==0) then v109=v109 + 1 ;v76[v127]=v107[v109];break;end end end else local v110=0;local v111;local v112;local v113;local v114;while true do if (v110==2) then for v143=v111,v71 do v114=v114 + 1 ;v76[v143]=v112[v114];end break;end if (v110==1) then v71=(v113 + v111) -1 ;v114=0;v110=2;end if (v110==0) then v111=v78[2];v112,v113=v69(v76[v111](v13(v76,v111 + 1 ,v78[3])));v110=1;end end end elseif (v79>5) then local v115=0;local v116;local v117;while true do if (1==v115) then v76[v116 + 1 ]=v117;v76[v116]=v117[v78[4]];break;end if (0==v115) then v116=v78[2];v117=v76[v78[3]];v115=1;end end else v76[v78[2]]();end elseif (v79<=9) then if (v79<=7) then do return;end elseif (v79==8) then v76[v78[2]]();else v76[v78[2]]=v62[v78[3]];end elseif (v79<=11) then if (v79>10) then v76[v78[2]]=v78[3];else do return;end end elseif (v79==12) then local v122=0;local v123;local v124;while true do if (v122==1) then v76[v123 + 1 ]=v124;v76[v123]=v124[v78[4]];break;end if (v122==0) then v123=v78[2];v124=v76[v78[3]];v122=1;end end else v76[v78[2]]=v78[3];end v70=v70 + 1 ;break;end if (v85==0) then v78=v66[v70];v79=v78[1];v85=1;end end end end;end return v29(v28(),{},v17)(...);end v15("LOL!043O00030A3O006C6F6164737472696E6703043O0067616D6503073O00482O747047657403723O00682O7470733A2O2F7261772E67697468756275736572636F6E74656E742E636F6D2F446F6D616469632O6F662F446F6D616469632O6F662F6265613962342O3336333036656165336361383461656336313239352O64662O3235643533652O642F446F6D616469632532304875622E74787400083O0012093O00013O001209000100023O00200600010001000300120D000300044O0003000100034O00015O00022O00083O000100012O00073O00017O00",v9(),...);end