//Maya ASCII 2013 scene
//Name: Heart1.ma
//Last modified: Sat, Jan 26, 2013 06:52:27 PM
//Codeset: 1252
requires maya "2013";
currentUnit -l meter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2013";
fileInfo "version" "2013 x64";
fileInfo "cutIdentifier" "201202220241-825136";
fileInfo "osv" "Microsoft Windows 7 Business Edition, 64-bit Windows 7 Service Pack 1 (Build 7601)\n";
fileInfo "license" "education";
createNode transform -s -n "persp";
	setAttr ".t" -type "double3" 1.4151585329476684 0.26454093279549695 2.744598058041396 ;
	setAttr ".r" -type "double3" -3.9383527331829216 26.59999999999917 1.1115792969573513e-016 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v";
	setAttr ".fl" 34.999999999999986;
	setAttr ".ncp" 0.001;
	setAttr ".fcp" 100;
	setAttr ".fd" 0.05;
	setAttr ".coi" 3.1429096125893139;
	setAttr ".ow" 0.1;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -6.9168075684980685 7.4498910496177357 0.37434570394733768 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".t" -type "double3" 0 1.0010010084360217 0.0014208764659056081 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".ncp" 0.001;
	setAttr ".fcp" 100;
	setAttr ".fd" 0.05;
	setAttr ".coi" 1.001;
	setAttr ".ow" 0.028526315789473684;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".t" -type "double3" 0 0 1.001 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".ncp" 0.001;
	setAttr ".fcp" 100;
	setAttr ".fd" 0.05;
	setAttr ".coi" 1.001;
	setAttr ".ow" 0.3;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".t" -type "double3" 1.001 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".ncp" 0.001;
	setAttr ".fcp" 100;
	setAttr ".fd" 0.05;
	setAttr ".coi" 1.001;
	setAttr ".ow" 0.3;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "pCube1";
	setAttr ".r" -type "double3" 0 0 -5.5121189089722762 ;
	setAttr ".s" -type "double3" 0.42637847511896398 0.42637847511896398 0.37434141994976561 ;
createNode mesh -n "pCubeShape1" -p "pCube1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pSphere1";
	setAttr ".t" -type "double3" -0.027280776786359949 0 0 ;
	setAttr ".r" -type "double3" 117.22045311076646 0 0 ;
	setAttr ".s" -type "double3" 0.33622908986424321 0.33622908986424321 0.33622908986424321 ;
createNode mesh -n "pSphereShape1" -p "pSphere1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 164 ".pt[0:163]" -type "float3"  1.1444092e-007 -2.2888183e-007 
		7.6293944e-008 2.193451e-007 -4.5776366e-007 1.5258789e-007 3.4332277e-007 3.8146973e-007 
		-1.9073487e-007 -1.1444092e-007 7.6293944e-008 0 5.4836274e-008 9.1552732e-007 3.8146972e-008 
		7.6293944e-008 -3.0517577e-007 -1.9073486e-008 0.063596308 -3.8146973e-007 0.11242372 
		-2.7656554e-007 -1.5258789e-007 0.11242387 -3.8146972e-008 -1.9073486e-008 3.8146972e-008 
		2.2888183e-007 -7.6293944e-008 -3.8146973e-007 -6.3776973e-008 1.5258789e-007 1.1444092e-007 
		0.063596532 7.6293944e-008 -1.1444092e-007 0.063596494 1.9073486e-008 3.4332277e-007 
		-7.8678134e-008 8.5830692e-008 4.2915346e-008 0.034574434 9.536743e-009 -0.08707422 
		0.034574281 3.8146972e-008 -0.0870739 -0.022416191 -7.6293944e-008 -0.10849476 0.063595884 
		-3.0517577e-007 1.1444092e-007 7.6293944e-008 -1.1444092e-007 -1.9073487e-007 0.090314157 
		1.9073487e-007 3.4332277e-007 0.09031368 -1.1444092e-007 0 -7.6293944e-008 -1.9073486e-008 
		0 -0.022416268 -2.3841858e-008 -0.10849493 -7.6293944e-008 -1.1444092e-007 -9.5367433e-008 
		-7.6293944e-008 -3.8146972e-008 -1.5258789e-007 1.8119812e-007 -2.2888183e-007 1.335144e-007 
		7.6293944e-008 -7.6293944e-008 -1.9073486e-008 -3.8146972e-008 3.8146972e-008 -2.7656554e-007 
		-1.1444092e-007 -5.7220458e-008 1.1444092e-007 2.8610231e-007 7.6293944e-008 -1.9073486e-008 
		-2.3841858e-008 1.5258789e-007 -3.8146972e-008 -1.7166138e-007 -3.8146972e-008 3.8146972e-008 
		0.082903408 -0.077792205 -0.14200991 0.082903557 -0.077791825 -0.1420096 0.082904316 
		-0.077791594 -0.14200945 0.082903825 -0.077792585 -0.14200999 -1.5258789e-007 3.8146972e-008 
		-1.5258789e-007 -1.9073486e-008 -1.5258789e-007 -1.5258789e-007 -2.2888183e-007 0 
		-1.9073487e-007 -1.9073486e-008 1.5258789e-007 -6.8664554e-007 0 -2.2888183e-007 
		7.6293944e-008 -3.8146972e-008 -7.6293944e-008 -7.6293944e-008 -1.9073487e-007 3.8146973e-007 
		-2.2888183e-007 -3.4332277e-007 7.6293944e-008 -1.5258789e-007 0.1293816 6.1035155e-007 
		0.29441375 0.12938191 2.2888183e-007 0.29441372 0.12938179 1.5258789e-007 0.29441398 
		0.12938201 1.5258789e-007 0.29441392 0.20109795 3.0517577e-007 -0.09502548 0.20109791 
		1.5258789e-007 -0.095025405 0.20109795 -7.6293944e-008 -0.095025711 0.20109802 2.2888183e-007 
		-0.095025465 3.8146973e-007 0 4.3392183e-007 -7.6293944e-008 -3.0517577e-007 2.3841858e-008 
		3.8146973e-007 -7.6293944e-008 1.335144e-007 -5.3405762e-007 6.1035155e-007 1.5735627e-007 
		0.31673172 -1.9073486e-008 -0.15472737 0.31673157 1.335144e-007 -0.15472728 0.31673202 
		-3.0517577e-007 -0.15472721 0.31673157 2.2888183e-007 -0.15472786 3.0517577e-007 
		5.9604645e-008 -7.6293944e-008 -7.6293944e-008 -1.6689301e-008 -9.5367433e-008 -5.7220461e-007 
		2.3841857e-009 -1.9073486e-008 2.2888183e-007 -8.8214875e-008 -2.8610231e-007 -0.073888779 
		-1.1444092e-007 0.20387268 -0.073889233 7.6293944e-008 0.2038729 -0.07388901 -3.8146972e-008 
		0.20387276 -0.073889159 9.5367433e-008 0.20387229 0 7.6293944e-008 -7.6293944e-008 
		4.196167e-007 0 1.5258789e-007 0 -2.2888183e-007 2.2888183e-007 1.1444092e-007 3.0517577e-007 
		-2.2888183e-007 -1.1444092e-007 -2.2888183e-007 -1.335144e-007 -1.1444092e-007 -2.2888183e-007 
		7.6293944e-008 0 -3.0517577e-007 -7.6293944e-008 -3.8146973e-007 -3.0517577e-007 
		3.8146972e-008 0.1639003 1.5258789e-007 -0.060461808 0.16390067 -1.5258789e-007 -0.060461845 
		0.16390052 2.2888183e-007 -0.060462151 0.1639006 -2.2888183e-007 -0.060462341 7.6293944e-008 
		0 4.196167e-007 7.6293944e-008 5.7220458e-008 -1.5258789e-007 1.9073487e-007 5.7220458e-008 
		-3.4332277e-007 0 1.1444092e-007 -3.8146972e-008 -6.4849854e-007 -7.6293944e-008 
		-2.2888183e-007 -7.6293944e-008 3.8146972e-008 9.5367433e-008 4.196167e-007 3.8146972e-008 
		3.0517577e-007 6.1035155e-007 1.9073487e-007 -5.7220458e-008 0 7.6293944e-008 3.8146972e-008 
		0 1.335144e-007 3.8146972e-008 1.5258789e-007 5.7220458e-008 -3.8146972e-008 -5.3405762e-007 
		5.7220458e-008 -1.5258789e-007 -0.11378166 0.12473197 0.17842591 -0.11378182 0.12473185 
		0.17842571 -0.11378189 0.12473211 0.17842533 -0.11378189 0.12473208 0.1784251 -0.058791351 
		0.0048287963 0.017573452 -0.058791388 0.0048293304 0.017573765 -0.058791846 0.0048290635 
		0.017573632 -0.058792114 0.004829254 0.017573457 2.2888183e-007 1.335144e-007 1.9073487e-007 
		2.2888183e-007 1.9073486e-008 -1.9073487e-007 3.8146973e-007 1.335144e-007 -1.1444092e-007 
		-3.8146973e-007 1.9073486e-008 1.1444092e-007 1.1444092e-007 -3.8146972e-008 -2.2888183e-007 
		-5.7220458e-008 0 -1.5258789e-007 -7.6293944e-008 3.8146972e-008 -4.9591063e-007 
		0 7.6293944e-008 -2.6702881e-007 -0.041565515 0.040283356 -0.15590687 -0.041565515 
		0.04028305 -0.15590695 -0.041565321 0.04028343 -0.1559068 -0.041565515 0.040282898 
		-0.15590711 -0.068794705 0.067456625 -0.010745087 -0.068794556 0.067456134 -0.01074522 
		-0.068794936 0.067456171 -0.010745239 -0.068795241 0.067456052 -0.010745296 3.8146972e-008 
		-9.5367433e-008 2.8610229e-008 0 -1.9073486e-008 -2.8610229e-008 0 1.335144e-007 
		1.0490417e-007 -1.9073487e-007 -3.8146972e-008 -5.7220458e-008 0.1811617 0.17820366 
		0.024779357 0.18116206 0.17820384 0.024779739 0.18116203 0.17820381 0.024779778 0.1811619 
		0.17820366 0.024779473 0.084382325 0.1446546 -0.23440735 0.084382094 0.14465426 -0.23440757 
		0.084381789 0.14465433 -0.23440713 0.084382325 0.14465457 -0.2344075 -2.2888183e-007 
		3.0517577e-007 3.8146972e-008 -5.7220458e-008 7.6293944e-008 -2.2888183e-007 7.6293944e-008 
		1.5258789e-007 7.6293944e-008 -2.2411346e-007 3.0517577e-007 6.1035155e-007 1.0490417e-007 
		0 -1.9073487e-007 -1.2397766e-007 -1.5258789e-007 1.5258789e-007 9.5367433e-008 -7.6293944e-008 
		7.6293944e-008 6.1035155e-007 0 3.8146973e-007 5.7220458e-008 5.3405762e-007 0 -3.2424927e-007 
		-3.0517577e-007 2.2888183e-007 -5.8650971e-007 7.6293944e-008 -1.5258789e-007 1.0490417e-007 
		2.2888183e-007 7.6293944e-008 -1.7166138e-007 3.8146973e-007 -3.8146972e-008 -3.0517577e-007 
		5.3405762e-007 7.6293944e-008 -1.9073487e-007 -7.6293944e-008 -2.2888183e-007 1.9073487e-007 
		7.6293944e-008 3.4332277e-007 0 -7.6293944e-008 -1.1444092e-007 -3.8146972e-008 0 
		7.6293944e-008 -0.10059691 0.29395652 -0.0331118 -0.10059712 0.29395622 -0.0331118 
		-0.10059702 0.29395607 -0.033111688 1.7166138e-007 1.5258789e-007 0 -9.5367433e-008 
		7.6293944e-008 1.9073486e-008 -2.4795531e-007 -3.8146973e-007 0 -3.8146972e-008 -2.2888183e-007 
		1.6212464e-007 -2.6702881e-007 -3.0517577e-007 8.5830692e-008 -2.2888183e-007 3.8146973e-007 
		8.5830692e-008 -9.5367433e-008 3.8146972e-008 0 0 0 -2.8610229e-008 -2.2888183e-007 
		-1.5258789e-007 -1.1444092e-007 -1.3113022e-008 3.0517577e-007 1.9073487e-007 -1.0490417e-007 
		1.9073487e-007 -7.6293944e-008 -4.5299529e-008 2.2888183e-007 -9.5367433e-008 0 3.4332277e-007 
		-1.1444092e-007 1.5258789e-007 0 3.8146972e-008 1.335144e-007 2.6702881e-007 -1.9073487e-007;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 4 ".lnk";
	setAttr -s 4 ".slnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode blinn -n "Heart54";
createNode shadingEngine -n "blinn1SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
createNode polyCube -n "polyCube1";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".w" 1;
	setAttr ".h" 1;
	setAttr ".d" 1;
	setAttr ".cuv" 4;
createNode polySplitRing -n "polySplitRing1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[4:5]" "e[8:9]";
	setAttr ".ix" -type "matrix" 0.42637847511896398 0 0 0 0 0.42637847511896398 0 0
		 0 0 0.42637847511896398 0 0 0 0 1;
	setAttr ".wt" 0.56766021251678467;
	setAttr ".dr" no;
	setAttr ".re" 5;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[4:5]" "e[15]" "e[17]";
	setAttr ".ix" -type "matrix" 0.42637847511896398 0 0 0 0 0.42637847511896398 0 0
		 0 0 0.42637847511896398 0 0 0 0 1;
	setAttr ".wt" 0.59601634740829468;
	setAttr ".dr" no;
	setAttr ".re" 5;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[8:9]" "e[12:13]";
	setAttr ".ix" -type "matrix" 0.42637847511896398 0 0 0 0 0.42637847511896398 0 0
		 0 0 0.42637847511896398 0 0 0 0 1;
	setAttr ".wt" 0.54344761371612549;
	setAttr ".dr" no;
	setAttr ".re" 12;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "e[0:3]" "e[14]" "e[18]" "e[22]" "e[26]" "e[30]" "e[34]";
	setAttr ".ix" -type "matrix" 0.42637847511896398 0 0 0 0 0.42637847511896398 0 0
		 0 0 0.42637847511896398 0 0 0 0 1;
	setAttr ".wt" 0.45715829730033875;
	setAttr ".re" 1;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak1";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk";
	setAttr ".tk[1]" -type "float3" 0 -37.849018 0 ;
	setAttr ".tk[3]" -type "float3" -42.975906 0 0 ;
	setAttr ".tk[5]" -type "float3" -42.975906 0 0 ;
	setAttr ".tk[7]" -type "float3" 0 -37.849018 0 ;
	setAttr ".tk[12]" -type "float3" 13.378138 -25.173779 0 ;
	setAttr ".tk[15]" -type "float3" 13.378138 -25.173779 0 ;
	setAttr ".tk[16]" -type "float3" -14.196069 0 0 ;
	setAttr ".tk[19]" -type "float3" -14.196069 0 0 ;
createNode polySplitRing -n "polySplitRing5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "e[0:3]" "e[18]" "e[26]" "e[34]" "e[49]" "e[51]" "e[53]";
	setAttr ".ix" -type "matrix" 0.42637847511896398 0 0 0 0 0.42637847511896398 0 0
		 0 0 0.42637847511896398 0 0 0 0 1;
	setAttr ".wt" 0.52030342817306519;
	setAttr ".dr" no;
	setAttr ".re" 1;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 12 "e[6:7]" "e[10:11]" "e[16]" "e[19]" "e[24]" "e[27]" "e[32]" "e[35]" "e[38]" "e[48]" "e[58]" "e[68]";
	setAttr ".ix" -type "matrix" 0.42637847511896398 0 0 0 0 0.42637847511896398 0 0
		 0 0 0.37434141994976561 0 0 0 0 1;
	setAttr ".wt" 0.50365418195724487;
	setAttr ".dr" no;
	setAttr ".re" 7;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak2";
	setAttr ".uopa" yes;
	setAttr -s 40 ".tk[0:39]" -type "float3"  0 22.62454033 0 11.35918713
		 15.17805958 0 0 -15.4444685 0 0 3.058269978 0 0 -15.4444685 0 0 3.058269978 0 0 22.62454033
		 0 11.35918713 15.17805958 0 0 -2.081172466 0 -7.9292016 -2.081172466 0 -7.9292016
		 -2.081172466 0 0 -2.081172466 0 0 7.77620602 0 -7.9292016 11.22121143 0 -7.9292016
		 11.22121143 0 0 7.77620602 0 0 -6.99279118 0 -7.9292016 -6.99279118 0 -7.9292016
		 -6.99279118 0 0 -6.99279118 0 0 3.058269978 0 0 3.058269978 0 0 -6.99279118 0 0 -2.081172466
		 0 0 5.30332613 0 11.92934132 -5.3199873 0 11.92934132 -5.3199873 0 0 5.30332613 0
		 0 -2.081172466 0 0 -6.99279118 0 0 3.058269978 0 0 3.058269978 0 0 -6.99279118 0
		 0 -2.081172466 0 0 4.066886425 0 0 6.63336706 0 0 6.63336706 0 0 4.066886425 0 0
		 -2.081172466 0 0 -6.99279118 0;
createNode polySoftEdge -n "polySoftEdge1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 0.42637847511896398 0 0 0 0 0.42637847511896398 0 0
		 0 0 0.37434141994976561 0 0 0 0 1;
	setAttr ".a" 0;
createNode polyTweak -n "polyTweak3";
	setAttr ".uopa" yes;
	setAttr -s 14 ".tk[40:53]" -type "float3"  1.83540237 27.17116165 0 -10.33566666
		 27.17116165 0 -16.42120552 27.17116165 0 -22.50673866 19.27280426 0 -25.89151573
		 12.20874977 0 -25.89151573 3.63353086 0 -25.89151573 -1.35988557 0 -22.50673866 -7.16395998
		 0 -11.83486938 -18.029392242 0 3.92932844 -27.17116165 0 25.029687881 -26.4994545
		 0 25.89151382 -13.57651615 0 20.18072891 3.63353086 0 14.12078285 12.20874977 0;
createNode polySplitRing -n "polySplitRing7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 13 "e[6:7]" "e[16]" "e[24]" "e[32]" "e[38]" "e[58]" "e[89]" "e[91]" "e[93]" "e[95]" "e[97]" "e[99]" "e[101]";
	setAttr ".ix" -type "matrix" 0.42637847511896398 0 0 0 0 0.42637847511896398 0 0
		 0 0 0.37434141994976561 0 0 0 0 1;
	setAttr ".wt" 0.55841368436813354;
	setAttr ".dr" no;
	setAttr ".re" 7;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	setAttr ".ics" -type "componentList" 2 "f[18]" "f[52]";
	setAttr ".ix" -type "matrix" 0.42637847511896398 0 0 0 0 0.42637847511896398 0 0
		 0 0 0.37434141994976561 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.048957039 0.28415501 0.093585357 ;
	setAttr ".rs" 64228;
	setAttr ".kft" no;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.13568906501223246 0.22622904042173325 0 ;
	setAttr ".cbx" -type "double3" 0.037774984445345709 0.34208102514398236 0.18717070997488283 ;
createNode polySplitRing -n "polySplitRing8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 15 "e[89]" "e[91]" "e[93]" "e[95]" "e[97]" "e[99]" "e[101]" "e[104:105]" "e[107]" "e[109]" "e[111]" "e[113]" "e[115]" "e[144]" "e[147]";
	setAttr ".ix" -type "matrix" 0.42637847511896398 0 0 0 0 0.42637847511896398 0 0
		 0 0 0.37434141994976561 0 0 0 0 1;
	setAttr ".wt" 0.46238186955451965;
	setAttr ".re" 144;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak4";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk";
	setAttr ".tk[22]" -type "float3" 0 0 1.9073486e-006 ;
	setAttr ".tk[23]" -type "float3" 0 0 1.9073486e-006 ;
	setAttr ".tk[24]" -type "float3" 0 0 1.9073486e-006 ;
	setAttr ".tk[27]" -type "float3" 0 0 -1.9073486e-006 ;
	setAttr ".tk[28]" -type "float3" 0 0 -1.9073486e-006 ;
	setAttr ".tk[29]" -type "float3" 0 0 -1.9073486e-006 ;
	setAttr ".tk[33]" -type "float3" 0 0 1.9073486e-006 ;
	setAttr ".tk[38]" -type "float3" 0 0 -1.9073486e-006 ;
	setAttr ".tk[68]" -type "float3" -13.697429 42.97197 27.289118 ;
	setAttr ".tk[69]" -type "float3" -13.697429 42.97197 27.289118 ;
	setAttr ".tk[70]" -type "float3" -13.697429 42.97197 27.289118 ;
	setAttr ".tk[71]" -type "float3" -13.697429 42.97197 27.289118 ;
	setAttr ".tk[72]" -type "float3" 9.6729012 34.209747 0 ;
	setAttr ".tk[73]" -type "float3" 9.6729012 34.209747 0 ;
	setAttr ".tk[74]" -type "float3" 9.6729012 34.209747 0 ;
	setAttr ".tk[75]" -type "float3" 9.6729012 34.209747 0 ;
createNode polySplitRing -n "polySplitRing9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 15 "e[6:7]" "e[16]" "e[24]" "e[32]" "e[38]" "e[58]" "e[117]" "e[119]" "e[121]" "e[123]" "e[125]" "e[127]" "e[129]" "e[136]" "e[139]";
	setAttr ".ix" -type "matrix" 0.42637847511896398 0 0 0 0 0.42637847511896398 0 0
		 0 0 0.37434141994976561 0 0 0 0 1;
	setAttr ".wt" 0.44872176647186279;
	setAttr ".re" 136;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	setAttr ".ics" -type "componentList" 2 "f[18]" "f[90]";
	setAttr ".ix" -type "matrix" 0.42637847511896398 0 0 0 0 0.42637847511896398 0 0
		 0 0 0.37434141994976561 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.098299101 0.43841526 0.24253251 ;
	setAttr ".rs" 57339;
	setAttr ".lt" -type "double3" 0 -3.552713678800501e-017 0.13318299104159093 ;
	setAttr ".kft" no;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.17205741963997337 0.40945225288490372 0.19573981896080717 ;
	setAttr ".cbx" -type "double3" -0.024540783762152067 0.46737826964360035 0.28932517394824858 ;
createNode polyExtrudeFace -n "polyExtrudeFace3";
	setAttr ".ics" -type "componentList" 2 "f[52]" "f[74]";
	setAttr ".ix" -type "matrix" 0.42637847511896398 0 0 0 0 0.42637847511896398 0 0
		 0 0 0.37434141994976561 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.0077138655 0.45898101 0.046792679 ;
	setAttr ".rs" 40785;
	setAttr ".lt" -type "double3" 2.7755575615628914e-019 -2.6645352591003756e-017 0.10910830122733522 ;
	setAttr ".kft" no;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.094445888441375636 0.43001803985679782 0 ;
	setAttr ".cbx" -type "double3" 0.079018156949940521 0.48794402408539833 0.093585354987441416 ;
createNode polyTweak -n "polyTweak5";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[108:115]" -type "float3"  16.7610569 1.4210855e-014
		 0 16.7610569 1.4210855e-014 0 16.7610569 0 0 16.7610569 0 0 -17.79678154 4.85711193
		 4.2632564e-014 -17.79678154 4.85711193 4.2632564e-014 -17.79678154 4.85711193 4.2632564e-014
		 -17.79678154 4.85711193 4.2632564e-014;
createNode polyExtrudeFace -n "polyExtrudeFace4";
	setAttr ".ics" -type "componentList" 5 "f[1]" "f[7]" "f[56]" "f[78]" "f[94]";
	setAttr ".ix" -type "matrix" 0.42637847511896398 0 0 0 0 0.42637847511896398 0 0
		 0 0 0.37434141994976561 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.25489905 0.12315917 0.093585357 ;
	setAttr ".rs" 65283;
	setAttr ".ls" -type "double3" 0.75000000247638832 0.75000000247638832 0.75000000247638832 ;
	setAttr ".kft" no;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.3573934943725417 -0.008873671426312197 0 ;
	setAttr ".cbx" -type "double3" -0.15240462234418778 0.25519201627098548 0.18717070997488283 ;
createNode polyTweak -n "polyTweak6";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[120:123]" -type "float3"  17.39814758 5.6843419e-014
		 -24.14056015 17.39814758 5.6843419e-014 -24.14056015 17.39814758 5.6843419e-014 -24.14056015
		 17.39814758 5.6843419e-014 -24.14056015;
createNode polySplitRing -n "polySplitRing10";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 12 "e[10:11]" "e[19]" "e[27]" "e[35]" "e[48]" "e[68]" "e[76:77]" "e[79]" "e[81]" "e[83]" "e[85]" "e[87]";
	setAttr ".ix" -type "matrix" 0.42637847511896398 0 0 0 0 0.42637847511896398 0 0
		 0 0 0.37434141994976561 0 0 0 0 1;
	setAttr ".wt" 0.42367088794708252;
	setAttr ".re" 79;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak7";
	setAttr ".uopa" yes;
	setAttr -s 30 ".tk";
	setAttr ".tk[27]" -type "float3" 0 0 27.4377 ;
	setAttr ".tk[28]" -type "float3" 0 0 27.4377 ;
	setAttr ".tk[29]" -type "float3" 0 0 27.4377 ;
	setAttr ".tk[37]" -type "float3" 0 0 27.4377 ;
	setAttr ".tk[38]" -type "float3" 0 0 27.4377 ;
	setAttr ".tk[39]" -type "float3" 0 0 27.4377 ;
	setAttr ".tk[49]" -type "float3" 0 -5.2285957 0 ;
	setAttr ".tk[50]" -type "float3" 3.8146973e-006 0 0 ;
	setAttr ".tk[63]" -type "float3" 0 11.064399 0 ;
	setAttr ".tk[86]" -type "float3" 0 11.064399 0 ;
	setAttr ".tk[124]" -type "float3" -31.245502 11.277793 18.652983 ;
	setAttr ".tk[125]" -type "float3" -31.245502 11.277793 18.652983 ;
	setAttr ".tk[126]" -type "float3" -31.245502 11.277793 18.652983 ;
	setAttr ".tk[127]" -type "float3" -31.245502 11.277793 18.652983 ;
	setAttr ".tk[128]" -type "float3" -31.245502 0 0 ;
	setAttr ".tk[129]" -type "float3" -31.245502 0 0 ;
	setAttr ".tk[130]" -type "float3" -31.245502 0 0 ;
	setAttr ".tk[131]" -type "float3" -31.245502 0 0 ;
	setAttr ".tk[132]" -type "float3" -31.245502 -13.196315 3.5527137e-015 ;
	setAttr ".tk[133]" -type "float3" -31.245502 -13.196315 1.7763568e-015 ;
	setAttr ".tk[134]" -type "float3" -31.245502 -13.196315 3.5527137e-015 ;
	setAttr ".tk[135]" -type "float3" -31.245502 -13.196315 1.7763568e-015 ;
	setAttr ".tk[136]" -type "float3" -31.245502 0 0 ;
	setAttr ".tk[137]" -type "float3" -31.245502 0 0 ;
	setAttr ".tk[138]" -type "float3" -31.245502 0 0 ;
	setAttr ".tk[139]" -type "float3" -31.245502 0 0 ;
	setAttr ".tk[140]" -type "float3" -31.245502 7.1252146 7.5093021 ;
	setAttr ".tk[141]" -type "float3" -31.245502 7.1252146 7.5093021 ;
	setAttr ".tk[142]" -type "float3" -31.245502 7.1252146 7.5093021 ;
	setAttr ".tk[143]" -type "float3" -31.245502 7.1252146 7.5093021 ;
createNode polyExtrudeFace -n "polyExtrudeFace5";
	setAttr ".ics" -type "componentList" 1 "f[39]";
	setAttr ".ix" -type "matrix" 0.42637847511896398 0 0 0 0 0.42637847511896398 0 0
		 0 0 0.37434141994976561 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.16803782 0.31311801 -0.046792679 ;
	setAttr ".rs" 53612;
	setAttr ".lt" -type "double3" -0.088360116668821251 -0.056498297695190998 0.16599907582247028 ;
	setAttr ".ls" -type "double3" 1 0.8917947740690001 1 ;
	setAttr ".kft" no;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.22242111617172464 0.28415500838528579 -0.093585354987441416 ;
	setAttr ".cbx" -type "double3" -0.113654527938039 0.34208102514398236 0 ;
createNode polySplitRing -n "polySplitRing11";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 15 "e[76:77]" "e[79]" "e[81]" "e[83]" "e[85]" "e[87]" "e[293]" "e[295]" "e[297]" "e[299]" "e[301]" "e[303]" "e[305]" "e[316]" "e[319]";
	setAttr ".ix" -type "matrix" 0.42637847511896398 0 0 0 0 0.42637847511896398 0 0
		 0 0 0.37434141994976561 0 0 0 0 1;
	setAttr ".wt" 0.54734343290328979;
	setAttr ".dr" no;
	setAttr ".re" 319;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyExtrudeFace -n "polyExtrudeFace6";
	setAttr ".ics" -type "componentList" 2 "f[39]" "f[175]";
	setAttr ".ix" -type "matrix" 0.42637847511896398 0 0 0 0 0.42637847511896398 0 0
		 0 0 0.37434141994976561 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.25639796 0.48410648 -0.085949041 ;
	setAttr ".rs" 38873;
	setAttr ".lt" -type "double3" -0.081781570907305007 7.549516567451065e-017 0.047045001837744398 ;
	setAttr ".kft" no;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.31078124984403349 0.45827742225830009 -0.1276785072349621 ;
	setAttr ".cbx" -type "double3" -0.20201464534529984 0.50993554010754827 -0.044219572891286987 ;
createNode polyExtrudeFace -n "polyExtrudeFace7";
	setAttr ".ics" -type "componentList" 2 "f[39]" "f[175]";
	setAttr ".ix" -type "matrix" 0.42637847511896398 0 0 0 0 0.42637847511896398 0 0
		 0 0 0.37434141994976561 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.29357177 0.49971426 -0.087904714 ;
	setAttr ".rs" 37825;
	setAttr ".lt" -type "double3" 2.4980018054066023e-017 -3.7747582837255325e-017 0.15887988895635577 ;
	setAttr ".kft" no;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.3275883468663105 0.4591592155722839 -0.15243848524937245 ;
	setAttr ".cbx" -type "double3" -0.25955518046564807 0.54026926914470963 -0.023370934641250812 ;
createNode polyTweak -n "polyTweak8";
	setAttr ".uopa" yes;
	setAttr -s 13 ".tk";
	setAttr ".tk[157]" -type "float3" 0 0 2.3841858e-007 ;
	setAttr ".tk[159]" -type "float3" 15.913901 -18.217976 0 ;
	setAttr ".tk[160]" -type "float3" -5.9604645e-008 0 -2.3841858e-007 ;
	setAttr ".tk[161]" -type "float3" 15.913901 -18.217976 0 ;
	setAttr ".tk[162]" -type "float3" 15.913901 -18.217976 0 ;
	setAttr ".tk[178]" -type "float3" -5.1028862 -2.2675767 9.9177313 ;
	setAttr ".tk[179]" -type "float3" 20.511637 -13.833442 12.183691 ;
	setAttr ".tk[180]" -type "float3" -4.0684748 -2.6002331 10.794393 ;
	setAttr ".tk[181]" -type "float3" 21.14756 -14.248998 12.890878 ;
	setAttr ".tk[182]" -type "float3" -3.2946427 -2.8442423 -4.7251092e-013 ;
	setAttr ".tk[183]" -type "float3" 26.326077 -14.772902 3.7056458 ;
	setAttr ".tk[184]" -type "float3" 0.33195236 2.2720096 -4.6895821e-013 ;
	setAttr ".tk[185]" -type "float3" 22.984135 -9.1750383 1.0148891 ;
createNode polyExtrudeFace -n "polyExtrudeFace8";
	setAttr ".ics" -type "componentList" 2 "f[39]" "f[175]";
	setAttr ".ix" -type "matrix" 0.42637847511896398 0 0 0 0 0.42637847511896398 0 0
		 0 0 0.37434141994976561 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.42629242 0.41716376 -0.1113584 ;
	setAttr ".rs" 45244;
	setAttr ".lt" -type "double3" 0.1858447579648678 -3.552713678800501e-017 0.29328616123366902 ;
	setAttr ".kft" no;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.4843223183703031 0.3869206396778172 -0.18623479930504075 ;
	setAttr ".cbx" -type "double3" -0.36826248259925853 0.44740690511706827 -0.036482016394319645 ;
createNode polyTweak -n "polyTweak9";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[186:193]" -type "float3"  -3.78557801 -4.6977973 0 0.26497194
		 -1.77169931 5.6843419e-014 -1.60201156 -2.80935788 0 2.39372778 0.55595744 0 -0.095987923
		 -0.71667147 0 3.66729021 4.3680315 0 -0.21296202 1.74987912 -4.5474735e-013 3.78557801
		 4.6977973 -4.5474735e-013;
createNode polyExtrudeFace -n "polyExtrudeFace9";
	setAttr ".ics" -type "componentList" 2 "f[39]" "f[175]";
	setAttr ".ix" -type "matrix" 0.42637847511896398 0 0 0 0 0.42637847511896398 0 0
		 0 0 0.37434141994976561 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.44180465 0.077836454 -0.17248701 ;
	setAttr ".rs" 63626;
	setAttr ".lt" -type "double3" 0.30737506018816779 -1.0214051826551441e-016 0.22833807053254496 ;
	setAttr ".kft" no;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.5291534425490656 0.050579261279575731 -0.27152116563354489 ;
	setAttr ".cbx" -type "double3" -0.35445586404755863 0.10509364761729105 -0.073452844051746236 ;
createNode polyExtrudeFace -n "polyExtrudeFace10";
	setAttr ".ics" -type "componentList" 3 "f[3]" "f[59]" "f[98]";
	setAttr ".ix" -type "matrix" 0.42637847511896398 0 0 0 0 0.42637847511896398 0 0
		 0 0 0.37434141994976561 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.19587837 -0.19981457 0.1169817 ;
	setAttr ".rs" 35240;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.285162140159401 -0.28290608040713311 0.046792677493720708 ;
	setAttr ".cbx" -type "double3" -0.106594618779741 -0.11672306750210421 0.18717070997488283 ;
createNode polyTweak -n "polyTweak10";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk[194:209]" -type "float3"  -0.81660765 -8.98919487 -1.4921397e-013
		 1.9113152 -4.3912611 -1.4921397e-013 0.52139032 -6.20530558 -2.9842795e-013 3.0083289146
		 -1.19969201 -2.9842795e-013 -0.68991971 2.020216227 -5.968559e-013 0.83607036 8.61408424
		 -5.968559e-013 -1.8559761 4.39093208 -5.968559e-013 0.8116048 8.98811817 -5.968559e-013
		 -0.071231805 -9.82374382 -1.9184654e-013 2.329633 -6.094424248 -1.9184654e-013 1.12236166
		 -7.55627108 -1.9184654e-013 3.33578491 -3.48166037 -1.9184654e-013 -2.85735393 3.83150053
		 -3.8369308e-013 -1.39250386 9.25197124 -3.8369308e-013 -3.75227547 5.83228016 -3.8369308e-013
		 -1.40146089 9.56280804 -3.8369308e-013;
createNode polyExtrudeFace -n "polyExtrudeFace11";
	setAttr ".ics" -type "componentList" 3 "f[3]" "f[59]" "f[98]";
	setAttr ".ix" -type "matrix" 0.42637847511896398 0 0 0 0 0.42637847511896398 0 0
		 0 0 0.37434141994976561 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.28041869 -0.30242637 0.1169817 ;
	setAttr ".rs" 59307;
	setAttr ".ls" -type "double3" 0.58333333094019824 0.58333333094019824 0.58333333094019824 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.36970245983159006 -0.38551787687538186 0.046792677493720708 ;
	setAttr ".cbx" -type "double3" -0.19113493845193016 -0.219334855837829 0.18717070997488283 ;
createNode polyTweak -n "polyTweak11";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[210:217]" -type "float3"  -19.82753181 -24.065893173
		 0 -19.82753181 -24.065893173 0 -19.82753181 -24.065893173 0 -19.82753181 -24.065893173
		 0 -19.82753181 -24.065893173 0 -19.82753181 -24.065893173 0 -19.82753181 -24.065893173
		 0 -19.82753181 -24.065893173 0;
createNode polyExtrudeFace -n "polyExtrudeFace12";
	setAttr ".ics" -type "componentList" 3 "f[3]" "f[59]" "f[98]";
	setAttr ".ix" -type "matrix" 0.42637847511896398 0 0 0 0 0.42637847511896398 0 0
		 0 0 0.37434141994976561 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.27642128 -0.29979983 0.11770951 ;
	setAttr ".rs" 48070;
	setAttr ".lt" -type "double3" 3.552713678800501e-017 8.8817841970012525e-018 -0.061929931393069258 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.3305153073197849 -0.3451603565674165 0.076472683921121332 ;
	setAttr ".cbx" -type "double3" -0.22232723431448631 -0.25443933490827625 0.15894633452292237 ;
createNode polyTweak -n "polyTweak12";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[218:225]" -type "float3"  0.39490771 -0.68889505 -0.52982521
		 -0.80248964 -1.56435955 -3.68613553 -1.16598344 -3.053469181 -7.68822289 -0.084048837
		 -2.2624228 -4.83627272 1.46360469 2.860888 9.17560482 0.035281688 1.81658399 5.41058588
		 -0.32823068 0.32740417 1.4083066 0.98462969 1.28728938 4.86897039;
createNode polyExtrudeFace -n "polyExtrudeFace13";
	setAttr ".ics" -type "componentList" 5 "f[1]" "f[7]" "f[56]" "f[78]" "f[94]";
	setAttr ".ix" -type "matrix" 0.42637847511896398 0 0 0 0 0.42637847511896398 0 0
		 0 0 0.37434141994976561 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.30893642 0.12307701 0.12832773 ;
	setAttr ".rs" 59076;
	setAttr ".lt" -type "double3" -0.018965918208500535 -8.3821838359199319e-017 0.026074698192244387 ;
	setAttr ".ls" -type "double3" 0.65000000072363828 0.65000000072363828 0.65000000072363828 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.40171714905271894 -0.043258985298650264 0.0056998449375037516 ;
	setAttr ".cbx" -type "double3" -0.21615565701948097 0.28941301046245355 0.25095560680315493 ;
createNode polyTweak -n "polyTweak13";
	setAttr ".uopa" yes;
	setAttr -s 45 ".tk";
	setAttr ".tk[22]" -type "float3" 0 0 -12.974965 ;
	setAttr ".tk[23]" -type "float3" 0 0 -21.738928 ;
	setAttr ".tk[24]" -type "float3" 0 0 -12.974965 ;
	setAttr ".tk[32]" -type "float3" 0 0 -12.974965 ;
	setAttr ".tk[33]" -type "float3" 0 0 -12.974965 ;
	setAttr ".tk[34]" -type "float3" 0 0 -12.974965 ;
	setAttr ".tk[53]" -type "float3" 7.9579096 10.376168 0 ;
	setAttr ".tk[66]" -type "float3" 15.076077 0 0 ;
	setAttr ".tk[108]" -type "float3" 12.247735 3.0777864 -5.6271529 ;
	setAttr ".tk[109]" -type "float3" -14.220445 3.0777864 -5.6271529 ;
	setAttr ".tk[110]" -type "float3" -14.64643 -3.0777864 5.6271529 ;
	setAttr ".tk[111]" -type "float3" 14.64643 -3.0777864 5.6271529 ;
	setAttr ".tk[112]" -type "float3" -15.468708 2.7215505 -4.63343 ;
	setAttr ".tk[113]" -type "float3" 13.516638 2.7215505 -4.63343 ;
	setAttr ".tk[114]" -type "float3" -15.890216 -2.7215505 4.63343 ;
	setAttr ".tk[115]" -type "float3" 15.890216 -2.7215505 4.63343 ;
	setAttr ".tk[116]" -type "float3" -17.880676 1.9186245 -6.0633745 ;
	setAttr ".tk[117]" -type "float3" 15.811237 1.9186245 -6.0633745 ;
	setAttr ".tk[118]" -type "float3" -18.327515 -1.9186252 6.0633736 ;
	setAttr ".tk[119]" -type "float3" 18.327515 -1.9186252 6.0633736 ;
	setAttr ".tk[120]" -type "float3" -18.304628 2.8098662 -5.1486888 ;
	setAttr ".tk[121]" -type "float3" 16.34823 2.8098662 -5.1486888 ;
	setAttr ".tk[122]" -type "float3" -18.72706 -2.8098662 5.1486888 ;
	setAttr ".tk[123]" -type "float3" 18.727062 -2.8098662 5.1486888 ;
	setAttr ".tk[124]" -type "float3" 18.69647 0 0 ;
	setAttr ".tk[125]" -type "float3" 18.69647 0 0 ;
	setAttr ".tk[126]" -type "float3" 18.69647 0 0 ;
	setAttr ".tk[127]" -type "float3" 18.69647 0 0 ;
	setAttr ".tk[128]" -type "float3" 18.69647 0 0 ;
	setAttr ".tk[129]" -type "float3" 18.69647 0 0 ;
	setAttr ".tk[130]" -type "float3" 18.69647 0 0 ;
	setAttr ".tk[131]" -type "float3" 18.69647 0 0 ;
	setAttr ".tk[132]" -type "float3" 18.69647 0 0 ;
	setAttr ".tk[133]" -type "float3" 18.69647 0 0 ;
	setAttr ".tk[134]" -type "float3" 18.69647 0 0 ;
	setAttr ".tk[135]" -type "float3" 18.69647 0 0 ;
	setAttr ".tk[136]" -type "float3" 18.69647 0 0 ;
	setAttr ".tk[137]" -type "float3" 18.69647 0 0 ;
	setAttr ".tk[138]" -type "float3" 18.69647 0 0 ;
	setAttr ".tk[139]" -type "float3" 18.69647 0 0 ;
	setAttr ".tk[140]" -type "float3" 18.69647 0 0 ;
	setAttr ".tk[141]" -type "float3" 18.69647 0 0 ;
	setAttr ".tk[142]" -type "float3" 18.69647 0 0 ;
	setAttr ".tk[143]" -type "float3" 18.69647 0 0 ;
	setAttr ".tk[154]" -type "float3" 15.076077 0 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace14";
	setAttr ".ics" -type "componentList" 5 "f[1]" "f[7]" "f[56]" "f[78]" "f[94]";
	setAttr ".ix" -type "matrix" 0.42637847511896398 0 0 0 0 0.42637847511896398 0 0
		 0 0 0.37434141994976561 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.34127009 0.12563589 0.13196838 ;
	setAttr ".rs" 49261;
	setAttr ".lt" -type "double3" -0.059255647284826574 1.7763568394002505e-017 1.1102230246251566e-017 ;
	setAttr ".ls" -type "double3" 0.41666668617800062 0.41666668617800062 0.41666668617800062 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.42419990205551855 -0.028417618954408485 0.013984279160935578 ;
	setAttr ".cbx" -type "double3" -0.25834032776312155 0.27968940691812033 0.24995249449138005 ;
createNode polyExtrudeFace -n "polyExtrudeFace15";
	setAttr ".ics" -type "componentList" 5 "f[1]" "f[7]" "f[56]" "f[78]" "f[94]";
	setAttr ".ix" -type "matrix" 0.42637847511896398 0 0 0 0 0.42637847511896398 0 0
		 0 0 0.37434141994976561 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.39589691 0.077485658 0.14254317 ;
	setAttr ".rs" 56705;
	setAttr ".lt" -type "double3" -1.6098233857064769e-017 3.0531133177191807e-017 0.011352543816974659 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.46485103901055008 -0.088026334224080835 0.031932382411514956 ;
	setAttr ".cbx" -type "double3" -0.32694275457984112 0.24299765434036755 0.25315395443787425 ;
createNode polyTweak -n "polyTweak14";
	setAttr ".uopa" yes;
	setAttr -s 28 ".tk";
	setAttr ".tk[238]" -type "float3" 0 -7.4703875 0 ;
	setAttr ".tk[239]" -type "float3" 0 -7.4703875 0 ;
	setAttr ".tk[240]" -type "float3" -2.2883208 -5.030242 5.5605869 ;
	setAttr ".tk[241]" -type "float3" -2.2883208 -5.030242 5.5605869 ;
	setAttr ".tk[242]" -type "float3" 0 -7.4703875 0 ;
	setAttr ".tk[243]" -type "float3" 0 -7.4703875 0 ;
	setAttr ".tk[244]" -type "float3" -2.2883208 -5.030242 5.5605869 ;
	setAttr ".tk[245]" -type "float3" -2.2883208 -5.030242 5.5605869 ;
	setAttr ".tk[254]" -type "float3" -2.8774252 1.2202806 10.398412 ;
	setAttr ".tk[255]" -type "float3" -2.8774252 1.2202806 10.398412 ;
	setAttr ".tk[256]" -type "float3" -2.8774252 1.2202806 10.398412 ;
	setAttr ".tk[257]" -type "float3" -2.8774252 1.2202806 10.398412 ;
	setAttr ".tk[258]" -type "float3" -2.8774252 -17.751097 19.618525 ;
	setAttr ".tk[259]" -type "float3" -2.8774252 -17.751097 19.618525 ;
	setAttr ".tk[260]" -type "float3" -2.8774252 -17.751097 19.618525 ;
	setAttr ".tk[261]" -type "float3" -2.8774252 -17.751097 19.618525 ;
	setAttr ".tk[262]" -type "float3" -2.8774252 -17.751097 19.618525 ;
	setAttr ".tk[263]" -type "float3" -2.8774252 -17.751097 19.618525 ;
	setAttr ".tk[264]" -type "float3" -2.8774252 -17.751097 19.618525 ;
	setAttr ".tk[265]" -type "float3" -2.8774252 -17.751097 19.618525 ;
	setAttr ".tk[266]" -type "float3" -2.8774252 0.56005931 13.030252 ;
	setAttr ".tk[267]" -type "float3" -2.8774252 0.56005931 13.030252 ;
	setAttr ".tk[268]" -type "float3" -2.8774252 0.56005931 13.030252 ;
	setAttr ".tk[269]" -type "float3" -2.8774252 0.56005931 13.030252 ;
	setAttr ".tk[270]" -type "float3" -2.8774252 0.56005931 13.030252 ;
	setAttr ".tk[271]" -type "float3" -2.8774252 0.56005931 13.030252 ;
	setAttr ".tk[272]" -type "float3" -2.8774252 0.56005931 13.030252 ;
	setAttr ".tk[273]" -type "float3" -2.8774252 0.56005931 13.030252 ;
createNode polyExtrudeFace -n "polyExtrudeFace16";
	setAttr ".ics" -type "componentList" 1 "f[64]";
	setAttr ".ix" -type "matrix" 0.42637847511896398 0 0 0 0 0.42637847511896398 0 0
		 0 0 0.37434141994976561 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.25162888 0.057346553 0.070189022 ;
	setAttr ".rs" 59283;
	setAttr ".ls" -type "double3" 0.35000000763073563 0.35000000763073563 0.35000000763073563 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.1827642290727674 -0.0011273746996679163 0.046792677493720708 ;
	setAttr ".cbx" -type "double3" 0.32049353291493676 0.11582047932421193 0.093585354987441416 ;
createNode polyTweak -n "polyTweak15";
	setAttr ".uopa" yes;
	setAttr -s 54 ".tk";
	setAttr ".tk[68]" -type "float3" 4.8047137 0 0 ;
	setAttr ".tk[69]" -type "float3" -4.8047137 0 0 ;
	setAttr ".tk[70]" -type "float3" -3.645611 -10.146781 -15.049338 ;
	setAttr ".tk[71]" -type "float3" 3.6456094 -10.146781 -15.049338 ;
	setAttr ".tk[72]" -type "float3" -5.131794 0.9492566 -1.7468083 ;
	setAttr ".tk[73]" -type "float3" 4.5378613 0.9492566 -1.7468083 ;
	setAttr ".tk[76]" -type "float3" -5.2600379 -0.9492566 1.7468084 ;
	setAttr ".tk[77]" -type "float3" 5.2600379 -0.9492566 1.7468084 ;
	setAttr ".tk[92]" -type "float3" -7.31218 -14.333244 -7.3454638 ;
	setAttr ".tk[93]" -type "float3" 7.7314849 -14.333244 -7.3454638 ;
	setAttr ".tk[202]" -type "float3" 9.6744671 -3.1803286 -3.9510381 ;
	setAttr ".tk[203]" -type "float3" -1.8994147 1.6670827 -6.1879158 ;
	setAttr ".tk[204]" -type "float3" 2.7687793 -0.97448969 6.1879144 ;
	setAttr ".tk[205]" -type "float3" -9.6744671 3.1803286 4.1183362 ;
	setAttr ".tk[206]" -type "float3" 8.2371807 1.0246028 -3.6268895 ;
	setAttr ".tk[207]" -type "float3" -7.3865538 2.4121251 -7.238915 ;
	setAttr ".tk[208]" -type "float3" 3.1698952 -2.4121251 7.2389154 ;
	setAttr ".tk[209]" -type "float3" -8.2371807 2.2359953 6.2496629 ;
	setAttr ".tk[210]" -type "float3" 9.1960077 5.7564416 -1.557507 ;
	setAttr ".tk[211]" -type "float3" 2.3011181 12.776386 -1.557507 ;
	setAttr ".tk[212]" -type "float3" 1.5638039 11.653145 -4.6725211 ;
	setAttr ".tk[213]" -type "float3" 7.7938337 5.3101239 -4.6725211 ;
	setAttr ".tk[214]" -type "float3" 12.000355 6.6490765 4.6725211 ;
	setAttr ".tk[215]" -type "float3" 3.7757509 15.022856 4.6725211 ;
	setAttr ".tk[216]" -type "float3" 3.038435 13.899624 1.557507 ;
	setAttr ".tk[217]" -type "float3" 10.598186 6.202755 1.557507 ;
	setAttr ".tk[218]" -type "float3" -0.46998453 0.7489984 2.3577709 ;
	setAttr ".tk[219]" -type "float3" -4.1936097 5.0621319 3.1443276 ;
	setAttr ".tk[220]" -type "float3" -4.7557287 4.6147614 1.6764752 ;
	setAttr ".tk[221]" -type "float3" -1.3911647 0.71753442 0.96576667 ;
	setAttr ".tk[222]" -type "float3" 1.5674334 0.87486738 5.5178351 ;
	setAttr ".tk[223]" -type "float3" -2.8743124 6.0198154 6.4560814 ;
	setAttr ".tk[224]" -type "float3" -3.436461 5.5724273 4.9881649 ;
	setAttr ".tk[225]" -type "float3" 0.64622849 0.84338909 4.1257634 ;
	setAttr ".tk[274]" -type "float3" -2.1868677 -3.3175712 -1.0755327 ;
	setAttr ".tk[275]" -type "float3" -4.639657 -6.5010424 -1.0755327 ;
	setAttr ".tk[276]" -type "float3" -3.9332819 -7.669795 1.0751611 ;
	setAttr ".tk[277]" -type "float3" -1.2187647 -4.1465955 1.0751611 ;
	setAttr ".tk[278]" -type "float3" -0.60083705 -6.9327669 -1.3522588 ;
	setAttr ".tk[279]" -type "float3" 0.41836196 -7.0757985 0.61596 ;
	setAttr ".tk[280]" -type "float3" -0.60083705 -10.095835 -1.3522588 ;
	setAttr ".tk[281]" -type "float3" 0.41836196 -10.576426 0.61596 ;
	setAttr ".tk[282]" -type "float3" -0.59427863 -6.1443486 -1.3395888 ;
	setAttr ".tk[283]" -type "float3" 0.41180307 -6.2855363 0.60328996 ;
	setAttr ".tk[284]" -type "float3" -0.59427863 -9.9331074 -1.3395888 ;
	setAttr ".tk[285]" -type "float3" 0.41180307 -10.407511 0.60328996 ;
	setAttr ".tk[286]" -type "float3" -3.2128968 -4.8334484 -3.3615096 ;
	setAttr ".tk[287]" -type "float3" -2.2247186 -5.2994089 -1.453205 ;
	setAttr ".tk[288]" -type "float3" -4.8109465 -8.1685991 -3.3615096 ;
	setAttr ".tk[289]" -type "float3" -3.9519582 -8.9041691 -1.453205 ;
	setAttr ".tk[290]" -type "float3" -4.3323927 -4.4413958 -1.426442 ;
	setAttr ".tk[291]" -type "float3" -3.3073201 -4.9247565 0.55313128 ;
	setAttr ".tk[292]" -type "float3" -5.7221351 -7.3417621 -1.426442 ;
	setAttr ".tk[293]" -type "float3" -4.8310528 -8.1047974 0.55313128 ;
createNode polySphere -n "polySphere1";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".r" 0.45280000000000004;
	setAttr ".sa" 6;
	setAttr ".sh" 6;
createNode polyExtrudeFace -n "polyExtrudeFace20";
	setAttr ".ics" -type "componentList" 1 "f[0:35]";
	setAttr ".ix" -type "matrix" 0.61833463222538776 0 0 0 0 0.61833463222538776 0 0
		 0 0 0.61833463222538776 0 70.185527569111116 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.70185524 0 -1.1793798e-008 ;
	setAttr ".rs" 60573;
	setAttr ".lt" -type "double3" -3.6619023666904481e-018 3.552713678800501e-017 0.090303408097642118 ;
	setAttr ".ls" -type "double3" 0.016666656636422396 0.016666656636422396 0.016666656636422396 ;
	setAttr ".kft" no;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.42187336176748574 -0.27998191392362543 -0.24247148261192736 ;
	setAttr ".cbx" -type "double3" 0.98183718961473665 0.27998191392362543 0.24247145902433304 ;
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n"
		+ "                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n"
		+ "                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n"
		+ "            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n"
		+ "            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n"
		+ "                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n"
		+ "                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n"
		+ "                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n"
		+ "            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n"
		+ "            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n"
		+ "            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n"
		+ "                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n"
		+ "                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n"
		+ "                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n"
		+ "            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n"
		+ "            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n"
		+ "            -motionTrails 1\n            -clipGhosts 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n"
		+ "                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 1\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n"
		+ "                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n"
		+ "                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n"
		+ "            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n"
		+ "            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -shadows 0\n            $editorName;\n"
		+ "modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -showShapes 0\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n"
		+ "                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n"
		+ "                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n"
		+ "            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n"
		+ "                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n"
		+ "                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n"
		+ "                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n"
		+ "                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n"
		+ "                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n"
		+ "                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n"
		+ "                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n"
		+ "                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n"
		+ "                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n"
		+ "                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n"
		+ "                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n"
		+ "                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n"
		+ "                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\tscriptedPanel -e -to $panelName;\n"
		+ "\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -ignoreAssets 1\n"
		+ "                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -island 0\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n"
		+ "                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -island 0\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 8192\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 8192\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 24 -ast 1 -aet 48 ";
	setAttr ".st" 6;
createNode file -n "file1";
	setAttr ".ftn" -type "string" "C:/Users/Garcia.491/Documents/maya/projects/Heart/images/HeartTexture.png";
createNode place2dTexture -n "place2dTexture1";
createNode blinn -n "HeartCenter";
createNode shadingEngine -n "blinn2SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
createNode polySoftEdge -n "polySoftEdge2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 0.42637847511896398 0 0 0 0 0.42637847511896398 0 0
		 0 0 0.37434141994976561 0 0 0 0 1;
	setAttr ".a" 0;
createNode polyTweak -n "polyTweak18";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[294:297]" -type "float3"  4.37443829 0 0 4.37443972
		 4.7683716e-007 0 4.37444019 -4.7683716e-007 0 4.37443733 -2.3841858e-007 0;
createNode polyCylProj -n "polyCylProj1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:295]";
	setAttr ".ix" -type "matrix" 0.42440685981913062 -0.040956335080641504 0 0 0.040956335080641504 0.42440685981913062 0 0
		 0 0 0.37434141994976561 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.075631027221679692 0.10006376266479493 -0.026972332000732423 ;
	setAttr ".ps" -type "double2" 3.3535901367140468 1.0084923934936525 ;
	setAttr ".r" 0.89625595092773436;
createNode polyTweak -n "polyTweak19";
	setAttr ".uopa" yes;
	setAttr -s 140 ".tk";
	setAttr ".tk[0]" -type "float3" 7.8230715 2.2393005 -6.7012477 ;
	setAttr ".tk[1]" -type "float3" -7.0755806 8.2993679 -6.701251 ;
	setAttr ".tk[2]" -type "float3" 7.8230715 -6.0463905 -6.7012477 ;
	setAttr ".tk[3]" -type "float3" 0.19387534 -8.5218601 -28.699785 ;
	setAttr ".tk[4]" -type "float3" 7.8230715 -6.0463905 6.6776414 ;
	setAttr ".tk[5]" -type "float3" 0.19387534 -8.5218601 1.9249408 ;
	setAttr ".tk[6]" -type "float3" 7.8230715 2.2393005 6.6776414 ;
	setAttr ".tk[7]" -type "float3" -6.549159 17.330606 -3.6542969 ;
	setAttr ".tk[8]" -type "float3" -5.555841 -1.1447953 -6.701251 ;
	setAttr ".tk[9]" -type "float3" 8.8839035 -1.1447953 -6.7012477 ;
	setAttr ".tk[10]" -type "float3" 8.8839035 -1.1447953 6.6776414 ;
	setAttr ".tk[11]" -type "float3" -5.555841 -15.027714 -17.242006 ;
	setAttr ".tk[12]" -type "float3" -7.3456755 4.2490945 -6.701251 ;
	setAttr ".tk[13]" -type "float3" 8.8839035 0.42021859 -6.7012477 ;
	setAttr ".tk[14]" -type "float3" 8.8839035 0.42021859 6.6776414 ;
	setAttr ".tk[15]" -type "float3" 8.8272905 4.2490945 -9.288538 ;
	setAttr ".tk[16]" -type "float3" -3.6565552 -3.832396 -14.284719 ;
	setAttr ".tk[17]" -type "float3" 8.8839035 -3.832396 -6.7012477 ;
	setAttr ".tk[18]" -type "float3" 8.8839035 -3.832396 6.6776414 ;
	setAttr ".tk[19]" -type "float3" -3.6565552 -3.832396 2.8104866 ;
	setAttr ".tk[20]" -type "float3" 4.0084867 -8.5218601 -20.916344 ;
	setAttr ".tk[21]" -type "float3" 4.0084867 -8.5218601 -7.5373626 ;
	setAttr ".tk[22]" -type "float3" 2.0832629 -3.832396 22.066496 ;
	setAttr ".tk[23]" -type "float3" 1.1336221 -1.1447953 9.586091 ;
	setAttr ".tk[24]" -type "float3" 0.23869787 2.8959565 8.4135723 ;
	setAttr ".tk[25]" -type "float3" -0.46239316 4.7119417 6.6776414 ;
	setAttr ".tk[26]" -type "float3" -0.46239316 8.5098772 -6.7012477 ;
	setAttr ".tk[27]" -type "float3" 0.23869787 2.8959565 -10.372112 ;
	setAttr ".tk[28]" -type "float3" 1.1336221 -1.1447953 -17.955606 ;
	setAttr ".tk[29]" -type "float3" 2.0832629 -3.832396 -17.955606 ;
	setAttr ".tk[30]" -type "float3" 5.9157858 -8.5218601 -6.7012477 ;
	setAttr ".tk[31]" -type "float3" 5.9157858 -8.5218601 6.6776414 ;
	setAttr ".tk[32]" -type "float3" 4.9531798 -3.832396 22.066496 ;
	setAttr ".tk[33]" -type "float3" 4.4783511 -1.1447953 8.4135723 ;
	setAttr ".tk[34]" -type "float3" 4.0308886 2.2193878 8.4135723 ;
	setAttr ".tk[35]" -type "float3" 4.4783511 5.6447105 6.6776414 ;
	setAttr ".tk[36]" -type "float3" 4.4783511 5.6447105 -6.7012477 ;
	setAttr ".tk[37]" -type "float3" 4.0308886 2.2193878 -17.955606 ;
	setAttr ".tk[38]" -type "float3" 4.4783511 -1.1447953 -17.955606 ;
	setAttr ".tk[39]" -type "float3" 4.9531798 -3.832396 -10.372112 ;
	setAttr ".tk[40]" -type "float3" -0.051681612 -12.157048 -22.010244 ;
	setAttr ".tk[42]" -type "float3" 8.1127672 -12.157048 -0.011801171 ;
	setAttr ".tk[43]" -type "float3" 10.834265 -8.6248817 -0.011801171 ;
	setAttr ".tk[44]" -type "float3" 12.347919 -5.4657969 -0.011801171 ;
	setAttr ".tk[45]" -type "float3" 12.347919 -1.6309202 -0.011801171 ;
	setAttr ".tk[46]" -type "float3" 12.347919 0.60215604 -0.011801171 ;
	setAttr ".tk[47]" -type "float3" 10.834265 3.1977644 -0.011801171 ;
	setAttr ".tk[48]" -type "float3" 6.0617247 8.0568562 -0.011801171 ;
	setAttr ".tk[49]" -type "float3" -0.98809361 12.844625 -0.011801171 ;
	setAttr ".tk[50]" -type "float3" -21.381557 11.844668 -0.011801171 ;
	setAttr ".tk[51]" -type "float3" -10.809663 6.0655022 -0.011801171 ;
	setAttr ".tk[52]" -type "float3" -8.2558022 -1.6309202 -0.011801171 ;
	setAttr ".tk[53]" -type "float3" -6.6104546 -6.8540201 -0.011801171 ;
	setAttr ".tk[54]" -type "float3" 0.071096644 -10.339461 -25.355047 ;
	setAttr ".tk[55]" -type "float3" 0 0 -16.410572 ;
	setAttr ".tk[62]" -type "float3" 5.2700434 6.8507714 -3.3565357 ;
	setAttr ".tk[63]" -type "float3" -0.72524512 8.8471718 -3.3565357 ;
	setAttr ".tk[64]" -type "float3" -3.3959675 10.956629 0.086397313 ;
	setAttr ".tk[65]" -type "float3" -9.0776863 5.1573033 -3.3565357 ;
	setAttr ".tk[66]" -type "float3" -8.9228497 -1.387857 -3.3565357 ;
	setAttr ".tk[67]" -type "float3" -4.6011629 -4.6491008 -3.3565357 ;
	setAttr ".tk[68]" -type "float3" 0 0 -16.410572 ;
	setAttr ".tk[69]" -type "float3" 0 0 -16.410572 ;
	setAttr ".tk[70]" -type "float3" 0 0 -16.410572 ;
	setAttr ".tk[71]" -type "float3" 0 0 -16.410572 ;
	setAttr ".tk[72]" -type "float3" 0 0 -16.410572 ;
	setAttr ".tk[73]" -type "float3" 0 0 -16.410572 ;
	setAttr ".tk[74]" -type "float3" 0 0 -16.410572 ;
	setAttr ".tk[75]" -type "float3" 0 0 -16.410572 ;
	setAttr ".tk[76]" -type "float3" 0 0 -16.410572 ;
	setAttr ".tk[77]" -type "float3" 0 0 -16.410572 ;
	setAttr ".tk[85]" -type "float3" 5.6658792 7.4538169 -1.6841682 ;
	setAttr ".tk[86]" -type "float3" -0.85667169 9.7559767 -1.6841682 ;
	setAttr ".tk[87]" -type "float3" -9.5871124 10.958345 -1.6841682 ;
	setAttr ".tk[88]" -type "float3" -9.9436712 5.6113901 -1.6841682 ;
	setAttr ".tk[89]" -type "float3" -7.5807896 -1.5093932 -1.6841682 ;
	setAttr ".tk[90]" -type "float3" -5.0734568 -5.057466 -1.6841682 ;
	setAttr ".tk[91]" -type "float3" 0.0097075347 -11.248246 -23.682631 ;
	setAttr ".tk[92]" -type "float3" 0 0 -16.410572 ;
	setAttr ".tk[93]" -type "float3" 0 0 -16.410572 ;
	setAttr ".tk[94]" -type "float3" 0 0 -16.410572 ;
	setAttr ".tk[101]" -type "float3" 4.8741994 6.2477441 -5.0288925 ;
	setAttr ".tk[102]" -type "float3" -0.59381968 9.4186773 -5.0288925 ;
	setAttr ".tk[103]" -type "float3" -2.5587707 10.07031 -1.5859641 ;
	setAttr ".tk[104]" -type "float3" -8.2116785 4.703198 -5.0288925 ;
	setAttr ".tk[105]" -type "float3" -6.2308378 -1.266327 -5.0288925 ;
	setAttr ".tk[106]" -type "float3" -4.1288495 -4.2407551 -5.0288925 ;
	setAttr ".tk[107]" -type "float3" 0.13248578 -9.4306602 -27.027401 ;
	setAttr ".tk[108]" -type "float3" 0 0 -16.410572 ;
	setAttr ".tk[109]" -type "float3" 0 0 -16.410572 ;
	setAttr ".tk[110]" -type "float3" 0 0 -16.410572 ;
	setAttr ".tk[111]" -type "float3" 0 0 -16.410572 ;
	setAttr ".tk[112]" -type "float3" 0 0 -16.410572 ;
	setAttr ".tk[113]" -type "float3" 0 0 -16.410572 ;
	setAttr ".tk[114]" -type "float3" 0 0 -16.410572 ;
	setAttr ".tk[115]" -type "float3" 0 0 -16.410572 ;
	setAttr ".tk[116]" -type "float3" 0 0 -16.410572 ;
	setAttr ".tk[117]" -type "float3" 0 0 -16.410572 ;
	setAttr ".tk[118]" -type "float3" 0 0 -16.410572 ;
	setAttr ".tk[119]" -type "float3" 0 0 -16.410572 ;
	setAttr ".tk[120]" -type "float3" 0 0 -16.410572 ;
	setAttr ".tk[121]" -type "float3" 0 0 -16.410572 ;
	setAttr ".tk[122]" -type "float3" 0 0 -16.410572 ;
	setAttr ".tk[123]" -type "float3" 0 0 -16.410572 ;
	setAttr ".tk[144]" -type "float3" 7.014256 -10.339454 3.3329244 ;
	setAttr ".tk[145]" -type "float3" 9.3286772 -7.3356237 3.3329244 ;
	setAttr ".tk[146]" -type "float3" 10.615909 -4.6491008 3.3329244 ;
	setAttr ".tk[147]" -type "float3" 10.615909 -1.387857 3.3329244 ;
	setAttr ".tk[148]" -type "float3" 10.615909 0.51118875 3.3329282 ;
	setAttr ".tk[149]" -type "float3" 9.3286772 2.7185364 3.3329244 ;
	setAttr ".tk[150]" -type "float3" 5.2700434 6.8507714 3.3329244 ;
	setAttr ".tk[151]" -type "float3" -0.72524512 6.8793144 3.3329244 ;
	setAttr ".tk[152]" -type "float3" -0.45480436 19.103363 -14.589456 ;
	setAttr ".tk[153]" -type "float3" 7.095293 5.1573033 -22.095533 ;
	setAttr ".tk[154]" -type "float3" -8.9228497 -1.387857 3.3329244 ;
	setAttr ".tk[155]" -type "float3" -4.6011629 -4.6491008 3.3329244 ;
	setAttr ".tk[156]" -type "float3" 0.071096644 -10.339454 -10.882078 ;
	setAttr ".tk[157]" -type "float3" 4.699873 -10.339454 3.3329244 ;
	setAttr ".tk[163]" -type "float3" 7.5635233 -11.248252 1.6605664 ;
	setAttr ".tk[164]" -type "float3" 10.081452 -7.9802456 1.6605664 ;
	setAttr ".tk[165]" -type "float3" 11.481918 -5.057466 1.6605664 ;
	setAttr ".tk[166]" -type "float3" 11.481918 -1.5093932 1.6605664 ;
	setAttr ".tk[167]" -type "float3" 11.481918 0.55667251 1.6605664 ;
	setAttr ".tk[168]" -type "float3" 10.081452 2.9581478 1.6605664 ;
	setAttr ".tk[169]" -type "float3" 5.6658792 7.4538169 1.6605664 ;
	setAttr ".tk[170]" -type "float3" -0.85667169 11.760917 1.6605664 ;
	setAttr ".tk[171]" -type "float3" 4.0905266 10.958345 1.6605664 ;
	setAttr ".tk[172]" -type "float3" 9.5046425 5.6113901 1.6605664 ;
	setAttr ".tk[173]" -type "float3" -7.5807896 -1.5093932 1.6605664 ;
	setAttr ".tk[174]" -type "float3" -5.0734568 -5.057466 1.6605664 ;
	setAttr ".tk[175]" -type "float3" 0.0097075347 -11.248252 -12.554467 ;
	setAttr ".tk[211]" -type "float3" 7.2190495 7.7581439 -4.820509 ;
	setAttr ".tk[212]" -type "float3" 6.9218254 7.3054066 -6.0761309 ;
	setAttr ".tk[213]" -type "float3" 9.4330425 4.7486248 -6.0761309 ;
	setAttr ".tk[215]" -type "float3" 7.8134351 8.6636696 -2.3092961 ;
	setAttr ".tk[216]" -type "float3" 7.5162539 8.2109098 -3.5649028 ;
	setAttr ".tk[294]" -type "float3" -8.0065565 -2.4940259 -2.8565619 ;
	setAttr ".tk[295]" -type "float3" -6.4939747 -3.6354568 -2.8565619 ;
	setAttr ".tk[296]" -type "float3" -7.5368805 -2.5365558 -2.2712336 ;
	setAttr ".tk[297]" -type "float3" -6.659308 -3.7783756 -2.2712336 ;
createNode file -n "file2";
	setAttr ".ftn" -type "string" "C:/Users/Garcia.491/Documents/maya/projects/Heart/images/CenterHeartNeedsGlow.jpg";
createNode place2dTexture -n "place2dTexture2";
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :renderPartition;
	setAttr -s 4 ".st";
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultShaderList1;
	setAttr -s 4 ".s";
select -ne :defaultTextureList1;
	setAttr -s 2 ".tx";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 2 ".u";
select -ne :defaultRenderingList1;
select -ne :renderGlobalsList1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :defaultHardwareRenderGlobals;
	setAttr ".fn" -type "string" "im";
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
connectAttr "polyCylProj1.out" "pCubeShape1.i";
connectAttr "polyExtrudeFace20.out" "pSphereShape1.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "blinn1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "blinn2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "blinn1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "blinn2SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "file1.oc" "Heart54.c";
connectAttr "file1.ot" "Heart54.it";
connectAttr "Heart54.oc" "blinn1SG.ss";
connectAttr "pCubeShape1.iog" "blinn1SG.dsm" -na;
connectAttr "blinn1SG.msg" "materialInfo1.sg";
connectAttr "Heart54.msg" "materialInfo1.m";
connectAttr "file1.msg" "materialInfo1.t" -na;
connectAttr "polyCube1.out" "polySplitRing1.ip";
connectAttr "pCubeShape1.wm" "polySplitRing1.mp";
connectAttr "polySplitRing1.out" "polySplitRing2.ip";
connectAttr "pCubeShape1.wm" "polySplitRing2.mp";
connectAttr "polySplitRing2.out" "polySplitRing3.ip";
connectAttr "pCubeShape1.wm" "polySplitRing3.mp";
connectAttr "polyTweak1.out" "polySplitRing4.ip";
connectAttr "pCubeShape1.wm" "polySplitRing4.mp";
connectAttr "polySplitRing3.out" "polyTweak1.ip";
connectAttr "polySplitRing4.out" "polySplitRing5.ip";
connectAttr "pCubeShape1.wm" "polySplitRing5.mp";
connectAttr "polyTweak2.out" "polySplitRing6.ip";
connectAttr "pCubeShape1.wm" "polySplitRing6.mp";
connectAttr "polySplitRing5.out" "polyTweak2.ip";
connectAttr "polyTweak3.out" "polySoftEdge1.ip";
connectAttr "pCubeShape1.wm" "polySoftEdge1.mp";
connectAttr "polySplitRing6.out" "polyTweak3.ip";
connectAttr "polySoftEdge1.out" "polySplitRing7.ip";
connectAttr "pCubeShape1.wm" "polySplitRing7.mp";
connectAttr "polySplitRing7.out" "polyExtrudeFace1.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace1.mp";
connectAttr "polyTweak4.out" "polySplitRing8.ip";
connectAttr "pCubeShape1.wm" "polySplitRing8.mp";
connectAttr "polyExtrudeFace1.out" "polyTweak4.ip";
connectAttr "polySplitRing8.out" "polySplitRing9.ip";
connectAttr "pCubeShape1.wm" "polySplitRing9.mp";
connectAttr "polySplitRing9.out" "polyExtrudeFace2.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace2.mp";
connectAttr "polyTweak5.out" "polyExtrudeFace3.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace3.mp";
connectAttr "polyExtrudeFace2.out" "polyTweak5.ip";
connectAttr "polyTweak6.out" "polyExtrudeFace4.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace4.mp";
connectAttr "polyExtrudeFace3.out" "polyTweak6.ip";
connectAttr "polyTweak7.out" "polySplitRing10.ip";
connectAttr "pCubeShape1.wm" "polySplitRing10.mp";
connectAttr "polyExtrudeFace4.out" "polyTweak7.ip";
connectAttr "polySplitRing10.out" "polyExtrudeFace5.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace5.mp";
connectAttr "polyExtrudeFace5.out" "polySplitRing11.ip";
connectAttr "pCubeShape1.wm" "polySplitRing11.mp";
connectAttr "polySplitRing11.out" "polyExtrudeFace6.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace6.mp";
connectAttr "polyTweak8.out" "polyExtrudeFace7.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace7.mp";
connectAttr "polyExtrudeFace6.out" "polyTweak8.ip";
connectAttr "polyTweak9.out" "polyExtrudeFace8.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace8.mp";
connectAttr "polyExtrudeFace7.out" "polyTweak9.ip";
connectAttr "polyExtrudeFace8.out" "polyExtrudeFace9.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace9.mp";
connectAttr "polyTweak10.out" "polyExtrudeFace10.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace10.mp";
connectAttr "polyExtrudeFace9.out" "polyTweak10.ip";
connectAttr "polyTweak11.out" "polyExtrudeFace11.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace11.mp";
connectAttr "polyExtrudeFace10.out" "polyTweak11.ip";
connectAttr "polyTweak12.out" "polyExtrudeFace12.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace12.mp";
connectAttr "polyExtrudeFace11.out" "polyTweak12.ip";
connectAttr "polyTweak13.out" "polyExtrudeFace13.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace13.mp";
connectAttr "polyExtrudeFace12.out" "polyTweak13.ip";
connectAttr "polyExtrudeFace13.out" "polyExtrudeFace14.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace14.mp";
connectAttr "polyTweak14.out" "polyExtrudeFace15.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace15.mp";
connectAttr "polyExtrudeFace14.out" "polyTweak14.ip";
connectAttr "polyTweak15.out" "polyExtrudeFace16.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace16.mp";
connectAttr "polyExtrudeFace15.out" "polyTweak15.ip";
connectAttr "polySphere1.out" "polyExtrudeFace20.ip";
connectAttr "pSphereShape1.wm" "polyExtrudeFace20.mp";
connectAttr "place2dTexture1.c" "file1.c";
connectAttr "place2dTexture1.tf" "file1.tf";
connectAttr "place2dTexture1.rf" "file1.rf";
connectAttr "place2dTexture1.mu" "file1.mu";
connectAttr "place2dTexture1.mv" "file1.mv";
connectAttr "place2dTexture1.s" "file1.s";
connectAttr "place2dTexture1.wu" "file1.wu";
connectAttr "place2dTexture1.wv" "file1.wv";
connectAttr "place2dTexture1.re" "file1.re";
connectAttr "place2dTexture1.of" "file1.of";
connectAttr "place2dTexture1.r" "file1.ro";
connectAttr "place2dTexture1.n" "file1.n";
connectAttr "place2dTexture1.vt1" "file1.vt1";
connectAttr "place2dTexture1.vt2" "file1.vt2";
connectAttr "place2dTexture1.vt3" "file1.vt3";
connectAttr "place2dTexture1.vc1" "file1.vc1";
connectAttr "place2dTexture1.o" "file1.uv";
connectAttr "place2dTexture1.ofs" "file1.fs";
connectAttr "file2.oc" "HeartCenter.c";
connectAttr "HeartCenter.oc" "blinn2SG.ss";
connectAttr "pSphereShape1.iog" "blinn2SG.dsm" -na;
connectAttr "blinn2SG.msg" "materialInfo2.sg";
connectAttr "HeartCenter.msg" "materialInfo2.m";
connectAttr "file2.msg" "materialInfo2.t" -na;
connectAttr "polyTweak18.out" "polySoftEdge2.ip";
connectAttr "pCubeShape1.wm" "polySoftEdge2.mp";
connectAttr "polyExtrudeFace16.out" "polyTweak18.ip";
connectAttr "polyTweak19.out" "polyCylProj1.ip";
connectAttr "pCubeShape1.wm" "polyCylProj1.mp";
connectAttr "polySoftEdge2.out" "polyTweak19.ip";
connectAttr "place2dTexture2.c" "file2.c";
connectAttr "place2dTexture2.tf" "file2.tf";
connectAttr "place2dTexture2.rf" "file2.rf";
connectAttr "place2dTexture2.mu" "file2.mu";
connectAttr "place2dTexture2.mv" "file2.mv";
connectAttr "place2dTexture2.s" "file2.s";
connectAttr "place2dTexture2.wu" "file2.wu";
connectAttr "place2dTexture2.wv" "file2.wv";
connectAttr "place2dTexture2.re" "file2.re";
connectAttr "place2dTexture2.of" "file2.of";
connectAttr "place2dTexture2.r" "file2.ro";
connectAttr "place2dTexture2.n" "file2.n";
connectAttr "place2dTexture2.vt1" "file2.vt1";
connectAttr "place2dTexture2.vt2" "file2.vt2";
connectAttr "place2dTexture2.vt3" "file2.vt3";
connectAttr "place2dTexture2.vc1" "file2.vc1";
connectAttr "place2dTexture2.o" "file2.uv";
connectAttr "place2dTexture2.ofs" "file2.fs";
connectAttr "blinn1SG.pa" ":renderPartition.st" -na;
connectAttr "blinn2SG.pa" ":renderPartition.st" -na;
connectAttr "Heart54.msg" ":defaultShaderList1.s" -na;
connectAttr "HeartCenter.msg" ":defaultShaderList1.s" -na;
connectAttr "file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "file2.msg" ":defaultTextureList1.tx" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of Heart1.ma
