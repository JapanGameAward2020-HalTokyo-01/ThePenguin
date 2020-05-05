//Maya ASCII 2019 scene
//Name: heropengin_model01.ma
//Last modified: Wed, Apr 29, 2020 02:49:45 PM
//Codeset: 932
requires maya "2019";
requires "mtoa" "4.0.1";
currentUnit -l centimeter -a degree -t ntscf;
fileInfo "application" "maya";
fileInfo "product" "Maya 2019";
fileInfo "version" "2019";
fileInfo "cutIdentifier" "201907021615-48e59968a3";
fileInfo "osv" "Microsoft Windows 10 Technical Preview  (Build 18362)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	rename -uid "C55F34C3-48E6-8A92-2C47-A88A9CBC165A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 58.014649765703119 32.963356359250895 151.0493242692323 ;
	setAttr ".r" -type "double3" -361.53835267772223 -2855.7999999997764 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "47106CB5-4820-0418-EDF6-65805140E4A4";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 174.38194923539788;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 42.18993908263478 46.805408342165691 -0.58157185742856043 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "3EB771D1-4A8A-694A-FA26-63BDF1F98EB6";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 38.952093487627607 1000.1 5.1976639728134053 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "6E9AE866-4E15-CFC8-EEC4-10822FAFC203";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 97.657082476178488;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "86B82E8A-4E4E-083A-85F4-0BAAD5A29A07";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 24.422868252402395 41.258389419649404 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "D85C0010-4BDD-8636-6EA1-4B9E7E543AF6";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 40.57710372986196;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "E7F01334-4ADA-4618-BCAD-D295F302D00B";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 5.2322924600152323 7.1744097486671761 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "A04C99F9-4780-BE05-424F-BA88108EB629";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode joint -n "kotuban";
	rename -uid "0EE80AA5-4805-E900-A556-E6ABB99B283A";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 0.44584617343311567 ;
	setAttr ".bps" -type "matrix" 0.99996972440860898 0.0077814051539935609 0 0 -0.0077814051539935609 0.99996972440860898 0 0
		 0 0 1 0 -7.9734181781532243e-06 12.504307796797764 0.50992584228515625 1;
	setAttr ".radi" 0.88146889690635311;
createNode joint -n "L_reg01" -p "kotuban";
	rename -uid "36FE67D3-4AE3-DDC0-9D56-6593AD1E5F1E";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -90.445846173431491 ;
	setAttr ".bps" -type "matrix" 2.8257778061924199e-14 -1 0 0 1 2.8257778061924199e-14 0 0
		 0 0 1 0 8.4080133438108842 12.569735998088087 0.50992584228515647 1;
	setAttr ".radi" 0.62090412019608432;
createNode joint -n "L_reg02" -p "L_reg01";
	rename -uid "496FC574-4BAF-C87A-6E0C-DA8C5E1AA98F";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 2.8257778061924199e-14 -1 0 0 1 2.8257778061924199e-14 0 0
		 0 0 1 0 8.408013343810973 9.3892602920532209 0.50992584228515669 1;
	setAttr ".radi" 0.87470067211524349;
createNode joint -n "L_foot" -p "L_reg02";
	rename -uid "F63113CC-4A70-BBE0-56F6-7EA9B84113A2";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 89.99999999999838 -89.999999999999261 0 ;
	setAttr ".bps" -type "matrix" -1.1102230246214857e-16 -1.2989609388114335e-14 1 0
		 5.2909066017298927e-17 0.99999999999999978 1.2934098236883071e-14 0 -1 -2.6020852139715215e-18 0 0
		 8.4080133438110387 1.0395576953887922 0.50992584228514737 1;
	setAttr ".radi" 1.361481862227333;
createNode joint -n "L_footfinger" -p "L_foot";
	rename -uid "09545C4C-4E39-F871-008B-95BAC8F63D2E";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" -1.1102230246214857e-16 -1.2989609388114335e-14 1 0
		 5.2909066017298927e-17 0.99999999999999978 1.2934098236883071e-14 0 -1 -2.6020852139715215e-18 0 0
		 8.4080133438111719 1.0395576953888404 7.1796956062316912 1;
	setAttr ".radi" 1.361481862227333;
createNode joint -n "L_footfinger_end" -p "L_footfinger";
	rename -uid "DAAA7F92-479D-C8F3-8DC6-8D95BB490C26";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 10.378421306610104 1.060884065391125e-29 2.8580320457887164e-13 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 89.999999999997613 0 ;
	setAttr ".radi" 0.5;
createNode parentConstraint -n "L_footfinger_parentConstraint1" -p "L_footfinger";
	rename -uid "C9E215C6-4EF8-0653-85FC-C78DC3646668";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "nurbsCircle4W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tor" -type "double3" 0 -90 0 ;
	setAttr ".rst" -type "double3" 6.6697697639465439 1.34781075189494e-13 -1.3322676295501878e-13 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_foot_parentConstraint1" -p "L_foot";
	rename -uid "F29168BE-4410-3D30-850A-C29D7843CCA3";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "nurbsCircle3W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -1.7763568394002505e-15 -5.3290705182007514e-15 
		6.6613381477509392e-16 ;
	setAttr ".tg[0].tor" -type "double3" 3.1805546814638792e-15 -89.999999999999261 
		0 ;
	setAttr ".lr" -type "double3" 4.8130999836458151e-27 7.4424979546246296e-13 7.4106924078099944e-13 ;
	setAttr ".rst" -type "double3" 8.3497025966644287 -1.7053025658242404e-13 -9.3258734068513149e-15 ;
	setAttr ".rsrr" -type "double3" 4.8130999836458151e-27 7.4424979546246296e-13 7.4106924078099944e-13 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_reg02_parentConstraint1" -p "L_reg02";
	rename -uid "AFA9D084-4732-4D7D-0F54-AE8886A4B59B";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "nurbsCircle2W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -1.7763568394002505e-15 -3.5527136788005009e-15 
		5.5511151231257827e-16 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 -89.99999999999838 ;
	setAttr ".rst" -type "double3" 3.1804757060348656 -1.7763568394002505e-15 2.2204460492503131e-16 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_reg01_parentConstraint1" -p "L_reg01";
	rename -uid "4AA552A8-4A4D-6A14-4B63-D3958ED1DCD4";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "nurbsCircle1W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0 0 2.2204460492503131e-16 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 -89.99999999999838 ;
	setAttr ".lr" -type "double3" 0 0 -6.3611093629270335e-15 ;
	setAttr ".rst" -type "double3" 8.4082758827539923 6.0396132539608516e-14 2.2204460492503131e-16 ;
	setAttr ".rsrr" -type "double3" 0 0 -6.3611093629270335e-15 ;
	setAttr -k on ".w0";
createNode joint -n "born01" -p "kotuban";
	rename -uid "F30228CD-4D63-7311-521C-048D4751EB8D";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 89.554153805608621 ;
	setAttr ".bps" -type "matrix" 3.6579064516956139e-10 1.0000000000000002 0 0 -1.0000000000000002 3.6579064516956139e-10 0 0
		 0 0 1 0 -8.0275112850775043e-06 24.460819244384766 0.50992584228515625 1;
	setAttr ".radi" 0.91873075915282565;
createNode joint -n "born02" -p "born01";
	rename -uid "2489615E-4B7F-925D-9290-CEBCEC51A4A2";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 3.6579064516956139e-10 1.0000000000000002 0 0 -1.0000000000000002 3.6579064516956139e-10 0 0
		 0 0 1 0 -8.0216232092844728e-06 40.557662963867188 0.50992584228515603 1;
	setAttr ".radi" 1.1012960063557748;
createNode joint -n "neck" -p "born02";
	rename -uid "EF6B731A-43F5-4974-EAFC-AA8F66B1A6AF";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 5.9262924194335955 2.1659684323882548e-09 1.2224756590696843e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 3.6579064516956139e-10 1.0000000000000002 0 0 -1.0000000000000002 3.6579064516956139e-10 0 0
		 0 0 1 0 -8.0216213953892932e-06 46.483955383300781 0.50992584228515614 1;
	setAttr ".radi" 1.0181204049932098;
createNode joint -n "head" -p "neck";
	rename -uid "97F56CAB-4AFA-45F6-92DF-2DBF7CE5BF4E";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 3.6579064516956139e-10 1.0000000000000002 0 0 -1.0000000000000002 3.6579064516956139e-10 0 0
		 0 0 1 0 -6.135593978685243e-06 57.202911376953331 0.50992584228515614 1;
	setAttr ".radi" 1.5050201356333208;
createNode joint -n "head_end" -p "head";
	rename -uid "482DF879-479A-CEFF-53C3-5F986B3503F7";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 20.133209228515412 2.7334308220569907e-06 -1.110207851035983e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -89.999999999999972 ;
	setAttr ".bps" -type "matrix" 1.0000000000000002 -3.6579020108035154e-10 0 0 3.6579020108035154e-10 1.0000000000000002 0 0
		 0 0 1 0 -8.8616602611492014e-06 77.33612060546875 0.50992584228515603 1;
	setAttr ".radi" 1.5050201356333208;
	setAttr ".liw" yes;
createNode joint -n "joint1" -p "head";
	rename -uid "D2F9D54B-43FF-9437-CEE0-70B9E65EA8B3";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -89.999999979041746 ;
	setAttr ".bps" -type "matrix" 1.0000000000000002 -2.5153490298266126e-17 0 0 2.5153490298266126e-17 1.0000000000000002 0 0
		 0 0 1 0 3.4112665048269687e-07 62.803451538085938 19.737402467505301 1;
	setAttr ".radi" 0.5;
createNode parentConstraint -n "joint1_parentConstraint1" -p "joint1";
	rename -uid "8676DEEF-4F5F-34FB-0473-DD92ADCAF779";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "nurbsCircle14W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 2.541098841762901e-21 0 0 ;
	setAttr ".rst" -type "double3" 5.6005401611326064 -6.4746720039690991e-06 19.227476625220145 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "head_parentConstraint1" -p "head";
	rename -uid "234F716B-46A8-2EFC-6737-D685BCC66F3E";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "nurbsCircle8W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -1.5522725791382308e-16 7.1054273576010019e-15 
		1.1102230246251565e-16 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 89.999999979041746 ;
	setAttr ".rst" -type "double3" 10.71895599365255 -1.8821065228617094e-06 0 ;
	setAttr -k on ".w0";
createNode joint -n "musubime" -p "neck";
	rename -uid "59E1BF24-4386-26B1-3D9A-0FA00FFAAAE1";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 6.4659767150878968 -8.0216214107108825e-06 -16.951438903808594 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -0.89320886547305178 12.566156962701568 -94.098773712209066 ;
	setAttr ".bps" -type "matrix" 0.97354902406419508 -0.069763918455212126 -0.21756675625064681 0
		 0.068084480545313991 0.99756352964699713 -0.015215381267001667 0 0.21809814591721913 -1.4683537416637033e-16 0.97592684087869586 0
		 2.3652091158542801e-09 52.949932098388679 -16.441513061523438 1;
	setAttr ".radi" 0.55652272881079468;
createNode joint -n "L_sukafu01" -p "musubime";
	rename -uid "8DF902A7-421D-AD3A-6C25-1E8495CBEB3E";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 6.5567031602571237 14.134400759227587 29.205749417257241 ;
	setAttr ".bps" -type "matrix" 0.80301491859401353 0.41297056448444858 -0.42967703381126415 0
		 -0.36412140889235889 0.91074437295511024 0.19483399784649413 0 0.47178664680307991 -1.5049513442393344e-15 0.88171274227965313 0
		 1.7610788368527219 52.823734282803088 -16.835075378417972 1;
	setAttr ".radi" 0.69424481423763951;
createNode joint -n "L_sukafu02" -p "L_sukafu01";
	rename -uid "DC6AE1E8-47AB-965D-88C3-0B8A6E1A756A";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" 5.4201197503717822 9.3074176109371696e-15 7.7715611723760928e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -0.015433627067407352 -0.033162981907064404 0.56508911850096388 ;
	setAttr ".bps" -type "matrix" 0.79965765161758851 0.42193263035165818 -0.4272241749409495 0
		 -0.37215038476910195 0.90662718657920915 0.19882463547477805 0 0.47122365318991954 -5.4765805316458784e-13 0.88201375764459966 0
		 6.1135158569673198 55.06208419568744 -19.163976355659567 1;
	setAttr ".radi" 0.94780245426617271;
createNode joint -n "L_sukafu03" -p "L_sukafu02";
	rename -uid "F2EA9C63-458A-7275-31AD-BA9EC808C49C";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 7;
	setAttr ".t" -type "double3" 10.754679572912005 1.3133830291129691e-14 5.026876408184226e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -0.83098841609458729 -1.5437523678126064 3.3410997582711355 ;
	setAttr ".bps" -type "matrix" 0.78902250033472099 0.47388176447845226 -0.39099816784779773 0
		 -0.42460625211082315 0.88058848124126055 0.21041258843902719 0 0.44401917147117215 -9.9409982474364497e-15 0.89601728519379242 0
		 14.713577668141781 59.599834436475462 -23.758635462951176 1;
	setAttr ".radi" 0.99743467423707954;
createNode joint -n "L_sukafu04" -p "L_sukafu03";
	rename -uid "FEABBA4E-4294-B478-C96C-889A919501E5";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" 10.881501488361081 3.5948709493688519e-15 7.7057812843728719e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -0.61038245043726269 -0.95172208602394681 4.3895059186653294 ;
	setAttr ".bps" -type "matrix" 0.76148136744122574 0.53981436977953401 -0.35881272722600882 0
		 -0.48831831305322526 0.84178408524961179 0.23009732496777904 0 0.42625268582930248 -8.4390763967287316e-16 0.90460413873876677 0
		 23.299327179884429 64.756379561954915 -28.013282608333441 1;
	setAttr ".radi" 0.75408119276066055;
createNode joint -n "L_sukafu_end" -p "L_sukafu04";
	rename -uid "7E85300E-4C3F-5F3B-6A6C-8E9BEAF1AD52";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 8.1955411227361559 -3.686847571032739e-16 -5.7331700672387455e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 -25.229980131766549 -32.671003107471392 ;
	setAttr ".radi" 0.75408119276066055;
createNode parentConstraint -n "L_sukafu01_parentConstraint1" -p "L_sukafu01";
	rename -uid "9B687CD7-43EE-863A-D190-0E9B037DC088";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "nurbsCircle15W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -8.8817841970012523e-16 0 -3.5527136788005009e-15 ;
	setAttr ".tg[0].tor" -type "double3" 12.460538664408558 25.447065645599199 27.215629869386603 ;
	setAttr ".lr" -type "double3" -7.951386703658787e-16 -6.659286364314237e-15 -6.1126285284376953e-15 ;
	setAttr ".rst" -type "double3" 1.8089267114003995 0 0 ;
	setAttr ".rsrr" -type "double3" -7.951386703658788e-16 -6.659286364314237e-15 -6.1126285284376953e-15 ;
	setAttr -k on ".w0";
createNode joint -n "R_sukafu01" -p "musubime";
	rename -uid "4E123509-4BB1-075B-BCAE-3F8E1518DEF2";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 160.4136634187459 36.474636081451045 153.09799983963043 ;
	setAttr ".bps" -type "matrix" -0.803012111551066 0.41297807907654116 -0.42967505734514 0
		 0.36412812410278805 0.9107409654793458 0.19483737586801525 0 0.47178624178719297 -2.0100897404021692e-16 -0.8817129589953393 0
		 -1.76108 52.823699999999995 -16.835099999999997 1;
	setAttr ".radi" 0.69424481423763951;
createNode joint -n "R_sukafu02" -p "R_sukafu01";
	rename -uid "0CA62E94-4E3D-C229-0CA7-D58FEAC5DBE9";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" 5.4201424080553409 1.7763568394002505e-15 1.3322676295501878e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0.015572904450977178 0.03346258382883173 0.56440032785273275 ;
	setAttr ".bps" -type "matrix" -0.79966171516969198 0.42192921053356547 -0.42721994638638938 0
		 0.3721486062668079 0.90662877811071219 0.1988207070582689 0 0.47121816194363675 3.9088453826088655e-13 -0.88201669136953487 0
		 -6.1135199999999967 55.062099999999987 -19.164000000000001 1;
	setAttr ".radi" 0.94780245426617271;
createNode joint -n "R_sukafu03" -p "R_sukafu02";
	rename -uid "70A00FC0-4ABB-FC82-BB8C-2C9B2AB5473D";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 7;
	setAttr ".t" -type "double3" 10.754647667701633 2.2648549702353193e-14 2.6645352591003757e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0.83063088238718663 1.5430687581624998 3.3416126770405064 ;
	setAttr ".bps" -type "matrix" -0.78901739884230693 0.47388647621862223 -0.39100275188445655 0
		 0.42460895119237618 0.88058594563909431 0.21041775331519166 0 0.4440256556680377 2.6267407529201663e-15 -0.89601407193669114 0
		 -14.713600000000003 59.599800000000009 -23.758599999999998 1;
	setAttr ".radi" 0.99743467423707954;
createNode joint -n "R_sukafu04" -p "R_sukafu03";
	rename -uid "CF9E1221-4C2E-F370-4F0D-EB92D9B78058";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" 10.881509092952124 1.5987211554602254e-14 -1.1546319456101628e-14 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0.61096169312027226 0.95262100022345142 4.3893197556845056 ;
	setAttr ".bps" -type "matrix" -0.76148452306042302 0.53981599770408162 -0.35880358103311594 0
		 0.48832241490222711 0.84178304130146731 0.23009243899204918 0 0.42624234919057225 1.1842814210128447e-14 -0.90460900932751209 0
		 -23.299299999999995 64.756399999999999 -28.013300000000001 1;
	setAttr ".radi" 0.75408119276066055;
createNode joint -n "R_sukafu_end" -p "R_sukafu04";
	rename -uid "D73B61A4-432F-2027-2A60-0C959454934A";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 8.1955703773440955 -4.8849813083506888e-15 3.1086244689504383e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 179.99999998320305 -25.229325431932676 147.32888612767402 ;
	setAttr ".radi" 0.75408119276066055;
createNode parentConstraint -n "R_sukafu01_parentConstraint1" -p "R_sukafu01";
	rename -uid "3E3458FA-4FC5-9EFD-9BB5-BBA97C0DE6B6";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "nurbsCircle16W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -8.8817841970012523e-16 -7.1054273576010019e-15 
		-7.1054273576010019e-15 ;
	setAttr ".tg[0].tor" -type "double3" 167.53925501046282 25.446940235537717 152.78386464710903 ;
	setAttr ".lr" -type "double3" 1.5902773407317562e-15 1.3119788061037004e-14 -1.5902773407317578e-14 ;
	setAttr ".rst" -type "double3" -1.6200598382762319 -0.23983817945250507 -0.76820034080629185 ;
	setAttr ".rsrr" -type "double3" 1.4312496066585827e-14 1.0138018047164957e-14 9.5416640443905503e-15 ;
	setAttr -k on ".w0";
createNode joint -n "L_kata" -p "born02";
	rename -uid "A198B076-43F5-305B-712D-F0AFC5A7D34B";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 7.1317905385489236e-14 -0.59965320986286585 -89.999999979050102 ;
	setAttr ".bps" -type "matrix" 0.9999452327290278 -1.4608116259103509e-13 0.010465731818217111 0
		 1.4601948122845465e-13 1 0 0 -0.010465731818217111 1.528388635802762e-15 0.99994523272902758 0
		 17.500019073486197 46.368659973144553 1.2142270803451538 1;
	setAttr ".radi" 0.56412066076774281;
createNode joint -n "L_ude01" -p "L_kata";
	rename -uid "5776F88F-4BB3-93A5-5341-DC91C1FBBD93";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 4.6484766750220441 0 ;
	setAttr ".bps" -type "matrix" 0.99750424648922142 -1.4572451707924293e-13 -0.070606502788135087 0
		 1.4601948122845465e-13 1 0 0 0.0706065027881351 -1.0315384519828547e-14 0.9975042464892212 0
		 19.441276550292965 46.368659973144261 1.2345448732375914 1;
	setAttr ".radi" 1.2294261286367369;
createNode joint -n "L_ude02" -p "L_ude01";
	rename -uid "C89A9D4E-4310-3222-85FB-F5AD3700AB12";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0.4507391728933296 0 ;
	setAttr ".bps" -type "matrix" 0.99691793261421613 -1.4563885873220649e-13 -0.078451485850795671 0
		 1.4601948122845465e-13 1 0 0 0.078451485850795685 -1.1461451171247333e-14 0.99691793261421591 0
		 31.234186172485344 46.368659973145 0.17104047536850109 1;
	setAttr ".radi" 1.2031388222887189;
createNode joint -n "L_hand" -p "L_ude02";
	rename -uid "0CFDCC11-4433-B920-E084-9A96A71F3BB5";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 -0.88208261069414695 0 ;
	setAttr ".bps" -type "matrix" 0.9980075255974783 -1.4579804476660863e-13 -0.063094998619533743 0
		 1.4601948122845465e-13 1 0 0 0.063094998619533743 -9.2180354742468116e-15 0.99800752559747807 0
		 43.193878173828132 46.368659973145391 -1.1296000480651842 1;
	setAttr ".radi" 1.271507833004734;
createNode joint -n "L_hand_end" -p "L_hand";
	rename -uid "9AF34956-46B2-D5E4-F579-47839A45EBED";
	setAttr ".uoc" 1;
	setAttr ".oc" 7;
	setAttr ".t" -type "double3" 13.878646535423005 -3.8369307731045385e-13 -0.094128871140597759 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 -3.6174800273583663 0 ;
	setAttr ".radi" 1.271507833004734;
createNode parentConstraint -n "L_hand_parentConstraint1" -p "L_hand";
	rename -uid "FB89E32A-442F-2B58-C10B-DBAAEAC174E3";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "nurbsCircle12W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 1.4210854715202004e-14 -7.1054273576010019e-15 
		2.2204460492503131e-16 ;
	setAttr ".tg[0].tor" -type "double3" 0 3.6174800273583605 0 ;
	setAttr ".lr" -type "double3" 0 1.0933156717530838e-15 0 ;
	setAttr ".rst" -type "double3" 12.024868606302554 2.1387336346379016e-12 -0.35837625387256367 ;
	setAttr ".rsrr" -type "double3" 0 1.0933156717530838e-15 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_ude02_parentConstraint1" -p "L_ude02";
	rename -uid "B18F7007-414D-5133-3E43-F6A00BFD8198";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "nurbsCircle11W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 3.5527136788005009e-15 0 6.6613381477509392e-16 ;
	setAttr ".tg[0].tor" -type "double3" 0 4.4995626380525069 0 ;
	setAttr ".lr" -type "double3" 0 -1.4908850069360236e-15 0 ;
	setAttr ".rst" -type "double3" 11.838567752833832 2.4584778657299466e-12 -0.2281940469148287 ;
	setAttr ".rsrr" -type "double3" 0 -1.4908850069360236e-15 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_ude01_parentConstraint1" -p "L_ude01";
	rename -uid "370177BE-4C58-9B6F-74C8-8D8ED95A1A23";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "nurbsCircle10W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0.24245643615731183 -2.5579538487363607e-13 
		-1.865174681370263e-14 ;
	setAttr ".tg[0].tor" -type "double3" 0 4.0488234651591783 0 ;
	setAttr ".lr" -type "double3" 0 7.9513867036587919e-16 0 ;
	setAttr ".rst" -type "double3" 1.9413638000040585 -7.1054273576010019e-15 2.2204460492503131e-16 ;
	setAttr ".rsrr" -type "double3" 0 7.9513867036587919e-16 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "L_kata_parentConstraint1" -p "L_kata";
	rename -uid "FF25A2B7-4CCC-2C32-9A8D-A7B0F8588CA1";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "nurbsCircle9W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -0.49339485168470532 -0.10481262207030539 0.70430123805999756 ;
	setAttr ".tg[0].tor" -type "double3" 0 -0.59965320986286585 -8.3688513120757724e-12 ;
	setAttr ".lr" -type "double3" 8.7564646074042463e-14 -6.3917957770760108e-27 8.3646297439797548e-12 ;
	setAttr ".rst" -type "double3" 5.8109970156787085 -17.500027092983792 0.70430123805999778 ;
	setAttr ".rsrr" -type "double3" 8.7564646074042463e-14 -6.3917957770760108e-27 8.3646297439797548e-12 ;
	setAttr -k on ".w0";
createNode joint -n "R_kata" -p "born02";
	rename -uid "A0458DF3-447D-7169-6AF3-B7B042BDD9CB";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -1.1441678172715911e-12 -0.59965320986286585 -89.999999979050116 ;
	setAttr ".bps" -type "matrix" 0.9999452327290278 -1.4608116259103509e-13 0.010465731818217111 0
		 1.4601948122845465e-13 1 0 0 -0.010465731818217111 1.528388635802762e-15 0.99994523272902758 0
		 -17.5 46.368700000000018 1.2142299999999999 1;
	setAttr ".radi" 0.56412066076774281;
createNode joint -n "R_ude01" -p "R_kata";
	rename -uid "F2F38434-40FC-FECB-926D-5190C5235FFC";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 2.7787870141010454e-10 176.55084046008955 8.3712199216119764e-12 ;
	setAttr ".bps" -type "matrix" -0.99750425969394485 1.4572459545263281e-13 -0.070606316236122818 0
		 1.4601948122845465e-13 1 0 0 0.070606316236122832 -1.0314277286217753e-14 -0.99750425969394463 0
		 -19.441300000000002 46.368700000000004 1.23454 1;
	setAttr ".radi" 1.2294261286367369;
createNode joint -n "R_ude02" -p "R_ude01";
	rename -uid "6691A7AE-4D3E-E94A-2A6F-B3AE676D9538";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 -0.45075687322113051 0 ;
	setAttr ".bps" -type "matrix" -0.99691792305016969 1.4563894227311849e-13 -0.078451607385294567 0
		 1.4601948122845465e-13 1 0 0 0.078451607385294581 -1.1460389580539583e-14 -0.99691792305016946 0
		 -31.23418045043945 46.368699999999507 0.17103978991508484 1;
	setAttr ".radi" 1.2031388222887189;
createNode joint -n "R_hand" -p "R_ude02";
	rename -uid "B63B9900-4628-964B-D43D-BC8AC9F8685C";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0.88209728143920085 0 ;
	setAttr ".bps" -type "matrix" -0.99800753406119458 1.4579811431484327e-13 -0.063094864744238935 0
		 1.4601948122845465e-13 1 0 0 0.063094864744238949 -9.2169353912444e-15 -0.99800753406119436 0
		 -43.193870544433608 46.368699999999144 -1.1296008825302131 1;
	setAttr ".radi" 1.271507833004734;
createNode joint -n "R_hand_end" -p "R_hand";
	rename -uid "FC7C94D3-42C9-8745-F732-9B8FE8964815";
	setAttr ".uoc" 1;
	setAttr ".oc" 7;
	setAttr ".t" -type "double3" 13.878638840909506 -2.3661073100811336e-12 0.094130143487604026 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 183.61747234155524 0 ;
	setAttr ".radi" 1.271507833004734;
createNode parentConstraint -n "R_hand_parentConstraint1" -p "R_hand";
	rename -uid "12F0D508-4B30-4FE0-D691-61AC465B72D7";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "nurbsCircle12W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 7.1054273576010019e-15 7.1054273576010019e-15 
		6.6613381477509392e-16 ;
	setAttr ".tg[0].tor" -type "double3" 0 176.38252765844476 0 ;
	setAttr ".lr" -type "double3" 0 -3.677516350442191e-15 0 ;
	setAttr ".rst" -type "double3" 12.024866760212362 -2.1103119252074976e-12 0.3583750861049162 ;
	setAttr ".rsrr" -type "double3" 0 -3.677516350442191e-15 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_ude02_parentConstraint1" -p "R_ude02";
	rename -uid "69802D96-4695-AA9E-87DE-58AB36416295";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "nurbsCircle11W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 1.0658141036401503e-14 -7.1054273576010019e-15 
		4.4408920985006262e-16 ;
	setAttr ".tg[0].tor" -type "double3" 0 175.50043037700556 0 ;
	setAttr ".lr" -type "double3" 0 -3.2799470152592518e-15 0 ;
	setAttr ".rst" -type "double3" 11.838538315525231 -2.2168933355715126e-12 0.22819414332658994 ;
	setAttr ".rsrr" -type "double3" 0 -3.2799470152592518e-15 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_ude01_parentConstraint1" -p "R_ude01";
	rename -uid "0E5086F0-400F-226A-5382-748A52F41BE1";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "nurbsCircle10W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -3.5527136788005009e-15 7.1054273576010019e-15 
		0 ;
	setAttr ".tg[0].tor" -type "double3" 0 175.9511872502267 0 ;
	setAttr ".lr" -type "double3" 0 5.9635400277440935e-15 0 ;
	setAttr ".rst" -type "double3" -1.9409811212836345 -2.9842794901924208e-13 0.040626012855431437 ;
	setAttr ".rsrr" -type "double3" 0 5.9635400277440935e-15 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_kata_parentConstraint1" -p "R_kata";
	rename -uid "C66C981C-4DE1-0D91-E4B5-E1B2BEF04668";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "nurbsCircle17W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -3.5527136788005009e-15 7.1054273576010019e-15 
		0 ;
	setAttr ".tg[0].tor" -type "double3" 0 -0.59965320986286585 -8.3688513120757724e-12 ;
	setAttr ".lr" -type "double3" 8.7564646074042463e-14 -6.3917957770760108e-27 8.3646297439797548e-12 ;
	setAttr ".rst" -type "double3" 5.8110370297314944 17.499991980502411 0.70430415771484389 ;
	setAttr ".rsrr" -type "double3" 8.7564646074042463e-14 -6.3917957770760108e-27 8.3646297439797548e-12 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "born02_parentConstraint1" -p "born02";
	rename -uid "1FE9491D-4633-0D36-7C6B-7D8C4259DEA5";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "nurbsCircle7W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -1.1135942157552287e-16 0 1.1102230246251565e-16 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 89.999999979041746 ;
	setAttr ".rst" -type "double3" 16.096843719482422 -9.4368787686548855e-16 -2.2204460492503131e-16 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "born01_parentConstraint1" -p "born01";
	rename -uid "BA17EB98-4EA8-CFCF-7E24-2EBF24E36DE8";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "nurbsCircle6W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -3.8738204809728172e-17 3.5527136788005009e-15 
		0 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 89.999999979041746 ;
	setAttr ".lr" -type "double3" 0 0 1.2722218725854067e-14 ;
	setAttr ".rst" -type "double3" 0.09303840571056729 11.956149457552874 0 ;
	setAttr ".rsrr" -type "double3" 0 0 1.2722218725854067e-14 ;
	setAttr -k on ".w0";
createNode joint -n "R_reg01" -p "kotuban";
	rename -uid "FD85B62A-48AA-EF73-F47F-E9B80F2BDBE3";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -90.445846173433111 ;
	setAttr ".bps" -type "matrix" 5.8113236445223038e-17 -1.0000000000000002 0 0 1.0000000000000002 5.8113236445223038e-17 0 0
		 0 0 1 0 -8.4080299999999948 12.569699999999996 0.5099260000000001 1;
	setAttr ".radi" 0.62090412019608432;
createNode joint -n "R_reg02" -p "R_reg01";
	rename -uid "F7EBCFE7-402C-C331-1869-88BEF5CF91D9";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 5.8113236445223038e-17 -1.0000000000000002 0 0 1.0000000000000002 5.8113236445223038e-17 0 0
		 0 0 1 0 -8.4080299999999983 9.3892600000000002 0.50992599999999999 1;
	setAttr ".radi" 0.87470067211524349;
createNode joint -n "R_foot" -p "R_reg02";
	rename -uid "FE98D0AA-4E13-F3DB-30BC-A79675B2BB27";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 90.000000000000028 -90 0 ;
	setAttr ".bps" -type "matrix" 0 0 1 0 -5.0220244629528575e-16 1.0000000000000002 0 0
		 -1.0000000000000002 -5.0220244629528575e-16 0 0 -8.4080300000002328 1.039559999999998 0.50992599999999999 1;
	setAttr ".radi" 1.361481862227333;
createNode joint -n "R_footfinger" -p "R_foot";
	rename -uid "570CE6E5-46C4-BB43-A001-C2A05A9027A2";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 0 0 1 0 -5.0220244629528575e-16 1.0000000000000002 0 0
		 -1.0000000000000002 -5.0220244629528575e-16 0 0 -8.4080300000002364 1.0395599999999994 7.1796956062316895 1;
	setAttr ".radi" 1.361481862227333;
createNode joint -n "R_footfinger_end" -p "R_footfinger";
	rename -uid "39AAC761-4EA8-F125-3347-53B50E214CB4";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 10.378421306610154 -7.7008982302118056e-08 1.5158246368092589e-13 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.207418282447952e-06 89.999999999997598 0 ;
	setAttr ".radi" 0.5;
createNode parentConstraint -n "R_footfinger_parentConstraint1" -p "R_footfinger";
	rename -uid "EE3B626B-4692-EA27-43CA-1799B4452376";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "nurbsCircle4W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tor" -type "double3" 0 -89.999999999999972 0 ;
	setAttr ".rst" -type "double3" 6.6697696062316894 1.3322676295501878e-15 3.5527136788005009e-15 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_foot_parentConstraint1" -p "R_foot";
	rename -uid "A0A7B225-45C5-FBB4-9EE0-51BEAFBB3A26";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "nurbsCircle3W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 1.7763568394002505e-15 0 0 ;
	setAttr ".tg[0].tor" -type "double3" 2.5444437451708134e-14 -90 0 ;
	setAttr ".lr" -type "double3" -2.5444437451708128e-14 0 0 ;
	setAttr ".rst" -type "double3" 8.3497 -2.3447910280083306e-13 0 ;
	setAttr ".rsrr" -type "double3" -2.5444437451708128e-14 0 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_reg02_parentConstraint1" -p "R_reg02";
	rename -uid "4CCD4E83-4BE0-1416-4107-C481B050F66D";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "nurbsCircle2W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 1.7763568394002505e-15 0 0 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 -90 ;
	setAttr ".rst" -type "double3" 3.1804399999999955 -3.5527136788005009e-15 -1.1102230246251565e-16 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "R_reg01_parentConstraint1" -p "R_reg01";
	rename -uid "569CBE0C-4BEA-C286-312D-6AACBFFDB74F";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "nurbsCircle18W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 1.7763568394002505e-15 0 -1.1102230246251565e-16 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 -90 ;
	setAttr ".lr" -type "double3" 0 0 -1.2722218725854064e-14 ;
	setAttr ".rst" -type "double3" -8.4072586255155048 0.13081644934714198 1.5771484385140866e-07 ;
	setAttr ".rsrr" -type "double3" 0 0 -1.2722218725854064e-14 ;
	setAttr -k on ".w0";
createNode joint -n "o" -p "kotuban";
	rename -uid "450C7836-4432-348F-2942-CA9EA2737B13";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -90.024868043003352 76.081768149872062 -90.469984090544685 ;
	setAttr ".bps" -type "matrix" -0.00010133486384243857 -0.24053689659208879 -0.9706399904748888 0
		 -2.5112063970301156e-05 0.97063999576457127 -0.24053689528123839 0 0.99999999455031485 5.2475385148298415e-16 -0.00010440004974521244 0
		 0.0012410674350746582 12.650611877441403 -20.134767532348626 1;
	setAttr ".radi" 2;
createNode joint -n "o_end" -p "o";
	rename -uid "C640D520-4C07-5B59-A940-EB922C46155F";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 12.325081285557966 1.2271295921803539e-15 4.1325450006457487e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 7.6078867980607316e-12 269.99401831775776 13.918230590274154 ;
	setAttr ".radi" 2;
createNode parentConstraint -n "o_parentConstraint1" -p "o";
	rename -uid "9508AFC3-4744-B05C-6D3A-1592A1A2B27A";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "nurbsCircle13W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 1.0658119135517619e-11 -3.5527136788005009e-15 
		7.1054273576010019e-15 ;
	setAttr ".tg[0].tor" -type "double3" -90.024868043003352 76.081768149872062 -90.024137917111574 ;
	setAttr ".lr" -type "double3" -5.5659706925611551e-15 -6.9574633657014469e-16 -7.9513867036587919e-15 ;
	setAttr ".rst" -type "double3" 0.0023874543649730073 0.14628993190814121 -20.644693374633782 ;
	setAttr ".rsrr" -type "double3" -5.5659706925611551e-15 -6.9574633657014469e-16 
		-7.9513867036587919e-15 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "kotuban_parentConstraint1" -p "kotuban";
	rename -uid "0F22E1D9-4521-36D9-5908-53983D70E6C7";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "nurbsCircle5W0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tor" -type "double3" 0 0 0.44584617343311572 ;
	setAttr ".lr" -type "double3" 0 0 4.9696166897867437e-17 ;
	setAttr ".rst" -type "double3" -7.9734181781532243e-06 12.504307796797764 0.50992584228515625 ;
	setAttr ".rsrr" -type "double3" 0 0 4.9696166897867437e-17 ;
	setAttr -k on ".w0";
createNode transform -n "nurbsCircle5";
	rename -uid "AEB5C841-4E85-7813-4F43-60907F93CE6F";
	setAttr ".rp" -type "double3" -7.9734181781532243e-06 12.504307796797764 0.50992584228515625 ;
	setAttr ".sp" -type "double3" -7.9734181781532243e-06 12.504307796797764 0.50992584228515625 ;
createNode nurbsCurve -n "nurbsCircleShape5" -p "nurbsCircle5";
	rename -uid "31B5AC49-4D86-837B-8AD2-CB8BE49F3352";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		31.034935706883129 12.504307796797766 -30.525017838016158
		-7.9734181760154707e-06 12.504307796797766 -34.402235672949061
		-31.034951653719485 12.504307796797766 -30.525017838016144
		-44.357704539631442 12.504307796797764 0.50992584228515447
		-31.034951653719485 12.504307796797763 31.54486952258647
		-7.9734181816503997e-06 12.504307796797763 35.422087357519395
		31.034935706883129 12.504307796797763 31.544869522586456
		44.357688592795085 12.504307796797764 0.50992584228516102
		31.034935706883129 12.504307796797766 -30.525017838016158
		-7.9734181760154707e-06 12.504307796797766 -34.402235672949061
		-31.034951653719485 12.504307796797766 -30.525017838016144
		;
createNode transform -n "nurbsCircle1" -p "nurbsCircle5";
	rename -uid "0E075557-4D89-FE4B-AA29-E09D2B37D867";
	setAttr ".rp" -type "double3" 8.4080133438108842 12.569735998088087 0.50992584228515614 ;
	setAttr ".sp" -type "double3" 8.4080133438108842 12.569735998088087 0.50992584228515614 ;
createNode nurbsCurve -n "nurbsCircleShape1" -p "nurbsCircle1";
	rename -uid "3540BE9B-42BF-CF2A-22CA-A882DD8CB65E";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		21.707951754206007 12.569735998088087 -15.696422581650481
		8.4080133438108859 12.569735998088087 -22.409311895388445
		8.1253690541854464 12.569735998088087 -15.696422581650477
		8.1539856072853212 12.569735998088087 0.50992584228515492
		8.1253690541854464 12.569735998088087 16.71627426622079
		8.4080133438108824 12.569735998088087 23.429163579958772
		21.707951754206007 12.569735998088087 16.71627426622079
		28.420841067943982 12.569735998088087 0.50992584228515925
		21.707951754206007 12.569735998088087 -15.696422581650481
		8.4080133438108859 12.569735998088087 -22.409311895388445
		8.1253690541854464 12.569735998088087 -15.696422581650477
		;
createNode transform -n "nurbsCircle2" -p "nurbsCircle1";
	rename -uid "505A5C34-4EEF-79C5-775A-EF85AF241C70";
	setAttr ".rp" -type "double3" 8.4080133438109748 9.3892602920532244 0.50992584228515614 ;
	setAttr ".sp" -type "double3" 8.4080133438109748 9.3892602920532244 0.50992584228515614 ;
createNode nurbsCurve -n "nurbsCircleShape2" -p "|nurbsCircle5|nurbsCircle1|nurbsCircle2";
	rename -uid "E43D3FEC-4051-FCCC-CC1A-718A093DA832";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		20.277954836097024 9.3892602920532244 -8.6967835554082029
		8.4080133438109765 9.3892602920532244 -12.510327452760615
		8.1557587034165131 9.3892602920532244 -8.6967835554081994
		8.1812984315359252 9.3892602920532244 0.50992584228515547
		8.1557587034165131 9.3892602920532244 9.7166352399785136
		8.408013343810973 9.3892602920532244 13.530179137330935
		20.277954836097024 9.3892602920532244 9.7166352399785119
		26.269080579655618 9.3892602920532244 0.50992584228515792
		20.277954836097024 9.3892602920532244 -8.6967835554082029
		8.4080133438109765 9.3892602920532244 -12.510327452760615
		8.1557587034165131 9.3892602920532244 -8.6967835554081994
		;
createNode transform -n "nurbsCircle3" -p "|nurbsCircle5|nurbsCircle1|nurbsCircle2";
	rename -uid "5C040B5D-4831-D47E-F134-0089237C5A1E";
	setAttr ".rp" -type "double3" 8.4080133438110387 1.0395576953887975 0.5099258422851467 ;
	setAttr ".sp" -type "double3" 8.4080133438110387 1.0395576953887975 0.5099258422851467 ;
createNode nurbsCurve -n "nurbsCircleShape3" -p "|nurbsCircle5|nurbsCircle1|nurbsCircle2|nurbsCircle3";
	rename -uid "2BE9B0AA-44B4-2B03-15ED-CAB7711BD4FA";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		18.409030682656173 1.0395576953887975 -3.1052076536939985
		8.4080133438110405 1.0395576953887975 -4.6026449775178193
		8.195476236191034 1.0395576953887975 -3.1052076536939976
		8.2169947301042203 1.0395576953887975 0.50992584228514648
		8.195476236191034 1.0395576953887975 4.1250593382642915
		8.4080133438110369 1.0395576953887975 5.6224966620881158
		18.409030682656173 1.0395576953887975 4.1250593382642915
		23.456852736325907 1.0395576953887975 0.50992584228514737
		18.409030682656173 1.0395576953887975 -3.1052076536939985
		8.4080133438110405 1.0395576953887975 -4.6026449775178193
		8.195476236191034 1.0395576953887975 -3.1052076536939976
		;
createNode transform -n "nurbsCircle4" -p "|nurbsCircle5|nurbsCircle1|nurbsCircle2|nurbsCircle3";
	rename -uid "ED4A2B43-4EF6-4939-4E01-4CA085FE49C9";
	setAttr ".rp" -type "double3" 8.4080133438111719 1.0395576953888404 7.1796956062316912 ;
	setAttr ".sp" -type "double3" 8.4080133438111719 1.0395576953888404 7.1796956062316912 ;
createNode nurbsCurve -n "nurbsCircleShape4" -p "|nurbsCircle5|nurbsCircle1|nurbsCircle2|nurbsCircle3|nurbsCircle4";
	rename -uid "5E31E1DE-4857-63BD-37FA-0E9643E23BE6";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		18.409030682656301 3.9318996107016972 7.1796956062316912
		8.4080133438111737 5.1299468590444555 7.1796956062316912
		8.1954762361911673 3.9318996107016964 7.1796956062316912
		8.2169947301043536 1.0395576953888406 7.1796956062316912
		8.1954762361911673 -1.8527842199240163 7.1796956062316912
		8.4080133438111702 -3.0508314682667765 7.1796956062316912
		18.409030682656301 -1.8527842199240159 7.1796956062316912
		23.456852736326034 1.0395576953888397 7.1796956062316912
		18.409030682656301 3.9318996107016972 7.1796956062316912
		8.4080133438111737 5.1299468590444555 7.1796956062316912
		8.1954762361911673 3.9318996107016964 7.1796956062316912
		;
createNode transform -n "nurbsCircle6" -p "nurbsCircle5";
	rename -uid "B3E8D117-47E8-D9D0-8CCF-CF9A06A0FF51";
	setAttr ".rp" -type "double3" -8.0275112850219932e-06 24.460819244384762 0.50992584228515614 ;
	setAttr ".sp" -type "double3" -8.0275112850219932e-06 24.460819244384762 0.50992584228515614 ;
createNode nurbsCurve -n "nurbsCircleShape6" -p "nurbsCircle6";
	rename -uid "9B5A4BFC-46B1-660A-0411-01AFF72FBFB5";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		21.717615777883189 24.460819244384762 -21.207697963109322
		-8.0275112831413429e-06 24.460819244384766 -30.203432285820487
		-21.717631832905759 24.460819244384762 -21.207697963109315
		-30.713366155616939 24.460819244384762 0.50992584228515458
		-21.717631832905759 24.460819244384762 22.227549647679631
		-8.027511288098571e-06 24.460819244384759 31.223283970390817
		21.717615777883189 24.460819244384762 22.227549647679627
		30.713350100594369 24.460819244384762 0.50992584228516036
		21.717615777883189 24.460819244384762 -21.207697963109322
		-8.0275112831413429e-06 24.460819244384766 -30.203432285820487
		-21.717631832905759 24.460819244384762 -21.207697963109315
		;
createNode transform -n "nurbsCircle7" -p "nurbsCircle6";
	rename -uid "490A9DF8-4647-0BDB-B177-908A5B868224";
	setAttr ".rp" -type "double3" -8.0216232091731134e-06 40.557662963867188 0.50992584228515592 ;
	setAttr ".sp" -type "double3" -8.0216232091731134e-06 40.557662963867188 0.50992584228515592 ;
createNode nurbsCurve -n "nurbsCircleShape7" -p "nurbsCircle7";
	rename -uid "BA3153AE-4CE9-A94E-A788-EAB1EF6F3014";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		21.717615783771265 40.557662963867188 -21.207697963109322
		-8.0216232072924631e-06 40.557662963867188 -30.203432285820487
		-21.717631827017684 40.557662963867188 -21.207697963109315
		-30.713366149728863 40.557662963867188 0.50992584228515436
		-21.717631827017684 40.557662963867188 22.227549647679631
		-8.0216232122496912e-06 40.557662963867188 31.223283970390817
		21.717615783771265 40.557662963867188 22.227549647679627
		30.713350106482444 40.557662963867188 0.50992584228516014
		21.717615783771265 40.557662963867188 -21.207697963109322
		-8.0216232072924631e-06 40.557662963867188 -30.203432285820487
		-21.717631827017684 40.557662963867188 -21.207697963109315
		;
createNode transform -n "nurbsCircle8" -p "nurbsCircle7";
	rename -uid "53923E2F-4E4C-A674-FAAA-3BB243886A6A";
	setAttr ".rp" -type "double3" -6.1355939785300158e-06 57.202911376953324 0.50992584228515603 ;
	setAttr ".sp" -type "double3" -6.1355939785300158e-06 57.202911376953324 0.50992584228515603 ;
createNode nurbsCurve -n "nurbsCircleShape8" -p "nurbsCircle8";
	rename -uid "77E638AB-4637-A3F0-A26F-5E8A3929A3D3";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		18.356153937137158 63.947966817271926 -14.717216203495493
		-6.1355939769583885e-06 77.332772351907366 -23.712950526206669
		-18.356166208325114 63.947966817271926 -14.717216203495488
		-25.959536663541851 57.202911376953324 0.50992584228515447
		-18.356166208325114 57.202911376953324 22.227549647679631
		-6.1355939811303993e-06 57.202911376953324 41.440060306338147
		18.356153937137158 57.202911376953324 22.227549647679627
		25.959524392353895 57.202911376953324 0.50992584228516025
		18.356153937137158 63.947966817271926 -14.717216203495493
		-6.1355939769583885e-06 77.332772351907366 -23.712950526206669
		-18.356166208325114 63.947966817271926 -14.717216203495488
		;
createNode transform -n "nurbsCircle14" -p "nurbsCircle8";
	rename -uid "7619C637-4D49-59DA-1C6F-AFAF42133035";
	setAttr ".rp" -type "double3" 3.4112665048269264e-07 62.803451538085938 19.737402467505301 ;
	setAttr ".sp" -type "double3" 3.4112665048269264e-07 62.803451538085938 19.737402467505301 ;
createNode nurbsCurve -n "nurbsCircleShape14" -p "nurbsCircle14";
	rename -uid "DED66FAA-4573-23C7-D1F3-C9AD91365F0E";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.4112665053067499e-07 62.099919506981735 18.881168248065478
		3.4112665055054998e-07 62.911428290960075 18.634481174679703
		3.4112665053067499e-07 63.659685757525757 19.033870436401095
		3.4112665048269264e-07 63.906372830911536 19.845379220379442
		3.4112665043471029e-07 65.239161538251977 20.964805071707634
		3.4112665041483529e-07 63.015271968539651 23.21591677626818
		3.4112665043471029e-07 60.832520971994917 21.705937508106466
		3.4112665048269264e-07 61.700530245260339 19.629425714631161
		3.4112665053067499e-07 62.099919506981735 18.881168248065478
		3.4112665055054998e-07 62.911428290960075 18.634481174679703
		3.4112665053067499e-07 63.659685757525757 19.033870436401095
		;
createNode transform -n "nurbsCircle9" -p "nurbsCircle7";
	rename -uid "803888E4-4B5E-A544-9E4D-94A7ACEDFC94";
	setAttr ".rp" -type "double3" 17.993413925170902 46.473472595214851 0.50992584228515625 ;
	setAttr ".sp" -type "double3" 17.993413925170902 46.473472595214851 0.50992584228515625 ;
createNode nurbsCurve -n "nurbsCircleShape9" -p "nurbsCircle9";
	rename -uid "CC5DD145-4B3C-CADC-7E14-C1AD487CCEB0";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		17.993413925170902 54.913792021860942 -7.930393584360937
		17.993413925170902 46.473472595214851 -11.42648836163885
		17.993413925170902 38.033153168568759 -7.9303935843609352
		17.993413925170902 34.537058391290842 0.50992584228515558
		17.993413925170902 38.033153168568759 8.9502452689312495
		17.993413925170902 46.473472595214851 12.446340046209169
		17.993413925170902 54.913792021860942 8.9502452689312477
		17.993413925170902 58.40988679913886 0.50992584228515792
		17.993413925170902 54.913792021860942 -7.930393584360937
		17.993413925170902 46.473472595214851 -11.42648836163885
		17.993413925170902 38.033153168568759 -7.9303935843609352
		;
createNode transform -n "nurbsCircle10" -p "nurbsCircle9";
	rename -uid "7C47FB34-401F-EBD1-8C3D-77967589BA69";
	setAttr ".rp" -type "double3" 19.198820114135653 46.368659973144524 1.2345448732376099 ;
	setAttr ".sp" -type "double3" 19.198820114135653 46.368659973144524 1.2345448732376099 ;
createNode nurbsCurve -n "nurbsCircleShape10" -p "|nurbsCircle5|nurbsCircle6|nurbsCircle7|nurbsCircle9|nurbsCircle10";
	rename -uid "506C5B85-4271-548A-4591-818360A6BCDB";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		21.687584378598476 49.87395762266582 -7.2057745534084834
		26.188007808366201 46.368659973144524 -10.701869330686396
		21.687584378598476 42.863362323623228 -7.2057745534084816
		19.198820114135653 41.411420497036978 1.2345448732376092
		21.687584378598476 42.863362323623228 9.6748642998837031
		26.188007808366201 46.368659973144524 13.170959077161623
		21.687584378598476 49.87395762266582 9.6748642998837013
		19.198820114135653 51.32589944925207 1.2345448732376114
		21.687584378598476 49.87395762266582 -7.2057745534084834
		26.188007808366201 46.368659973144524 -10.701869330686396
		21.687584378598476 42.863362323623228 -7.2057745534084816
		;
createNode transform -n "nurbsCircle11" -p "|nurbsCircle5|nurbsCircle6|nurbsCircle7|nurbsCircle9|nurbsCircle10";
	rename -uid "DC1695ED-46A5-4A9A-05DA-E399E18C3E98";
	setAttr ".rp" -type "double3" 34.466098785400398 46.368659973144524 0.17104047536850198 ;
	setAttr ".sp" -type "double3" 34.466098785400398 46.368659973144524 0.17104047536850198 ;
createNode nurbsCurve -n "nurbsCircleShape11" -p "|nurbsCircle5|nurbsCircle6|nurbsCircle7|nurbsCircle9|nurbsCircle10|nurbsCircle11";
	rename -uid "B0017E22-40A9-BD81-5EE7-BF8D92B83459";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		36.954863049863221 49.873957622665813 -8.2692789512775899
		41.455286479630942 46.368659973144524 -11.765373728555502
		36.954863049863221 42.863362323623235 -8.2692789512775882
		34.466098785400398 41.411420497036978 0.17104047536850137
		36.954863049863221 42.863362323623235 8.611359902014593
		41.455286479630949 46.368659973144524 12.107454679292513
		36.954863049863221 49.873957622665813 8.6113599020145912
		34.466098785400398 51.32589944925207 0.17104047536850361
		36.954863049863221 49.873957622665813 -8.2692789512775899
		41.455286479630942 46.368659973144524 -11.765373728555502
		36.954863049863221 42.863362323623235 -8.2692789512775882
		;
createNode transform -n "nurbsCircle12" -p "|nurbsCircle5|nurbsCircle6|nurbsCircle7|nurbsCircle9|nurbsCircle10|nurbsCircle11";
	rename -uid "63FFC432-45ED-2B90-07E0-67898B6E758C";
	setAttr ".rp" -type "double3" 49.059761672187769 46.368659973144545 -1.0176059007644644 ;
	setAttr ".sp" -type "double3" 49.059761672187769 46.368659973144545 -1.0176059007644644 ;
createNode nurbsCurve -n "nurbsCircleShape12" -p "|nurbsCircle5|nurbsCircle6|nurbsCircle7|nurbsCircle9|nurbsCircle10|nurbsCircle11|nurbsCircle12";
	rename -uid "2809AD4B-496B-9D11-DB5A-E6A63A701FB5";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		51.548525936650591 49.873957622665834 -9.4579253274105568
		56.048949366418313 46.368659973144545 -12.954020104688468
		51.548525936650591 42.863362323623257 -9.4579253274105533
		49.059761672187769 41.411420497037 -1.0176059007644651
		51.548525936650591 42.863362323623257 7.4227135258816253
		56.048949366418313 46.368659973144545 10.918808303159544
		51.548525936650591 49.873957622665834 7.4227135258816235
		49.059761672187769 51.325899449252091 -1.0176059007644629
		51.548525936650591 49.873957622665834 -9.4579253274105568
		56.048949366418313 46.368659973144545 -12.954020104688468
		51.548525936650591 42.863362323623257 -9.4579253274105533
		;
createNode transform -n "nurbsCircle15" -p "nurbsCircle7";
	rename -uid "95588544-48DD-2F06-3F40-508F76F4AC87";
	setAttr ".rp" -type "double3" 1.7610788368527224 52.823734282803088 -16.835075378417972 ;
	setAttr ".sp" -type "double3" 1.7610788368527224 52.823734282803088 -16.835075378417972 ;
createNode nurbsCurve -n "nurbsCircleShape15" -p "nurbsCircle15";
	rename -uid "2EAFAB61-4806-9BC0-0719-F28E330DBF6F";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.66072314244972818 55.426514271820352 -19.158826933316995
		1.6253079785147249 53.138008589999359 -21.945065977754361
		2.9038962800303985 50.610360752802819 -19.514630103104885
		3.3472417738115188 49.418199470270338 -17.08666621254266
		3.8566855287695407 50.728088103347616 -15.101296023275701
		3.1385513050025073 53.265577846414551 -14.131550266088606
		1.6135123911888705 55.544241622365149 -14.745492853487811
		0.1749158998939262 56.229269095335837 -16.583484544293285
		0.66072314244972818 55.426514271820352 -19.158826933316995
		1.6253079785147249 53.138008589999359 -21.945065977754361
		2.9038962800303985 50.610360752802819 -19.514630103104885
		;
createNode transform -n "nurbsCircle16" -p "nurbsCircle7";
	rename -uid "F29664FD-45CE-D1B5-0F0D-FAB8F2B845B6";
	setAttr ".rp" -type "double3" -1.76108 52.8237 -16.835099999999997 ;
	setAttr ".sp" -type "double3" -1.76108 52.8237 -16.835099999999997 ;
createNode nurbsCurve -n "nurbsCircleShape16" -p "nurbsCircle16";
	rename -uid "11D649F5-4C1D-CC8C-F747-9A9236EF49E3";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-0.66072430559700579 55.426479989017267 -19.158851554899019
		-1.6253091416620025 53.137974307196274 -21.945090599336385
		-2.9038974431776761 50.610326469999734 -19.51465472468691
		-3.3472429369587964 49.418165187467253 -17.086690834124685
		-3.8566866919168183 50.728053820544531 -15.101320644857726
		-3.1385524681497849 53.265543563611466 -14.131574887670631
		-1.6135135543361481 55.544207339562064 -14.745517475069835
		-0.1749170630412038 56.229234812532752 -16.583509165875309
		-0.66072430559700579 55.426479989017267 -19.158851554899019
		-1.6253091416620025 53.137974307196274 -21.945090599336385
		-2.9038974431776761 50.610326469999734 -19.51465472468691
		;
createNode transform -n "nurbsCircle17" -p "nurbsCircle7";
	rename -uid "5909285B-4A55-D37F-EA1D-63B6DCD65B11";
	setAttr ".rp" -type "double3" -17.499999999999996 46.368700000000004 1.21423 ;
	setAttr ".sp" -type "double3" -17.499999999999996 46.368700000000004 1.21423 ;
createNode nurbsCurve -n "nurbsCircleShape17" -p "nurbsCircle17";
	rename -uid "1A136AAE-4BB5-97DC-85E7-6590FCC1DD2C";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-17.499999999999996 54.809019426646095 -7.2260894266460935
		-17.499999999999996 46.368700000000004 -10.722184203924005
		-17.499999999999996 37.928380573353913 -7.2260894266460918
		-17.499999999999996 34.432285796075995 1.2142299999999993
		-17.499999999999996 37.928380573353913 9.6545494266460938
		-17.499999999999996 46.368700000000004 13.150644203924013
		-17.499999999999996 54.809019426646095 9.6545494266460921
		-17.499999999999996 58.305114203924013 1.2142300000000015
		-17.499999999999996 54.809019426646095 -7.2260894266460935
		-17.499999999999996 46.368700000000004 -10.722184203924005
		-17.499999999999996 37.928380573353913 -7.2260894266460918
		;
createNode transform -n "nurbsCircle10" -p "nurbsCircle17";
	rename -uid "C45E7BFB-4F38-75A4-B2C4-9AB316096844";
	setAttr ".rp" -type "double3" -19.4413 46.3687 1.23454 ;
	setAttr ".sp" -type "double3" -19.4413 46.3687 1.23454 ;
createNode nurbsCurve -n "nurbsCircleShape10" -p "|nurbsCircle5|nurbsCircle6|nurbsCircle7|nurbsCircle17|nurbsCircle10";
	rename -uid "876500DD-4243-04C0-E1D5-82B627AA5F80";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-21.930064264462821 49.873997649521293 -7.2057794266460933
		-26.430487694230546 46.368699999999997 -10.701874203924007
		-21.930064264462821 42.863402350478701 -7.2057794266460915
		-19.441299999999998 41.411460523892451 1.2345399999999993
		-21.930064264462821 42.863402350478701 9.6748594266460941
		-26.430487694230546 46.368699999999997 13.170954203924012
		-21.930064264462821 49.873997649521293 9.6748594266460906
		-19.441299999999998 51.325939476107543 1.2345400000000015
		-21.930064264462821 49.873997649521293 -7.2057794266460933
		-26.430487694230546 46.368699999999997 -10.701874203924007
		-21.930064264462821 42.863402350478701 -7.2057794266460915
		;
createNode transform -n "nurbsCircle11" -p "|nurbsCircle5|nurbsCircle6|nurbsCircle7|nurbsCircle17|nurbsCircle10";
	rename -uid "2C90DA6E-4E8A-E67C-46A2-3AAEB5A19CDC";
	setAttr ".t" -type "double3" 3.2319195495605371 -4.8316906031686813e-13 -2.1008491546403718e-07 ;
	setAttr ".rp" -type "double3" -34.4661 46.3687 0.1710400000000003 ;
	setAttr ".sp" -type "double3" -34.4661 46.3687 0.1710400000000003 ;
createNode nurbsCurve -n "nurbsCircleShape11" -p "|nurbsCircle5|nurbsCircle6|nurbsCircle7|nurbsCircle17|nurbsCircle10|nurbsCircle11";
	rename -uid "1BB036F6-4613-A938-6B58-51A42D1542A1";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-36.954864264462827 49.873997649521286 -8.2692794266460918
		-41.455287694230549 46.368699999999997 -11.765374203924004
		-36.954864264462827 42.863402350478708 -8.2692794266460901
		-34.466099999999997 41.411460523892451 0.17103999999999969
		-36.954864264462827 42.863402350478708 8.6113594266460911
		-41.455287694230549 46.368699999999997 12.107454203924011
		-36.954864264462827 49.873997649521286 8.6113594266460893
		-34.466099999999997 51.325939476107543 0.17104000000000194
		-36.954864264462827 49.873997649521286 -8.2692794266460918
		-41.455287694230549 46.368699999999997 -11.765374203924004
		-36.954864264462827 42.863402350478708 -8.2692794266460901
		;
createNode transform -n "nurbsCircle12" -p "|nurbsCircle5|nurbsCircle6|nurbsCircle7|nurbsCircle17|nurbsCircle10|nurbsCircle11";
	rename -uid "E936FC04-4336-BCEE-D9DA-6281B4EC1762";
	setAttr ".t" -type "double3" 2.500609906005856 -3.765876499528531e-13 -0.16269967244529115 ;
	setAttr ".rp" -type "double3" -48.9264 46.368700000000004 -0.96690100000000601 ;
	setAttr ".sp" -type "double3" -48.9264 46.368700000000004 -0.96690100000000601 ;
createNode nurbsCurve -n "nurbsCircleShape12" -p "|nurbsCircle5|nurbsCircle6|nurbsCircle7|nurbsCircle17|nurbsCircle10|nurbsCircle11|nurbsCircle12";
	rename -uid "E3223880-42E5-70B8-8B1E-44A77A40DB76";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-51.415164264462817 49.873997649521293 -9.4072204266460986
		-55.915587694230538 46.368700000000004 -12.903315203924009
		-51.415164264462817 42.863402350478715 -9.407220426646095
		-48.926400000000001 41.411460523892458 -0.96690100000000667
		-51.415164264462817 42.863402350478715 7.4734184266460835
		-55.915587694230538 46.368700000000004 10.969513203924002
		-51.415164264462817 49.873997649521293 7.4734184266460817
		-48.926400000000001 51.32593947610755 -0.96690100000000445
		-51.415164264462817 49.873997649521293 -9.4072204266460986
		-55.915587694230538 46.368700000000004 -12.903315203924009
		-51.415164264462817 42.863402350478715 -9.407220426646095
		;
createNode transform -n "nurbsCircle13" -p "nurbsCircle5";
	rename -uid "211FAF79-4C2A-38D6-2FD1-D4A808C408B4";
	setAttr ".rp" -type "double3" 0.0012410674244165421 12.650611877441406 -20.134767532348633 ;
	setAttr ".sp" -type "double3" 0.0012410674244165421 12.650611877441406 -20.134767532348633 ;
createNode nurbsCurve -n "nurbsCircleShape13" -p "nurbsCircle13";
	rename -uid "0A068EC3-47D4-6C4A-A7BE-98BB32C159C3";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		5.59573415488968 19.71654713342982 -26.147892636716264
		0.0012410674244173546 22.643353347310423 -30.683598000315463
		-5.5932520200408469 19.716547133429817 -26.147892636716264
		-13.26641405987551 12.65061187744141 -20.258003765277408
		-9.3804078435338276 5.5846766214529939 -20.134767532348633
		0.001241067424415213 2.6578704075723838 -30.496166713448861
		9.3828899783826607 5.5846766214529948 -20.134767532348633
		13.268896194724343 12.650611877441408 -20.258003765277408
		5.59573415488968 19.71654713342982 -26.147892636716264
		0.0012410674244173546 22.643353347310423 -30.683598000315463
		-5.5932520200408469 19.716547133429817 -26.147892636716264
		;
createNode transform -n "nurbsCircle18" -p "nurbsCircle5";
	rename -uid "EF2A0DC2-4E07-3021-78A2-1390BFD6A66B";
	setAttr ".rp" -type "double3" -8.4080299999999983 12.569699999999997 0.5099260000000001 ;
	setAttr ".sp" -type "double3" -8.4080299999999983 12.569699999999997 0.5099260000000001 ;
createNode nurbsCurve -n "nurbsCircleShape18" -p "nurbsCircle18";
	rename -uid "E84BA033-410C-3C41-95EF-57933F79B307";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-21.707968410395122 12.569699999999997 -15.696422423935637
		-8.4080300000000001 12.569699999999997 -22.409311737673601
		-8.1253857103745606 12.569699999999997 -15.696422423935633
		-8.1540022634744354 12.569699999999997 0.50992599999999888
		-8.1253857103745606 12.569699999999997 16.716274423935634
		-8.4080299999999966 12.569699999999997 23.429163737673615
		-21.707968410395122 12.569699999999997 16.716274423935634
		-28.420857724133096 12.569699999999997 0.50992600000000321
		-21.707968410395122 12.569699999999997 -15.696422423935637
		-8.4080300000000001 12.569699999999997 -22.409311737673601
		-8.1253857103745606 12.569699999999997 -15.696422423935633
		;
createNode transform -n "nurbsCircle2" -p "nurbsCircle18";
	rename -uid "B2E62305-4FB8-F576-4AC5-AF8EC3743D8A";
	setAttr ".rp" -type "double3" -8.40803 9.38926 0.509926 ;
	setAttr ".sp" -type "double3" -8.40803 9.38926 0.509926 ;
createNode nurbsCurve -n "nurbsCircleShape2" -p "|nurbsCircle5|nurbsCircle18|nurbsCircle2";
	rename -uid "370B53C3-4075-97ED-77A1-E7BBBEE3EFAA";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-20.277971492286049 9.3892600000000002 -8.6967833976933591
		-8.4080300000000019 9.3892600000000002 -12.510327295045771
		-8.1557753596055385 9.3892600000000002 -8.6967833976933555
		-8.1813150877249505 9.3892600000000002 0.50992599999999932
		-8.1557753596055385 9.3892600000000002 9.7166353976933575
		-8.4080299999999983 9.3892600000000002 13.530179295045778
		-20.277971492286049 9.3892600000000002 9.7166353976933557
		-26.269097235844644 9.3892600000000002 0.50992600000000177
		-20.277971492286049 9.3892600000000002 -8.6967833976933591
		-8.4080300000000019 9.3892600000000002 -12.510327295045771
		-8.1557753596055385 9.3892600000000002 -8.6967833976933555
		;
createNode transform -n "nurbsCircle3" -p "|nurbsCircle5|nurbsCircle18|nurbsCircle2";
	rename -uid "DF7073A1-4BC4-C03F-5035-408C30A66C33";
	setAttr ".rp" -type "double3" -8.4080300000002346 1.039559999999998 0.509926 ;
	setAttr ".sp" -type "double3" -8.4080300000002346 1.039559999999998 0.509926 ;
createNode nurbsCurve -n "nurbsCircleShape3" -p "|nurbsCircle5|nurbsCircle18|nurbsCircle2|nurbsCircle3";
	rename -uid "D01F1FF3-4CE3-6900-4AE1-15BDD1771EC2";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-18.409047338845369 1.039559999999998 -3.1052074959791454
		-8.4080300000002364 1.039559999999998 -4.6026448198029657
		-8.1954928923802299 1.039559999999998 -3.1052074959791445
		-8.2170113862934162 1.039559999999998 0.50992599999999977
		-8.1954928923802299 1.039559999999998 4.1250594959791451
		-8.4080300000002328 1.039559999999998 5.6224968198029694
		-18.409047338845369 1.039559999999998 4.1250594959791451
		-23.456869392515102 1.039559999999998 0.50992600000000066
		-18.409047338845369 1.039559999999998 -3.1052074959791454
		-8.4080300000002364 1.039559999999998 -4.6026448198029657
		-8.1954928923802299 1.039559999999998 -3.1052074959791445
		;
createNode transform -n "nurbsCircle4" -p "|nurbsCircle5|nurbsCircle18|nurbsCircle2|nurbsCircle3";
	rename -uid "8C9FC86E-4462-81F3-2584-C98D505F1C34";
	setAttr ".rp" -type "double3" -8.4080300000002364 1.0395599999999994 7.1796956062316895 ;
	setAttr ".sp" -type "double3" -8.4080300000002364 1.0395599999999994 7.1796956062316895 ;
createNode nurbsCurve -n "nurbsCircleShape4" -p "|nurbsCircle5|nurbsCircle18|nurbsCircle2|nurbsCircle3|nurbsCircle4";
	rename -uid "5B86C4F8-4C56-A70F-DC1E-CC9F3CB75E25";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-18.409047338845369 3.9319019153128565 7.1796956062316895
		-8.4080300000002381 5.1299491636556143 7.1796956062316895
		-8.1954928923802317 3.9319019153128556 7.1796956062316895
		-8.217011386293418 1.0395599999999996 7.1796956062316895
		-8.1954928923802317 -1.8527819153128573 7.1796956062316895
		-8.4080300000002346 -3.0508291636556173 7.1796956062316895
		-18.409047338845369 -1.8527819153128569 7.1796956062316895
		-23.456869392515102 1.0395599999999987 7.1796956062316895
		-18.409047338845369 3.9319019153128565 7.1796956062316895
		-8.4080300000002381 5.1299491636556143 7.1796956062316895
		-8.1954928923802317 3.9319019153128556 7.1796956062316895
		;
createNode transform -n "heropengin_model_3:gide";
	rename -uid "3264E3D3-4686-1125-FCFD-D7A679EC67CD";
createNode transform -n "heropengin_model_3:gide" -p "|heropengin_model_3:gide";
	rename -uid "CE41BC74-4371-7968-DA87-9F9F2B43CA59";
	setAttr ".t" -type "double3" 0 50 0 ;
	setAttr ".s" -type "double3" 0.4 1 0.4 ;
	setAttr ".rp" -type "double3" 0 -50 0 ;
	setAttr ".sp" -type "double3" 0 -50 0 ;
createNode mesh -n "heropengin_model_3:gideShape" -p "|heropengin_model_3:gide|heropengin_model_3:gide";
	rename -uid "22D63EF4-4129-C68C-049F-EABD6B25FE77";
	setAttr -k off ".v";
	setAttr -av ".iog[0].og[0].gid";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "heropengin_model_3:heropengin";
	rename -uid "A7A407B9-4C8B-BC9C-45C5-CF8DCC6F36F8";
createNode transform -n "heropengin_model_3:model" -p "heropengin_model_3:heropengin";
	rename -uid "D85BC22D-42A7-F0A7-073C-A296846B8AB5";
	setAttr ".rp" -type "double3" 3.814697265625e-06 40.094878868574362 -6.9194007960732087 ;
	setAttr ".sp" -type "double3" 3.814697265625e-06 40.094878868574362 -6.9194007960732087 ;
createNode transform -n "heropengin_model_3:mask1" -p "heropengin_model_3:model";
	rename -uid "0785FB44-4F5C-0F84-3FD0-B3838A35F7E3";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "heropengin_model_3:mask1Shape" -p "heropengin_model_3:mask1";
	rename -uid "94802B23-4CDD-AB99-B4D7-3BB0B66D4D9B";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:257]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.33263903856277466 0.27011301182210445 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 727 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.5 0.5 0.55527806 0.25 0.625
		 0.25 0.625 0.5 0.375 0.25 0.375 0.5 0.625 0 0.875 0 0.875 0.125 0.625 0.125 0.125
		 0 0.375 0 0.375 0.125 0.125 0.125 0.875 0.13483366 0.875 0.25 0.875 0.125 0.875 0.25
		 0.625 0.25 0.625 0.25 0.875 0.25 0.375 0.13019924 0.375 0.25345808 0.375 0.25 0.375
		 0.125 0.16221347 0.13263956 0.125 0.25 0.375 0.25 0.875 0 0.875 0.125 0.875 0.125
		 0.875 0 0.64737892 0.013025044 0.625 0 0.625 0.125 0.11808326 0 0.36460117 0 0.375
		 0 0.125 0 0.16221347 0.13263956 0.125 0 0.125 0.125 0.875 0.25 0.625 0.25 0.625 0.25
		 0.875 0.25 0.875 0.125 0.875 0.25 0.875 0.25 0.875 0.125 0.125 0.25 0.375 0.25 0.375
		 0.25 0.375 0.125 0.125 0.25 0.125 0.125 0.125 0.125 0.125 0.25 0.625 0.25 0.625 0.125
		 0.625 0.125 0.625 0.25 0.625 0 0.875 0 0.875 0 0.625 0 0.375 0 0.375 0.125 0.375
		 0.125 0.375 0 0.375 0 0.125 0 0.125 0 0.125 0.125 0.625 0 0.625 0.125 0.875 0.125
		 0.875 0 0.875 0.25 0.625 0.25 0.625 0.25 0.875 0.25 0.875 0.125 0.875 0.25 0.875
		 0.25 0.875 0.125 0.125 0.25 0.375 0.25 0.375 0.25 0.375 0.125 0.125 0.125 0.125 0.25
		 0.625 0.25 0.625 0.125 0.625 0.125 0.625 0.25 0.875 0 0.625 0 0.375 0.125 0.375 0
		 0.375 0 0.125 0 0.125 0 0.125 0.125 0.625 0 0.625 0.125 0.875 0.125 0.875 0 0.125
		 0.25 0.375 0.25 0.375 0.25 0.375 0.125 0.125 0.069721945 0.125 0.25 0.375 0.07940869
		 0.375 0 0.125 0 0.125 0.069721945 0.43168506 0.073692873 0.51741284 0.12524766 0.625
		 0.25 0.55526769 0.25 0.23970102 0.26887041 0.33187231 0.43703863 0.5 0.5 0.625 0.5
		 0.33187231 0.43703863 0.23970102 0.26887041 0.43336558 0.65388972 0.15854466 0.26886994
		 0.15854466 0.26886994 0.375 0.5 0.875 0 0.875 0.125 0.875 0.125 0.875 0 0.625 0.125
		 0.625 0 0.625 0 0.625 0.125 0.375 0 0.375 0.079400904 0.375 0.125 0.375 0 0.125 0.069732383
		 0.125 0 0.125 0 0.125 0.125 0.875 0.25 0.875 0.25 0.875 0.25 0.875 0.25 0.35811797
		 0.041390829 0.375 0.25 0.375 0.25 0.36578161 0.13608953 0.375 0.125 0.36318207 0.066471092
		 0.35940522 0.047766127 0.3585929 0.043743003 0.375 0.125 0.875 0.125 0.875 0.125
		 0.875 0.125 0.875 0.125 0.875 0 0.875 0 0.875 0 0.875 0 0.875 0 0.125 0 0.125 0 0.125
		 0 0.125 0 0.625 0.25 0.625 0.25 0.625 0.25 0.625 0.25 0.875 0.25 0.875 0.25 0.875
		 0.25 0.875 0.25 0.375 0.25 0.375 0.25 0.375 0.125 0.375 0.125 0.375 0 0.375 0 0.375
		 0 0.375 0 0.125 0 0.125 0 0.875 0.125 0.875 0.125 0.875 0 0.875 0 0.625 0.25 0.625
		 0.25 0.625 0.25 0.625 0.25 0.875 0.25 0.875 0.25 0.875 0.25 0.875 0.25 0.375 0.25
		 0.375 0.25 0.375 0.125 0.375 0.125 0.375 0 0.375 0 0.125 0 0.125 0 0.875 0.125 0.875
		 0.125 0.875 0 0.875 0 0.375 0.25 0.375 0.25 0.375 0.079400904 0.375 0.125 0.375 0.10932325
		 0.375 0.10932325 0.35811797 0.041390829 0.35811797 0.041390829 0.5 1 0.625 1 0.625
		 1 0.5 1 0.875 0.125 0.875 0.25 0.875 0.25 0.875 0.125 0.875 0.25 0.875 0.125 0.875
		 0.125 0.875 0.25 0.625 0.25 0.625 0.125 0.625 0.125 0.625 0.25 0.625 0.125 0.625
		 0.25 0.625 0.25 0.625 0.125 0.375 0.11444677 0.375 0.11445292 0.375 0.25 0.375 0.25
		 0.375 0.25 0.375 0.125;
	setAttr ".uvst[0].uvsp[250:499]" 0.375 0.125 0.375 0.25 0.125 0.25 0.125 0.12379993
		 0.125 0.1238072 0.125 0.25 0.125 0.099100806 0.125 0.25 0.125 0.25 0.125 0.084720738
		 0.5 0.75 0.36445296 0.75 0.36444673 0.75 0.5 0.75 0.375 1 0.5 1 0.5 1 0.375 1 0.50119287
		 0.25 0.50120002 0.25 0.375 0.25 0.375 0.25 0.375 0.5 0.52589786 0.5 0.54027808 0.5
		 0.375 0.5 0.875 0 0.875 0.125 0.875 0.125 0.875 0 0.875 0.125 0.875 0 0.875 0 0.875
		 0.125 0.625 0.125 0.625 0 0.625 0 0.625 0.125 0.625 0 0.625 0.125 0.625 0.125 0.625
		 0 0.375 0.07940869 0.375 0.079400904 0.375 0.125 0.375 0 0.375 0.125 0.125 0.069721945
		 0.125 0 0.125 0 0.125 0.069732383 0.125 0 0.125 0.125 0.125 0.125 0.125 0 0.64737892
		 0.013025044 0.51137823 0.11582954 0.625 0.25 0.625 0.25 0.625 0.25 0.875 0.25 0.875
		 0.13483366 0.875 0.25 0.875 0.25 0.875 0.25 0.875 0.25 0.875 0.25 0.875 0.25 0.16221347
		 0.13263956 0.375 0.25 0.375 0.25 0.35811797 0.041390829 0.375 0.25 0.375 0.25 0.375
		 0.25 0.375 0.25 0.375 0.125 0.375 0.10932325 0.35811797 0.041390829 0.375 0.125 0.375
		 0.125 0.375 0.125 0.375 0.125 0.375 0.125 0.875 0 0.64737892 0.013025044 0.875 0
		 0.875 0 0.875 0 0.875 0 0.875 0 0.875 0 0.375 0.10932325 0.375 0 0.375 0 0.35811797
		 0.041390829 0.375 0 0.375 0 0.375 0 0.375 0 0.375 0.25 0.375 0.25 0.375 0.25 0.375
		 0.25 0.125 0 0.125 0 0.125 0 0.125 0 0.875 0.125 0.875 0.125 0.875 0.125 0.875 0.125
		 0.875 0.125 0.875 0 0.875 0 0.875 0 0.875 0 0.875 0 0.875 0 0.875 0 0.875 0 0.625
		 0.25 0.625 0.25 0.625 0.25 0.625 0.25 0.625 0.25 0.625 0.25 0.625 0.25 0.625 0.25
		 0.875 0.25 0.875 0.25 0.875 0.25 0.875 0.25 0.875 0.25 0.875 0.25 0.875 0.25 0.875
		 0.25 0.375 0.25 0.375 0.25 0.375 0.25 0.375 0.25 0.375 0.25 0.375 0.25 0.375 0.25
		 0.375 0.25 0.375 0.125 0.375 0.125 0.375 0.125 0.375 0.125 0.375 0.125 0.375 0.125
		 0.375 0.125 0.375 0.125 0.375 0 0.375 0 0.375 0 0.375 0 0.375 0 0.375 0 0.375 0 0.375
		 0 0.125 0 0.125 0 0.125 0 0.125 0 0.125 0 0.125 0 0.125 0 0.125 0 0.875 0.125 0.875
		 0.125 0.875 0.125 0.875 0.125 0.875 0.125 0.875 0.125 0.875 0.125 0.875 0.125 0.875
		 0 0.875 0 0.875 0 0.875 0 0.875 0 0.875 0 0.875 0 0.875 0 0.625 0.25 0.625 0.25 0.625
		 0.25 0.625 0.25 0.625 0.25 0.625 0.25 0.625 0.25 0.625 0.25 0.875 0.25 0.875 0.25
		 0.875 0.25 0.875 0.25 0.875 0.25 0.875 0.25 0.875 0.25 0.875 0.25 0.375 0.25 0.375
		 0.25 0.375 0.25 0.375 0.25 0.375 0.25 0.375 0.25 0.375 0.25 0.375 0.25 0.375 0.07940869
		 0.375 0.125 0.375 0.125 0.375 0.079400904 0.375 0.125 0.375 0.125 0.375 0.125 0.375
		 0.125 0.125 0 0.125 0 0.125 0 0.125 0 0.125 0 0.125 0 0.125 0 0.125 0 0.875 0.125
		 0.875 0.125 0.875 0.125 0.875 0.125 0.875 0.125 0.875 0.125 0.875 0.125 0.875 0.125
		 0.55527806 0.25 0.625 0.25 0.625 0.25 0.55527806 0.25 0.625 0.5 0.5 0.5 0.5 0.5 0.625
		 0.5 0.375 0.25 0.55527806 0.25 0.375 0.25 0.5 0.5 0.375 0.5 0.375 0.5 0.625 0.25
		 0.625 0.25 0.625 0.25;
	setAttr ".uvst[0].uvsp[500:726]" 0.875 0.25 0.875 0.25 0.875 0.25 0.875 0.25
		 0.875 0.125 0.875 0.125 0.875 0.125 0.875 0.125 0.875 0 0.875 0 0.875 0 0.875 0 0.625
		 0.25 0.625 0.25 0.625 0.25 0.625 0.25 0.875 0.25 0.875 0.25 0.875 0.25 0.875 0.25
		 0.875 0.125 0.875 0.125 0.875 0.125 0.875 0 0.875 0 0.875 0 0.625 0.25 0.625 0.25
		 0.625 0.25 0.875 0.25 0.875 0.25 0.875 0.25 0.875 0.25 0.875 0.125 0.875 0.125 0.875
		 0.125 0.875 0 0.875 0 0.875 0 0.625 0.25 0.625 0.25 0.625 0.25 0.875 0.25 0.875 0.25
		 0.875 0.25 0.875 0.25 0.875 0.25 0.625 0.25 0.875 0.22118346 0.875 0.25 0.625 0.25
		 0.6250003 0.22068509 0.87499976 0.25 0.625 0.25 0.37499991 0.22072099 0.375 0.25
		 0.125 0.25 0.1250001 0.22127777 0.875 0 0.875 0 0.875 0.125 0.875 0.125 0.5828737
		 0.25 0.55527806 0.25 0.55526769 0.25 0.58179593 0.25 0.125 0 0.13679448 0.048623461
		 0.12500009 3.8226651e-07 0.125 0 0.375 0.125 0.375 0.125 0.375 0.125 0.375 0.125
		 0.375 0 0.375 0 0.375 0 0.375 0 0.875 0.20824671 0.875 0.22335236 0.625 0.20244634
		 0.625 0.2197111 0.375 0.18509912 0.375 0.21905658 0.125 0.18978563 0.125 0.22333466
		 0.625 0.25 0.625 0.25 0.875 0.25 0.875 0.25 0.875 0.125 0.87500006 0.125 0.875 0
		 0.87500006 0 0.23970102 0.26887041 0.625 0.67444342 0.625 0.75 0.23970102 0.26887041
		 0.375 0.75 0.37499857 0.6542871 0.15854466 0.26886994 0.15854466 0.26886994 0.625
		 0.25 0.625 0.25 0.52927899 0.5 0.625 0.5 0.625 0.5 0.53094357 0.5 0.875 0.13483366
		 0.875 0.12893313 0.875 0.125 0.875 0.125 0.875 0.125 0.875 0.125 0.875 0.125 0.875
		 0.125 0.15448919 0.12157107 0.125 0 0.125 0 0.125 0 0.125 0 0.125 0 0.375 0.125 0.375
		 0.125 0.375 0.125 0.375 0.125 0.375 0.125 0.37499997 0.125 0.375 0 0.375 0 0.375
		 0 0.375 0 0.375 0 0.375 0 0.375 0 0.375 0 0.375 0 0.375 0 0.375 0 0.375 0 0.375 0
		 0.375 0 0.875 0 0.875 0 0.875 0 0.875 0 0.875 0 0.875 0 0.875 0 0.875 0 0.625 0.25
		 0.625 0.125 0.625 0.20052534 0.875 0 0.875 0 0.875 0.25 0.875 0.24999991 0.625 0.125
		 0.625 0 0.625 0.081157662 0.375 0.62496644 0.15854466 0.26886994 0.875 0.125 0.875
		 0.125 0.375 0 0.375 0 0.875 0 0.875 0 0.875 0.125 0.875 0.125 0.625 0.6249485 0.23970102
		 0.26887041 0.625 0.25 0.625 0.25 0.375 0.25 0.375 0.25 0.875 0 0.875 0 0.125 0 0.125
		 0 0.5 0.5 0.5 0.5 0.875 0.25 0.875 0.25 0.375 0 0.375 0 0.375 0.125 0.375 0.125 0.875
		 0 0.875 0 0.375 0 0.375 0 0.875 0.125 0.875 0.125 0.125 0.25 0.125 0.25 0.625 0.24999985
		 0.77605069 0 0.625 0 0.875 0.20615765 0.625 0.12499991 0.15726577 0.14746988 0.15105055
		 0.13034801 0.64278167 0.061706435 0.64461672 0.026336955 0.53471935 0.14339197 0.6435982
		 0.011417356 0.69413859 0.010349326 0.375 0.076529667 0.375 0.11063422 0.35940534
		 0.038234584 0.3631821 0.02897482 0.35859305 0.040226024 0.35433534 0.039752595 0.375
		 0.25 0.125 0.074259073 0.125 0.069732383 0.375 0.076112397 0.375 0.079400904 0.32611242
		 0.75 0.32940087 0.75 0.5507409 0.25 0.55526769 0.25 0.375 0.076312453 0.375 0.093769565
		 0.55498308 0.25 0.53309858 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 259 ".vt";
	setAttr ".vt[0:165]"  -0.87760699 62.26781082 19.17245674 0.87760699 62.26781082 19.17245674
		 12.16030502 64.77918243 16.30732155 12.16030502 64.61895752 15.11315441 10.26049614 60.59718704 16.46036911
		 10.26049709 61.53208542 17.83709908 -12.16030502 64.61895752 15.11315441 -12.16030693 64.77918243 16.30732155
		 -10.26049614 60.59718704 16.46036911 -10.26049805 61.53208542 17.83709908 3.98043442 64.26618195 19.58178902
		 3.98043442 64.60520172 18.55301666 3.60602164 62.1023407 19.0033798218 3.23020148 60.40084076 19.19861984
		 3.23020172 61.27700806 20.13765335 3.60602164 62.23194122 19.96927834 -3.98043442 64.26618195 19.58178902
		 -3.60602164 62.23194122 19.96927834 -3.23020172 61.27700806 20.13765335 -3.23020148 60.40084076 19.19861984
		 -3.60602164 62.1023407 19.0033798218 -3.98043442 64.60520172 18.55301666 6.50638247 65.6556778 18.73529816
		 6.50638247 65.99469757 17.70652771 5.84446096 62.29217529 18.6307869 4.94132996 59.53879547 19.00021743774
		 5.3881073 60.30195999 20.0099906921 5.84446096 62.421772 19.59668541 -6.50638247 65.6556778 18.73529816
		 -5.84446096 62.421772 19.59668541 -5.3881073 60.30195999 20.0099906921 -4.94132996 59.53879547 19.00021743774
		 -5.84446096 62.29217529 18.6307869 -6.50638247 65.99469757 17.70652771 9.17929363 67.081512451 17.53380203
		 9.17929363 67.42053223 16.50502777 8.53084469 63.26586914 17.80185318 7.65733242 59.4799881 18.60430717
		 7.65733242 60.36215973 19.58805847 8.53084469 63.39546585 18.76774979 -9.17929363 67.081512451 17.53380203
		 -8.53084469 63.39546585 18.76774979 -7.65733242 60.36215973 19.58805847 -7.65733242 59.4799881 18.60430717
		 -8.53084469 63.26586914 17.80185318 -9.17929363 67.42053223 16.50502777 -3.4112665e-07 62.5909462 19.1291008
		 3.4112665e-07 62.80345154 20.083875656 1.18177474 64.45087433 19.86283493 0.95108199 64.31203461 18.89817619
		 6.9154351e-07 60.82210541 20.34972 -6.7865113e-07 60.4095726 19.42178154 13.49739742 64.93243408 15.36477184
		 13.7236433 64.8205719 14.39649296 -13.7236433 64.82057953 14.396492 -13.49739742 64.93242645 15.3647728
		 -1.18177307 64.45087433 19.86283493 -0.95108372 64.31203461 18.89817619 11.2592659 59.52701187 16.60395813
		 11.12117004 59.83527374 17.54588318 -11.2592659 59.52701187 16.60395813 -11.12117004 59.83527374 17.54588318
		 3.83924818 66.34686279 19.1529541 3.70720291 66.26676178 18.1804142 2.30169702 59.14855194 19.366642
		 2.46897626 59.51505661 20.30075645 -3.71073413 66.26802826 18.18024445 -3.83584309 66.34563446 19.15311813
		 -2.46898818 59.51505661 20.30075645 -2.30168414 59.14855194 19.366642 6.6699791 67.89177704 18.091617584
		 6.64295101 67.86847687 17.11145592 4.93504429 57.99068451 19.20793152 5.0071873665 58.39934921 20.13638878
		 -5.0071854591 58.39934921 20.13638878 -4.93504715 57.99068451 19.20793152 -6.65951014 67.87443542 17.11065674
		 -6.6540122 67.8860321 18.092388153 11.00091075897 70.17919159 15.76956177 11.13454437 70.24636841 14.77726269
		 7.95837116 57.94459915 18.81031609 7.93835688 58.34870911 19.73938179 -7.93834877 58.34870911 19.73938179
		 -7.95837927 57.94459915 18.81031609 -11.10624409 70.25154114 14.81584167 -10.97362137 70.16936493 15.77088165
		 1.149223e-06 61.44752884 20.76077271 1.19977462 64.31393433 20.35160828 8.0525234e-07 62.58959961 20.54362679
		 12.16030502 64.84442139 16.79353714 13.076235771 64.96694946 15.85510826 -12.16030693 64.84442139 16.79353714
		 -13.076235771 64.96694946 15.85510826 -1.19977164 64.31393433 20.35160828 10.26049614 61.59732056 18.32331467
		 10.86410427 60.2354126 17.98716354 -10.26049519 61.59732056 18.32331467 -10.86410427 60.2354126 17.98716354
		 3.98043466 64.3314209 20.068006516 3.92188954 66.24894714 19.65319443 3.23020148 61.34224701 20.62386894
		 2.78039312 60.023616791 20.72748947 -3.98043466 64.3314209 20.068006516 -3.91871929 66.24781036 19.65334702
		 -3.23020172 61.34224701 20.62386894 -2.78040385 60.023616791 20.72748947 6.50638247 65.72091675 19.22151566
		 6.72029829 67.75036621 18.60555649 5.3881073 60.36719513 20.49620438 5.14147997 58.9864006 20.55258751
		 -5.3881073 60.36719513 20.49620438 -5.14147711 58.9864006 20.55258751 -6.50638247 65.72091675 19.22151566
		 -6.70543289 67.74501801 18.60627556 9.17929363 67.1467514 18.020017624 9.5310812 69.25190735 17.11116791
		 7.65733242 60.42739868 20.07427597 7.90108585 58.92726898 20.15672302 -7.65733242 60.42739868 20.07427597
		 -7.90107679 58.92726898 20.15672302 -9.17929363 67.1467514 18.020017624 -9.49624157 69.23935699 17.1128521
		 0.87760699 62.20257568 18.68624115 4.325514e-17 61.77745056 18.74328041 -0.87760699 62.20257568 18.68624115
		 -3.4112665e-07 62.52220917 18.64335442 0.94148678 64.24636078 18.41201973 -1.4472889e-06 60.33875275 18.93631554
		 12.16030502 64.55371857 14.62693977 13.73305321 64.75602722 13.91018581 -12.16030502 64.55371857 14.62693977
		 -13.73305321 64.75602722 13.91018486 -0.94148839 64.24636078 18.41201973 10.26049614 60.53194809 15.97415352
		 11.26500988 59.4542923 16.11874771 -10.26049614 60.53194809 15.97415352 -11.26500988 59.4542923 16.11874771
		 3.9804337 64.53996277 18.066802979 3.70171118 66.20358276 17.69392204 3.23020148 60.33560181 18.71240616
		 2.29473972 59.073413849 18.88175774 -3.98043442 64.53996277 18.066802979 -3.70524716 66.20485687 17.69375229
		 -3.23020148 60.33560181 18.71240616 -2.29472637 59.073413849 18.88175774 6.50638247 65.92946625 17.22031212
		 6.64182663 67.80784607 16.62462234 4.94132996 59.47355652 18.51400185 4.93204355 57.91378784 18.72328186
		 -4.94132996 59.47355652 18.51400185 -4.93204641 57.91378784 18.72328186 -6.50638247 65.92946625 17.22031212
		 -6.65841007 67.81381226 16.62382126 9.17929363 67.35529327 16.01881218 9.77777481 69.49476624 15.10535812
		 7.65733242 59.41475296 18.11809158 7.9592042 57.86789322 18.32563972 -7.65733242 59.41475296 18.11809158
		 -7.9592123 57.86789322 18.32563972 -9.17929363 67.35529327 16.01881218 -9.81664467 69.5087738 15.10347939
		 -3.4112665e-07 66.56591797 18.38681221 3.4112665e-07 66.69551849 19.35271072 2.074155807 67.36981201 18.84353638
		 2.0741539 67.24021149 17.87763786 -2.0741539 67.36981201 18.84353638;
	setAttr ".vt[166:258]" -2.074155807 67.24021149 17.87763786 4.086825848 70.16213226 17.77729034
		 4.08682251 70.031265259 16.81156349 -4.090353489 70.032539368 16.81139374 -4.083294392 70.16086578 17.7774601
		 6.83086014 76.049949646 15.87708282 6.83086252 75.91439056 14.91198158 -6.84742165 75.92034912 14.9111824
		 -6.81430054 76.043991089 15.877882 12.032952309 79.47734833 12.93643188 12.032953262 79.33376312 11.97240925
		 -12.071764946 79.3477478 11.97053337 -11.99413967 79.46336365 12.93830872 6.71428394 71.11332703 17.42056847
		 3.8477118 67.95887756 18.72770882 0.94933265 65.8547287 19.67447662 3.4112665e-07 64.45384216 19.8624382
		 -0.94933093 65.8547287 19.67447662 -3.84418058 67.95761108 18.72788048 -6.69772387 71.10736847 17.42136765
		 -11.76987648 75.076934814 14.40812111 -11.84750175 74.96131897 13.44034576 -6.73084545 70.9837265 16.45466805
		 -3.85123968 67.82928467 17.76181221 -0.94933265 65.72512817 18.7085762 -3.4112665e-07 64.32424164 18.89653778
		 0.94933093 65.72512817 18.7085762 3.8477087 67.82801819 17.76198196 6.71428633 70.97776794 16.45546722
		 11.80869007 74.94733429 13.44222164 11.80868912 75.090919495 14.40624428 14.32783318 71.55541992 12.68980122
		 15.14440536 71.43271637 12.29397011 15.46150589 70.57835388 12.28028774 15.20158386 70.45840454 13.28299809
		 14.89224815 71.29971313 13.2996912 14.09305191 71.42492676 13.70135212 -14.091930389 71.42586517 13.69613552
		 -14.89206123 71.30088043 13.29763222 -15.20188141 70.4604187 13.28249073 -15.4623127 70.58384705 12.27892017
		 -15.14722633 71.43911743 12.29464531 -14.33312416 71.56541443 12.69468689 12.58995533 68.16860199 15.32624149
		 11.73071194 68.2687149 15.78539085 12.92579746 67.36484528 15.29010963 12.93613529 67.49272156 15.75883484
		 12.61333179 68.26526642 15.79356575 11.78744888 68.36149597 16.23488808 14.71818733 70.064605713 13.83732033
		 14.42739677 70.87875366 13.85795498 13.67046547 71.0087051392 14.26592064 -12.58995628 68.16860199 15.32624149
		 -12.92579842 67.36484528 15.29010963 -11.73071289 68.26872253 15.78539085 -12.93613625 67.49272156 15.75883484
		 -12.61333275 68.26526642 15.79356384 -11.78744984 68.36149597 16.23488617 -14.7131443 70.030387878 13.84628773
		 -14.42503357 70.86711884 13.85938072 -13.66854668 71.0091171265 14.26118183 12.25766754 68.40245819 14.57752895
		 12.5970602 67.58935547 14.48156738 11.3954134 68.49620819 15.070772171 12.60830307 67.60057831 13.97909355
		 12.28508186 68.37493134 14.070482254 11.46391392 68.46421814 14.54022217 15.49080086 70.64902496 11.76133442
		 15.15132904 71.41552734 11.80148125 14.31317902 71.48864746 12.21630573 -12.25766754 68.40245819 14.57752895
		 -11.3954134 68.49620819 15.070772171 -12.5970602 67.58935547 14.48156738 -12.60830307 67.60057068 13.97909355
		 -12.28508186 68.37493134 14.0704813 -11.46391392 68.46421814 14.54022217 -15.49064445 70.64797974 11.76159286
		 -15.15110779 71.41436768 11.80379009 -14.31314659 71.48698425 12.22235203 1.65973043 62.40129852 20.10769081
		 1.87596369 62.086223602 20.13480377 1.84718871 62.80957031 20.02022934 1.87596452 62.15146255 20.62101936
		 1.66277039 62.50789642 20.58342743 1.84718966 62.87480927 20.50644493 1.29566014 62.49821854 20.61979866
		 -1.65973043 62.40129852 20.10769081 -1.84718883 62.80957031 20.02022934 -1.87596369 62.086223602 20.13480377
		 -1.87596369 62.15146255 20.62101936 -1.29565907 62.49821854 20.61979866 -1.84718883 62.87480927 20.50644493
		 -1.66276956 62.50789642 20.58342743;
	setAttr -s 515 ".ed";
	setAttr ".ed[0:165]"  1 12 0 1 11 0 2 211 0 1 13 0 3 4 0 5 2 0 0 20 0 7 219 0
		 0 21 0 0 19 0 9 7 0 6 8 0 10 22 0 11 23 0 12 24 0 11 12 1 13 25 0 12 13 1 14 26 0
		 15 27 0 14 15 1 15 10 1 16 28 0 17 29 0 16 17 1 18 30 0 17 18 1 19 31 0 20 32 0 19 20 1
		 21 33 0 20 21 1 22 34 0 23 35 0 24 36 0 23 24 1 25 37 0 24 25 1 26 38 0 27 39 0 26 27 1
		 27 22 1 28 40 0 29 41 0 28 29 1 30 42 0 29 30 1 31 43 0 32 44 0 31 32 1 33 45 0 32 33 1
		 34 210 0 35 229 0 36 3 1 35 36 1 37 4 0 36 37 1 38 5 0 39 2 1 38 39 1 39 34 1 40 220 0
		 41 7 1 40 41 1 42 9 0 41 42 1 43 8 0 44 6 1 43 44 1 45 237 0 44 45 1 47 48 0 46 49 0
		 50 51 1 52 53 1 54 55 1 56 47 0 57 46 0 58 59 0 53 58 1 59 52 1 60 61 0 61 55 1 54 60 1
		 48 62 0 49 63 0 51 64 1 64 65 1 50 65 1 57 66 0 56 67 0 50 68 1 68 69 1 51 69 1 62 70 0
		 63 71 0 64 72 1 72 73 1 65 73 1 68 74 1 74 75 1 69 75 1 66 76 0 67 77 0 70 78 0 78 79 0
		 71 79 0 72 80 1 80 81 1 73 81 1 74 82 1 82 83 1 75 83 1 76 84 0 84 85 0 77 85 0 80 58 1
		 81 59 1 82 61 1 83 60 1 86 251 1 48 87 0 47 88 0 88 87 0 86 88 1 50 86 0 2 89 1 52 90 1
		 89 90 1 7 91 1 55 92 1 91 92 1 56 93 0 93 88 0 5 94 1 94 89 0 59 95 1 94 95 1 95 90 0
		 9 96 1 96 91 0 61 97 1 97 92 0 96 97 1 10 98 1 62 99 1 98 99 1 87 99 0 14 100 0 65 101 0
		 86 101 0 100 101 1 16 102 1 67 103 1 93 103 0 102 103 1 18 104 0 68 105 0 104 105 1
		 86 105 0 22 106 1 98 106 0 70 107 1 106 107 1 99 107 0;
	setAttr ".ed[166:331]" 26 108 1 100 108 0 73 109 1 101 109 0 108 109 1 30 110 1
		 104 110 0 74 111 1 110 111 1 105 111 0 28 112 1 102 112 0 77 113 1 103 113 0 112 113 1
		 34 114 1 106 114 0 78 115 1 114 115 1 107 115 0 38 116 1 108 116 0 81 117 1 109 117 0
		 116 117 1 42 118 1 110 118 0 82 119 1 118 119 1 111 119 0 40 120 1 112 120 0 85 121 1
		 113 121 0 120 121 1 116 94 0 117 95 0 118 96 0 119 97 0 1 122 1 122 123 1 0 124 0
		 123 124 1 46 125 0 123 125 1 49 126 0 125 126 0 122 126 1 51 127 1 122 127 1 123 127 1
		 3 128 1 53 129 1 128 129 1 6 130 1 54 131 1 130 131 1 124 127 1 57 132 0 124 132 1
		 132 125 0 4 133 1 128 133 0 58 134 1 129 134 0 133 134 1 8 135 1 130 135 0 60 136 1
		 135 136 1 131 136 0 11 137 1 122 137 0 63 138 1 126 138 0 137 138 1 13 139 0 122 139 0
		 64 140 0 139 140 1 127 140 0 21 141 1 124 141 0 66 142 1 141 142 1 132 142 0 19 143 0
		 124 143 0 69 144 0 127 144 0 143 144 1 23 145 1 137 145 0 71 146 1 138 146 0 145 146 1
		 25 147 1 139 147 0 72 148 1 147 148 1 140 148 0 31 149 1 143 149 0 75 150 1 144 150 0
		 149 150 1 33 151 1 141 151 0 76 152 1 151 152 1 142 152 0 35 153 1 145 153 0 79 154 1
		 146 154 0 153 154 1 37 155 1 147 155 0 80 156 1 155 156 1 148 156 0 43 157 1 149 157 0
		 83 158 1 150 158 0 157 158 1 45 159 1 151 159 0 84 160 1 159 160 1 152 160 0 155 133 0
		 156 134 0 157 135 0 158 136 0 46 191 0 47 182 0 161 162 1 48 181 1 162 163 0 49 192 1
		 163 164 0 161 164 0 56 183 1 165 162 0 57 190 1 166 161 0 165 166 0 62 180 1 163 167 0
		 63 193 1 167 168 1 164 168 0 66 189 1 166 169 0 67 184 1 169 170 1 165 170 0 70 179 1
		 167 171 0 71 194 1 171 172 1 168 172 0 76 188 1 169 173 0 77 185 1;
	setAttr ".ed[332:497]" 173 174 1 170 174 0 78 196 0 171 175 0 79 195 0 175 176 0
		 172 176 0 84 187 0 173 177 0 85 186 0 177 178 0 174 178 0 179 171 1 180 167 1 179 180 1
		 181 163 1 180 181 1 182 162 0 181 182 1 183 165 1 182 183 1 184 170 1 183 184 1 185 174 1
		 184 185 1 186 178 0 185 186 1 187 177 0 186 187 1 188 173 1 187 188 1 189 169 1 188 189 1
		 190 166 1 189 190 1 191 161 0 190 191 1 192 164 1 191 192 1 193 168 1 192 193 1 194 172 1
		 193 194 1 195 176 0 194 195 1 196 175 0 195 196 1 196 179 1 228 3 0 238 6 0 235 197 1
		 199 233 1 199 198 1 198 201 1 201 200 0 200 199 1 198 197 1 197 202 1 202 201 0 216 215 1
		 215 200 1 202 217 1 217 216 1 226 203 1 205 224 1 205 204 0 204 207 1 207 206 1 206 205 1
		 204 203 0 203 208 1 208 207 1 243 242 0 242 206 1 208 244 1 244 243 0 210 209 0 214 210 0
		 209 211 0 211 212 0 214 213 0 217 214 1 213 212 0 212 215 1 219 218 0 218 222 0 222 221 0
		 221 219 0 218 220 0 220 223 0 223 222 0 225 224 1 224 221 1 223 226 1 226 225 1 228 227 0
		 227 231 0 231 230 0 230 228 0 227 229 0 229 232 0 232 231 0 234 233 0 233 230 1 232 235 1
		 235 234 0 237 236 0 241 237 0 236 238 0 238 239 0 241 240 0 244 241 1 240 239 0 239 242 1
		 53 199 1 200 52 1 55 205 1 206 54 1 78 202 0 197 79 1 84 208 1 203 85 0 128 230 0
		 233 129 0 212 89 0 90 215 1 91 221 0 224 92 1 239 130 0 131 242 0 114 214 0 217 115 0
		 232 153 0 154 235 0 159 241 0 244 160 0 223 120 0 121 226 0 201 216 1 207 243 1 209 213 0
		 213 216 1 222 225 1 204 225 1 231 234 1 198 234 1 236 240 0 240 243 1 209 39 1 218 41 1
		 227 36 1 236 44 1 246 14 0 245 15 0 247 10 0 248 100 0 250 98 0 251 87 1 248 251 1
		 250 251 1 253 16 0 252 17 0 254 18 0 255 104 0 256 86 1 256 93 1;
	setAttr ".ed[498:514]" 257 102 0 255 256 1 257 256 1 246 248 1 250 247 1 253 257 1
		 255 254 1 246 245 0 245 249 0 249 248 0 245 247 0 250 249 0 253 252 0 252 258 0 258 257 0
		 252 254 0 255 258 0;
	setAttr -s 258 -ch 1030 ".fc[0:257]" -type "polyFaces" 
		f 4 303 305 307 -309
		mu 0 4 0 1 2 3
		f 4 310 -304 -313 -314
		mu 0 4 4 1 0 5
		f 4 -80 -81 -76 -82
		mu 0 4 6 7 8 9
		f 4 82 83 -77 84
		mu 0 4 10 11 12 13
		f 3 1 15 -1
		mu 0 3 14 15 16
		f 4 -308 315 317 -319
		mu 0 4 17 18 19 20
		f 4 74 87 88 -90
		mu 0 4 21 22 23 24
		f 3 0 17 -4
		mu 0 3 25 26 27
		f 4 313 320 322 -324
		mu 0 4 28 29 30 31
		f 3 6 31 -9
		mu 0 3 32 33 34
		f 4 -75 92 93 -95
		mu 0 4 35 36 37 38
		f 3 9 29 -7
		mu 0 3 39 40 41
		f 4 -318 325 327 -329
		mu 0 4 42 43 44 45
		f 4 -16 13 35 -15
		mu 0 4 46 47 48 49
		f 4 -18 14 37 -17
		mu 0 4 27 26 50 51
		f 4 -89 97 98 -100
		mu 0 4 24 23 52 53
		f 4 -21 18 40 -20
		mu 0 4 54 55 56 57
		f 4 -22 19 41 -13
		mu 0 4 58 59 60 61
		f 4 -25 22 44 -24
		mu 0 4 62 63 64 65
		f 4 -27 23 46 -26
		mu 0 4 66 67 68 69
		f 4 -94 100 101 -103
		mu 0 4 38 37 70 71
		f 4 -30 27 49 -29
		mu 0 4 41 40 72 73
		f 4 -32 28 51 -31
		mu 0 4 34 33 74 75
		f 4 -323 330 332 -334
		mu 0 4 31 30 76 77
		f 4 -328 335 337 -339
		mu 0 4 78 79 80 81
		f 4 -36 33 55 -35
		mu 0 4 82 83 84 85
		f 4 -38 34 57 -37
		mu 0 4 51 50 86 87
		f 4 -99 108 109 -111
		mu 0 4 53 52 88 89
		f 4 -41 38 60 -40
		mu 0 4 57 56 90 91
		f 4 -42 39 61 -33
		mu 0 4 92 93 94 95
		f 4 -45 42 64 -44
		mu 0 4 65 64 96 97
		f 4 -47 43 66 -46
		mu 0 4 69 68 98 99
		f 4 -102 111 112 -114
		mu 0 4 71 70 100 101
		f 4 -50 47 69 -49
		mu 0 4 73 72 102 103
		f 4 -52 48 71 -51
		mu 0 4 75 74 104 105
		f 4 -333 340 342 -344
		mu 0 4 77 76 106 107
		f 4 -58 54 4 -57
		mu 0 4 87 86 108 109
		f 4 -110 117 79 -119
		mu 0 4 89 88 110 111
		f 4 -61 58 5 -60
		mu 0 4 91 90 112 113
		f 4 -67 63 -11 -66
		mu 0 4 99 98 114 115
		f 4 -113 119 -83 -121
		mu 0 4 101 100 11 10
		f 4 -70 67 -12 -69
		mu 0 4 103 102 116 117
		f 4 121 489 -125 -126
		mu 0 4 118 119 120 121
		f 4 206 210 212 -214
		mu 0 4 122 123 124 125
		f 3 -207 215 -217
		mu 0 3 126 127 128
		f 3 -209 216 -224
		mu 0 3 129 126 128
		f 4 208 225 226 -211
		mu 0 4 123 130 131 124
		f 4 -229 219 230 -232
		mu 0 4 132 133 134 135
		f 4 -137 138 139 -130
		mu 0 4 136 137 138 139
		f 4 141 132 -144 -145
		mu 0 4 140 141 142 143
		f 4 233 235 -237 -223
		mu 0 4 144 145 146 147
		f 4 -239 213 240 -242
		mu 0 4 148 149 150 151
		f 4 243 245 -247 -216
		mu 0 4 152 153 154 155
		f 5 -488 490 -122 151 -153
		mu 0 5 156 157 158 159 160
		f 4 248 250 -252 -226
		mu 0 4 161 162 163 164
		f 5 -499 500 497 155 -157
		mu 0 5 165 166 167 168 169
		f 4 -254 223 255 -257
		mu 0 4 170 171 172 173
		f 4 162 164 -166 -148
		mu 0 4 174 175 176 177
		f 4 -259 241 260 -262
		mu 0 4 178 179 180 181
		f 4 263 265 -267 -246
		mu 0 4 153 182 183 154
		f 4 -168 152 169 -171
		mu 0 4 184 156 160 185
		f 4 172 174 -176 -160
		mu 0 4 186 187 188 189
		f 4 -269 256 270 -272
		mu 0 4 190 170 173 191
		f 4 273 275 -277 -251
		mu 0 4 162 192 193 163
		f 4 -178 156 179 -181
		mu 0 4 194 165 169 195
		f 4 182 184 -186 -165
		mu 0 4 196 197 198 199
		f 4 -279 261 280 -282
		mu 0 4 200 201 202 203
		f 4 283 285 -287 -266
		mu 0 4 182 204 205 183
		f 4 -188 170 189 -191
		mu 0 4 206 184 185 207
		f 4 192 194 -196 -175
		mu 0 4 187 208 209 188
		f 4 -289 271 290 -292
		mu 0 4 210 190 191 211
		f 4 293 295 -297 -276
		mu 0 4 192 212 213 193
		f 4 -198 180 199 -201
		mu 0 4 214 194 195 215
		f 4 297 231 -299 -286
		mu 0 4 204 216 217 205
		f 4 -202 190 202 -139
		mu 0 4 218 206 207 219
		f 4 203 144 -205 -195
		mu 0 4 208 140 143 209
		f 4 -300 291 300 -236
		mu 0 4 145 210 211 146
		f 4 -73 123 124 -123
		mu 0 4 220 221 222 223
		f 4 -78 133 134 -124
		mu 0 4 224 225 226 227
		f 4 -6 135 136 -128
		mu 0 4 228 229 230 231
		f 4 81 128 -140 -138
		mu 0 4 232 233 234 235
		f 4 10 130 -142 -141
		mu 0 4 236 237 238 239
		f 4 -84 142 143 -132
		mu 0 4 240 241 242 243
		f 4 502 486 145 -489
		mu 0 4 244 245 246 247
		f 4 -86 122 148 -147
		mu 0 4 248 249 250 251
		f 4 -485 501 487 -150
		mu 0 4 252 253 254 255
		f 4 89 150 -152 -127
		mu 0 4 256 257 258 259
		f 4 -493 503 498 -154
		mu 0 4 260 261 262 263
		f 4 91 154 -156 -134
		mu 0 4 264 265 266 267
		f 4 504 494 157 -496
		mu 0 4 268 269 270 271
		f 4 -93 126 160 -159
		mu 0 4 272 273 274 275
		f 4 12 161 -163 -146
		mu 0 4 276 277 278 279
		f 4 -96 146 165 -164
		mu 0 4 280 281 282 283
		f 4 -19 149 167 -167
		mu 0 4 284 285 286 287
		f 4 99 168 -170 -151
		mu 0 4 288 289 290 291
		f 4 25 171 -173 -158
		mu 0 4 66 292 293 186
		f 4 -101 158 175 -174
		mu 0 4 294 295 189 296
		f 4 -23 153 177 -177
		mu 0 4 297 298 299 300
		f 4 104 178 -180 -155
		mu 0 4 301 302 303 304
		f 4 32 181 -183 -162
		mu 0 4 305 95 197 306
		f 4 -106 163 185 -184
		mu 0 4 307 308 309 198
		f 4 -39 166 187 -187
		mu 0 4 310 311 312 313
		f 4 110 188 -190 -169
		mu 0 4 314 315 316 317
		f 4 45 191 -193 -172
		mu 0 4 318 319 320 321
		f 4 -112 173 195 -194
		mu 0 4 322 323 324 325
		f 4 -43 176 197 -197
		mu 0 4 326 327 328 329
		f 4 116 198 -200 -179
		mu 0 4 330 331 332 333
		f 4 -59 186 201 -136
		mu 0 4 334 335 336 337
		f 4 118 137 -203 -189
		mu 0 4 338 339 340 341
		f 4 65 140 -204 -192
		mu 0 4 342 343 344 345
		f 4 -120 193 204 -143
		mu 0 4 346 347 348 349
		f 4 73 211 -213 -210
		mu 0 4 350 351 352 353
		f 4 78 209 -227 -225
		mu 0 4 354 355 356 357
		f 4 -5 217 228 -228
		mu 0 4 358 359 133 360
		f 4 80 229 -231 -219
		mu 0 4 8 361 362 134
		f 4 11 232 -234 -221
		mu 0 4 363 364 365 366
		f 4 -85 221 236 -235
		mu 0 4 367 368 369 370
		f 4 -2 205 238 -238
		mu 0 4 371 372 373 374
		f 4 86 239 -241 -212
		mu 0 4 375 376 377 378
		f 4 3 242 -244 -206
		mu 0 4 379 380 381 382
		f 4 -88 214 246 -245
		mu 0 4 383 384 385 386
		f 4 8 247 -249 -208
		mu 0 4 387 388 389 390
		f 4 -91 224 251 -250
		mu 0 4 391 392 393 394
		f 4 -10 207 253 -253
		mu 0 4 395 396 397 398
		f 4 94 254 -256 -215
		mu 0 4 399 400 401 402
		f 4 -14 237 258 -258
		mu 0 4 403 404 405 406
		f 4 96 259 -261 -240
		mu 0 4 407 408 409 410
		f 4 16 262 -264 -243
		mu 0 4 411 412 413 414
		f 4 -98 244 266 -265
		mu 0 4 415 416 417 418
		f 4 -28 252 268 -268
		mu 0 4 419 420 421 422
		f 4 102 269 -271 -255
		mu 0 4 423 424 425 426
		f 4 30 272 -274 -248
		mu 0 4 427 428 429 430
		f 4 -104 249 276 -275
		mu 0 4 431 432 433 434
		f 4 -34 257 278 -278
		mu 0 4 435 436 437 438
		f 4 107 279 -281 -260
		mu 0 4 439 440 441 442
		f 4 36 282 -284 -263
		mu 0 4 443 444 445 446
		f 4 -109 264 286 -285
		mu 0 4 447 448 449 450
		f 4 -48 267 288 -288
		mu 0 4 451 452 453 454
		f 4 113 289 -291 -270
		mu 0 4 455 456 457 458
		f 4 50 292 -294 -273
		mu 0 4 459 460 461 462
		f 4 -115 274 296 -295
		mu 0 4 463 464 465 466
		f 4 56 227 -298 -283
		mu 0 4 467 468 469 470
		f 4 -118 284 298 -230
		mu 0 4 471 472 473 474
		f 4 -68 287 299 -233
		mu 0 4 475 476 477 478
		f 4 120 234 -301 -290
		mu 0 4 479 480 481 482
		f 4 72 304 350 -303
		mu 0 4 483 484 485 486
		f 4 -74 301 370 -307
		mu 0 4 487 488 489 490
		f 4 77 302 352 -310
		mu 0 4 491 492 486 493
		f 4 -79 311 368 -302
		mu 0 4 494 495 496 489
		f 4 85 314 348 -305
		mu 0 4 497 498 499 485
		f 4 -87 306 372 -317
		mu 0 4 500 501 502 503
		f 4 90 319 366 -312
		mu 0 4 504 505 506 507
		f 4 -92 309 354 -322
		mu 0 4 508 509 510 511
		f 4 95 324 346 -315
		mu 0 4 512 513 514 515
		f 4 -97 316 374 -327
		mu 0 4 516 517 518 519
		f 4 103 329 364 -320
		mu 0 4 520 521 522 506
		f 4 -105 321 356 -332
		mu 0 4 523 524 511 525
		f 4 105 334 379 -325
		mu 0 4 526 307 527 528
		f 4 106 336 378 -335
		mu 0 4 307 529 530 527
		f 4 -108 326 376 -337
		mu 0 4 529 531 532 530
		f 4 114 339 362 -330
		mu 0 4 533 534 535 522
		f 4 115 341 360 -340
		mu 0 4 534 536 537 535
		f 4 -117 331 358 -342
		mu 0 4 536 538 525 537
		f 4 -347 344 -326 -346
		mu 0 4 515 514 539 540
		f 4 -349 345 -316 -348
		mu 0 4 485 499 541 2
		f 4 -351 347 -306 -350
		mu 0 4 486 485 2 1
		f 4 -353 349 -311 -352
		mu 0 4 493 486 1 4
		f 4 -355 351 323 -354
		mu 0 4 511 510 28 31
		f 4 -357 353 333 -356
		mu 0 4 525 511 31 77
		f 4 -359 355 343 -358
		mu 0 4 537 525 77 107
		f 4 -361 357 -343 -360
		mu 0 4 535 537 107 106
		f 4 -363 359 -341 -362
		mu 0 4 522 535 106 76
		f 4 -365 361 -331 -364
		mu 0 4 506 522 76 30
		f 4 -367 363 -321 -366
		mu 0 4 507 506 30 29
		f 4 -369 365 312 -368
		mu 0 4 489 496 5 0
		f 4 -371 367 308 -370
		mu 0 4 490 489 0 3
		f 4 -373 369 318 -372
		mu 0 4 503 502 542 543
		f 4 -375 371 328 -374
		mu 0 4 519 518 544 545
		f 4 -377 373 338 -376
		mu 0 4 530 532 546 81
		f 4 -379 375 -338 -378
		mu 0 4 527 530 81 80
		f 4 -380 377 -336 -345
		mu 0 4 528 527 80 547
		f 4 384 385 386 387
		mu 0 4 548 549 550 551
		f 4 388 389 390 -386
		mu 0 4 549 552 553 550
		f 4 397 398 399 400
		mu 0 4 554 555 556 557
		f 4 401 402 403 -399
		mu 0 4 558 559 560 561
		f 4 416 417 418 419
		mu 0 4 562 563 564 565
		f 4 420 421 422 -418
		mu 0 4 566 567 568 569
		f 4 427 428 429 430
		mu 0 4 570 571 572 573
		f 4 431 432 433 -429
		mu 0 4 574 575 576 577
		f 4 75 446 -388 447
		mu 0 4 9 8 548 551
		f 4 76 448 -401 449
		mu 0 4 13 12 554 557
		f 4 -107 450 -390 451
		mu 0 4 529 307 553 552
		f 4 -116 452 -403 453
		mu 0 4 536 534 560 559
		f 4 454 -436 455 -220
		mu 0 4 133 578 579 134
		f 4 456 129 457 -416
		mu 0 4 580 136 139 581
		f 4 458 -425 459 -133
		mu 0 4 141 582 583 142
		f 4 460 222 461 -446
		mu 0 4 584 144 147 585
		f 4 462 -414 463 -185
		mu 0 4 197 586 587 198
		f 4 464 281 465 -437
		mu 0 4 588 200 203 589
		f 4 466 -444 467 -296
		mu 0 4 212 590 591 213
		f 4 468 200 469 -426
		mu 0 4 592 214 215 593
		f 4 -412 -3 127 -457
		mu 0 4 594 595 596 597
		f 4 -448 -393 -458 -129
		mu 0 4 598 599 600 601
		f 4 7 -420 -459 -131
		mu 0 4 602 562 565 603
		f 4 -449 131 -460 -397
		mu 0 4 604 605 606 607
		f 4 52 -410 -463 -182
		mu 0 4 608 609 610 611
		f 4 -451 183 -464 -394
		mu 0 4 612 613 614 615
		f 4 -422 -63 196 -469
		mu 0 4 568 567 616 617
		f 4 -454 -396 -470 -199
		mu 0 4 618 619 620 621
		f 4 -381 -431 -455 -218
		mu 0 4 622 570 573 623
		f 4 -447 218 -456 -384
		mu 0 4 624 625 626 627
		f 4 -442 381 220 -461
		mu 0 4 628 629 630 631
		f 4 -450 -406 -462 -222
		mu 0 4 632 633 634 635
		f 4 -433 -54 277 -465
		mu 0 4 576 575 636 637
		f 4 -452 -383 -466 -280
		mu 0 4 638 639 640 641
		f 4 70 -440 -467 -293
		mu 0 4 642 643 644 645
		f 4 -453 294 -468 -407
		mu 0 4 646 647 648 649
		f 4 480 59 2 -411
		mu 0 4 650 94 651 652
		f 4 481 -65 62 -421
		mu 0 4 653 97 96 654
		f 4 482 -56 53 -432
		mu 0 4 655 85 84 656
		f 4 483 68 -382 -441
		mu 0 4 657 104 658 659
		f 4 -387 470 391 392
		mu 0 4 599 660 661 600
		f 4 -391 393 394 -471
		mu 0 4 662 612 615 663
		f 4 -400 471 404 405
		mu 0 4 633 664 665 634
		f 4 -404 406 407 -472
		mu 0 4 666 646 649 667
		f 4 408 472 -413 409
		mu 0 4 609 668 669 610
		f 4 410 411 -415 -473
		mu 0 4 670 595 594 671
		f 4 412 473 -395 413
		mu 0 4 586 672 673 587
		f 4 414 415 -392 -474
		mu 0 4 672 580 581 673
		f 4 -419 474 423 424
		mu 0 4 582 674 675 583
		f 4 -423 425 426 -475
		mu 0 4 676 592 593 677
		f 4 -402 475 -427 395
		mu 0 4 619 678 679 620
		f 4 -398 396 -424 -476
		mu 0 4 680 604 607 681
		f 4 -430 476 434 435
		mu 0 4 578 682 683 579
		f 4 -434 436 437 -477
		mu 0 4 682 588 589 683
		f 4 -389 477 -438 382
		mu 0 4 639 684 685 640
		f 4 -385 383 -435 -478
		mu 0 4 686 624 627 687
		f 4 438 478 -443 439
		mu 0 4 643 688 689 644
		f 4 440 441 -445 -479
		mu 0 4 690 629 628 691
		f 4 442 479 -408 443
		mu 0 4 590 692 693 591
		f 4 444 445 -405 -480
		mu 0 4 694 584 585 695
		f 4 -409 -53 -62 -481
		mu 0 4 650 696 95 94
		f 4 -417 -8 -64 -482
		mu 0 4 653 697 698 97
		f 4 -428 380 -55 -483
		mu 0 4 655 699 359 85
		f 4 -439 -71 -72 -484
		mu 0 4 657 700 105 104
		f 4 -506 484 20 -486
		mu 0 4 701 702 55 54
		f 4 -509 485 21 -487
		mu 0 4 703 704 59 58
		f 5 -492 488 147 -149 -490
		mu 0 5 119 705 174 177 120
		f 4 -511 492 24 -494
		mu 0 4 706 707 63 62
		f 4 -514 493 26 -495
		mu 0 4 708 709 67 66
		f 5 -500 495 159 -161 -497
		mu 0 5 710 711 186 189 712
		f 4 496 125 -135 -498
		mu 0 4 713 118 121 714
		f 4 505 506 507 -502
		mu 0 4 253 715 716 254
		f 4 508 -503 509 -507
		mu 0 4 717 245 244 718
		f 4 510 511 512 -504
		mu 0 4 261 719 720 262
		f 4 513 -505 514 -512
		mu 0 4 721 269 268 722
		f 4 -491 -508 -510 491
		mu 0 4 723 724 718 244
		f 4 -501 -513 -515 499
		mu 0 4 725 726 722 268;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vcs" 2;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "mask1ShapeDeformed" -p "heropengin_model_3:mask1";
	rename -uid "02BB4077-4DB9-BC95-C4C4-5AB70BA54959";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "heropengin_model_3:body" -p "heropengin_model_3:model";
	rename -uid "857D86DD-4F0F-5698-FDEE-99A8A506A6EB";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "heropengin_model_3:bodyShape" -p "heropengin_model_3:body";
	rename -uid "E7411614-413B-95FA-434B-41B1F8497C4F";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.24910768866539001 0.066072061657905579 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 1485 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.58333331 0.25 0.625 0.25
		 0.625 0.125 0.58333331 0.125 0.625 0.625 0.625 0.5 0.58333331 0.5 0.58333331 0.625
		 0.58333331 1 0.625 1 0.625 0.75 0.58333331 0.75 0.625 0.125 0.625 0.25 0.875 0.25
		 0.875 0.125 0.125 0.125 0.125 0.25 0.375 0.25 0.375 0.125 0.41666663 1 0.45833325
		 1 0.45833325 0.75 0.41666663 0.75 0.45833325 0.625 0.45833325 0.5 0.41666663 0.5
		 0.41666663 0.625 0.41666663 0.25 0.45833325 0.25 0.45833325 0.125 0.41666663 0.125
		 0.49999994 1 0.54166663 1 0.54166663 0.75 0.49999994 0.75 0.54166663 0.625 0.54166663
		 0.5 0.49999994 0.5 0.49999994 0.625 0.49999994 0.25 0.54166663 0.25 0.54166663 0.125
		 0.49999994 0.125 0.54166663 0.25 0.54166663 0.25 0.54166663 0.125 0.54166663 0.125
		 0.58333331 0 0.625 0 0.625 0 0.58333331 0 0.625 0.125 0.625 0.25 0.625 0.25 0.625
		 0.125 0.625 0.25 0.58333331 0.25 0.58333331 0.25 0.41666663 0 0.45833325 0 0.45833325
		 0 0.41666663 0 0.45833325 0.125 0.45833325 0.25 0.45833325 0.25 0.45833325 0.125
		 0.41666663 0.25 0.41666663 0.25 0.375 0.25 0.375 0.125 0.45833325 0.25 0.45833325
		 0.125 0.49999994 0 0.54166663 0 0.54166663 0 0.49999994 0 0.54166663 0.125 0.54166663
		 0.25 0.54166663 0.25 0.49999994 0.25 0.49999994 0.25 0.58333331 0.25 0.625 0.25 0.625
		 0.25 0.58333331 0.25 0.625 0.5 0.58333331 0.5 0.41666663 0.25 0.45833325 0.25 0.45833325
		 0.5 0.41666663 0.5 0.375 0.5 0.375 0.5 0.375 0.25 0.49999994 0.25 0.54166663 0.25
		 0.54166663 0.5 0.49999994 0.5 0.55915445 0.24862382 0.625 0.25 0.625 0.5 0.56097257
		 0.49824047 0.44228414 0.24784225 0.50956827 0.2456845 0.50370687 0.4944599 0.43935344
		 0.49722993 0.375 0.5 0.375 0.25 0.49330893 0.24724764 0.49694514 0.49648094 0.45833325
		 0.25 0.45833325 0.25 0.45833325 0.125 0.45833325 0 0.375 0.125 0.375 0.25 0.375 0
		 0.375 0 0.375 0.75 0.375 1 0.375 0.625 0.54166663 0.25 0.54166663 0.125 0.54166663
		 0 0.375 0 0.41666663 0 0.45833325 0 0.45833325 0 0.49999994 0 0.45833325 0 0.54166663
		 0 0.54166663 0 0.58333331 0 0.54166663 0 0.625 0 0.625 0 0.625 0 0.875 0 0.125 0
		 0.375 0.375 0.375 0.375 0.375 0.375 0.25 0.25 0.25 0.125 0.375 0.875 0.25 0 0.41666663
		 0.875 0.45833325 0.875 0.49999994 0.875 0.54166663 0.875 0.58333331 0.875 0.75 0
		 0.625 0.875 0.75 0.125 0.75 0.25 0.625 0.375 0.625 0.375 0.625 0.375 0.58333331 0.25
		 0.58333331 0.125 0.625 0.125 0.625 0.25 0.625 0.625 0.58333331 0.625 0.58333331 0.5
		 0.625 0.5 0.625 0.875 0.58333331 0.875 0.58333331 0.75 0.625 0.75 0.75 0.25 0.75
		 0.125 0.875 0.125 0.875 0.25 0.125 0.125 0.25 0.125 0.25 0.25 0.125 0.25 0.45833325
		 0.875 0.41666663 0.875 0.41666663 0.75 0.45833325 0.75 0.45833325 0.625 0.41666663
		 0.625 0.41666663 0.5 0.45833325 0.5 0.41666663 0.25 0.41666663 0.125 0.45833325 0.125
		 0.45833325 0.25 0.54166663 0.875 0.49999994 0.875 0.49999994 0.75 0.54166663 0.75
		 0.54166663 0.625 0.49999994 0.625 0.49999994 0.5 0.54166663 0.5 0.49999994 0.25 0.49999994
		 0.125 0.54166663 0.125 0.54166663 0.25 0.54166663 0.25 0.54166663 0.125 0.54166663
		 0.125 0.54166663 0.25 0.58333331 0 0.58333331 0 0.625 0 0.625 0 0.625 0.125 0.625
		 0.125 0.625 0.25 0.625 0.25 0.625 0.25 0.58333331 0.25 0.58333331 0.25 0.41666663
		 0 0.41666663 0 0.45833325 0 0.45833325 0 0.45833325 0.125 0.45833325 0.125 0.45833325
		 0.25 0.45833325 0.25 0.41666663 0.25 0.41666663 0.25 0.375 0.25 0.375 0.125 0.375
		 0.125 0.375 0.25 0.45833325 0.125 0.45833325 0.25 0.49999994 0 0.49999994 0 0.54166663
		 0 0.54166663 0 0.54166663 0.125 0.54166663 0.25 0.49999994 0.25 0.49999994 0.25 0.54166663
		 0.25 0.58333331 0.25 0.58333331 0.25 0.625 0.25 0.625 0.25 0.625 0.375 0.625 0.375
		 0.625 0.5;
	setAttr ".uvst[0].uvsp[250:499]" 0.58333331 0.5 0.41666663 0.25 0.45833325
		 0.25 0.41666663 0.5 0.45833325 0.5 0.375 0.5 0.375 0.375 0.375 0.375 0.375 0.5 0.49999994
		 0.25 0.54166663 0.25 0.49999994 0.5 0.54166663 0.5 0.55915445 0.24862382 0.625 0.25
		 0.625 0.375 0.625 0.5 0.56097257 0.49824047 0.44228414 0.24784225 0.50956827 0.2456845
		 0.43935344 0.49722993 0.50370687 0.4944599 0.375 0.375 0.375 0.5 0.49330893 0.24724764
		 0.49694514 0.49648094 0.45833325 0.25 0.45833325 0.25 0.45833325 0.125 0.45833325
		 0 0.375 0.25 0.375 0.25 0.375 0.125 0.375 0.25 0.375 0 0.375 0 0.375 0.75 0.375 0.875
		 0.375 0.625 0.54166663 0.25 0.54166663 0.125 0.54166663 0 0.375 0 0.41666663 0 0.45833325
		 0 0.45833325 0 0.45833325 0 0.49999994 0 0.54166663 0 0.54166663 0 0.54166663 0 0.58333331
		 0 0.625 0 0.625 0 0.75 0 0.875 0 0.125 0 0.25 0 0.625 0.125 0.625 0.25 0.625 0 0.58333331
		 1 0.625 1 0.54166663 1 0.49999994 1 0.45833325 1 0.41666663 1 0.375 1 0.53021657
		 0.23919326 0.52464145 0.11652415 0.55222106 0.47051868 0.53655195 1.023146152 0.56160665
		 0.67741442 0.875 0.12172019 0.125 0.12172019 0.475346 0.11654277 0.4697926 0.23917831
		 0.44791281 0.47037825 0.43850669 0.67722756 0.46344787 1.023146152 0.51388884 1 0.51388884
		 0.75 0.51388884 0.5 0.51388884 0.25 0.51388884 0.12172019 0.48611099 0.75 0.48611099
		 1 0.48611099 0.25 0.48611099 0.5 0.48611099 0.12172019 0.49999991 1 0.49999991 0.75
		 0.49999991 0.5 0.49999991 0.25 0.49999988 0.12172019 0.52602375 0.06310235 0.47391474
		 0.063109204 0.48611099 0 0.49999991 0 0.51388884 0 0.5 0.069389716 0.625 0.069389716
		 0.625 0 0.5 0 0.5 0.75 0.625 0.75 0.625 0.6806103 0.5 0.6806103 0.5 0.87410772 0.625
		 0.87410772 0.75089228 0 0.75089228 0.069389716 0.875 0.069389716 0.875 0 0.125 0
		 0.24910769 0 0.5 0.18603458 0.625 0.18603458 0.625 0.56396544 0.5 0.56396544 0.75089228
		 0.18603458 0.875 0.18603458 0.625 0.5 0.5 0.5 0.75089228 0.25 0.875 0.25 0.5 0.25
		 0.625 0.25 0.5 1 0.625 1 0.375 0 0.375 0.87410772 0.375 1 0.375 0.75 0.5 0.069389716
		 0.5 0 0.625 0 0.625 0.069389716 0.5 0.75 0.5 0.6806103 0.625 0.6806103 0.625 0.75
		 0.5 0.87410772 0.625 0.87410772 0.75089228 0 0.875 0 0.875 0.069389716 0.75089228
		 0.069389716 0.125 0 0.24910769 0 0.5 0.18603458 0.625 0.18603458 0.5 0.56396544 0.625
		 0.56396544 0.875 0.18603458 0.75089228 0.18603458 0.5 0.5 0.625 0.5 0.75089228 0.25
		 0.875 0.25 0.5 0.25 0.625 0.25 0.5 1 0.625 1 0.375 0 0.375 0.87410772 0.375 1 0.375
		 0.75 0.625 0.16129632 0.625 0.19890146 0.5625 0.19890146 0.5625 0.16129632 0.5625
		 0.5 0.5625 0.43749997 0.625 0.43749997 0.625 0.5 0.5625 0.58870363 0.5625 0.55109853
		 0.625 0.55109853 0.625 0.58870363 0.625 0.8125 0.5625 0.8125 0.5625 0.75 0.625 0.75
		 0.875 0.16129634 0.875 0.19890146 0.81249994 0.19890146 0.81249994 0.16129634 0.18750003
		 0.16129634 0.18750003 0.19890146 0.125 0.19890146 0.125 0.16129634 0.625 0.03382913
		 0.625 0.042465165 0.5625 0.042465162 0.5625 0.033829127 0.8125 0.03382913 0.875 0.03382913
		 0.875 0.042465165 0.8125 0.042465165 0.5625 0.71617085 0.5625 0.70753479 0.625 0.70753479
		 0.625 0.71617085 0.18750003 0.03382913 0.18750003 0.042465165 0.125 0.042465165 0.125
		 0.03382913 0.375 0.75 0.4375 0.75 0.4375 0.8125 0.375 0.8125 0.375 0.71617085 0.375
		 0.70753479 0.4375 0.70753479 0.4375 0.71617085 0.375 0.58870363 0.375 0.55109853
		 0.4375 0.55109853 0.4375 0.58870363 0.375 0.43749997 0.4375 0.43749997 0.4375 0.5
		 0.375 0.5 0.4375 0.19890146 0.375 0.19890146 0.375 0.16129632 0.4375 0.16129632 0.4375
		 0.042465165 0.375 0.042465165 0.375 0.03382913 0.4375 0.03382913 0.49999994 0.8125
		 0.49999994 0.75 0.49999991 0.70753479 0.49999994 0.71617085 0.49999994 0.55109853
		 0.49999994 0.58870363 0.49999994 0.43749997 0.49999994 0.5 0.49999994 0.19890146
		 0.49999994 0.16129632 0.49999994 0.042465162 0.49999994 0.033829127 0.375 0.25 0.4375
		 0.25 0.4375 0.3125 0.375 0.3125 0.49999994 0.3125 0.49999994 0.25;
	setAttr ".uvst[0].uvsp[500:749]" 0.5625 0.3125 0.5625 0.25 0.625 0.3125 0.625
		 0.25 0.6875 0.19890146 0.6875 0.16129632 0.6875 0.042465165 0.6875 0.03382913 0.5625
		 1 0.5625 0.9375 0.625 0.9375 0.625 1 0.49999994 1 0.49999994 0.9375 0.4375 1 0.4375
		 0.9375 0.375 0.9375 0.375 1 0.3125 0.042465165 0.3125 0.03382913 0.3125 0.19890146
		 0.3125 0.16129632 0.4375 0.37499994 0.375 0.37499994 0.49999994 0.37499994 0.5625
		 0.37499994 0.625 0.37499994 0.74999988 0.042465165 0.74999988 0.03382913 0.5625 0.90625
		 0.59375 0.90625 0.53125 0.90625 0.25000006 0.042465165 0.25000006 0.03382913 0.625
		 0.87500006 0.59375 0.875 0.59375 0.84375 0.53125 0.84375 0.53125 0.875 0.49999994
		 0.875 0.49999994 0.52835763 0.49999994 0.5046978 0.5625 0.5046978 0.5625 0.52835763
		 0.625 0.52835763 0.625 0.5046978 0.81249988 0.2216424 0.875 0.2216424 0.875 0.2453022
		 0.81249988 0.2453022 0.74999988 0.2453022 0.74999988 0.2216424 0.6875 0.2453022 0.6875
		 0.2216424 0.625 0.2453022 0.625 0.2216424 0.3125 0.2216424 0.375 0.2216424 0.375
		 0.2453022 0.3125 0.2453022 0.25000006 0.2216424 0.25000006 0.2453022 0.18750003 0.2216424
		 0.18750003 0.2453022 0.125 0.2216424 0.125 0.2453022 0.4375 0.52835763 0.375 0.52835763
		 0.375 0.5046978 0.4375 0.5046978 0.5625 0.73186558 0.625 0.73186558 0.49999994 0.73186558
		 0.4375 0.73186558 0.375 0.73186558 0.18750003 0 0.18750003 0.018134406 0.125 0.018134406
		 0.125 0 0.25000006 0 0.25000006 0.018134406 0.3125 0 0.3125 0.018134406 0.375 0 0.375
		 0.018134406 0.4375 0.018134406 0.4375 0 0.49999994 0.018134404 0.49999994 0 0.5625
		 0.018134404 0.5625 0 0.625 0 0.625 0.018134406 0.6875 0.018134406 0.6875 0 0.74999994
		 0.018134406 0.74999994 0 0.8125 0.018134406 0.8125 0 0.875 0 0.875 0.018134406 0.5625
		 0.669083 0.5625 0.62500006 0.625 0.62500006 0.625 0.669083 0.8125 0.080917008 0.875
		 0.080917008 0.875 0.12499994 0.81249994 0.12499994 0.74999988 0.12499993 0.74999988
		 0.080917001 0.6875 0.12499993 0.6875 0.080917001 0.625 0.12499993 0.625 0.080917001
		 0.5625 0.080917001 0.5625 0.12499993 0.49999994 0.12499993 0.49999994 0.080917001
		 0.4375 0.12499993 0.4375 0.080917001 0.375 0.12499993 0.375 0.080917001 0.3125 0.080917001
		 0.3125 0.12499993 0.25000006 0.080917008 0.25000006 0.12499994 0.18750003 0.080917008
		 0.18750003 0.12499994 0.125 0.080917008 0.125 0.12499994 0.4375 0.669083 0.375 0.669083
		 0.375 0.62500006 0.4375 0.62500006 0.49999991 0.669083 0.49999994 0.62500006 0.5625
		 0.2453022 0.49999994 0.2453022 0.4375 0.2453022 0.3125 0.25 0.25000006 0.25 0.18750003
		 0.25 0.125 0.25 0.875 0.25 0.81249994 0.25 0.74999988 0.25 0.6875 0.25 0.74999988
		 0.16129632 0.25000006 0.16129634 0.5625 0.84375 0.46874997 0.875 0.46874997 0.84375
		 0.46874997 0.90625 0.4375 0.90625 0.40625 0.90625 0.375 0.87500006 0.40625 0.875
		 0.40625 0.84375 0.4375 0.84375 0.6875 0.19890146 0.81249994 0.16129634 0.81249994
		 0.19890146 0.18750003 0.16129634 0.18750003 0.19890146 0.6875 0.2216424 0.81249988
		 0.2216424 0.18750003 0.2216424 0.25000006 0.2216424 0.3125 0.2216424 0.625 0.2453022
		 0.625 0.2216424 0.5625 0.2453022 0.49999994 0.2453022 0.4375 0.2453022 0.375 0.2453022
		 0.375 0.2216424 0.625 0.19890146 0.5625 0.19890146 0.375 0.19890146 0.4375 0.19890146
		 0.49999994 0.19890146 0.3125 0.16129632 0.3125 0.19890146 0.25000006 0.16129634 0.3125
		 0.16129632 0.3125 0.16129632 0.74999988 0.16129632 0.81249994 0.16129634 0.74999988
		 0.16129632 0.81249994 0.19890146 0.18750003 0.19890146 0.18750003 0.16129634 0.18750003
		 0.16129634 0.25000006 0.16129634 0.18750003 0.16129634 0.74999988 0.2216424 0.6875
		 0.2216424 0.6875 0.2216424 0.6875 0.19890146 0.81249988 0.2216424 0.74999988 0.2216424
		 0.81249994 0.19890146 0.81249988 0.2216424 0.18750003 0.19890146 0.3125 0.19890146
		 0.74999988 0.16129632 0.18750003 0.16129634 0.25000006 0.16129634 0.3125 0.16129632
		 0.18750003 0.19890146 0.3125 0.19890146 0.18750003 0.2216424 0.18750003 0.2216424
		 0.18750003 0.2216424 0.81249988 0.2216424 0.81249994 0.16129634 0.81249994 0.16129634
		 0.81249994 0.16129634 0.81249994 0.19890146 0.625 0.25 0.54166663 0.125 0.54166663
		 0 0.54166663 0 0.54166663 0 0.45833325 0 0.45833325 0 0.45833325 0 0.625 0 0.54166663
		 0.25 0.54166663 0.25 0.54166663 0.25 0.54166663 0.25 0.54166663 0.25 0.45833325 0
		 0.54166663 0 0.54166663 0.25 0.625 0 0.54166663 0.125 0.54166663 0 0.54166663 0 0.54166663
		 0 0.45833325 0 0.45833325 0 0.45833325 0 0.54166663 0 0.54166663 0.25 0.54166663
		 0.25 0.54166663 0.25 0.54166663 0.25;
	setAttr ".uvst[0].uvsp[750:999]" 0.54166663 0.25 0.45833325 0 0.625 0.25 0.54166663
		 0.25 0.375 0.3125 0.375 0.37515664 0.40106314 0.37515664 0.40625 0.3125 0.41143689
		 0.37515664 0.4375 0.37515664 0.4375 0.3125 0.46875 0.37515664 0.46875 0.3125 0.5
		 0.37515664 0.5 0.3125 0.53125 0.37515664 0.53125 0.3125 0.5625 0.37515664 0.5625
		 0.3125 0.59375 0.37515664 0.59375 0.3125 0.625 0.37515664 0.625 0.3125 0.375 0.50046992
		 0.39073604 0.50046992 0.42176396 0.50046992 0.4375 0.50046992 0.46875 0.50046992
		 0.5 0.50046992 0.53125 0.50046992 0.5625 0.50046992 0.59375 0.50046992 0.625 0.50046992
		 0.375 0.62578321 0.38048333 0.62578321 0.4320167 0.62578321 0.4375 0.62578321 0.46875
		 0.62578321 0.5 0.62578321 0.53125 0.62578321 0.5625 0.62578321 0.59375 0.62578321
		 0.625 0.62578321 0.375 0.68843985 0.4375 0.68843985 0.46875 0.68843985 0.5 0.68843985
		 0.53125 0.68843985 0.5625 0.68843985 0.59375 0.68843985 0.625 0.68843985 0.375 0.3125
		 0.40625 0.3125 0.40106314 0.37515664 0.375 0.37515664 0.4375 0.3125 0.4375 0.37515664
		 0.41143689 0.37515664 0.46875 0.3125 0.46875 0.37515664 0.5 0.3125 0.5 0.37515664
		 0.53125 0.3125 0.53125 0.37515664 0.5625 0.3125 0.5625 0.37515664 0.59375 0.3125
		 0.59375 0.37515664 0.625 0.3125 0.625 0.37515664 0.39073604 0.50046992 0.375 0.50046992
		 0.4375 0.50046992 0.42176396 0.50046992 0.46875 0.50046992 0.5 0.50046992 0.53125
		 0.50046992 0.5625 0.50046992 0.59375 0.50046992 0.625 0.50046992 0.38048333 0.62578321
		 0.375 0.62578321 0.4375 0.62578321 0.4320167 0.62578321 0.46875 0.62578321 0.5 0.62578321
		 0.53125 0.62578321 0.5625 0.62578321 0.59375 0.62578321 0.625 0.62578321 0.375 0.68843985
		 0.4375 0.68843985 0.46875 0.68843985 0.5 0.68843985 0.53125 0.68843985 0.5625 0.68843985
		 0.59375 0.68843985 0.625 0.68843985 0.40625 0.3125 0.40106314 0.37515664 0.41143689
		 0.37515664 0.39073604 0.50046992 0.42176396 0.50046992 0.38048333 0.62578321 0.4320167
		 0.62578321 0.375 0.68843985 0.4375 0.68843985 0.46875 0.68843985 0.5 0.68843985 0.53125
		 0.68843985 0.5625 0.68843985 0.59375 0.68843985 0.625 0.68843985 0.46249998 0.3125
		 0.46249998 0.3125 0.375 0.3125 0.40625 0.3125 0.40106314 0.37515664 0.375 0.37515664
		 0.4375 0.3125 0.4375 0.37515664 0.41143689 0.37515664 0.46875 0.3125 0.46875 0.37515664
		 0.5 0.3125 0.5 0.37515664 0.53125 0.3125 0.53125 0.37515664 0.5625 0.3125 0.5625
		 0.37515664 0.59375 0.3125 0.59375 0.37515664 0.625 0.3125 0.625 0.37515664 0.39073604
		 0.50046992 0.375 0.50046992 0.4375 0.50046992 0.42176396 0.50046992 0.46875 0.50046992
		 0.5 0.50046992 0.53125 0.50046992 0.5625 0.50046992 0.59375 0.50046992 0.625 0.50046992
		 0.38048333 0.62578321 0.375 0.62578321 0.4375 0.62578321 0.4320167 0.62578321 0.46875
		 0.62578321 0.5 0.62578321 0.53125 0.62578321 0.5625 0.62578321 0.59375 0.62578321
		 0.625 0.62578321 0.375 0.68843985 0.4375 0.68843985 0.46875 0.68843985 0.5 0.68843985
		 0.53125 0.68843985 0.5625 0.68843985 0.59375 0.68843985 0.625 0.68843985 0.375 0.3125
		 0.375 0.37515664 0.40106314 0.37515664 0.40625 0.3125 0.41143689 0.37515664 0.4375
		 0.37515664 0.4375 0.3125 0.46875 0.37515664 0.46875 0.3125 0.5 0.37515664 0.5 0.3125
		 0.53125 0.37515664 0.53125 0.3125 0.5625 0.37515664 0.5625 0.3125 0.59375 0.37515664
		 0.59375 0.3125 0.625 0.37515664 0.625 0.3125 0.375 0.50046992 0.39073604 0.50046992
		 0.4375 0.50046992 0.42176396 0.50046992 0.46875 0.50046992 0.5 0.50046992 0.53125
		 0.50046992 0.5625 0.50046992 0.59375 0.50046992 0.625 0.50046992 0.375 0.62578321
		 0.38048333 0.62578321 0.4375 0.62578321 0.4320167 0.62578321 0.46875 0.62578321 0.5
		 0.62578321 0.53125 0.62578321 0.5625 0.62578321 0.59375 0.62578321 0.625 0.62578321
		 0.375 0.68843985 0.4375 0.68843985 0.46875 0.68843985 0.5 0.68843985 0.53125 0.68843985
		 0.5625 0.68843985 0.59375 0.68843985 0.625 0.68843985 0.40625 0.3125 0.40106314 0.37515664
		 0.41143689 0.37515664 0.39073604 0.50046992 0.42176396 0.50046992 0.38048333 0.62578321
		 0.4320167 0.62578321 0.375 0.68843985 0.4375 0.68843985 0.46875 0.68843985 0.5 0.68843985
		 0.53125 0.68843985 0.5625 0.68843985 0.59375 0.68843985 0.625 0.68843985 0.46249998
		 0.3125 0.46249998 0.3125 0.37495854 0.019534364 0.44044703 0.13089406 0.44044703
		 0.25 0.375 0.25 0.37481844 0.99921536 0.41550481 0.6337738 0.4643203 0.6400336 0.44044703
		 0.86910594 0.4375 0.4375 0.4375 0.3125 0.48658529 0.29613823 0.48658529 0.45386177
		 0.50729215 0.2645843 0.50729215 0.25 0.52057123 0.62160063 0.50729215 0.7354157 0.53671914
		 0.27942693 0.53671914 0.47057301 0.38841474 0.42113826 0.38841474 0.32886177 0.56832469
		 0.5 0.56832469 0.25 0.57598948 0.49233517 0.58249354 0.2641688;
	setAttr ".uvst[0].uvsp[1000:1249]" 0.58249354 0.48583114 0.5758639 0.25753918
		 0.51891017 0.26184094 0.33828089 0.40442696 0.33828089 0.34557304 0.32080632 0.32787555
		 0.28587687 0.35420156 0.27833766 0.34666234 0.30885392 0.31614608 0.29250652 0.38916886
		 0.29250652 0.3608312 0.34102198 0.83011001 0.36868048 0.60605013 0.34227648 0.28272352
		 0.34102198 0.101934 0.30778986 0.66394937 0.31812617 0.5512681 0.30778986 0.20163041
		 0.27285346 0.39785349 0.28348505 0.39315543 0.57598948 0.49233517 0.56832469 0.5
		 0.58249354 0.2641688 0.58249354 0.48583114 0.5758639 0.25753918 0.56832469 0.25 0.28587687
		 0.35420156 0.27833766 0.34666234 0.29250652 0.38916886 0.29250652 0.3608312 0.27285346
		 0.39785349 0.28348505 0.39315543 0.57598948 0.49233517 0.56832469 0.5 0.58249354
		 0.2641688 0.58249354 0.48583114 0.56832469 0.25 0.5758639 0.25753918 0.28587687 0.35420156
		 0.27833766 0.34666234 0.29250652 0.38916886 0.29250652 0.3608312 0.27285346 0.39785349
		 0.28348505 0.39315543 0.57598948 0.49233517 0.56832469 0.5 0.58249354 0.2641688 0.58249354
		 0.48583114 0.56832469 0.25 0.5758639 0.25753918 0.28587687 0.35420156 0.27833766
		 0.34666234 0.29250652 0.38916886 0.29250652 0.3608312 0.27285346 0.39785349 0.28348505
		 0.39315543 0.57598948 0.49233517 0.56832469 0.5 0.58249354 0.2641688 0.58249354 0.48583114
		 0.56832469 0.25 0.5758639 0.25753918 0.28587687 0.35420156 0.27833766 0.34666234
		 0.29250652 0.38916886 0.29250652 0.3608312 0.27285346 0.39785349 0.28348505 0.39315543
		 0.36906499 0.30763853 0.41563106 0.29063109 0.46442527 0.27585173 0.5 0.25 0.5 0.125
		 0.625 0.125 0.625 0.25 0.625 0.5 0.5 0.5 0.5 0.375 0.625 0.375 0.5 0.625 0.625 0.625
		 0.5 0.875 0.5 0.75 0.625 0.75 0.625 0.875 0.75 0.125 0.875 0.125 0.875 0.25 0.75
		 0.25 0.125 0.125 0.25 0.125 0.25 0.25 0.125 0.25 0.375 0.875 0.375 0.75 0.375 0.625
		 0.375 0.5 0.375 0.375 0.375 0.25 0.375 0.125 0.375 0 0.5 0 0.625 0 0.75 0 0.875 0
		 0.125 0 0.25 0 0.5 1 0.625 1 0.375 1 0.81249994 0.16129634 0.81249994 0.16129634
		 0.18750003 0.16129634 0.74999988 0.16129632 0.25000006 0.16129634 0.18750003 0.19890146
		 0.3125 0.16129632 0.18750003 0.16129634 0.3125 0.19890146 0.25000006 0.16129634 0.74999988
		 0.16129632 0.3125 0.16129632 0.6875 0.16129632 0.81249994 0.19890146 0.6875 0.19890146
		 0.3125 0.2216424 0.6875 0.2216424 0.3125 0.19890146 0.6875 0.19890146 0.74999988
		 0.2216424 0.81249988 0.2216424 0.6875 0.2216424 0.74999988 0.2216424 0.81249994 0.19890146
		 0.18750003 0.19890146 0.81249988 0.2216424 0.18750003 0.2216424 0.18750003 0.2216424
		 0.25000006 0.2216424 0.77845478 0.17740263 0.77845478 0.17740263 0.6534549 0.20817964
		 0.75575805 0.20817964 0.63075811 0.17740262 0.3009896 0.17740262 0.65905082 0.17740262
		 0.27269682 0.22279617 0.27845484 0.20817964 0.24424195 0.22279617 0.34654516 0.22279616
		 0.31233227 0.20817964 0.31809035 0.22279617 0.75016195 0.17740262 0.28979751 0.17740263
		 0.36924192 0.22679141 0.34094915 0.22679141 0.26693872 0.27218497 0.31233227 0.22679141
		 0.75575793 0.27218497 0.24424195 0.25357318 0.68766773 0.20817964 0.68190962 0.27218497
		 0.60789931 0.22679141 0.7102024 0.22679141 0.68190962 0.22679141 0.63075811 0.20817964
		 0.34654516 0.20817964 0.6534549 0.22679141 0.65988588 0.23349595 0.65988588 0.23349595
		 0.53488594 0.24049269 0.5581432 0.24049269 0.4331432 0.23349594 0.26090235 0.23349594
		 0.3423028 0.23349594 0.35174274 0.43698138 0.15988591 0.24049269 0.4418568 0.43698138
		 0.46511406 0.43698138 0.74708498 0.24049269 0.55522811 0.43698138 0.75072622 0.23349594
		 0.64606845 0.23349595 0.56685674 0.24472383 0.65769708 0.24472383 0.54359949 0.44820926
		 0.74708498 0.24472383 0.55814314 0.44820926 0.4418568 0.44397813 0.25291502 0.24049269
		 0.44477183 0.44820926 0.33067417 0.24472383 0.35393143 0.24472383 0.44477183 0.24472383
		 0.4331432 0.24049269 0.46511406 0.24049269 0.53488594 0.24472383 0.625 0.24877797
		 0.5 0.24877797 0.375 0.24877797 0.24910769 0.24877797 0.125 0.24877797 0.375 0.50122201
		 0.5 0.50122201 0.625 0.50122201 0.875 0.24877797 0.75089228 0.24877797 0.625 0.24877797
		 0.75089228 0.24877797 0.875 0.24877797 0.625 0.50122201 0.5 0.50122201 0.375 0.50122201
		 0.125 0.24877797 0.24910769 0.24877797 0.375 0.24877797 0.5 0.24877797 0.625 0.18793984
		 0.5 0.18793984 0.375 0.18793984 0.24910769 0.18793984 0.125 0.18793984 0.375 0.56206018
		 0.5 0.56206018 0.625 0.56206018 0.875 0.18793984 0.75089228 0.18793984 0.625 0.18793984
		 0.75089228 0.18793984 0.875 0.18793984 0.625 0.56206018 0.5 0.56206018 0.375 0.56206018
		 0.125 0.18793984 0.24910769 0.18793984 0.375 0.18793984 0.5 0.18793984 0.625 0.18159419
		 0.5 0.18159419 0.375 0.18159419 0.24910769 0.18159419 0.125 0.18159419 0.375 0.56840581
		 0.5 0.56840581 0.625 0.56840581 0.875 0.18159419 0.75089228 0.18159419 0.625 0.18159419
		 0.75089228 0.18159419 0.875 0.18159419;
	setAttr ".uvst[0].uvsp[1250:1484]" 0.625 0.56840581 0.5 0.56840581 0.375 0.56840581
		 0.125 0.18159419 0.24910769 0.18159419 0.375 0.18159419 0.5 0.18159419 0.625 0.074365556
		 0.5 0.074365556 0.375 0.074365556 0.2491077 0.074365556 0.125 0.074365556 0.375 0.6756345
		 0.5 0.6756345 0.625 0.6756345 0.875 0.074365556 0.75089228 0.074365556 0.625 0.074365556
		 0.75089228 0.074365556 0.875 0.074365556 0.625 0.6756345 0.5 0.6756345 0.375 0.6756345
		 0.125 0.074365556 0.2491077 0.074365556 0.375 0.074365556 0.5 0.074365556 0.625 0.066072062
		 0.5 0.066072062 0.375 0.066072062 0.24910769 0.066072062 0.125 0.066072062 0.375
		 0.68392789 0.5 0.68392789 0.625 0.68392789 0.875 0.066072062 0.75089228 0.066072062
		 0.625 0.066072062 0.75089228 0.066072062 0.875 0.066072062 0.625 0.68392789 0.5 0.68392789
		 0.375 0.68392789 0.125 0.066072062 0.24910769 0.066072062 0.375 0.066072062 0.5 0.066072062
		 0.3719382 0.20836085 0.3136794 0.20972334 0.1871819 0.20953211 0.4375 0.54072011
		 0.125 0.20927989 0.375 0.54072011 0.25000006 0.2216424 0.20812279 0.2216424 0.4375
		 0.19890146 0.49999994 0.54072011 0.5625 0.54072011 0.6280399 0.20835944 0.81249994
		 0.18178281 0.68749988 0.20927989 0.81249994 0.20927989 0.21601276 0.16129634 0.625
		 0.54072011 0.875 0.20927989 0.79566473 0.16129634 0.18750003 0.16129634 0.74999988
		 0.16129632 0.18750003 0.18649341 0.5625 0.19890146 0.49999994 0.19890146 0.625 0.70753479
		 0.625 0.71617085 0.375 0.71617085 0.375 0.70753479 0.625 0.73186558 0.625 0.75 0.5625
		 0.75 0.49999994 0.75 0.4375 0.75 0.375 0.75 0.375 0.73186558 0.5625 0.669083 0.625
		 0.669083 0.49999991 0.669083 0.4375 0.669083 0.375 0.669083 0.62534904 0.26232159
		 0.58333331 0.25 0.54166663 0.25 0.54166663 0.25 0.49999994 0.25 0.45833328 0.25 0.41666663
		 0.25 0.37465096 0.26232183 0.3622936 0.25004283 0.36249998 0.125 0.36249998 0 0.375
		 0.98750001 0.4166666 0.98749995 0.45833322 0.98749995 0.49999991 0.98749995 0.54166663
		 0.98749995 0.58333331 0.98749995 0.625 0.98750001 0.63750005 0 0.63749999 0.125 0.63770634
		 0.25004286 0.62534904 0.26232159 0.58333331 0.25 0.54166663 0.25 0.54166663 0.25
		 0.49999994 0.25 0.45833328 0.25 0.41666663 0.25 0.37465096 0.26232186 0.3622936 0.25004283
		 0.36249998 0.125 0.375 0.98750001 0.36249998 0 0.4166666 0.98749995 0.45833322 0.98749995
		 0.49999991 0.98749995 0.54166663 0.98749995 0.58333331 0.98749995 0.63750005 0 0.625
		 0.98750001 0.63749999 0.125 0.63770634 0.25004286 0.625 0.25 0.625 0.25 0.625 0.125
		 0.625 0 0.625 0 0.58333331 0 0.54166663 0 0.54166663 0 0.54166663 0.125 0.54166663
		 0.25 0.54166663 0.25 0.58333331 0.25 0.625 0.25 0.625 0.25 0.58333331 0.25 0.54166663
		 0.25 0.54166663 0.25 0.54166663 0.125 0.54166663 0 0.54166663 0 0.58333331 0 0.625
		 0 0.625 0 0.625 0.125 0.54166663 0.25 0.54166663 0.25 0.54166663 0.125 0.54166663
		 0 0.54166663 0 0.49999994 0 0.45833325 0 0.45833325 0 0.45833325 0.125 0.45833325
		 0.25 0.45833325 0.25 0.49999994 0.25 0.54166663 0.25 0.54166663 0.25 0.49999994 0.25
		 0.45833325 0.25 0.45833325 0.25 0.45833325 0.125 0.45833325 0 0.45833325 0 0.49999994
		 0 0.54166663 0 0.54166663 0 0.54166663 0.125 0.45833325 0.25 0.45833325 0.125 0.45833325
		 0 0.45833325 0 0.41666663 0 0.37499997 0 0.37499997 0.125 0.37499997 0.25 0.41666663
		 0.25 0.45833325 0.25 0.41666663 0.25 0.37499997 0.25 0.37499997 0.125 0.37499997
		 0 0.41666663 0 0.45833325 0 0.45833325 0 0.45833325 0.125 0.75089228 0.2183986 0.625
		 0.53160143 0.875 0.2183986 0.5 0.53160143 0.125 0.2183986 0.375 0.53160143 0.24910769
		 0.2183986 0.375 0.2183986 0.5 0.2183986 0.625 0.2183986 0.75089228 0.2183986 0.625
		 0.2183986 0.5 0.2183986 0.375 0.2183986 0.24910769 0.2183986 0.375 0.53160143 0.125
		 0.2183986 0.5 0.53160143 0.875 0.2183986 0.625 0.53160143 0.75089228 0.12669659 0.625
		 0.62330341 0.875 0.12669659 0.5 0.62330341 0.125 0.12669659 0.375 0.62330341 0.24910769
		 0.12669659 0.375 0.12669659 0.5 0.12669659 0.625 0.12669659 0.75089228 0.12669659
		 0.625 0.12669659 0.5 0.12669659 0.375 0.12669659 0.24910769 0.12669659 0.375 0.62330341
		 0.125 0.12669659 0.5 0.62330341 0.875 0.12669659 0.625 0.62330341;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 54 ".pt";
	setAttr ".pt[237]" -type "float3" -9.5367432e-07 -3.5762787e-06 0 ;
	setAttr ".pt[238]" -type "float3" -1.1920929e-07 -3.0994415e-06 0 ;
	setAttr ".pt[241]" -type "float3" 2.3841858e-07 -4.6491623e-06 0 ;
	setAttr ".pt[242]" -type "float3" 8.3446503e-07 -3.0994415e-06 0 ;
	setAttr ".pt[243]" -type "float3" -4.7683716e-07 9.5367432e-07 0 ;
	setAttr ".pt[244]" -type "float3" -9.5367432e-07 0 0 ;
	setAttr ".pt[248]" -type "float3" 0 2.3841858e-06 0 ;
	setAttr ".pt[249]" -type "float3" 7.1525574e-07 -1.4305115e-06 0 ;
	setAttr ".pt[250]" -type "float3" 0 -1.9073486e-06 0 ;
	setAttr ".pt[254]" -type "float3" 2.3841858e-07 0 0 ;
	setAttr ".pt[255]" -type "float3" -2.3841858e-07 -3.3378601e-06 0 ;
	setAttr ".pt[256]" -type "float3" -2.3841858e-06 4.7683716e-07 0 ;
	setAttr ".pt[257]" -type "float3" -7.1525574e-07 -2.3841858e-06 0 ;
	setAttr ".pt[258]" -type "float3" 9.5367432e-07 -1.9073486e-06 0 ;
	setAttr ".pt[261]" -type "float3" -7.1525574e-07 -3.0994415e-06 0 ;
	setAttr ".pt[262]" -type "float3" 4.7683716e-07 -4.7683716e-06 0 ;
	setAttr ".pt[265]" -type "float3" 0 -2.1457672e-06 0 ;
	setAttr ".pt[266]" -type "float3" -7.1525574e-07 -3.3378601e-06 0 ;
	setAttr ".pt[267]" -type "float3" -4.7683716e-07 1.9073486e-06 0 ;
	setAttr ".pt[268]" -type "float3" -4.7683716e-07 9.5367432e-07 0 ;
	setAttr ".pt[272]" -type "float3" -1.4305115e-06 -9.5367432e-07 0 ;
	setAttr ".pt[273]" -type "float3" -2.3841858e-07 -2.3841858e-06 0 ;
	setAttr ".pt[274]" -type "float3" 1.9073486e-06 -2.3841858e-06 0 ;
	setAttr ".pt[278]" -type "float3" -9.5367432e-07 -1.9073486e-06 0 ;
	setAttr ".pt[279]" -type "float3" 2.3841858e-07 -2.3841858e-06 0 ;
	setAttr ".pt[280]" -type "float3" 1.9073486e-06 -2.8610229e-06 0 ;
	setAttr ".pt[281]" -type "float3" 7.1525574e-07 -3.8146973e-06 0 ;
	setAttr ".pt[282]" -type "float3" -9.5367432e-07 -1.9073486e-06 0 ;
	setAttr ".pt[856]" -type "float3" -0.78736031 0.027633667 0.075912133 ;
	setAttr ".pt[866]" -type "float3" 0.78736031 0.027633667 0.075912178 ;
	setAttr ".pt[872]" -type "float3" 1.0575385 -0.0097732544 -0.11835594 ;
	setAttr ".pt[882]" -type "float3" -1.0575404 -0.0097732544 -0.11835595 ;
	setAttr ".pt[887]" -type "float3" -4.7683716e-07 0 0 ;
	setAttr ".pt[888]" -type "float3" -0.78228843 0.007229805 0.087550998 ;
	setAttr ".pt[889]" -type "float3" 4.7683716e-07 0 0 ;
	setAttr ".pt[897]" -type "float3" -4.7683716e-07 0 0 ;
	setAttr ".pt[898]" -type "float3" 0.78228772 0.0072278976 0.087550998 ;
	setAttr ".pt[899]" -type "float3" 4.7683716e-07 0 0 ;
	setAttr ".pt[901]" -type "float3" -1.1920929e-06 2.3841858e-07 0 ;
	setAttr ".pt[902]" -type "float3" -4.7683716e-07 9.5367432e-07 0 ;
	setAttr ".pt[903]" -type "float3" 0 4.7683716e-07 0 ;
	setAttr ".pt[904]" -type "float3" 0.42508268 0.02555275 -0.032023191 ;
	setAttr ".pt[905]" -type "float3" -2.3841858e-07 -2.3841858e-06 0 ;
	setAttr ".pt[906]" -type "float3" -4.7683716e-07 0 0 ;
	setAttr ".pt[907]" -type "float3" 1.4305115e-06 4.7683716e-07 0 ;
	setAttr ".pt[908]" -type "float3" 1.4305115e-06 -7.1525574e-07 0 ;
	setAttr ".pt[909]" -type "float3" 4.7683716e-07 -7.1525574e-07 0 ;
	setAttr ".pt[910]" -type "float3" 0 -2.3841858e-07 0 ;
	setAttr ".pt[911]" -type "float3" -1.4305115e-06 4.7683716e-07 0 ;
	setAttr ".pt[912]" -type "float3" 7.1525574e-07 0 0 ;
	setAttr ".pt[913]" -type "float3" 2.3841858e-07 9.5367432e-07 0 ;
	setAttr ".pt[914]" -type "float3" -0.42508304 0.025545597 -0.032023072 ;
	setAttr ".pt[915]" -type "float3" -1.1920929e-07 9.5367432e-07 0 ;
	setAttr ".pt[916]" -type "float3" 2.3841858e-07 7.1525574e-07 0 ;
	setAttr -s 1070 ".vt";
	setAttr ".vt[0:165]"  -1.13955319 0 7.17969418 -15.67647839 0 7.17969418
		 -1.13955319 2.079115391 7.17969418 -15.67647839 2.079115391 7.17969418 -3.58648729 2.079115391 -4.73743248
		 -13.2295475 2.079115391 -4.73743248 -3.58648729 0 -4.73743248 -13.2295475 0 -4.73743248
		 -5.98519135 0 7.17969513 -6.9115572 0 -6.81993151 -6.9115572 2.079115391 -6.81993151
		 -5.98519135 2.079115391 7.17969418 -10.83083534 0 7.17969513 -9.90446949 0 -6.81993151
		 -9.90446949 2.079115391 -6.81993151 -10.83083534 2.079115391 7.17969418 -12.28652191 2.079115391 13.53968143
		 -12.34149075 0 14.24679565 -15.032758713 0 13.53968143 -15.032758713 2.079115391 13.53968143
		 -1.7832768 0 13.5396843 -4.47454119 0 14.24679852 -4.52950621 2.079115391 13.5396843
		 -1.7832768 2.079115391 13.5396843 -6.8914876 2.079115391 14.52869034 -6.8914876 0 14.52869034
		 -9.92454243 0 14.52869034 -9.92454243 2.079115391 14.52869034 -9.89259052 3.1352706 -5.30362988
		 -10.065759659 3.1352706 4.92106533 -13.72596741 3.1352706 3.68908668 -12.32606125 3.1352706 -3.61513305
		 -3.090065479 3.1352706 3.68908668 -6.75027084 3.1352706 4.92106533 -6.9234376 3.1352706 -5.30362988
		 -4.4899745 3.1352706 -3.61513352 -8.4080143 4.80291128 -3.11404037 -8.4080143 4.80291128 3.58926225
		 -12.16726971 4.80291128 3.58926225 -11.1827774 4.80291128 -2.30944586 -4.64876318 4.80291128 3.58926225
		 -5.63325691 4.80291128 -2.30944705 -8.40801334 0 7.17969561 -8.40801334 0 -7.1197896
		 -8.40801334 2.079115391 -7.1197896 -8.4080143 3.1352706 -5.3686533 -8.4080143 3.1352706 5.17213202
		 -8.40801334 2.18172669 8.64858723 -8.4080143 2.079115391 16.42354393 -8.4080143 0 16.42354393
		 -6.52838802 4.80291128 3.58926225 -5.027443409 3.1352706 4.44532442 -3.70147228 2.18172669 8.58270264
		 -3.15639234 2.079115391 15.15777397 -3.15639234 0 15.15777397 -3.56237221 0 7.17969561
		 -5.24902153 0 -5.77868319 -5.24902153 2.079115391 -5.77868319 -5.5325942 3.1352706 -4.61647272
		 -7.020636559 4.80291128 -2.71174312 -10.28764153 4.80291128 3.58926225 -11.78858852 3.1352706 4.44532442
		 -13.1138649 2.18172669 8.57211018 -13.65964222 2.079115391 15.15777111 -13.65964222 0 15.15777111
		 -13.2536602 0 7.17969561 -11.56701088 0 -5.77868319 -11.56701088 2.079115391 -5.77868319
		 -11.28343964 3.1352706 -4.61647272 -9.7953968 4.80291128 -2.71174312 -0.60219187 1.039557695 7.17969418
		 -1.47988403 0.97348785 14.67425728 -3.15639234 1.039557695 16.29234695 -4.87315035 0.89868039 14.67425728
		 -5.87464619 1.039557695 10.016517639 -6.54929018 1.097955346 15.66326427 -8.4080143 1.039557695 17.55811691
		 -10.26673889 1.097955346 15.66326427 -10.94138145 1.039557695 10.016517639 -11.94287968 0.89868039 14.67425442
		 -13.65964222 1.039557695 16.29234314 -15.33614922 0.97348785 14.67425442 -16.21384048 1.039557695 7.17969418
		 -13.67595768 1.039557695 -5.036389828 -11.92947388 1.039557695 -6.31338453 -10.080117226 1.039557695 -7.33312941
		 -8.40801334 1.039557695 -7.81919289 -6.73590994 1.039557695 -7.33312941 -4.88655663 1.039557695 -6.31338453
		 -3.14007807 1.039557695 -5.036389828 -5.14101028 4.80291128 0.63990778 -3.79001927 3.1352706 0.036976524
		 -2.36302066 2.079115391 1.22113097 -1.87113488 1.039557695 1.071652532 -2.36302066 0 1.22113097
		 -4.40569687 0 0.70050651 -6.44837427 0 0.17988181 -8.40801334 0 0.029953025 -10.36765194 0 0.17988181
		 -12.41033554 0 0.70050651 -14.45301437 0 1.22113097 -14.94489765 1.039557695 1.071652532
		 -14.45301437 2.079115391 1.22113097 -13.026014328 3.1352706 0.036976658 -11.67502499 4.80291128 0.63990808
		 1.13955152 0 7.17969418 15.67647743 0 7.17969418 1.13955152 2.079115391 7.17969418
		 15.67647743 2.079115391 7.17969418 3.58648586 2.079115391 -4.73743248 13.22954559 2.079115391 -4.73743248
		 3.58648586 0 -4.73743248 13.22954559 0 -4.73743248 5.98518896 0 7.17969513 6.91155386 0 -6.81993151
		 6.91155386 2.079115391 -6.81993151 5.98518896 2.079115391 7.17969418 10.83083344 0 7.17969513
		 9.90446758 0 -6.81993151 9.90446758 2.079115391 -6.81993151 10.83083344 2.079115391 7.17969418
		 12.28652 2.079115391 13.53968143 12.34148693 0 14.24679565 15.032755852 0 13.53968143
		 15.032755852 2.079115391 13.53968143 1.78327465 0 13.5396843 4.47453928 0 14.24679852
		 4.52950525 2.079115391 13.5396843 1.78327465 2.079115391 13.5396843 6.89148521 2.079115391 14.52869034
		 6.89148521 0 14.52869034 9.92453957 0 14.52869034 9.92453957 2.079115391 14.52869034
		 9.89258957 3.1352706 -5.30362988 10.065756798 3.1352706 4.92106533 13.7259655 3.1352706 3.68908668
		 12.32605934 3.1352706 -3.61513305 3.090063572 3.1352706 3.68908668 6.75026894 3.1352706 4.92106533
		 6.92343616 3.1352706 -5.30362988 4.48997211 3.1352706 -3.61513352 8.4080143 4.80291128 -3.11404037
		 8.4080143 4.80291128 3.58926225 12.1672678 4.80291128 3.58926225 11.1827755 4.80291128 -2.30944586
		 4.64876127 4.80291128 3.58926225 5.633255 4.80291128 -2.30944705 8.40801144 0 7.17969561
		 8.40801144 0 -7.1197896 8.40801144 2.079115391 -7.1197896 8.40801334 3.1352706 -5.3686533
		 8.40801334 3.1352706 5.17213202 8.40801144 2.18172669 8.64858723 8.40801334 2.079115391 16.42354393
		 8.40801334 0 16.42354393 6.52838755 4.80291128 3.58926225 5.027441502 3.1352706 4.44532442
		 3.70147038 2.18172669 8.58270264 3.15638971 2.079115391 15.15777397 3.15638971 0 15.15777397
		 3.5623703 0 7.17969561 5.24901962 0 -5.77868319 5.24901962 2.079115391 -5.77868319
		 5.5325923 3.1352706 -4.61647272 7.020635128 4.80291128 -2.71174312 10.28763962 4.80291128 3.58926225;
	setAttr ".vt[166:331]" 11.78858662 3.1352706 4.44532442 13.11386204 2.18172669 8.57211018
		 13.6596384 2.079115391 15.15777111 13.6596384 0 15.15777111 13.25365734 0 7.17969561
		 11.56700611 0 -5.77868319 11.56700611 2.079115391 -5.77868319 11.28343773 3.1352706 -4.61647272
		 9.79539394 4.80291128 -2.71174312 0.6021902 1.039557695 7.17969418 1.47988236 0.97348785 14.67425728
		 3.15638971 1.039557695 16.29234695 4.87314844 0.89868039 14.67425728 5.87464428 1.039557695 10.016517639
		 6.54928827 1.097955346 15.66326427 8.40801334 1.039557695 17.55811691 10.26673794 1.097955346 15.66326427
		 10.94137859 1.039557695 10.016517639 11.94287777 0.89868039 14.67425442 13.6596384 1.039557695 16.29234314
		 15.33614731 0.97348785 14.67425442 16.21384048 1.039557695 7.17969418 13.67595577 1.039557695 -5.036389828
		 11.92947197 1.039557695 -6.31338453 10.080115318 1.039557695 -7.33312941 8.40801144 1.039557695 -7.81919289
		 6.73590803 1.039557695 -7.33312941 4.88655472 1.039557695 -6.31338453 3.14007616 1.039557695 -5.036389828
		 11.67502117 4.80291128 0.63990808 13.026012421 3.1352706 0.036976658 14.45301247 2.079115391 1.22113097
		 14.94489765 1.039557695 1.071652532 14.45301247 0 1.22113097 12.41033173 0 0.70050651
		 10.36765003 0 0.17988181 8.40801144 0 0.029953025 6.44837189 0 0.17988181 4.40569544 0 0.70050651
		 2.36301875 0 1.22113097 1.87113321 1.039557695 1.071652532 2.36301875 2.079115391 1.22113097
		 3.79001808 3.1352706 0.036976524 5.14100838 4.80291128 0.63990778 -4.85432911 56.22476578 22.46108246
		 4.8543191 56.22476578 22.46108246 -4.85432911 57.21320724 22.25105476 4.8543191 57.21320724 22.25105476
		 -6.090795517 57.84795761 18.44740486 6.090785503 57.84795761 18.44740486 -6.11541271 56.074501038 18.51898193
		 6.1154027 56.074501038 18.51898193 -2.35076666 56.71653366 24.07384491 -2.19185495 56.71653366 19.47759819
		 -2.99581146 58.83200455 18.7881279 -2.35076666 57.70497513 23.86382103 2.35075426 56.71653366 24.07384491
		 2.19184256 56.71653366 19.47759819 2.9957993 58.83200455 18.7881279 2.35075426 57.70497513 23.86382103
		 -6.1395149e-06 56.98391724 27.268116 -6.1395149e-06 56.98391724 19.70851707 -6.1395149e-06 60.20213699 19.079507828
		 -6.1395149e-06 57.9723587 27.058092117 5.0070576668 56.74161911 22.6574173 6.87886238 57.036396027 17.93314171
		 -6.87528658 57.036281586 17.93227577 -5.0070667267 56.74161911 22.6574173 -2.45147085 57.23338699 24.30028534
		 -6.1395149e-06 57.50077057 27.51352501 2.45145845 57.23338699 24.30028534 -52.029151917 45.58172989 2.28143287
		 -52.029159546 47.15561676 2.28143287 -19.45203018 47.69820786 6.90675974 -19.073575974 47.75342941 -4.35314655
		 -51.36393356 45.58174133 -5.82744837 -51.36392975 47.15560913 -5.82744837 -43.86970901 47.41487885 6.5956583
		 -42.52762222 47.41487503 -8.74534988 -30.65470123 47.4703598 -6.89253664 -31.82198334 47.4703598 7.33618689
		 -31.23418045 48.68177032 0.17103979 -43.19387054 48.43540573 -1.12960088 -55.2439537 47.15559769 -2.02594471
		 -55.24396133 45.5817337 -2.02594471 -19.99638176 48.91519165 1.23454475 -19.44126701 46.36865997 7.48508644
		 -31.87247849 46.36865616 7.94434547 -43.93266296 46.36866379 7.15206766 -53.58942413 46.36867523 2.52263308
		 -57.038913727 46.36865616 -2.099214315 -52.87563324 46.36867905 -6.17825413 -42.55174255 46.36866379 -9.30893803
		 -30.57129288 46.36865997 -7.33112049 -18.99541664 46.36865997 -4.59649515 52.02917099 45.5817337 2.2814343
		 52.029178619 47.15561295 2.2814343 19.452034 47.69820786 6.90675974 19.073587418 47.75342941 -4.35314655
		 51.36394501 45.58173752 -5.82744741 51.36396027 47.15561676 -5.82744741 43.86970901 47.41487885 6.5956583
		 42.52762222 47.41487503 -8.74534988 30.65471268 47.47036362 -6.89253664 31.82199097 47.4703598 7.33618689
		 31.23418617 48.68177032 0.17104048 43.19387817 48.43540192 -1.12960005 55.24396133 47.1556015 -2.025944233
		 55.24395752 45.58173752 -2.025944233 19.99638939 48.91519165 1.23454487 19.44127655 46.36865997 7.48508644
		 31.87247849 46.36865616 7.94434643 43.93266296 46.36866379 7.15207195 53.58942413 46.36867523 2.52263331
		 57.0389328 46.36866379 -2.099214554 52.87564087 46.36867523 -6.17825317 42.55174255 46.36866379 -9.30893803
		 30.57129669 46.36865997 -7.33111382 18.99542236 46.36865997 -4.59649324 -11.75802898 6.071452618 11.76374912
		 11.75802708 6.071452618 11.76374912 -9.45568562 72.69384003 10.081136703 9.4556818 72.69384003 10.081136703
		 -9.45568562 72.69384003 -8.022335052 9.4556818 72.69384003 -8.022335052 -11.75802898 6.018058777 -10.94976521
		 11.75802708 6.018058777 -10.94976521 -14.23800659 33.60491562 15.6186533 14.23800182 33.60491562 15.6186533
		 13.31194782 33.60490417 -12.29646015 -13.31194973 33.60490417 -12.29646015 -7.6367116 6.012224197 14.070345879
		 -7.19876003 5.68767166 -13.24404335 -7.5915947 33.60490417 -14.38772011 -6.0097427368 72.69384766 -9.95886326
		 -6.0097427368 72.69384766 12.017669678 -9.012252808 33.60491562 19.7488842 -7.7742507e-06 6.6613431 14.98603439
		 -7.7742507e-06 6.030326366 -14.17204952 -7.0608885e-06 33.60490417 -15.92136478 -8.4677395e-06 72.69384766 -11.044197083
		 -8.4677395e-06 72.69384766 13.10299492 -7.4173595e-06 33.60491562 21.86433983 7.63670683 6.012224197 14.070345879
		 7.19875383 5.68767166 -13.24404335 7.59158945 33.60490417 -14.38772011 6.0097379684 72.69384766 -9.95886326
		 6.0097379684 72.69384766 12.017669678 9.012248039 33.60491562 19.7488842 -11.48443508 72.69384766 6.82081938
		 -6.35422039 76.27532959 6.74620295 -8.8729457e-06 76.27532959 7.83106422 6.35421562 76.27532959 6.74620295
		 11.48443317 72.69384766 6.82081938 17.98454475 33.60491562 9.45545387 14.30561447 6.047056675 7.23866796
		 8.49767303 4.56679535 7.23866796 -7.7742507e-06 5.81809473 7.23866796 -8.4976778 4.56679535 7.23866796
		 -14.30561638 6.047056675 7.23866796 -17.98454475 33.60491562 9.45545387 -12.84598923 72.69384766 1.029407978
		 -7.66946793 76.27532959 1.029408097 -8.8729457e-06 77.33612061 1.029408336 7.66946363 76.27532959 1.029408097
		 12.84598732 72.69384766 1.029407978;
	setAttr ".vt[332:497]" 19.050983429 33.60491562 -0.25328046 15.14939213 6.21293974 0.40699807
		 -7.7742507e-06 5.39561987 0.40699843 -15.14939404 6.21293974 0.40699807 -19.050981522 33.60491562 -0.25328034
		 -11.48443508 72.69384766 -4.76201153 -6.22541189 76.27532959 -4.60215902 -8.8729457e-06 76.27532959 -5.7722578
		 6.22540808 76.27532959 -4.60215902 11.48443317 72.69384766 -4.76201153 17.36724091 33.60491562 -7.66607332
		 14.30561447 6.17571068 -6.42468166 8.10135269 4.56679535 -6.42468166 -7.7742507e-06 5.55838108 -6.42468166
		 -8.10135841 4.56679535 -6.42468166 -14.30561638 6.17571068 -6.42468166 -17.367239 33.60491562 -7.66607332
		 -7.8491103e-06 46.48395538 -14.80310345 7.28244591 46.48395538 -13.3611784 12.35468006 46.48395538 -11.073562622
		 15.61140251 46.48395538 -7.071582794 16.66597939 46.48395538 8.69705772 12.85670471 46.48395538 13.15773964
		 7.70307589 46.48395538 16.727005 -8.0216214e-06 46.48395538 18.038339615 -7.70307827 46.48395538 16.727005
		 -12.85670662 46.48395538 13.15773964 -16.66597939 46.48395538 8.69705772 -15.61140442 46.48395538 -7.071582794
		 -12.35468006 46.48395538 -11.073562622 -7.28245068 46.48395538 -13.3611784 12.89422703 9.38925266 -12.44137573
		 -12.89422894 9.38925266 -12.44137573 -15.99385548 9.38926029 -7.30085945 -17.026351929 9.38926029 0.59577012
		 -16.036817551 9.38926029 8.42145634 -13.23389721 9.38926029 13.68795872 -8.09373951 9.38926029 16.75562096
		 -7.9536421e-06 9.38926029 18.33402443 8.093733788 9.38926029 16.75562096 13.23389435 9.38926029 13.68795872
		 16.036817551 9.38926029 8.42145634 17.026353836 9.38926029 0.59577036 15.99385357 9.38926029 -7.30085945
		 16.62064934 12.65061951 -7.65045309 13.28778934 12.65061188 -12.88734818 -13.28779221 12.65061188 -12.88734818
		 -16.62064743 12.65061951 -7.65045309 -17.7355175 12.65061951 0.50992584 -16.7010231 12.65061951 8.92135429
		 -14.12300682 12.65061951 14.44093323 -8.30699635 12.65061951 18.2017765 -7.9734182e-06 12.65061951 19.80629539
		 8.30699062 12.65061951 18.2017765 14.12300491 12.65061951 14.44093323 16.70102119 12.65061951 8.92135429
		 17.7355175 12.65061951 0.50992584 13.63877296 16.48475647 -13.28609467 17.13473129 16.48477936 -7.94364929
		 18.30659103 16.48477936 0.44458362 17.23678589 16.48477936 9.051496506 14.44550514 16.48477936 15.036458015
		 8.65317249 16.48477936 19.047182083 -8.0784985e-06 16.48477936 20.66480637 -8.65318012 16.48477936 19.047182083
		 -14.44550896 16.48477936 15.036458015 -17.23678589 16.48477936 9.051496506 -18.30659103 16.48477936 0.44458351
		 -17.1347332 16.48477936 -7.94364929 -13.63877487 16.48475647 -13.28609467 10.63973427 67.58625793 13.76534843
		 5.9721899 67.58625793 16.2864418 -8.5863448e-06 67.58625793 17.54674721 -5.97219467 67.58625793 16.2864418
		 -10.63973522 67.58625793 13.76534843 -13.60903549 67.58625793 7.59602022 -15.33268929 67.58625793 1.031385541
		 -13.52967167 67.58625793 -5.99038363 -10.90861416 67.58625793 -9.71049404 -6.22008562 67.58625793 -12.21579742
		 -8.5695337e-06 67.58625793 -13.47020817 6.22007895 67.58625793 -12.21579742 10.90861225 67.58625793 -9.71049404
		 13.52966976 67.58625793 -5.99038363 15.33268738 67.58625793 1.031385541 13.60903358 67.58625793 7.59602022
		 12.036053658 57.20291138 13.76236248 15.61661911 57.20291138 8.13948631 17.080347061 57.20291138 1.025368571
		 15.14961147 57.20291138 -6.72751522 12.10003757 57.20291138 -10.87276363 7.014839172 57.20291138 -13.45030975
		 -8.7677172e-06 57.20291138 -14.91649342 -7.014844894 57.20291138 -13.45030975 -12.10003948 57.20291138 -10.87276363
		 -15.14961338 57.20291138 -6.72751522 -17.080347061 57.20291138 1.025368333 -15.61662102 57.20291138 8.13948631
		 -12.036053658 57.20291138 13.76236248 8.42744923 40.55766296 18.15180016 13.81802368 40.55766296 14.31144905
		 17.4881115 40.55766296 8.53886127 18.50815964 40.55766296 0.60586429 16.81345367 40.55766296 -7.0038952827
		 12.8111124 40.55765533 -11.45387363 7.52150822 40.55765533 -13.71518993 -7.9331567e-06 40.55765533 -15.15218258
		 -7.52151251 40.55765533 -13.71518993 -12.81111431 40.55765533 -11.45387363 -16.81345558 40.55766296 -7.0038952827
		 -18.50815964 40.55765915 0.60586381 -17.4881115 40.55766296 8.53886127 -13.81802654 40.55766296 14.31144905
		 -8.42745399 40.55766296 18.15180016 -8.0216232e-06 40.55766296 19.6568222 18.94157791 24.46081924 0.0026670396
		 17.50251961 24.46081924 -7.75826454 13.66385841 24.4608078 -12.72615719 7.52923822 24.4608078 -14.65009117
		 -7.755496e-06 24.4608078 -16.22455025 -7.5292449 24.4608078 -14.65009117 -13.66386223 24.4608078 -12.72615719
		 -17.5025177 24.46081924 -7.75826454 -18.94157791 24.46081924 0.0026669875 -17.85107231 24.46081924 9.47485352
		 -14.54854298 24.46081924 15.70294666 -9.22353172 24.46081924 19.8108139 -8.0275113e-06 24.46081924 21.59563637
		 9.22352695 24.46081924 19.8108139 14.54854202 24.46081924 15.70294666 17.8510704 24.46081924 9.47485352
		 4.77023745 4.99818039 -3.0088415146 4.01845789 4.87044525 0.40699843 4.057676792 4.9749794 4.03801775
		 8.49767303 4.96403217 4.22468185 12.33311749 5.10012817 3.96089053 12.12716103 5.10012817 0.40699825
		 11.53714943 5.10012817 -3.0088415146 8.29951286 5.031570435 -3.74161148 -4.77024794 4.99818039 -3.0088415146
		 -4.018468857 4.87044525 0.40699843 -4.057687759 4.9749794 4.03801775 -8.4976778 4.96403217 4.22468185
		 -12.33312035 5.10012817 3.96089053 -12.12716484 5.10012817 0.40699825 -11.53715324 5.10012817 -3.0088415146
		 -8.29951763 5.031570435 -3.74161148 17.53723145 46.4734726 7.77833223 16.98403549 46.4229126 -4.88111448
		 17.55433464 48.37817383 6.83009243 18.34491348 49.36906052 1.49800682 17.12954903 48.38153839 -4.55629396
		 -17.53723335 46.4734726 7.77833223 -16.98403358 46.4229126 -4.88111496 -18.34491539 49.36906052 1.4980067
		 -17.12954903 48.38153839 -4.55629396 -17.55434227 48.37817383 6.83009243 7.87357283 56.96275711 16.80500031
		 6.92759752 58.15427399 17.25297928 3.81815195 59.92506409 18.24876213 -8.924927e-06 61.91457367 18.66641235
		 -3.81825709 59.9250946 18.24872971 -6.92628384 58.15390015 17.25109673 -7.86868286 56.96205521 16.7989006
		 7.15300703 55.70540237 17.21933937 4.26543045 54.91493988 18.67404747;
	setAttr ".vt[498:663]" -7.14989758 55.70505142 17.21577072 -4.26332855 54.91456604 18.66977692
		 2.8819733e-05 54.86477661 19.23919106 -2.11661053 52.37269974 -16.6146431 -2.017203331 52.11299133 -17.079315186
		 -1.69627857 52.46799469 -17.33274841 -1.48506832 52.83226776 -17.36307526 -1.34863758 53.43270874 -17.0012359619
		 -1.44804192 53.69242096 -16.53656197 -1.76896763 53.33741379 -16.28313446 -2.079506874 52.69750214 -16.34752274
		 -7.18450642 53.086196899 -18.54268837 -5.9603281 53.36375427 -20.63410187 -5.18798542 55.062080383 -20.54581833
		 -5.31230831 56.93325043 -19.7810955 -6.26995945 57.77510834 -18.80752182 -6.53648853 56.65569687 -17.68968201
		 -6.91923809 54.66957092 -17.58811569 -15.80178356 56.63860321 -23.047189713 -14.51902676 56.92943192 -25.23868561
		 -13.5375452 59.57250214 -24.93080711 -13.7354517 62.018547058 -24.10466957 -14.64692783 62.85128021 -23.037212372
		 -15.018212318 61.72771454 -21.91317749 -15.35163975 59.16120529 -21.83156586 -22.71352005 61.81600189 -26.67075157
		 -21.65879059 62.055130005 -28.47267532 -22.06546402 64.09702301 -28.94736862 -22.93146133 66.11671448 -28.67860794
		 -23.97110748 66.95726776 -27.95008469 -23.98618317 65.87757874 -26.87668228 -23.5570755 63.75884247 -26.39905548
		 -24.86306381 63.53943253 -27.80099106 -23.89504242 63.75890732 -29.45477676 -26.57629395 66.38658142 -30.80099869
		 -28.47305679 68.19652557 -31.19280624 -29.60700607 69.18045044 -30.95394516 -29.1374855 68.045890808 -30.057668686
		 -27.65232849 66.1426239 -28.96267891 -21.78761673 61.93344116 -28.34919548 -14.96865749 56.50471878 -24.80770683
		 -6.67103291 52.69242477 -19.95288658 -6.87422085 52.6463623 -19.60574722 -15.60548496 56.3603363 -23.71974945
		 -22.65727615 61.73627472 -26.86344337 -2.15531445 52.25764847 -16.57139778 -2.030674934 51.96134186 -17.1073246
		 -6.93968296 52.42786407 -19.59794044 -7.33686543 52.91232681 -18.50844193 -1.66512394 52.36878586 -17.40884209
		 -5.94641972 53.21260834 -20.79502487 -6.67182827 52.48858261 -20.055530548 -1.40931225 52.82766724 -17.43857956
		 -5.031949043 55.047092438 -20.6547699 -1.25894833 53.52503586 -17.020462036 -5.19308567 57.115448 -19.83325958
		 -1.38195229 53.8190155 -16.4810791 -6.11351871 57.95591354 -18.69195938 -1.75154972 53.41335297 -16.1788826
		 -6.58081341 56.83359909 -17.54573059 -2.10637188 52.66963196 -16.24770737 -6.96498966 54.63173294 -17.42048454
		 -15.7134161 56.15871811 -23.73730469 -15.91566563 56.46052551 -22.98250198 -15.014332771 56.31724548 -24.93169594
		 -14.51599216 56.78794479 -25.40933228 -13.4659338 59.59983826 -25.082273483 -13.64973354 62.20689392 -24.18253517
		 -14.59552097 63.099067688 -22.97423553 -15.0019578934 61.85726547 -21.73180199 -15.41709423 59.13132095 -21.67512321
		 -22.79058075 61.55306244 -26.89474297 -22.43480301 61.31721497 -26.42763901 -21.85832977 61.76303864 -28.48434258
		 -21.22270584 61.55134583 -28.42846298 -22.20569611 64.20539093 -29.19526672 -22.85211563 66.29051971 -28.76516914
		 -24.14461136 67.30383301 -28.0056552887 -23.77545547 65.89894867 -26.56978607 -23.64199829 63.70862579 -26.24881935
		 -25.0095672607 63.37656403 -27.776577 -23.92812729 63.62175369 -29.62412643 -26.52243042 66.39647675 -30.97034454
		 -28.38011169 68.36476135 -31.27330017 -29.54862213 69.44259644 -30.88497925 -29.17986679 68.18344879 -29.90697861
		 -27.7724762 66.11306763 -28.83473969 -1.7387495 52.79728699 -16.82551575 -1.76108074 52.8237381 -16.83507538
		 2.11660767 52.37269592 -16.6146431 2.017201424 52.11299133 -17.079317093 1.69627666 52.46799469 -17.33274651
		 1.48506737 52.83226776 -17.36307526 1.34863663 53.43270874 -17.0012359619 1.44804192 53.69242096 -16.53656387
		 1.76896667 53.33740997 -16.28313637 2.079502106 52.69749832 -16.34752464 7.18450356 53.086204529 -18.54268646
		 5.96032429 53.36375427 -20.63410378 5.18798447 55.062084198 -20.54582024 5.3123045 56.93324661 -19.7810955
		 6.26995945 57.77510834 -18.80752373 6.53648615 56.65569687 -17.68968201 6.91923475 54.66957092 -17.58811569
		 15.80177975 56.63860703 -23.04719162 14.51902103 56.92943573 -25.23868561 13.53754234 59.57249832 -24.93080902
		 13.73544979 62.018547058 -24.10467148 14.64692402 62.85128403 -23.037214279 15.018209457 61.72771835 -21.91317749
		 15.35163403 59.16120529 -21.83156586 22.71352005 61.81600571 -26.67075157 21.65878487 62.055130005 -28.47267532
		 22.065460205 64.09703064 -28.94737244 22.93145752 66.11671448 -28.67860794 23.97110939 66.95726776 -27.95009232
		 23.98617935 65.87758636 -26.87667847 23.55707169 63.75884247 -26.39905739 24.86306381 63.53943634 -27.80099106
		 23.89504242 63.7589035 -29.45478249 26.57629013 66.38658905 -30.80100441 28.47305679 68.1965332 -31.19281006
		 29.60699272 69.18045044 -30.95394707 29.13747787 68.045890808 -30.057666779 27.65233231 66.14261627 -28.96268272
		 21.78761482 61.93344498 -28.34919357 14.96865463 56.5047226 -24.80770683 6.67103195 52.69242477 -19.95288658
		 6.87421942 52.64636612 -19.60574722 15.60548401 56.36033249 -23.71975136 22.65727615 61.73628235 -26.86344147
		 2.15531063 52.25765228 -16.57139587 2.030673027 51.96134186 -17.10732651 6.93967962 52.42786026 -19.59794235
		 7.3368659 52.91232681 -18.50844193 1.66512012 52.36878586 -17.40884018 5.94642162 53.21261215 -20.79502487
		 6.67182589 52.48858643 -20.055528641 1.40931129 52.82766724 -17.43858337 5.031947136 55.047088623 -20.6547699
		 1.25894451 53.52503204 -17.020462036 5.19308472 57.11545181 -19.83325958 1.38195229 53.81900787 -16.4810791
		 6.11351585 57.95590973 -18.6919632 1.75154495 53.41335678 -16.1788826 6.58081293 56.83359528 -17.5457325
		 2.10636806 52.66963196 -16.24770546 6.96498585 54.63173676 -17.42048264 15.71341324 56.15871811 -23.73730659
		 15.91566658 56.46052933 -22.98250389 15.014326096 56.31723785 -24.93169594 14.51599312 56.78794098 -25.409338
		 13.46593285 59.59983444 -25.082277298 13.64972878 62.20689774 -24.18253517 14.59551907 63.099063873 -22.97423935
		 15.001955986 61.85726166 -21.73180389 15.41709614 59.13132477 -21.67512512 22.79058075 61.55306244 -26.89474297
		 22.43479919 61.3172226 -26.42763901 21.85832787 61.76304626 -28.48434067 21.22270393 61.55134964 -28.4284668
		 22.20569229 64.20539093 -29.19526863 22.85211563 66.29051971 -28.76517296 24.14460754 67.30384064 -28.005657196
		 23.77545166 65.89894867 -26.56978798 23.64199829 63.70862961 -26.24881935;
	setAttr ".vt[664:829]" 25.0095672607 63.37656403 -27.77658081 23.9281292 63.62174988 -29.62413025
		 26.52242279 66.39648438 -30.97034264 28.38010406 68.36476135 -31.27330399 29.54861832 69.44259644 -30.88498306
		 29.17987061 68.18345642 -29.90698051 27.77248383 66.11307526 -28.8347435 1.73874664 52.7972908 -16.82551384
		 1.76107883 52.82373428 -16.83507538 1.8933801e-07 35.52902222 22.26082993 1.8933801e-07 35.56044769 23.31363297
		 1.8933801e-07 51.51533127 22.19868469 1.8933801e-07 51.48391724 21.14589119 8.60917282 40.49371719 19.36015511
		 9.32243347 52.38165283 19.80118561 8.60917282 40.46226883 18.3073616 9.32243347 52.35022736 18.74838638
		 -8.60917282 40.49371719 19.36015511 -9.32243347 52.38165283 19.80118561 -9.32243347 52.35022736 18.74838638
		 16.91123962 45.52328491 12.65692139 16.80796814 53.47069931 12.81984711 16.033037186 45.50250244 11.96059132
		 15.92510033 53.45007706 12.12826824 -16.80796814 53.47069931 12.81984711 -15.92510033 53.45007706 12.12826824
		 -16.91124344 45.52328873 12.65692329 19.63153076 48.99574661 5.77785301 20.081438065 54.21837234 1.87234116
		 18.71645164 48.9993782 5.89964581 18.91837502 54.22200012 1.99413109 -20.081441879 54.21837234 1.87234116
		 -18.91837502 54.22200012 1.99413109 -19.63153648 48.99574661 5.77785301 -8.60917282 40.48365784 18.29937744
		 -16.027965546 45.52392578 11.9559288 -18.67752266 49.021636963 5.90305901 16.79076767 54.29580688 -6.43568802
		 16.30545235 49.55711746 -5.81566048 17.95383072 54.29218674 -6.55748177 17.46852112 49.55350494 -5.93745232
		 -17.95383835 54.29218674 -6.55748177 -17.46852303 49.55350876 -5.93744469 -16.79076767 54.29580688 -6.43568802
		 -16.26652336 49.57939529 -5.81223488 12.59387302 54.42839432 -11.8161068 12.59387398 50.15136337 -11.68849945
		 13.36957169 54.40486526 -12.6047554 13.36956596 50.12783813 -12.47714996 -13.36957264 54.40486145 -12.60475922
		 -13.36957264 50.12784195 -12.47714615 -12.59387302 54.42839432 -11.8161068 -12.56791115 50.17429733 -11.66276169
		 7.82963085 54.27242661 -14.037017822 7.82963085 50.97119141 -13.90690994 8.074241638 54.24171829 -15.06659317
		 8.074240685 50.94048309 -14.93648148 -8.074241638 54.24171829 -15.0666008 -8.074248314 50.94049454 -14.93648148
		 -7.82963085 54.27242661 -14.037017822 -7.82144785 50.99437332 -13.87310028 2.61747861 54.31415176 -15.154953
		 2.61747789 51.52629852 -15.023529053 2.8620894 54.28344345 -16.18452835 2.86208749 51.49559021 -16.053104401
		 -2.86208844 54.28344345 -16.18453598 -2.86209464 51.49560165 -16.053104401 -2.61747813 54.31415176 -15.154953
		 -2.60929418 51.54947662 -14.98971939 -16.28499222 49.080669403 12.0071678162 -8.056442261 47.84939957 17.77657509
		 1.8933801e-07 47.19649506 20.18550873 8.056442261 47.84939957 17.77657509 16.28499222 49.080665588 12.0071649551
		 -15.52787113 49.15572357 11.5838871 -8.056442261 47.82759094 16.72018433 1.8933801e-07 47.16507721 19.13271332
		 8.056442261 47.81796646 16.72377777 15.52787113 49.14291 11.5879221 19.39107704 51.19158554 3.64192581
		 -19.39108086 51.19158554 3.64192581 -17.46020699 51.57756805 -6.033369064 -13.16810799 51.98603058 -12.2341404
		 -7.92782068 52.51971436 -14.76533127 -2.86209154 52.98583221 -15.81421661 2.86208844 52.98582458 -15.81420898
		 7.92781639 52.51970673 -14.76532745 13.16810226 51.98603058 -12.2341404 17.46020317 51.57756805 -6.033372879
		 18.3523407 51.23313522 3.76258469 16.3056469 51.61909485 -5.91646004 12.39240932 52.047473907 -11.44662285
		 7.68320608 52.58833313 -13.73688126 2.61747837 53.054450989 -14.78577042 -2.61372137 53.065090179 -14.77024841
		 -7.67945004 52.59897614 -13.72136307 -12.3804903 52.058002472 -11.43480873 -16.28777504 51.62932205 -5.91489029
		 -18.33446884 51.24335098 3.76415157 -1.64231706 51.22265244 -14.87017155 1.64231706 51.22265244 -14.87017155
		 -1.66788185 54.44869232 -14.87017155 1.66788185 54.44869232 -14.87017155 -1.66788185 54.44869232 -18.012853622
		 1.66788185 54.44869232 -18.012853622 -1.64231706 51.22265244 -18.012853622 1.64231706 51.22265244 -18.012853622
		 1.5987212e-14 50.82685471 -14.87017155 1.5987212e-14 50.94807434 -18.012853622 1.5987212e-14 54.95178986 -18.012853622
		 1.5987212e-14 54.95178986 -14.87017155 -2.25367641 52.9499321 -14.87017155 1.5987212e-14 52.9499321 -14.31710243
		 2.25367641 52.9499321 -14.87017155 2.042884111 52.9499321 -18.012853622 1.5987212e-14 52.9499321 -18.56592369
		 -2.042884111 52.9499321 -18.012853622 -1.8059876 54.76888657 -16.44151306 1.5987212e-14 55.37947083 -16.44151306
		 1.8059876 54.76888657 -16.44151306 2.4718976 52.9499321 -16.44151306 1.77496111 50.85363388 -16.44151306
		 1.5987212e-14 50.39917755 -16.44151306 -1.77496111 50.85363388 -16.44151306 -2.4718976 52.9499321 -16.44151306
		 17.18454552 48.87826157 6.90429401 18.013271332 49.81299591 1.471223 16.75736809 48.88143539 -4.67933369
		 16.51371002 46.42637253 -5.18320704 17.024757385 44.71427536 -4.49672174 18.20940971 44.71149445 0.85756207
		 17.6309166 44.71499252 7.37878942 17.085920334 46.47406769 7.92326403 -17.18455505 48.87826157 6.90429401
		 -17.085922241 46.47406769 7.92326403 -17.63091278 44.71499252 7.37878942 -18.20940971 44.71149445 0.85756153
		 -17.024751663 44.71427536 -4.49672174 -16.51370811 46.42637253 -5.18320751 -16.75736809 48.88143539 -4.67933369
		 -18.013273239 49.81299591 1.47122288 17.97209358 48.12117386 6.84401321 17.96931839 46.45444107 7.72508669
		 18.31403351 45.013660431 7.23604584 18.86462021 45.033454895 0.93578017 17.75258827 45.04108429 -4.34738636
		 17.43561363 46.41305923 -4.82943439 17.55572128 48.13395309 -4.51940775 18.71796417 49.15311432 1.45016897
		 -17.9720993 48.12117386 6.84401321 -18.71796417 49.15311432 1.45016873 -17.55571938 48.13395309 -4.51940775
		 -17.43561172 46.41305923 -4.82943535 -17.75258255 45.04108429 -4.34738636 -18.8646183 45.033454895 0.93577969
		 -18.31402969 45.013660431 7.23604584 -17.96931839 46.45444107 7.72508669 18.92271614 47.82472229 6.89249516
		 18.90385437 46.38816071 7.5396471 18.98983765 45.18404388 6.9816184 19.5356102 45.28569412 1.11906683
		 18.56978989 45.30963516 -4.35183716 18.43802834 46.37875366 -4.64944935 18.53564835 47.87029266 -4.39094353
		 19.51288414 48.9996376 1.28356409 -18.92271423 47.82472229 6.89249516;
	setAttr ".vt[830:995]" -19.51287651 48.9996376 1.28356397 -18.53563881 47.87029266 -4.39094353
		 -18.43802261 46.37875366 -4.64945078 -18.56977844 45.30963516 -4.35183716 -19.53560448 45.28569412 1.1190666
		 -18.98983383 45.18404388 6.9816184 -18.90384674 46.38816071 7.5396471 20.013372421 47.6938591 6.91496372
		 20.0014133453 46.36865997 7.49386024 20.013380051 45.23706055 6.91496372 20.28807259 45.35250854 1.21422708
		 19.61985588 45.38857269 -4.40166044 19.54158783 46.36866379 -4.64873695 19.61986351 47.74802399 -4.40166044
		 20.53609848 48.91072845 1.21422708 -20.013362885 47.6938591 6.91496372 -20.53609085 48.91073227 1.21422696
		 -19.61985016 47.74802399 -4.40166044 -19.54158592 46.3686676 -4.64873886 -19.61984825 45.38857269 -4.40166044
		 -20.28806114 45.3525238 1.21422696 -20.013376236 45.23704529 6.91496372 -20.0013961792 46.36865997 7.49386024
		 30.12841606 47.49921799 7.28180647 30.2266407 46.36865997 7.88618803 30.18082047 45.36532593 7.28180647
		 30.77943802 44.98430634 0.20271786 29.11343765 45.3848877 -6.57096195 29.03068924 46.36866379 -6.98481607
		 29.061031342 47.50621033 -6.57096195 29.68398285 48.71133423 0.30571699 -30.12841034 47.49921417 7.28180647
		 -29.68397141 48.71133041 0.30571637 -29.061021805 47.50621033 -6.57096195 -29.030683517 46.36865997 -6.98482227
		 -29.11343002 45.38488388 -6.57096195 -30.77943039 44.98430634 0.20271719 -30.18081284 45.36532593 7.28180647
		 -30.2266407 46.36865997 7.88618708 33.4548378 47.46305084 7.25724459 33.44998169 46.36865616 7.8596859
		 33.48384094 45.36584854 7.25724459 31.78465462 44.96863556 0.12579165 32.29352951 45.36584854 -7.14899254
		 32.2445488 46.36865616 -7.60519981 32.264534 47.46305084 -7.14899254 32.85543442 48.64931107 0.0027079955
		 -33.45483017 47.46305084 7.25724459 -32.8554306 48.64931107 0.0027072951 -32.26452255 47.46305084 -7.14899254
		 -32.24454498 46.36865997 -7.60520554 -32.2935257 45.36584854 -7.14899254 -31.78464508 44.96863556 0.12579097
		 -33.48383331 45.36584473 7.25724459 -33.44998169 46.36865616 7.85968399 42.46263123 47.42081451 6.65144444
		 42.50959396 46.36865997 7.21198845 42.48860168 45.25897598 6.65144444 42.57702637 44.86890411 -1.082052112
		 41.16519928 45.25897598 -8.53816128 41.15268707 46.36866379 -9.087393761 41.13922882 47.4208107 -8.53816128
		 41.79620361 48.46175385 -0.997572 -42.4626236 47.42081451 6.65144444 -41.79620361 48.46175385 -0.99757284
		 -41.13922882 47.4208107 -8.53816128 -41.15268707 46.36866379 -9.087395668 -41.16519928 45.25897598 -8.53816128
		 -42.57702255 44.86890411 -1.082052946 -42.48860168 45.25897598 6.65144444 -42.50959396 46.36865997 7.21198463
		 45.1509285 47.37828064 5.97765255 45.36045456 46.3686676 6.48892307 45.11798096 45.29164124 5.97765255
		 43.87698746 44.89857864 -1.16962731 43.87143326 45.29164124 -8.32070351 44.076255798 46.3686676 -8.85331249
		 43.9043808 47.37828064 -8.32070351 45.024280548 48.2547493 -1.25357556 -45.15091705 47.37828445 5.97765207
		 -45.024276733 48.2547493 -1.2535764 -43.9043808 47.37828064 -8.32070351 -44.076255798 46.3686676 -8.85331249
		 -43.87143707 45.29164505 -8.32070351 -43.87698746 44.89857864 -1.16962814 -45.11797333 45.29163742 5.97765207
		 -45.36044693 46.36866379 6.48891926 -12.48217964 51.3758316 13.43367577 -16.18707657 51.3758316 8.44259548
		 -15.40065384 51.3758316 -6.91455841 -7.16032171 51.3758316 -13.40185547 -12.23846817 51.3758316 -10.98192215
		 -17.81597519 51.3758316 1.37693262 -6.79145193 51.3758316 17.85430145 -8.26834e-06 51.3758316 -14.85485172
		 7.16031647 51.3758316 -13.40185547 12.48217964 51.3758316 13.43367577 16.18707657 51.3758316 8.44259548
		 15.40065193 51.3758316 -6.91455841 12.23846722 51.3758316 -10.98192215 17.81597519 51.3758316 1.37693262
		 6.79275894 51.3758316 17.85672951 1.3482637e-05 51.3758316 18.73927689 7.068232059 12.65061188 -24.085447311
		 7.64521217 16.48475647 -20.13476753 11.433815 16.29713249 -15.54383278 10.84703922 12.47254944 -16.37752914
		 -11.43381786 16.29713249 -15.54383278 -10.84704304 12.47254944 -16.37753105 -7.64521694 16.48475647 -20.13476753
		 -7.068238735 12.65061188 -24.085447311 -7.93447e-06 16.48475647 -21.70618439 -7.8599769e-06 12.65061188 -26.15162468
		 6.86193562 6.87391376 -19.097602844 6.053697586 9.84975433 -30.49008942 10.15624142 9.058828354 -17.30083847
		 9.81053352 7.52564001 -17.51461029 -8.0330319e-06 6.65753841 -20.2616024 -7.8929988e-06 9.68597507 -32.097984314
		 -6.86194229 6.87391376 -19.097602844 -6.053703785 9.84975433 -30.49008942 -10.15624332 9.058828354 -17.30083847
		 -9.81053638 7.52564049 -17.51461029 7.59015799 20.61456108 -16.47428513 10.58761215 19.30859947 -15.21720219
		 -7.9427236e-06 20.98799515 -17.94406319 -7.59016466 20.61456108 -16.47428513 -10.58761597 19.30859947 -15.21720314
		 15.55413055 2.079115391 6.58383799 12.77813625 2.42191339 7.50362587 10.6778183 2.29034638 6.72796822
		 8.40801239 2.42191339 7.73952723 6.099951267 2.23753881 6.84089994 4.037890911 2.42191339 7.50362587
		 1.26189828 2.079115391 6.58383799 0.72908449 1.039557695 6.56889009 1.26189828 0 6.58383799
		 3.64670277 0 6.53177643 6.031507492 0 6.47971344 8.40801144 0 6.4647212 10.78451538 0 6.47971344
		 13.16932487 0 6.53177643 15.55413055 0 6.58383799 16.086946487 1.039557695 6.56889009
		 -15.55413151 2.079115391 6.58383799 -12.77813911 2.42191339 7.50362587 -10.67782021 2.29034638 6.72796822
		 -8.40801334 2.42191339 7.73952723 -6.099953651 2.23753881 6.84089994 -4.037893295 2.42191339 7.50362587
		 -1.26189983 2.079115391 6.58383799 -0.72908616 1.039557695 6.56889009 -1.26189995 0 6.58383799
		 -3.64670444 0 6.53177643 -6.031509399 0 6.47971344 -8.40801334 0 6.4647212 -10.78451633 0 6.47971344
		 -13.16932774 0 6.53177643 -15.55413246 0 6.58383799 -16.086946487 1.039557695 6.56889009
		 15.61264992 2.079115391 7.81031847 16.12681198 1.033006549 7.92281723 15.61264992 0 7.81031847
		 13.29391289 0 7.9707613 10.98062229 0 7.88043308 11.040681839 1.025588989 11.21474934;
	setAttr ".vt[996:1069]" 10.97517204 2.079115391 7.81031847 13.29391289 2.079115391 9.58649254
		 -15.61265087 2.079115391 7.81031847 -13.29391575 2.079115391 9.58649254 -10.97517395 2.079115391 7.81031847
		 -11.040685654 1.025588989 11.21474934 -10.98062515 0 7.88043308 -13.29391575 0 7.9707613
		 -15.61265087 0 7.81031847 -16.12681198 1.033006549 7.92281723 10.74495125 2.079115391 7.87609959
		 10.87744808 1.045091629 11.29159927 10.74495125 0 7.87610054 8.40801144 0 8.055661201
		 6.071071625 0 7.87610054 5.93857479 1.04509151 11.29159927 6.071071625 2.079115391 7.87609959
		 8.40801144 2.079115391 9.6792717 -10.74495316 2.079115391 7.87609959 -8.40801334 2.079115391 9.6792717
		 -6.071073532 2.079115391 7.87609959 -5.9385767 1.04509151 11.29159927 -6.071073532 0 7.87610054
		 -8.40801334 0 8.055661201 -10.74495316 0 7.87610054 -10.87745094 1.045091629 11.29159927
		 5.80140018 2.079115391 7.98267746 5.74819994 1.021771193 11.31882286 5.79446077 0 8.071955681
		 3.51111293 0 8.18697166 1.22082508 0 7.98267746 0.71300364 1.031216025 8.12592316
		 1.22082508 2.079115391 7.98267746 3.51111293 2.079115391 9.75409603 -5.80140305 2.079115391 7.98267746
		 -3.51111507 2.079115391 9.75409603 -1.22082686 2.079115391 7.98267746 -0.7130053 1.031216025 8.12592316
		 -1.22082686 0 7.98267746 -3.51111507 0 8.18697166 -5.79446363 0 8.071955681 -5.74820185 1.021771193 11.31882286
		 25.10407257 48.81116486 0.76056486 24.33428764 47.62727737 -5.48489571 24.27994537 46.36866379 -5.8152523
		 24.36045265 45.38673401 -5.48489571 25.52690887 45.16864777 0.70913249 25.090465546 45.30110931 7.098145485
		 25.10735512 46.36865997 7.68976831 25.064292908 47.59666443 7.098145485 -25.10406303 48.81116486 0.76056451
		 -25.064285278 47.59666443 7.098145485 -25.10734558 46.36865997 7.68976784 -25.090459824 45.30110168 7.098145485
		 -25.52689934 45.1686554 0.70913213 -24.36044502 45.38673401 -5.48489571 -24.27994156 46.36866379 -5.81525612
		 -24.3342762 47.62727737 -5.48489571 37.43282318 48.55328751 -0.50940305 36.80809021 47.44142532 -7.86020184
		 36.80522919 46.36865997 -8.36403561 36.83553696 45.31113434 -7.86020184 37.31000137 44.91757584 -0.49258536
		 38.093986511 45.31113434 6.94709492 38.08821106 46.36865997 7.52808571 38.06653595 47.44142914 6.94709492
		 -37.43281937 48.55328751 -0.50940382 -38.06652832 47.44142914 6.94709492 -38.08821106 46.36865997 7.52808285
		 -38.093986511 45.31113434 6.94709492 -37.30999374 44.91757584 -0.49258614 -36.83553696 45.31113434 -7.86020184
		 -36.80522537 46.36865997 -8.36403942 -36.80808258 47.44142532 -7.86020184;
	setAttr -s 2160 ".ed";
	setAttr ".ed[0:165]"  63 80 1 80 81 1 81 19 1 63 19 1 83 84 1 84 67 1 67 5 1
		 5 83 1 65 987 1 66 7 1 7 100 1 65 1 1 82 989 1 82 3 1 89 93 1 70 2 1 4 89 1 55 983 1
		 56 9 1 8 984 1 55 8 1 87 88 1 88 57 1 57 10 1 87 10 1 53 72 1 72 73 1 22 73 1 53 22 1
		 42 985 1 43 13 1 12 986 1 42 12 1 85 86 1 86 44 1 44 14 1 85 14 1 48 76 1 76 77 1
		 27 77 1 48 27 1 15 78 1 16 79 1 64 18 1 81 1005 1 62 3 1 54 1035 1 54 21 1 73 1037 1
		 11 74 1 11 1030 1 52 11 1 71 23 1 24 75 1 49 1019 1 49 26 1 77 1021 1 47 15 1 61 975 1
		 3 974 1 61 30 0 5 31 1 30 103 0 67 68 1 68 31 0 51 979 1 11 978 1 51 33 0 57 58 1
		 58 34 0 10 34 1 2 980 1 32 91 0 4 35 1 46 977 1 15 976 1 46 29 0 44 45 1 45 28 0
		 14 28 1 60 61 1 30 38 1 60 38 1 31 39 1 38 104 1 68 69 1 69 39 1 50 51 1 33 37 1
		 50 37 1 58 59 1 59 36 1 34 36 0 32 40 1 40 90 1 35 41 1 37 46 1 29 37 1 45 36 1 28 36 1
		 9 43 1 8 42 1 86 87 1 10 44 1 34 45 0 33 46 0 11 47 1 24 48 1 75 76 1 25 49 1 32 51 0
		 40 50 1 2 52 1 23 53 1 71 72 1 0 55 1 20 54 1 6 56 1 6 94 1 4 57 1 88 89 1 35 58 0
		 41 59 1 29 61 0 37 60 1 15 62 1 16 63 1 79 80 1 12 65 1 17 64 1 13 66 1 84 85 1 14 67 1
		 28 68 0 36 69 1 0 70 1 20 71 1 72 54 1 73 21 1 74 8 1 75 25 1 76 49 1 77 26 1 78 12 1
		 79 17 1 80 64 1 18 81 1 1 82 1 83 7 1 66 84 1 13 85 1 43 86 1 9 87 1 56 88 1 89 6 1
		 90 41 1 91 35 0 92 4 1 93 981 1 94 982 1 95 56 1 96 9 1 97 43 1 98 13 1 99 66 1 100 988 1;
	setAttr ".ed[166:331]" 101 83 1 102 5 1 103 31 0 104 39 1 90 91 1 91 92 1 92 93 1
		 93 94 1 94 95 1 95 96 1 96 97 1 97 98 1 98 99 1 99 100 1 100 101 1 101 102 1 102 103 1
		 103 104 1 105 160 1 107 157 1 109 162 1 111 161 1 105 175 1 106 187 1 109 194 1 110 188 1
		 111 205 1 112 199 1 113 147 1 114 148 1 115 149 1 116 152 1 113 968 1 114 192 1 116 179 1
		 117 170 1 118 171 1 119 172 1 120 167 1 117 970 1 118 190 1 120 183 1 121 184 1 122 169 1
		 123 186 1 121 168 1 125 159 1 116 1022 1 127 178 1 128 158 1 125 176 1 129 180 1
		 130 154 1 120 1006 1 132 182 1 129 153 1 119 133 1 120 960 1 108 958 1 134 166 0
		 110 136 1 135 196 0 133 173 0 107 964 1 116 962 1 137 156 0 115 139 1 109 140 1 140 163 0
		 137 208 0 138 151 0 139 150 0 133 141 1 134 142 1 135 143 1 142 165 1 136 144 1 143 195 1
		 141 174 1 137 145 1 138 142 1 145 155 1 139 141 0 140 146 1 146 164 1 145 209 1 147 117 1
		 148 118 1 149 119 1 150 133 0 151 134 0 152 120 1 153 132 1 154 131 1 147 969 1 148 191 1
		 149 150 1 150 141 1 142 151 1 151 961 1 153 181 1 154 1009 1 155 142 1 156 138 0
		 157 116 1 158 127 1 159 126 1 160 113 1 161 114 1 162 115 1 163 139 0 164 141 1 155 156 1
		 156 963 1 158 177 1 159 1025 1 160 967 1 161 193 1 162 163 1 163 164 1 165 143 1
		 166 135 0 167 108 1 168 124 1 169 123 1 170 106 1 171 112 1 172 110 1 173 136 0 174 144 1
		 165 166 1 166 959 1 168 185 1 170 971 1 171 189 1 172 173 1 173 174 1 175 107 1 176 128 1
		 177 159 1 178 126 1 179 113 1 180 130 1 181 154 1 182 131 1 183 117 1 184 122 1 185 169 1
		 186 124 1 187 108 1 188 112 1 189 172 1 190 119 1 191 149 1 192 115 1 193 162 1 194 111 1
		 176 177 1 177 178 1 178 1023 1 180 181 1 181 182 1 182 1007 1 184 185 1 185 186 1
		 186 991 1;
	setAttr ".ed[332:497]" 187 973 1 188 189 1 189 190 1 190 191 1 191 192 1 192 193 1
		 193 194 1 194 206 1 195 144 1 196 136 0 197 110 1 198 188 1 199 972 1 200 171 1 201 118 1
		 202 148 1 203 114 1 204 161 1 205 966 1 206 965 1 207 109 1 208 140 0 209 146 1 195 196 1
		 196 197 1 197 198 1 198 199 1 199 200 1 200 201 1 201 202 1 202 203 1 203 204 1 204 205 1
		 205 206 1 206 207 1 207 208 1 208 209 1 210 233 0 211 230 0 212 214 0 213 215 0 214 232 0
		 215 231 0 216 210 0 217 211 0 210 218 0 216 219 0 214 220 0 212 221 0 213 230 1 218 226 0
		 219 227 0 220 228 0 221 229 0 218 219 1 220 221 1 221 234 1 222 211 0 223 217 0 224 215 0
		 225 213 0 222 223 1 224 225 1 225 236 1 226 222 0 227 223 0 228 224 0 229 225 0 226 227 1
		 228 229 1 229 235 1 231 217 0 230 231 1 232 216 0 233 212 0 232 233 1 234 218 1 233 234 1
		 235 226 1 234 235 1 236 222 1 235 236 1 236 230 1 254 916 1 255 238 1 238 909 1 243 254 1
		 257 912 1 258 244 1 244 911 1 257 242 1 256 257 1 242 249 1 249 256 1 244 248 1 248 910 1
		 241 250 1 250 914 1 253 884 1 243 893 1 246 253 1 258 896 1 259 245 1 245 879 1 245 247 1
		 247 878 1 259 864 1 260 240 1 240 847 1 251 846 1 251 240 1 252 852 1 246 861 1 252 239 1
		 248 243 1 247 246 1 249 238 1 255 256 1 250 237 1 237 915 1 239 251 1 237 255 1 256 250 1
		 241 257 1 261 279 1 265 281 1 261 903 1 262 901 1 263 275 1 264 843 1 265 274 1 266 273 1
		 267 885 1 267 278 1 268 907 1 268 272 1 269 875 1 270 853 1 269 271 1 270 277 1 271 270 1
		 272 267 1 271 876 1 273 262 1 272 908 1 274 261 1 273 280 1 274 904 1 275 264 1 275 844 1
		 276 263 1 279 262 1 280 274 1 281 266 1 282 268 1 283 269 1 284 264 1 276 838 1 277 870 1
		 278 902 1 279 280 1 280 281 1 281 906 1 282 890 1 283 858 1 285 297 1;
	setAttr ".ed[498:663]" 287 301 1 289 300 1 291 298 1 287 315 1 288 319 1 289 410 1
		 290 414 1 291 347 1 292 343 1 285 368 1 286 372 1 295 449 1 296 453 1 293 302 1 294 320 1
		 295 311 1 296 348 1 293 444 1 294 432 1 297 303 1 298 304 1 299 296 1 300 306 1 301 307 1
		 302 308 1 297 324 1 299 439 1 300 338 1 301 405 1 302 458 1 303 309 1 304 310 1 305 299 1
		 306 312 1 307 313 1 308 314 1 303 323 1 305 438 1 306 339 1 307 404 1 308 459 1 309 286 1
		 310 292 1 311 305 1 312 290 1 313 288 1 314 294 1 309 322 1 311 437 1 312 340 1 313 403 1
		 314 460 1 315 327 1 316 301 1 317 307 1 318 313 1 319 331 1 320 332 1 321 286 1 322 466 1
		 323 334 1 324 474 1 325 285 1 326 293 1 315 316 1 316 317 1 317 318 1 318 319 1 319 417 1
		 320 462 1 321 322 1 322 323 1 323 324 1 324 325 1 325 367 1 326 443 1 327 337 1 328 316 1
		 329 317 1 330 318 1 331 341 1 332 342 1 333 321 1 334 345 1 335 325 1 336 326 1 327 328 1
		 328 329 1 329 330 1 330 331 1 331 416 1 332 447 1 333 468 1 334 472 1 335 366 1 336 442 1
		 337 289 1 338 328 1 339 329 1 340 330 1 341 290 1 342 295 1 343 333 1 344 310 1 345 304 1
		 346 298 1 347 335 1 348 336 1 337 338 1 338 339 1 339 340 1 340 341 1 341 415 1 342 448 1
		 343 344 1 344 345 1 345 346 1 346 347 1 347 365 1 348 441 1 349 924 1 350 925 1 349 350 1
		 351 436 1 350 351 1 352 435 1 351 352 1 353 433 1 354 926 1 353 354 1 355 431 1 354 355 1
		 356 446 1 355 356 1 357 445 1 356 357 1 358 917 1 357 358 1 359 918 1 358 359 1 360 919 1
		 361 440 1 360 361 1 362 920 1 361 362 1 362 349 1 363 292 1 364 291 1 365 379 1 364 365 1
		 366 380 1 365 366 1 367 381 1 366 367 1 368 382 1 367 368 1 369 297 1 368 369 1 370 303 1
		 369 370 1 371 309 1 370 371 1 372 386 1 371 372 1 373 321 1 372 373 1;
	setAttr ".ed[664:829]" 374 333 1 373 374 1 375 343 1 374 375 1 375 363 1 376 375 1
		 377 363 1 376 377 1 378 364 1 379 400 1 378 379 1 380 399 1 379 380 1 381 398 1 380 381 1
		 382 397 1 381 382 1 383 369 1 382 383 1 384 370 1 383 384 1 385 371 1 384 385 1 386 393 1
		 385 386 1 387 373 1 386 387 1 388 374 1 387 388 1 388 376 1 389 377 1 390 376 1 389 390 1
		 391 388 1 390 391 1 392 387 1 391 392 1 393 461 1 392 393 1 394 385 1 393 394 1 395 384 1
		 394 395 1 396 383 1 395 396 1 397 457 1 396 397 1 398 456 1 397 398 1 399 455 1 398 399 1
		 400 454 1 399 400 1 401 378 1 400 401 1 402 288 0 402 403 1 403 404 1 404 405 1 406 287 0
		 405 406 1 407 315 1 406 407 1 408 327 1 407 408 1 409 337 1 408 409 1 410 426 1 409 410 1
		 411 300 1 410 411 1 412 306 1 411 412 1 413 312 1 412 413 1 414 422 1 413 414 1 415 421 1
		 414 415 1 416 420 1 415 416 1 417 419 1 416 417 1 417 402 1 418 402 1 419 927 1 418 419 1
		 419 420 1 421 928 1 420 421 1 422 929 1 421 422 1 423 413 1 422 423 1 424 412 1 423 424 1
		 425 411 1 424 425 1 426 921 1 425 426 1 427 409 1 426 427 1 428 408 1 427 428 1 429 407 1
		 428 429 1 430 406 1 429 430 1 431 314 1 432 354 1 431 432 1 433 320 1 432 433 1 434 332 1
		 433 434 1 435 342 1 434 435 1 436 295 1 435 436 1 437 350 1 436 437 1 438 349 1 437 438 1
		 439 362 1 438 439 1 440 296 1 439 440 1 441 360 1 440 441 1 441 442 1 443 359 1 442 443 1
		 444 358 1 443 444 1 445 302 1 444 445 1 446 308 1 445 446 1 446 431 1 447 391 1 448 390 1
		 447 448 1 449 389 1 448 449 1 450 311 1 449 450 1 451 305 1 450 451 1 452 299 1 451 452 1
		 453 401 1 452 453 1 454 348 1 453 454 1 455 336 1 454 455 1 456 326 1 455 456 1 457 293 1
		 456 457 1 458 396 1 457 458 1 459 395 1 458 459 1 460 394 1 459 460 1;
	setAttr ".ed[830:995]" 461 294 1 460 461 1 462 392 1 461 462 1 462 447 1 347 477 1
		 345 463 1 325 475 1 323 465 1 464 334 1 467 321 1 469 343 1 470 344 1 463 464 1 464 465 1
		 465 466 1 466 467 1 467 468 1 468 469 1 469 470 1 470 463 1 471 345 1 473 323 1 476 335 1
		 478 346 1 471 472 1 472 473 1 473 474 1 474 475 1 475 476 1 476 477 1 477 478 1 478 471 1
		 353 796 1 433 795 1 434 794 1 352 792 1 435 793 1 420 930 1 481 482 1 481 479 1 482 483 1
		 483 480 1 443 799 1 359 798 1 442 800 1 360 802 1 441 801 1 428 922 1 487 486 1 485 487 1
		 484 488 1 486 488 1 276 822 1 263 821 1 275 828 1 264 827 1 284 826 1 841 825 1 849 833 1
		 260 832 1 240 831 1 251 830 1 239 829 1 252 836 1 418 489 1 402 490 1 489 490 1 403 491 1
		 490 491 1 404 492 1 491 492 1 405 493 1 492 493 1 406 494 1 493 494 1 430 495 1 495 494 1
		 355 931 1 496 497 1 496 489 1 498 495 1 357 923 1 499 498 1 356 932 1 500 499 1 497 500 1
		 217 496 1 215 490 1 231 489 1 214 494 1 216 498 1 232 495 1 228 492 1 227 500 1 155 466 0
		 164 470 0 146 463 0 209 464 0 145 465 0 59 478 0 50 474 0 40 473 0 90 472 0 41 471 0
		 174 470 0 165 466 0 143 467 0 195 468 0 144 469 0 60 474 0 69 478 0 39 477 0 104 476 0
		 38 475 0 36 478 1 141 470 1 37 474 1 142 466 1 224 491 1 220 493 1 499 219 1 497 223 1
		 543 544 0 544 545 0 546 545 1 543 546 1 544 547 0 547 548 1 549 548 1 549 544 0 547 550 0
		 550 551 1 548 551 1 550 552 0 552 553 1 551 553 1 552 554 0 554 555 1 553 555 1 554 556 0
		 556 557 1 555 557 1 556 558 0 558 559 1 557 559 1 558 543 0 559 546 1 545 560 0 561 560 1
		 546 561 1 548 563 1 562 563 1 562 549 0 551 564 1 563 564 1 553 565 1 564 565 1 555 566 1
		 565 566 1 557 567 1 566 567 1 559 568 1 567 568 1 568 561 1 560 569 0;
	setAttr ".ed[996:1161]" 570 569 1 561 570 1 563 572 1 571 572 1 571 562 0 564 573 1
		 572 573 1 565 574 1 573 574 1 566 575 1 574 575 1 567 576 1 575 576 1 568 577 1 576 577 1
		 577 570 1 569 578 0 570 578 1 579 571 0 572 579 1 573 580 1 579 580 0 574 581 1 580 581 0
		 575 582 1 581 582 0 576 583 1 582 583 0 577 584 1 583 584 0 584 578 0 501 509 1 509 540 1
		 502 540 0 501 502 0 539 502 0 539 510 1 503 510 1 502 503 0 510 511 1 504 511 1 503 504 0
		 511 512 1 505 512 1 504 505 0 512 513 1 506 513 1 505 506 0 513 514 1 507 514 1 506 507 0
		 514 515 1 508 515 1 507 508 0 515 509 1 508 501 0 509 516 1 516 541 1 540 541 0 510 517 1
		 538 539 0 538 517 1 517 518 1 511 518 1 518 519 1 512 519 1 519 520 1 513 520 1 520 521 1
		 514 521 1 521 522 1 515 522 1 522 516 1 516 523 1 523 542 1 541 542 0 517 524 1 537 538 0
		 537 524 1 524 525 1 518 525 1 525 526 1 519 526 1 526 527 1 520 527 1 527 528 1 521 528 1
		 528 529 1 522 529 1 529 523 1 523 530 0 542 530 0 524 531 0 531 537 0 531 532 0 525 532 0
		 532 533 0 526 533 0 533 534 0 527 534 0 534 535 0 528 535 0 535 536 0 529 536 0 536 530 0
		 540 545 1 502 544 0 539 549 1 541 560 1 538 562 1 542 569 1 537 571 1 530 578 0 531 579 0
		 532 580 0 533 581 0 534 582 0 535 583 0 536 584 0 504 586 1 586 502 1 558 585 1 585 544 1
		 585 550 1 554 585 1 586 508 1 506 586 1 587 588 0 588 589 0 589 590 0 590 591 0 591 592 0
		 592 593 0 593 594 0 594 587 0 595 626 1 596 597 1 597 598 1 598 599 1 599 600 1 600 601 1
		 601 595 1 602 627 1 603 604 1 604 605 1 605 606 1 606 607 1 607 608 1 608 602 1 609 628 1
		 610 611 1 611 612 1 612 613 1 613 614 1 614 615 1 615 609 1 617 618 0 618 619 0 619 620 0
		 620 621 0 621 622 0 622 616 0 587 595 1 589 596 1 590 597 1 591 598 1;
	setAttr ".ed[1162:1327]" 592 599 1 593 600 1 594 601 1 596 603 1 595 602 1 597 604 1
		 598 605 1 599 606 1 600 607 1 601 608 1 603 610 1 602 609 1 604 611 1 605 612 1 606 613 1
		 607 614 1 608 615 1 609 616 0 610 617 0 611 618 0 612 619 0 613 620 0 614 621 0 615 622 0
		 623 610 1 624 603 1 625 596 1 617 623 0 623 624 0 624 625 0 625 588 0 588 626 0 626 627 0
		 627 628 0 628 616 0 588 630 0 629 630 0 626 631 1 630 631 0 632 631 1 629 632 1 630 633 0
		 633 634 1 625 635 1 635 634 1 635 630 0 633 636 0 636 637 1 634 637 1 636 638 0 638 639 1
		 637 639 1 638 640 0 640 641 1 639 641 1 640 642 0 642 643 1 641 643 1 642 644 0 644 645 1
		 643 645 1 644 629 0 645 632 1 627 646 1 631 646 0 647 646 1 632 647 1 624 648 1 648 635 0
		 634 649 1 648 649 1 637 650 1 649 650 1 639 651 1 650 651 1 641 652 1 651 652 1 643 653 1
		 652 653 1 645 654 1 653 654 1 654 647 1 628 655 1 646 655 0 656 655 1 647 656 1 623 657 1
		 657 648 0 649 658 1 657 658 1 650 659 1 658 659 1 651 660 1 659 660 1 652 661 1 660 661 1
		 653 662 1 661 662 1 654 663 1 662 663 1 663 656 1 616 664 0 655 664 0 656 664 1 617 665 0
		 665 657 0 658 665 1 618 666 0 659 666 1 665 666 0 619 667 0 660 667 1 666 667 0 620 668 0
		 661 668 1 667 668 0 621 669 0 662 669 1 668 669 0 622 670 0 663 670 1 669 670 0 670 664 0
		 640 671 1 671 630 1 644 671 1 671 636 1 592 672 1 672 588 1 590 672 1 672 594 1 674 677 0
		 673 674 0 674 681 0 675 678 0 674 735 1 673 679 0 676 680 0 673 740 1 676 675 1 677 684 0
		 678 685 0 679 686 0 680 687 0 679 677 1 680 741 1 678 680 1 677 736 1 681 690 0 682 675 0
		 683 676 0 682 734 1 682 683 1 684 691 0 685 692 0 686 693 0 687 694 0 686 684 1 687 742 1
		 685 687 1 684 737 1 688 682 0 689 683 0 690 697 0 688 689 1 688 733 1;
	setAttr ".ed[1328:1493]" 693 691 0 694 753 0 692 694 0 691 743 1 695 688 0 696 689 0
		 695 696 0 695 744 1 698 673 0 683 739 1 698 681 1 699 698 0 689 738 1 699 690 1 700 699 0
		 696 762 0 700 697 0 694 701 0 693 702 0 701 754 0 692 703 0 703 701 0 691 704 0 704 752 1
		 702 704 0 695 705 0 697 706 0 705 745 1 696 707 0 705 707 0 700 708 0 707 761 0 708 706 0
		 701 709 0 702 710 0 709 755 0 703 711 0 711 709 0 704 712 0 712 751 1 710 712 0 705 713 0
		 706 714 0 713 746 1 707 715 0 713 715 0 708 716 0 715 760 0 716 714 0 709 717 0 710 718 0
		 717 756 0 711 719 0 719 717 0 712 720 0 720 750 1 718 720 0 713 721 0 714 722 0 721 747 1
		 715 723 0 721 723 0 716 724 0 723 759 0 724 722 0 717 725 0 718 726 0 725 757 0 719 727 0
		 727 725 0 720 728 0 728 749 1 726 728 0 721 729 0 722 730 0 729 748 1 723 731 0 729 731 0
		 724 732 0 731 758 0 732 730 0 726 732 0 725 731 0 727 729 0 728 730 0 733 690 1 734 681 1
		 733 734 1 734 735 1 735 736 1 736 737 1 738 699 1 739 698 1 741 679 1 742 686 1 738 739 1
		 739 740 1 740 741 1 741 742 1 743 692 1 737 685 1 743 737 1 736 678 1 735 675 1 744 697 1
		 733 744 1 745 706 1 744 745 1 746 714 1 745 746 1 747 722 1 746 747 1 748 730 1 747 748 1
		 749 727 1 748 749 1 750 719 1 749 750 1 751 711 1 750 751 1 752 703 1 751 752 1 752 743 1
		 740 676 1 753 693 0 742 753 1 754 702 0 753 754 1 755 710 0 754 755 1 756 718 0 755 756 1
		 757 726 0 756 757 1 758 732 0 757 758 1 759 724 0 758 759 1 760 716 0 759 760 1 761 708 0
		 760 761 1 762 700 0 761 762 1 762 738 1 767 773 1 763 775 1 765 781 1 766 783 1 767 780 1
		 769 787 1 770 785 1 773 768 1 771 786 1 772 779 1 773 782 1 775 765 1 779 773 1 780 769 1
		 777 784 1 778 779 1 779 780 1 780 788 1 781 767 1 782 774 1 783 768 1;
	setAttr ".ed[1494:1659]" 784 778 1 785 764 1 786 772 1 787 763 1 788 775 1 783 784 1
		 784 785 1 785 786 1 786 787 1 768 778 1 777 766 1 774 776 1 788 781 1 778 770 1 764 777 1
		 776 771 1 787 788 1 772 770 1 771 764 1 776 777 1 774 766 1 782 783 1 769 772 1 763 771 1
		 775 776 1 765 774 1 781 782 1 789 481 1 790 482 1 789 790 1 791 483 1 790 791 1 792 480 1
		 791 792 1 792 793 1 793 794 1 794 795 1 796 479 1 795 796 1 796 789 1 797 488 1 798 484 1
		 797 798 1 798 799 1 799 800 1 800 801 1 802 485 1 801 802 1 803 487 1 802 803 1 804 486 1
		 803 804 1 804 797 1 805 481 1 806 479 1 805 806 1 807 795 1 806 807 1 808 794 1 807 808 1
		 809 793 1 808 809 1 810 480 1 809 810 1 811 483 1 810 811 1 812 482 1 811 812 1 812 805 1
		 813 488 1 814 486 1 813 814 1 815 487 1 814 815 1 816 485 1 815 816 1 817 801 1 816 817 1
		 818 800 1 817 818 1 819 799 1 818 819 1 820 484 1 819 820 1 820 813 1 821 805 1 822 806 1
		 821 822 1 823 807 1 822 823 1 824 808 1 823 824 1 825 809 1 824 825 1 826 810 1 825 826 1
		 827 811 1 826 827 1 828 812 1 827 828 1 828 821 1 829 813 1 830 814 1 829 830 1 831 815 1
		 830 831 1 832 816 1 831 832 1 833 817 1 832 833 1 834 818 1 833 834 1 835 819 1 834 835 1
		 836 820 1 835 836 1 836 829 1 837 263 1 838 1044 1 837 838 1 839 823 1 838 839 1
		 840 824 1 839 840 1 841 1041 1 840 841 1 842 284 1 841 842 1 843 1039 1 842 843 1
		 844 1038 1 843 844 1 844 837 1 845 239 1 846 1046 1 845 846 1 847 1053 1 846 847 1
		 848 260 1 847 848 1 849 1051 1 848 849 1 850 834 1 849 850 1 851 835 1 850 851 1
		 852 1048 1 851 852 1 852 845 1 853 1045 1 854 277 1 853 854 1 855 1043 1 854 855 1
		 856 1042 1 855 856 1 857 873 1 856 857 1 858 1040 1 857 858 1 859 269 1 858 859 1
		 860 271 1 859 860 1 860 853 1 861 1047 1;
	setAttr ".ed[1660:1825]" 862 247 1 861 862 1 863 245 1 862 863 1 864 1052 1 863 864 1
		 865 881 1 864 865 1 866 1050 1 865 866 1 867 1049 1 866 867 1 868 253 1 867 868 1
		 868 861 1 869 270 1 870 1060 1 869 870 1 871 855 1 870 871 1 872 856 1 871 872 1
		 873 1057 1 872 873 1 874 283 1 873 874 1 875 1055 1 874 875 1 876 1054 1 875 876 1
		 876 869 1 877 246 1 878 1062 1 877 878 1 879 1069 1 878 879 1 880 259 1 879 880 1
		 881 1067 1 880 881 1 882 866 1 881 882 1 883 867 1 882 883 1 884 1064 1 883 884 1
		 884 877 1 885 1061 1 886 278 1 885 886 1 887 1059 1 886 887 1 888 1058 1 887 888 1
		 889 905 1 888 889 1 890 1056 1 889 890 1 891 268 1 890 891 1 892 272 1 891 892 1
		 892 885 1 893 1063 1 894 248 1 893 894 1 895 244 1 894 895 1 896 1068 1 895 896 1
		 897 913 1 896 897 1 898 1066 1 897 898 1 899 1065 1 898 899 1 900 254 1 899 900 1
		 900 893 1 901 267 1 902 279 1 901 902 1 903 887 1 902 903 1 904 888 1 903 904 1 905 265 1
		 904 905 1 906 282 1 905 906 1 907 266 1 906 907 1 908 273 1 907 908 1 908 901 1 909 243 1
		 910 249 1 909 910 1 911 242 1 910 911 1 912 258 1 911 912 1 913 241 1 912 913 1 914 898 1
		 913 914 1 915 899 1 914 915 1 916 255 1 915 916 1 916 909 1 795 479 1 479 807 1 799 484 1
		 484 819 1 809 480 1 480 793 1 817 485 1 485 801 1 823 276 1 276 839 1 835 252 1 252 851 1
		 841 284 1 284 825 1 849 260 1 260 833 1 855 277 1 277 871 1 867 253 1 253 883 1 873 283 1
		 283 857 1 881 259 1 259 865 1 887 278 1 278 903 1 899 254 1 254 915 1 905 282 1 282 889 1
		 913 258 1 258 897 1 924 424 1 917 430 1 918 429 1 919 427 1 920 425 1 921 361 1 922 804 1
		 919 803 1 918 797 1 917 498 1 923 499 1 932 500 1 920 924 1 921 920 1 919 921 1 917 918 1
		 919 922 1 922 918 1 923 917 1 932 923 1 925 423 1 926 418 1 927 353 1;
	setAttr ".ed[1826:1991]" 928 352 1 929 351 1 927 789 1 930 790 1 928 791 1 926 496 1
		 931 497 1 926 927 1 929 928 1 925 929 1 924 925 1 927 930 1 930 928 1 926 931 1 931 932 1
		 106 992 1 1 1004 1 15 1014 1 169 993 1 64 1003 1 117 1008 1 113 1010 1 179 1011 1
		 116 1012 1 152 1013 1 47 1015 1 11 1016 1 74 1017 1 8 1018 1 12 1020 1 113 1024 1
		 105 1026 1 175 1027 1 107 1028 1 157 1029 1 52 1031 1 2 1032 1 70 1033 1 0 1034 1
		 8 1036 1 117 994 1 183 995 1 120 996 1 167 997 1 108 990 1 3 998 1 62 999 1 15 1000 1
		 78 1001 1 12 1002 1 933 934 1 389 935 1 934 935 1 377 936 1 935 936 1 936 933 1 401 937 1
		 378 938 1 937 938 1 937 939 1 940 939 1 940 938 1 939 941 1 942 941 1 942 940 1 941 934 1
		 933 942 1 310 943 1 943 944 1 363 945 1 945 944 1 292 946 0 945 946 1 943 946 1 304 947 1
		 947 948 1 944 948 1 947 943 1 298 949 1 949 950 1 948 950 1 949 947 1 364 951 1 291 952 0
		 951 952 1 950 951 1 952 949 1 944 933 1 936 945 1 948 942 1 950 940 1 938 951 1 450 953 1
		 934 953 1 449 954 0 954 953 1 954 935 1 451 955 1 941 955 1 953 955 1 452 956 1 939 956 1
		 955 956 1 453 957 0 957 937 1 956 957 1 958 135 1 959 167 1 960 134 1 961 152 1 962 138 1
		 963 157 1 964 137 1 964 207 1 965 175 1 966 105 1 967 204 1 968 203 1 969 202 1 970 201 1
		 971 200 1 972 106 1 973 198 1 958 197 1 958 959 1 959 960 1 960 961 1 961 962 1 962 963 1
		 963 964 1 964 965 1 965 966 1 966 967 1 967 968 1 968 969 1 969 970 1 970 971 1 971 972 1
		 972 973 1 973 958 1 974 30 1 975 62 1 976 29 1 977 47 1 978 33 1 979 52 1 980 32 1
		 980 92 1 981 70 1 982 0 1 983 95 1 984 96 1 985 97 1 986 98 1 987 99 1 988 1 1 989 101 1
		 974 102 1 974 975 1 975 976 1 976 977 1 977 978 1 978 979 1 979 980 1 980 981 1 981 982 1;
	setAttr ".ed[1992:2157]" 982 983 1 983 984 1 984 985 1 985 986 1 986 987 1 987 988 1
		 988 989 1 989 974 1 990 124 1 991 187 1 990 991 1 992 123 1 991 992 1 993 170 1 992 993 1
		 994 122 1 993 994 1 995 184 1 994 995 1 996 121 1 995 996 1 997 168 1 996 997 1 997 990 1
		 998 19 1 999 63 1 998 999 1 1000 16 1 999 1000 1 1001 79 1 1000 1001 1 1002 17 1
		 1001 1002 1 1003 65 1 1002 1003 1 1004 18 1 1003 1004 1 1005 82 1 1004 1005 1 1005 998 1
		 1006 132 1 1007 183 1 1006 1007 1 1008 131 1 1007 1008 1 1009 147 1 1008 1009 1 1010 130 1
		 1009 1010 1 1011 180 1 1010 1011 1 1012 129 1 1011 1012 1 1013 153 1 1012 1013 1
		 1013 1006 1 1014 27 1 1015 48 1 1014 1015 1 1016 24 1 1015 1016 1 1017 75 1 1016 1017 1
		 1018 25 1 1017 1018 1 1019 42 1 1018 1019 1 1020 26 1 1019 1020 1 1021 78 1 1020 1021 1
		 1021 1014 1 1022 127 1 1023 179 1 1022 1023 1 1024 126 1 1023 1024 1 1025 160 1 1024 1025 1
		 1026 125 1 1025 1026 1 1027 176 1 1026 1027 1 1028 128 1 1027 1028 1 1029 158 1 1028 1029 1
		 1029 1022 1 1030 22 1 1031 53 1 1030 1031 1 1032 23 1 1031 1032 1 1033 71 1 1032 1033 1
		 1034 20 1 1033 1034 1 1035 55 1 1034 1035 1 1036 21 1 1035 1036 1 1037 74 1 1036 1037 1
		 1037 1030 1 1038 860 1 1039 859 1 1038 1039 1 1040 842 1 1039 1040 1 1041 857 1 1040 1041 1
		 1042 840 1 1041 1042 1 1043 839 1 1042 1043 1 1044 854 1 1043 1044 1 1045 837 1 1044 1045 1
		 1045 1038 1 1046 862 1 1047 845 1 1046 1047 1 1048 868 1 1047 1048 1 1049 851 1 1048 1049 1
		 1050 850 1 1049 1050 1 1051 865 1 1050 1051 1 1052 848 1 1051 1052 1 1053 863 1 1052 1053 1
		 1053 1046 1 1054 892 1 1055 891 1 1054 1055 1 1056 874 1 1055 1056 1 1057 889 1 1056 1057 1
		 1058 872 1 1057 1058 1 1059 871 1 1058 1059 1 1060 886 1 1059 1060 1 1061 869 1 1060 1061 1
		 1061 1054 1 1062 894 1 1063 877 1 1062 1063 1 1064 900 1 1063 1064 1 1065 883 1 1064 1065 1
		 1066 882 1 1065 1066 1 1067 897 1 1066 1067 1 1068 880 1 1067 1068 1 1069 895 1;
	setAttr ".ed[2158:2159]" 1068 1069 1 1069 1062 1;
	setAttr -s 1098 -ch 4320 ".fc";
	setAttr ".fc[0:499]" -type "polyFaces" 
		f 4 3 -3 -2 -1
		mu 0 4 0 1 2 3
		f 4 -8 -7 -6 -5
		mu 0 4 4 5 6 7
		f 4 179 -11 -10 -165
		mu 0 4 151 153 10 11
		f 4 181 167 7 -167
		mu 0 4 154 155 14 15
		f 4 -17 -158 172 -15
		mu 0 4 16 17 143 144
		f 4 175 161 -19 -161
		mu 0 4 147 148 22 23
		f 4 24 -24 -23 -22
		mu 0 4 24 25 26 27
		f 4 28 27 -27 -26
		mu 0 4 28 29 30 31
		f 4 177 163 -31 -163
		mu 0 4 149 150 34 35
		f 4 36 -36 -35 -34
		mu 0 4 36 37 38 39
		f 4 40 39 -39 -38
		mu 0 4 40 41 42 43
		f 4 -42 1873 2022 -1875
		mu 0 4 47 749 1394 1396
		f 4 -1843 -12 -2026 2028
		mu 0 4 1401 50 51 1399
		f 4 -14 -2030 2031 -1872
		mu 0 4 54 55 1402 1392
		f 4 45 1871 2018 -1873
		mu 0 4 58 56 1391 1393
		f 4 -21 -2090 2092 -1866
		mu 0 4 742 62 1441 1443
		f 4 2095 -51 49 -2094
		mu 0 4 1444 1436 65 66
		f 4 51 50 2082 -1862
		mu 0 4 68 65 1436 1437
		f 4 15 1862 2086 -1864
		mu 0 4 19 18 1438 1439
		f 4 -50 1852 2054 -1854
		mu 0 4 66 65 1418 1420
		f 4 -33 -2058 2060 -1856
		mu 0 4 739 76 1423 1425
		f 4 2063 -1844 41 -2062
		mu 0 4 1426 1416 748 738
		f 4 57 1843 2050 -1852
		mu 0 4 81 747 1415 1417
		f 4 60 -1967 1984 -59
		mu 0 4 82 83 1358 1359
		f 4 182 168 -62 -168
		mu 0 4 156 157 86 5
		f 4 61 -65 -64 6
		mu 0 4 5 86 87 6
		f 4 67 -1971 1988 -66
		mu 0 4 88 89 1363 1364
		f 4 70 -70 -69 23
		mu 0 4 25 90 91 26
		f 4 73 -157 171 157
		mu 0 4 92 93 141 142
		f 4 76 -1969 1986 -75
		mu 0 4 95 96 1361 1362
		f 4 79 -79 -78 35
		mu 0 4 37 97 98 38
		f 4 82 -82 -61 -81
		mu 0 4 99 100 83 82
		f 4 183 169 -84 -169
		mu 0 4 157 158 101 86
		f 4 83 -87 -86 64
		mu 0 4 86 101 102 87
		f 4 89 -89 -68 -88
		mu 0 4 103 104 89 88
		f 4 92 -92 -91 69
		mu 0 4 90 105 106 91
		f 4 95 -156 170 156
		mu 0 4 93 107 140 141
		f 3 -98 -77 -97
		mu 0 3 109 96 95
		f 3 99 -99 78
		mu 0 3 97 110 98
		f 4 176 162 -101 -162
		mu 0 4 148 149 35 22
		f 4 34 -104 -25 -103
		mu 0 4 39 38 25 24
		f 4 -105 -71 103 77
		mu 0 4 98 90 25 38
		f 3 -93 104 98
		mu 0 3 110 90 98
		f 3 88 96 -106
		mu 0 3 89 109 95
		f 4 1987 1970 105 74
		mu 0 4 1362 1363 89 95
		f 4 106 1851 2052 -1853
		mu 0 4 65 81 1417 1419
		f 4 107 37 -109 -54
		mu 0 4 112 40 43 113
		f 4 -102 1854 2058 2057
		mu 0 4 76 743 1421 1423
		f 4 93 111 87 -111
		mu 0 4 94 108 103 88
		f 4 1989 1972 110 65
		mu 0 4 1364 1365 94 88
		f 4 112 1861 2084 -1863
		mu 0 4 18 68 1437 1438
		f 4 52 113 25 -115
		mu 0 4 115 116 28 31
		f 4 -116 1864 2090 2089
		mu 0 4 62 117 1440 1441
		f 4 118 174 160 -118
		mu 0 4 119 145 147 23
		f 4 16 -121 22 -120
		mu 0 4 92 121 27 26
		f 4 -122 -74 119 68
		mu 0 4 91 93 92 26
		f 4 -123 -96 121 90
		mu 0 4 106 107 93 91
		f 4 97 124 80 -124
		mu 0 4 96 109 99 82
		f 4 1985 1968 123 58
		mu 0 4 1359 1360 96 82
		f 4 125 1872 2020 -1874
		mu 0 4 750 58 1393 1395
		f 4 126 0 -128 -43
		mu 0 4 122 0 3 123
		f 4 -129 1875 2026 2025
		mu 0 4 51 740 1397 1399
		f 4 178 164 -131 -164
		mu 0 4 150 151 11 34
		f 4 5 -133 -37 -132
		mu 0 4 7 6 37 36
		f 4 -134 -80 132 63
		mu 0 4 87 97 37 6
		f 4 -135 -100 133 85
		mu 0 4 102 110 97 87
		f 4 135 1863 2088 -1865
		mu 0 4 117 19 1439 1440
		f 4 136 114 137 -117
		mu 0 4 125 115 31 126
		f 4 138 -48 -138 26
		mu 0 4 30 127 126 31
		f 4 139 1865 2094 2093
		mu 0 4 66 61 1442 1444
		f 4 -140 1853 2056 -1855
		mu 0 4 744 66 1420 1422
		f 4 141 -110 -141 108
		mu 0 4 43 129 130 113
		f 4 142 -56 -142 38
		mu 0 4 42 131 129 43
		f 4 143 1855 2062 2061
		mu 0 4 738 75 1424 1426
		f 4 -144 1874 2024 -1876
		mu 0 4 741 47 1396 1398
		f 4 145 -130 -145 127
		mu 0 4 3 133 134 123
		f 4 -147 -44 -146 1
		mu 0 4 2 135 133 3
		f 4 -148 1842 2030 2029
		mu 0 4 55 136 1400 1402
		f 4 180 166 148 10
		mu 0 4 152 154 15 138
		f 4 9 -149 4 -150
		mu 0 4 11 10 4 7
		f 4 130 149 131 -151
		mu 0 4 34 11 7 36
		f 4 30 150 33 -152
		mu 0 4 35 34 36 39
		f 4 100 151 102 -153
		mu 0 4 22 35 39 24
		f 4 18 152 21 -154
		mu 0 4 23 22 24 27
		f 4 154 117 153 120
		mu 0 4 121 119 23 27
		f 4 -155 14 173 -119
		mu 0 4 139 16 144 146
		f 4 -171 -95 -94 72
		mu 0 4 141 140 108 94
		f 4 -172 -73 -1973 1973
		mu 0 4 142 141 94 1365
		f 4 -173 -1974 1990 -159
		mu 0 4 144 143 1366 1367
		f 4 -174 158 1991 -160
		mu 0 4 146 144 1367 1369
		f 4 -175 159 1992 1976
		mu 0 4 147 145 1368 1370
		f 4 1993 1977 -176 -1977
		mu 0 4 1370 1371 148 147
		f 4 1994 1978 -177 -1978
		mu 0 4 1371 1372 149 148
		f 4 1995 1979 -178 -1979
		mu 0 4 1372 1373 150 149
		f 4 1996 1980 -179 -1980
		mu 0 4 1373 1374 151 150
		f 4 1997 -166 -180 -1981
		mu 0 4 1374 1376 153 151
		f 4 1998 1982 -181 165
		mu 0 4 1375 1377 154 152
		f 4 1999 1983 -182 -1983
		mu 0 4 1377 1378 155 154
		f 4 1966 62 -183 -1984
		mu 0 4 1358 83 157 156
		f 4 81 84 -184 -63
		mu 0 4 83 100 158 157
		f 4 298 330 314 -290
		mu 0 4 159 160 161 162
		f 4 333 317 293 191
		mu 0 4 163 164 165 166
		f 4 359 345 292 193
		mu 0 4 167 168 169 170
		f 4 357 343 -192 -343
		mu 0 4 171 172 173 174
		f 4 339 366 352 190
		mu 0 4 175 176 177 178
		f 4 363 349 274 -349
		mu 0 4 179 180 181 182
		f 4 337 321 275 -321
		mu 0 4 183 184 185 186
		f 4 280 324 -215 -272
		mu 0 4 187 188 189 190
		f 4 361 347 253 -347
		mu 0 4 191 192 193 194
		f 4 335 319 254 -319
		mu 0 4 195 196 197 198
		f 4 266 327 -221 -259
		mu 0 4 199 200 201 202
		f 4 207 1867 2012 -1869
		mu 0 4 731 204 1387 1389
		f 4 291 1841 2006 2005
		mu 0 4 208 209 1382 1384
		f 4 315 1870 2002 2001
		mu 0 4 212 213 1379 1381
		f 4 -289 1869 2015 -1871
		mu 0 4 215 216 1390 1380
		f 4 273 1856 2070 2069
		mu 0 4 219 726 1429 1431
		f 4 -201 213 2066 2065
		mu 0 4 223 224 1427 1428
		f 4 2079 -214 -271 1860
		mu 0 4 1435 1427 224 226
		f 4 -304 1858 2076 -1860
		mu 0 4 228 229 1433 1434
		f 4 200 1848 2044 -1850
		mu 0 4 224 223 1411 1413
		f 4 252 1846 2038 2037
		mu 0 4 235 723 1406 1408
		f 4 -208 219 2034 2033
		mu 0 4 721 732 1403 1405
		f 4 2047 -220 -258 1850
		mu 0 4 1414 1404 733 240
		f 4 1950 1933 288 224
		mu 0 4 1337 1338 244 245
		f 4 356 342 226 -342
		mu 0 4 247 248 166 249
		f 4 -294 301 294 -227
		mu 0 4 166 165 250 249
		f 4 1954 1937 270 230
		mu 0 4 1342 1343 226 224
		f 4 -276 284 276 -233
		mu 0 4 186 185 253 254
		f 4 -353 367 353 -234
		mu 0 4 255 256 257 258
		f 4 1952 1935 257 223
		mu 0 4 1339 1341 240 203
		f 4 -255 262 255 -223
		mu 0 4 198 197 261 262
		f 4 296 287 240 -287
		mu 0 4 263 243 246 264
		f 4 355 341 242 -341
		mu 0 4 265 247 249 266
		f 4 -295 302 295 -243
		mu 0 4 249 250 267 266
		f 4 278 269 246 -269
		mu 0 4 268 251 252 269
		f 4 -277 285 277 -249
		mu 0 4 254 253 270 271
		f 4 -354 368 354 -250
		mu 0 4 258 257 272 273
		f 3 264 256 239
		mu 0 3 274 259 260
		f 3 -256 263 -239
		mu 0 3 262 261 275
		f 4 362 348 195 -348
		mu 0 4 192 179 182 193
		f 4 336 320 196 -320
		mu 0 4 196 183 186 197
		f 4 -263 -197 232 237
		mu 0 4 261 197 186 254
		f 3 -264 -238 248
		mu 0 3 275 261 254
		f 3 236 -265 -247
		mu 0 3 252 259 274
		f 4 197 -1936 1953 -231
		mu 0 4 224 240 1341 1342
		f 4 -198 1849 2046 -1851
		mu 0 4 240 224 1412 1414
		f 4 217 326 -267 -222
		mu 0 4 277 278 200 199
		f 4 194 -2038 2040 -1848
		mu 0 4 725 235 1408 1410
		f 4 231 -279 -248 -246
		mu 0 4 280 251 268 281
		f 4 185 -1938 1955 -230
		mu 0 4 228 226 1343 1344
		f 4 -186 1859 2078 -1861
		mu 0 4 226 228 1434 1435
		f 4 323 -281 -216 -305
		mu 0 4 282 188 187 283
		f 4 184 -2070 2072 -1858
		mu 0 4 284 219 1431 1432
		f 4 187 -350 364 -193
		mu 0 4 286 181 180 287
		f 4 186 -322 338 -191
		mu 0 4 255 185 184 288
		f 4 -285 -187 233 234
		mu 0 4 253 185 255 258
		f 4 -286 -235 249 250
		mu 0 4 270 253 258 273
		f 4 225 -297 -242 -240
		mu 0 4 260 243 263 274
		f 4 204 -1934 1951 -224
		mu 0 4 729 244 1338 1340
		f 4 -205 1868 2014 -1870
		mu 0 4 216 730 1388 1390
		f 4 208 329 -299 -212
		mu 0 4 289 290 160 159
		f 4 201 -2006 2008 -1867
		mu 0 4 722 208 1384 1386
		f 4 360 346 202 -346
		mu 0 4 168 191 194 169
		f 4 334 318 203 -318
		mu 0 4 164 195 198 165
		f 4 -302 -204 222 228
		mu 0 4 250 165 198 262
		f 4 -303 -229 238 244
		mu 0 4 267 250 262 275
		f 4 -189 1857 2074 -1859
		mu 0 4 229 284 1432 1433
		f 4 212 -306 -324 -217
		mu 0 4 292 293 188 282
		f 4 -325 305 272 -307
		mu 0 4 189 188 293 294
		f 4 -308 -2066 2068 -1857
		mu 0 4 727 223 1428 1430
		f 4 307 1847 2042 -1849
		mu 0 4 223 220 1409 1411
		f 4 -327 308 218 -310
		mu 0 4 200 278 296 297
		f 4 -328 309 259 -311
		mu 0 4 201 200 297 298
		f 4 -312 -2034 2036 -1847
		mu 0 4 724 721 1405 1407
		f 4 311 1866 2010 -1868
		mu 0 4 204 236 1385 1387
		f 4 -330 312 209 -314
		mu 0 4 160 290 300 301
		f 4 -331 313 290 210
		mu 0 4 161 160 301 302
		f 4 -1842 189 -2002 2004
		mu 0 4 1383 303 212 1381
		f 4 358 -194 -317 -344
		mu 0 4 172 304 305 173
		f 4 300 -334 316 -293
		mu 0 4 169 164 163 170
		f 4 206 -335 -301 -203
		mu 0 4 194 195 164 169
		f 4 261 -336 -207 -254
		mu 0 4 193 196 195 194
		f 4 199 -337 -262 -196
		mu 0 4 182 183 196 193
		f 4 283 -338 -200 -275
		mu 0 4 181 184 183 182
		f 4 -339 -284 -188 -323
		mu 0 4 288 184 181 286
		f 4 192 365 -340 322
		mu 0 4 306 307 176 175
		f 4 227 -356 -244 -241
		mu 0 4 246 247 265 264
		f 4 332 1965 -225 -316
		mu 0 4 308 1356 1357 309
		f 4 -1948 1964 -333 -190
		mu 0 4 310 1355 1356 308
		f 4 299 1963 1947 -292
		mu 0 4 311 1353 1354 312
		f 4 205 1962 -300 -202
		mu 0 4 313 1352 1353 311
		f 4 260 1961 -206 -253
		mu 0 4 314 1351 1352 313
		f 4 198 1960 -261 -195
		mu 0 4 315 1350 1351 314
		f 4 282 1959 -199 -274
		mu 0 4 316 1349 1350 315
		f 4 1958 -283 -185 -1942
		mu 0 4 1348 1349 316 317
		f 4 1957 1941 188 -1941
		mu 0 4 1346 1347 284 229
		f 4 1956 1940 303 229
		mu 0 4 1345 1346 229 228
		f 4 -369 -236 245 251
		mu 0 4 272 257 280 281
		f 4 404 -375 -373 381
		mu 0 4 319 323 320 318
		f 4 407 406 371 373
		mu 0 4 324 325 326 327
		f 4 393 390 376 -390
		mu 0 4 330 331 322 321
		f 4 394 392 372 -392
		mu 0 4 332 333 318 320
		f 4 395 414 -382 -393
		mu 0 4 333 334 319 318
		f 4 -376 378 -387 -378
		mu 0 4 329 328 335 336
		f 4 -372 380 -388 -380
		mu 0 4 327 326 337 338
		f 4 -407 409 -389 -381
		mu 0 4 326 325 339 337
		f 4 400 397 -394 -397
		mu 0 4 340 341 331 330
		f 4 401 399 -395 -399
		mu 0 4 342 343 333 332
		f 4 402 413 -396 -400
		mu 0 4 343 344 334 333
		f 4 386 383 -401 -383
		mu 0 4 336 335 341 340
		f 4 387 385 -402 -385
		mu 0 4 338 337 343 342
		f 4 388 411 -403 -386
		mu 0 4 337 339 344 343
		f 4 -377 -404 -405 -371
		mu 0 4 345 322 323 319
		f 4 375 369 -408 405
		mu 0 4 328 346 325 324
		f 4 -410 -370 377 -409
		mu 0 4 339 325 346 347
		f 4 -412 408 382 -411
		mu 0 4 344 339 347 348
		f 4 -414 410 396 -413
		mu 0 4 334 344 348 349
		f 4 -415 412 389 370
		mu 0 4 319 334 349 345
		f 4 1770 -418 -417 -1769
		mu 0 4 1296 1287 352 353
		f 4 422 -1759 1761 -420
		mu 0 4 354 355 1290 1291
		f 4 -426 -425 -423 -424
		mu 0 4 358 359 355 354
		f 4 -1757 1759 1758 424
		mu 0 4 360 1288 1289 363
		f 4 -1763 1765 -430 -429
		mu 0 4 364 1293 1294 365
		f 4 1738 -432 418 -1737
		mu 0 4 1276 1267 351 350
		f 4 -1731 1733 -1765 -1766
		mu 0 4 1293 1273 1274 1294
		f 4 420 -1727 1729 -434
		mu 0 4 357 356 1270 1271
		f 4 -1725 1727 1726 426
		mu 0 4 361 1268 1269 362
		f 4 -1667 1669 -1701 -1702
		mu 0 4 1253 1233 1234 1254
		f 4 434 -1663 1665 -439
		mu 0 4 369 368 1230 1231
		f 4 1663 1662 436 -1661
		mu 0 4 1228 1229 371 370
		f 4 1674 -445 432 -1673
		mu 0 4 1236 1227 367 366
		f 4 431 1725 1724 446
		mu 0 4 351 1267 1268 361
		f 4 417 1757 1756 448
		mu 0 4 352 1287 1288 360
		f 4 416 -449 425 -450
		mu 0 4 378 379 359 358
		f 4 1767 -452 -451 429
		mu 0 4 1294 1295 380 365
		f 4 1735 -1767 -1768 1764
		mu 0 4 1274 1275 1295 1294
		f 4 1671 -1703 -1704 1700
		mu 0 4 1234 1235 1255 1254
		f 4 444 1661 1660 447
		mu 0 4 367 1227 1228 370
		f 3 1789 1790 1702
		mu 0 3 1235 366 1255
		f 3 1797 1798 1766
		mu 0 3 1275 350 1295
		f 4 451 1769 1768 -454
		mu 0 4 380 1295 1296 353
		f 4 450 453 449 454
		mu 0 4 381 382 378 358
		f 4 428 -455 423 -456
		mu 0 4 383 381 358 354
		f 4 1762 455 419 1763
		mu 0 4 1292 383 354 1291
		f 3 1802 1730 1801
		mu 0 3 357 1272 1292
		f 3 1794 1666 1793
		mu 0 3 369 1232 1252
		f 4 1740 483 459 1741
		mu 0 4 1278 385 386 1277
		f 4 494 1751 1750 -486
		mu 0 4 388 1283 1284 391
		f 4 493 485 463 478
		mu 0 4 392 388 391 393
		f 4 -464 -1751 1753 1752
		mu 0 4 394 395 1285 1286
		f 4 462 479 1747 1746
		mu 0 4 398 399 1280 1281
		f 4 1708 -466 464 1709
		mu 0 4 1258 384 387 1257
		f 4 495 1719 1718 -487
		mu 0 4 389 1263 1264 390
		f 4 -468 -1719 1721 1720
		mu 0 4 397 396 1265 1266
		f 4 496 1655 1654 -488
		mu 0 4 402 1223 1224 403
		f 4 1656 -471 -1655 1657
		mu 0 4 1226 405 404 1225
		f 4 1644 -472 469 1645
		mu 0 4 1218 400 401 1217
		f 4 -474 -1721 1722 -465
		mu 0 4 387 397 1266 1257
		f 4 -476 -1753 1754 -460
		mu 0 4 386 394 1286 1277
		f 4 492 -479 475 -484
		mu 0 4 412 392 393 413
		f 4 -480 477 458 1745
		mu 0 4 1280 399 414 1279
		f 4 -473 -1657 1658 -470
		mu 0 4 401 405 1226 1217
		f 3 1787 -1645 1647
		mu 0 3 1219 400 1218
		f 3 1795 -1709 1711
		mu 0 3 1259 384 1258
		f 4 456 -1741 1743 -459
		mu 0 4 414 385 1278 1279
		f 4 -485 -493 -457 -478
		mu 0 4 415 392 412 416
		f 4 457 -494 484 -463
		mu 0 4 417 388 392 415
		f 4 1749 -495 -458 -1747
		mu 0 4 1282 1283 388 417
		f 3 1717 -496 1800
		mu 0 3 1262 1263 389
		f 3 1653 -497 1792
		mu 0 3 1222 1223 402
		f 4 773 629 628 774
		mu 0 4 418 419 420 421
		f 4 547 609 598 -543
		mu 0 4 422 423 424 425
		f 4 783 622 621 784
		mu 0 4 426 427 428 429
		f 4 612 601 540 506
		mu 0 4 430 431 432 433
		f 4 -622 624 623 782
		mu 0 4 434 435 436 437
		f 4 791 640 639 792
		mu 0 4 438 439 440 441
		f 4 687 704 703 688
		mu 0 4 442 443 444 445
		f 4 671 -695 696 695
		mu 0 4 446 447 448 449
		f 4 1876 1878 1880 1881
		mu 0 4 450 451 1321 1322
		f 4 673 718 717 674
		mu 0 4 454 455 456 457
		f 4 500 -604 615 -506
		mu 0 4 458 459 460 461
		f 4 -1885 1885 -1887 1887
		mu 0 4 1323 1324 464 465
		f 4 -640 642 -788 790
		mu 0 4 466 467 468 469
		f 4 606 -526 -500 -595
		mu 0 4 470 471 472 473
		f 4 635 -797 799 -633
		mu 0 4 474 475 476 477
		f 4 710 -680 682 -708
		mu 0 4 478 479 480 481
		f 4 614 603 518 -603
		mu 0 4 482 460 459 483
		f 4 1886 1888 -1890 1890
		mu 0 4 465 464 484 485
		f 4 787 643 -786 788
		mu 0 4 469 468 486 487
		f 4 525 607 -537 -521
		mu 0 4 472 471 488 489
		f 4 633 632 801 -631
		mu 0 4 490 474 477 491
		f 4 708 707 684 -706
		mu 0 4 492 478 481 493
		f 4 613 602 529 -602
		mu 0 4 431 482 483 432
		f 4 1889 1891 -1877 1892
		mu 0 4 485 484 451 450
		f 4 785 620 -784 786
		mu 0 4 487 486 427 426
		f 4 536 608 -548 -532
		mu 0 4 489 488 423 422
		f 4 631 630 802 -629
		mu 0 4 420 490 491 421
		f 4 706 705 686 -704
		mu 0 4 444 492 493 445
		f 4 498 -552 -563 -502
		mu 0 4 494 495 496 497
		f 4 -564 551 521 -553
		mu 0 4 498 496 495 499
		f 4 -565 552 532 -554
		mu 0 4 500 498 499 501
		f 4 -566 553 543 502
		mu 0 4 502 500 501 503
		f 4 627 -774 776 -626
		mu 0 4 504 419 418 505
		f 4 702 -688 690 -700
		mu 0 4 506 443 442 507
		f 4 545 -569 556 -540
		mu 0 4 508 509 510 511
		f 4 534 -570 -546 -529
		mu 0 4 512 513 509 508
		f 4 523 -571 -535 -518
		mu 0 4 514 515 513 512
		f 4 -572 -524 -498 -561
		mu 0 4 516 515 514 517
		f 4 679 712 -678 680
		mu 0 4 480 479 518 519
		f 4 796 637 -795 797
		mu 0 4 476 475 520 521
		f 4 562 -576 -585 -551
		mu 0 4 497 496 522 523
		f 4 -586 575 563 -577
		mu 0 4 524 522 496 498
		f 4 -587 576 564 -578
		mu 0 4 525 524 498 500
		f 4 -588 577 565 554
		mu 0 4 526 525 500 502
		f 4 700 699 692 -698
		mu 0 4 527 506 507 528
		f 4 568 557 846 840
		mu 0 4 510 509 529 530
		f 4 569 838 845 -558
		mu 0 4 509 513 531 529
		f 4 677 714 -676 678
		mu 0 4 519 518 532 533
		f 4 584 -596 -607 -575
		mu 0 4 523 522 471 470
		f 4 -608 595 585 -597
		mu 0 4 488 471 522 524
		f 4 -609 596 586 -598
		mu 0 4 423 488 524 525
		f 4 -610 597 587 578
		mu 0 4 424 423 525 526
		f 4 698 697 693 -696
		mu 0 4 449 527 528 446
		f 4 590 848 841 600
		mu 0 4 534 535 536 430
		f 4 843 839 581 836
		mu 0 4 537 538 539 482
		f 4 675 716 -674 676
		mu 0 4 533 532 455 454
		f 4 758 738 -757 759
		mu 0 4 540 541 542 543
		f 4 757 756 740 739
		mu 0 4 544 543 542 545
		f 4 755 -740 742 741
		mu 0 4 546 547 548 549
		f 4 744 743 753 -742
		mu 0 4 549 550 551 546
		f 4 746 745 751 -744
		mu 0 4 550 552 553 551
		f 4 747 -749 750 -746
		mu 0 4 552 554 555 553
		f 4 771 770 726 -769
		mu 0 4 556 557 558 559
		f 4 769 768 728 -767
		mu 0 4 560 556 559 561
		f 4 767 766 730 -765
		mu 0 4 562 560 561 563
		f 4 765 764 732 731
		mu 0 4 564 562 563 565
		f 4 763 -732 734 -761
		mu 0 4 566 567 568 569
		f 4 761 760 736 -759
		mu 0 4 540 566 569 541
		f 4 1894 -1897 1898 -1900
		mu 0 4 1327 570 1325 1326
		f 4 1901 -1903 -1895 -1904
		mu 0 4 1328 572 570 1327
		f 4 1905 -1907 -1902 -1908
		mu 0 4 1329 573 572 1328
		f 4 -1911 -1912 -1906 -1913
		mu 0 4 1330 1331 573 1329
		f 4 616 -648 645 505
		mu 0 4 575 576 577 578
		f 4 592 -650 -617 604
		mu 0 4 579 580 576 575
		f 4 572 -652 -593 582
		mu 0 4 581 582 580 579
		f 4 507 -654 -573 560
		mu 0 4 583 584 582 581
		f 4 -656 -508 497 -655
		mu 0 4 585 584 583 586
		f 4 -658 654 517 -657
		mu 0 4 587 585 586 588
		f 4 -660 656 528 -659
		mu 0 4 589 587 588 590
		f 4 508 -662 658 539
		mu 0 4 591 592 589 590
		f 4 -664 -509 -557 -663
		mu 0 4 593 592 591 594
		f 4 -666 662 -581 -665
		mu 0 4 595 593 594 596
		f 4 -668 664 -601 -667
		mu 0 4 597 595 596 598
		f 4 -645 -669 666 -507
		mu 0 4 599 600 597 598
		f 4 668 -671 -672 669
		mu 0 4 597 600 447 446
		f 4 1913 -1882 1914 1896
		mu 0 4 570 450 1322 1325
		f 4 1915 -1893 -1914 1902
		mu 0 4 572 485 450 570
		f 4 1916 -1891 -1916 1906
		mu 0 4 573 465 485 572
		f 4 -1918 -1888 -1917 1911
		mu 0 4 1331 1323 465 573
		f 4 646 -675 672 647
		mu 0 4 576 454 457 577
		f 4 648 -677 -647 649
		mu 0 4 580 533 454 576
		f 4 650 -679 -649 651
		mu 0 4 582 519 533 580
		f 4 652 -681 -651 653
		mu 0 4 584 480 519 582
		f 4 -683 -653 655 -682
		mu 0 4 481 480 584 585
		f 4 -685 681 657 -684
		mu 0 4 493 481 585 587
		f 4 -687 683 659 -686
		mu 0 4 445 493 587 589
		f 4 660 -689 685 661
		mu 0 4 592 442 445 589
		f 4 -691 -661 663 -690
		mu 0 4 507 442 592 593
		f 4 -693 689 665 -692
		mu 0 4 528 507 593 595
		f 4 -694 691 667 -670
		mu 0 4 446 528 595 597
		f 4 808 -514 509 809
		mu 0 4 601 602 603 604
		f 4 807 -510 -600 611
		mu 0 4 605 606 607 608
		f 4 -580 589 805 -612
		mu 0 4 608 609 610 605
		f 4 -556 567 834 -590
		mu 0 4 609 611 612 610
		f 4 -513 -831 833 -568
		mu 0 4 611 613 614 612
		f 4 831 830 -545 549
		mu 0 4 615 614 613 616
		f 4 -534 538 829 -550
		mu 0 4 616 617 618 615
		f 4 -523 527 827 -539
		mu 0 4 617 619 620 618
		f 4 -512 -823 825 -528
		mu 0 4 619 621 622 620
		f 4 823 822 -562 -821
		mu 0 4 623 622 621 624
		f 4 821 820 -584 -819
		mu 0 4 625 623 624 626
		f 4 819 818 -606 -817
		mu 0 4 627 625 626 628
		f 4 817 816 -515 510
		mu 0 4 629 627 628 630
		f 4 815 -511 -520 -813
		mu 0 4 631 632 633 634
		f 4 813 812 -531 -811
		mu 0 4 635 631 634 636
		f 4 811 810 -542 -809
		mu 0 4 601 635 636 602
		f 4 -721 719 -544 548
		mu 0 4 637 554 503 501
		f 4 -533 537 -722 -549
		mu 0 4 501 499 638 637
		f 4 -522 526 -723 -538
		mu 0 4 499 495 639 638
		f 4 -499 -724 -725 -527
		mu 0 4 495 494 558 639
		f 4 -727 723 501 -726
		mu 0 4 559 558 494 640
		f 4 -729 725 550 -728
		mu 0 4 561 559 640 641
		f 4 -731 727 574 -730
		mu 0 4 563 561 641 642
		f 4 -733 729 594 503
		mu 0 4 565 563 642 643
		f 4 -735 -504 499 -734
		mu 0 4 569 568 473 472
		f 4 -737 733 520 -736
		mu 0 4 541 569 472 489
		f 4 -739 735 531 -738
		mu 0 4 542 541 489 422
		f 4 -741 737 542 504
		mu 0 4 545 542 422 425
		f 4 -743 -505 -599 610
		mu 0 4 549 548 644 645
		f 4 -579 588 -745 -611
		mu 0 4 645 646 550 549
		f 4 -555 566 -747 -589
		mu 0 4 646 647 552 550
		f 4 -503 -720 -748 -567
		mu 0 4 647 503 554 552
		f 4 -751 -1825 1833 -750
		mu 0 4 553 555 1308 1310
		f 4 -625 -1828 1834 1826
		mu 0 4 436 435 1314 1311
		f 4 -623 619 1835 1827
		mu 0 4 428 427 1307 1313
		f 4 618 1836 -620 -621
		mu 0 4 486 1306 1307 427
		f 4 -644 641 1815 -619
		mu 0 4 486 468 1300 1306
		f 4 -643 -1809 1816 -642
		mu 0 4 468 467 1302 1300
		f 4 -641 638 1817 1808
		mu 0 4 440 439 1299 1301
		f 4 -638 634 1818 -637
		mu 0 4 520 475 1297 1298
		f 4 516 -775 772 544
		mu 0 4 613 418 421 616
		f 4 -777 -517 512 -776
		mu 0 4 505 418 613 611
		f 4 -779 775 555 -778
		mu 0 4 648 505 611 609
		f 4 -781 777 579 -780
		mu 0 4 437 648 609 608
		f 4 -782 -783 779 599
		mu 0 4 607 434 437 608
		f 4 546 -785 781 513
		mu 0 4 602 426 429 603
		f 4 535 -787 -547 541
		mu 0 4 636 487 426 602
		f 4 524 -789 -536 530
		mu 0 4 634 469 487 636
		f 4 -790 -791 -525 519
		mu 0 4 633 466 469 634
		f 4 617 -793 789 514
		mu 0 4 628 438 441 630
		f 4 593 -794 -618 605
		mu 0 4 626 649 438 628
		f 4 573 -796 -594 583
		mu 0 4 624 521 649 626
		f 4 515 -798 -574 561
		mu 0 4 621 476 521 624
		f 4 -800 -516 511 -799
		mu 0 4 477 476 621 619
		f 4 -802 798 522 -801
		mu 0 4 491 477 619 617
		f 4 -803 800 533 -773
		mu 0 4 421 491 617 616
		f 4 -806 803 -699 -805
		mu 0 4 605 610 527 449
		f 4 -697 -807 -808 804
		mu 0 4 449 448 606 605
		f 4 1919 -1922 1922 -1879
		mu 0 4 451 1332 1333 1321
		f 4 -1892 1924 -1926 -1920
		mu 0 4 451 484 1334 1332
		f 4 -1889 1927 -1929 -1925
		mu 0 4 484 464 1335 1334
		f 4 -1886 -1931 -1932 -1928
		mu 0 4 464 1324 1336 1335
		f 4 -719 715 -818 814
		mu 0 4 456 455 627 629
		f 4 -717 713 -820 -716
		mu 0 4 455 532 625 627
		f 4 -715 711 -822 -714
		mu 0 4 532 518 623 625
		f 4 -713 709 -824 -712
		mu 0 4 518 479 622 623
		f 4 -826 -710 -711 -825
		mu 0 4 620 622 479 478
		f 4 -828 824 -709 -827
		mu 0 4 618 620 478 492
		f 4 -830 826 -707 -829
		mu 0 4 615 618 492 444
		f 4 -705 701 -832 828
		mu 0 4 444 443 614 615
		f 4 -834 -702 -703 -833
		mu 0 4 612 614 443 506
		f 4 -835 832 -701 -804
		mu 0 4 610 612 506 527
		f 4 850 -837 -614 -843
		mu 0 4 650 537 482 431
		f 4 -842 849 842 -613
		mu 0 4 430 536 650 431
		f 4 844 -839 558 -840
		mu 0 4 538 531 513 539
		f 4 -841 847 -591 580
		mu 0 4 510 530 535 534
		f 4 591 -856 851 -582
		mu 0 4 539 651 652 482
		f 4 -853 -857 -592 -559
		mu 0 4 513 653 651 539
		f 4 570 559 -858 852
		mu 0 4 513 515 654 653
		f 4 837 -859 -560 571
		mu 0 4 516 655 654 515
		f 4 -854 -860 -838 -583
		mu 0 4 656 657 655 516
		f 4 835 -861 853 -605
		mu 0 4 461 658 657 656
		f 4 -616 -855 -862 -836
		mu 0 4 461 460 659 658
		f 4 -852 -863 854 -615
		mu 0 4 482 652 659 460
		f 4 625 864 1532 -864
		mu 0 4 504 505 1122 1124
		f 4 778 865 1530 -865
		mu 0 4 505 648 1120 1122
		f 4 780 867 1529 -866
		mu 0 4 682 683 1118 1121
		f 4 -624 866 1528 -868
		mu 0 4 684 685 1116 1119
		f 4 -752 749 1837 -869
		mu 0 4 687 688 1315 1317
		f 4 -754 868 1838 -753
		mu 0 4 691 692 1316 1318
		f 4 -1827 1830 1527 -867
		mu 0 4 693 1312 1114 1117
		f 4 794 874 1537 -874
		mu 0 4 696 697 1126 1129
		f 4 795 873 1538 -876
		mu 0 4 698 699 1128 1131
		f 4 -792 877 1541 -877
		mu 0 4 700 701 1132 1135
		f 4 793 875 1539 -878
		mu 0 4 702 703 1130 1133
		f 4 -768 -1807 1819 -879
		mu 0 4 560 562 1304 1303
		f 4 636 1811 1536 -875
		mu 0 4 520 1298 1125 1127
		f 4 -770 878 1820 1805
		mu 0 4 556 560 1303 1298
		f 4 482 884 1581 -884
		mu 0 4 410 411 1168 1171
		f 4 460 885 1594 -885
		mu 0 4 411 408 1181 1169
		f 4 480 886 1593 -886
		mu 0 4 408 409 1179 1182
		f 4 -489 887 1591 -887
		mu 0 4 407 406 1177 1180
		f 3 1784 1589 -888
		mu 0 3 406 1175 1178
		f 3 1779 883 1583
		mu 0 3 1172 410 1170
		f 3 1786 -890 1785
		mu 0 3 373 1190 1212
		f 4 439 891 1601 -891
		mu 0 4 373 372 1185 1188
		f 4 -443 892 1599 -892
		mu 0 4 375 374 1184 1186
		f 4 -453 893 1597 -893
		mu 0 4 374 377 1183 1184
		f 4 -446 894 1610 -894
		mu 0 4 377 376 1195 1183
		f 4 1607 -1639 -1640 1636
		mu 0 4 1191 1194 1215 1214
		f 4 889 1605 -1637 -1638
		mu 0 4 1213 1189 1192 1214
		f 4 748 896 -898 -896
		mu 0 4 555 554 670 671
		f 4 720 898 -900 -897
		mu 0 4 554 637 672 670
		f 4 721 900 -902 -899
		mu 0 4 637 638 673 672
		f 4 722 902 -904 -901
		mu 0 4 638 639 674 673
		f 4 724 904 -906 -903
		mu 0 4 639 558 675 674
		f 4 -771 906 907 -905
		mu 0 4 558 557 676 675
		f 4 -630 626 1839 -909
		mu 0 4 420 419 1308 1319
		f 4 -1805 1812 911 -907
		mu 0 4 557 1297 679 676
		f 4 -636 912 1821 -635
		mu 0 4 475 474 1305 1297
		f 4 -634 914 1822 -913
		mu 0 4 474 490 1320 1305
		f 4 -632 908 1840 -915
		mu 0 4 490 420 1319 1320
		f 4 374 919 897 -919
		mu 0 4 320 323 671 670
		f 4 403 917 910 -920
		mu 0 4 323 322 677 671
		f 4 -406 922 -912 -922
		mu 0 4 328 324 676 679
		f 4 -374 920 -908 -923
		mu 0 4 324 327 675 676
		f 4 905 -921 379 950
		mu 0 4 674 675 327 338
		f 4 952 -398 924 -917
		mu 0 4 678 331 341 681
		f 4 901 -924 398 949
		mu 0 4 672 673 342 332
		f 4 951 -379 921 -914
		mu 0 4 680 335 328 679;
	setAttr ".fc[500:999]"
		f 4 -251 927 -851 -927
		mu 0 4 270 273 537 650
		f 4 -355 928 -844 -928
		mu 0 4 273 272 538 537
		f 4 -252 929 -845 -929
		mu 0 4 272 281 531 538
		f 4 247 925 -846 -930
		mu 0 4 281 268 529 531
		f 4 -112 932 857 -932
		mu 0 4 103 108 653 654
		f 4 94 933 856 -933
		mu 0 4 108 140 651 653
		f 4 155 934 855 -934
		mu 0 4 140 107 652 651
		f 4 122 930 862 -935
		mu 0 4 107 106 659 652
		f 4 286 937 -847 -937
		mu 0 4 263 264 530 529
		f 4 243 938 -848 -938
		mu 0 4 264 265 535 530
		f 4 340 939 -849 -939
		mu 0 4 265 266 536 535
		f 4 -296 935 -850 -940
		mu 0 4 266 267 650 536
		f 4 86 942 861 -942
		mu 0 4 102 101 658 659
		f 4 -170 943 860 -943
		mu 0 4 101 158 657 658
		f 4 -85 944 859 -944
		mu 0 4 158 100 655 657
		f 4 -83 940 858 -945
		mu 0 4 100 99 654 655
		f 3 948 -926 268
		mu 0 3 274 529 268
		f 3 -245 946 -936
		mu 0 3 267 271 650
		f 3 947 -941 -125
		mu 0 3 104 654 99
		f 3 945 -931 91
		mu 0 3 110 659 106
		f 3 134 941 -946
		mu 0 3 110 102 659
		f 3 -947 -278 926
		mu 0 3 650 271 270
		f 3 -90 931 -948
		mu 0 3 104 103 654
		f 3 936 -949 241
		mu 0 3 263 529 274
		f 4 -950 391 918 899
		mu 0 4 672 332 320 670
		f 4 -951 384 923 903
		mu 0 4 674 338 342 673
		f 4 -916 -925 -384 -952
		mu 0 4 680 681 341 335
		f 4 -910 -918 -391 -953
		mu 0 4 678 677 322 331
		f 4 956 955 -955 -954
		mu 0 4 754 755 756 757
		f 4 -961 959 -959 -958
		mu 0 4 757 758 759 760
		f 4 958 963 -963 -962
		mu 0 4 760 759 761 762
		f 4 962 966 -966 -965
		mu 0 4 762 761 763 764
		f 4 965 969 -969 -968
		mu 0 4 764 763 765 766
		f 4 968 972 -972 -971
		mu 0 4 766 765 767 768
		f 4 971 975 -975 -974
		mu 0 4 768 767 769 770
		f 4 974 977 -957 -977
		mu 0 4 770 769 771 772
		f 4 -956 980 979 -979
		mu 0 4 756 755 773 774
		f 4 -960 -984 982 -982
		mu 0 4 759 758 775 776
		f 4 -964 981 985 -985
		mu 0 4 761 759 776 777
		f 4 -967 984 987 -987
		mu 0 4 763 761 777 778
		f 4 -970 986 989 -989
		mu 0 4 765 763 778 779
		f 4 -973 988 991 -991
		mu 0 4 767 765 779 780
		f 4 -976 990 993 -993
		mu 0 4 769 767 780 781
		f 4 -978 992 994 -981
		mu 0 4 771 769 781 782
		f 4 -980 997 996 -996
		mu 0 4 774 773 783 784
		f 4 -983 -1001 999 -999
		mu 0 4 776 775 785 786
		f 4 -986 998 1002 -1002
		mu 0 4 777 776 786 787
		f 4 -988 1001 1004 -1004
		mu 0 4 778 777 787 788
		f 4 -990 1003 1006 -1006
		mu 0 4 779 778 788 789
		f 4 -992 1005 1008 -1008
		mu 0 4 780 779 789 790
		f 4 -994 1007 1010 -1010
		mu 0 4 781 780 790 791
		f 4 -995 1009 1011 -998
		mu 0 4 782 781 791 792
		f 3 1013 -1013 -997
		mu 0 3 783 793 784
		f 3 -1016 -1000 -1015
		mu 0 3 794 786 785
		f 4 1015 1017 -1017 -1003
		mu 0 4 786 794 795 787
		f 4 1016 1019 -1019 -1005
		mu 0 4 787 795 796 788
		f 4 1018 1021 -1021 -1007
		mu 0 4 788 796 797 789
		f 4 1020 1023 -1023 -1009
		mu 0 4 789 797 798 790
		f 4 1022 1025 -1025 -1011
		mu 0 4 790 798 799 791
		f 4 1024 1026 -1014 -1012
		mu 0 4 791 799 800 792
		f 4 1030 1029 -1029 -1028
		mu 0 4 801 802 803 804
		f 4 1034 1033 -1033 1031
		mu 0 4 802 805 806 807
		f 4 1037 1036 -1036 -1034
		mu 0 4 805 808 809 806
		f 4 1040 1039 -1039 -1037
		mu 0 4 808 810 811 809
		f 4 1043 1042 -1042 -1040
		mu 0 4 810 812 813 811
		f 4 1046 1045 -1045 -1043
		mu 0 4 812 814 815 813
		f 4 1049 1048 -1048 -1046
		mu 0 4 814 816 817 815
		f 4 1051 1027 -1051 -1049
		mu 0 4 816 818 819 817
		f 4 1054 -1054 -1053 1028
		mu 0 4 803 820 821 804
		f 4 -1058 1056 1032 1055
		mu 0 4 822 823 807 806
		f 4 1059 -1059 -1056 1035
		mu 0 4 809 824 822 806
		f 4 1061 -1061 -1060 1038
		mu 0 4 811 825 824 809
		f 4 1063 -1063 -1062 1041
		mu 0 4 813 826 825 811
		f 4 1065 -1065 -1064 1044
		mu 0 4 815 827 826 813
		f 4 1067 -1067 -1066 1047
		mu 0 4 817 828 827 815
		f 4 1052 -1069 -1068 1050
		mu 0 4 819 829 828 817
		f 4 1071 -1071 -1070 1053
		mu 0 4 820 830 831 821
		f 4 -1075 1073 1057 1072
		mu 0 4 832 833 823 822
		f 4 1076 -1076 -1073 1058
		mu 0 4 824 834 832 822
		f 4 1078 -1078 -1077 1060
		mu 0 4 825 835 834 824
		f 4 1080 -1080 -1079 1062
		mu 0 4 826 836 835 825
		f 4 1082 -1082 -1081 1064
		mu 0 4 827 837 836 826
		f 4 1084 -1084 -1083 1066
		mu 0 4 828 838 837 827
		f 4 1069 -1086 -1085 1068
		mu 0 4 829 839 838 828
		f 3 1070 1087 -1087
		mu 0 3 831 830 840
		f 3 1089 1074 1088
		mu 0 3 841 833 832
		f 4 1075 1091 -1091 -1089
		mu 0 4 832 834 842 841
		f 4 1077 1093 -1093 -1092
		mu 0 4 834 835 843 842
		f 4 1079 1095 -1095 -1094
		mu 0 4 835 836 844 843
		f 4 1081 1097 -1097 -1096
		mu 0 4 836 837 845 844
		f 4 1083 1099 -1099 -1098
		mu 0 4 837 838 846 845
		f 4 1085 1086 -1101 -1100
		mu 0 4 838 839 847 846
		f 4 1102 954 -1102 -1030
		mu 0 4 848 757 756 849
		f 4 1103 960 -1103 -1032
		mu 0 4 850 758 757 848
		f 4 978 -1105 -1055 1101
		mu 0 4 756 774 851 849
		f 4 -1104 -1057 1105 983
		mu 0 4 758 850 852 775
		f 4 995 -1107 -1072 1104
		mu 0 4 774 784 853 851
		f 4 -1106 -1074 1107 1000
		mu 0 4 775 852 854 785
		f 4 1106 1012 -1109 -1088
		mu 0 4 853 784 793 855
		f 4 1109 1014 -1108 -1090
		mu 0 4 856 794 785 854
		f 4 1110 -1018 -1110 1090
		mu 0 4 857 795 794 856
		f 4 1111 -1020 -1111 1092
		mu 0 4 858 796 795 857
		f 4 1112 -1022 -1112 1094
		mu 0 4 859 797 796 858
		f 4 1113 -1024 -1113 1096
		mu 0 4 860 798 797 859
		f 4 1114 -1026 -1114 1098
		mu 0 4 861 799 798 860
		f 4 1108 -1027 -1115 1100
		mu 0 4 862 800 799 861
		f 4 -1117 -1116 -1038 -1035
		mu 0 4 802 863 808 805
		f 4 -1119 -1118 976 953
		mu 0 4 757 864 770 772
		f 4 957 961 -1120 1118
		mu 0 4 757 760 762 864
		f 4 -1121 970 973 1117
		mu 0 4 864 766 768 770
		f 4 964 967 1120 1119
		mu 0 4 762 764 766 864
		f 4 -1031 -1052 -1122 1116
		mu 0 4 802 801 816 863
		f 4 -1123 -1044 -1041 1115
		mu 0 4 863 812 810 808
		f 4 -1050 -1047 1122 1121
		mu 0 4 816 814 812 863
		f 4 1198 1200 -1202 -1203
		mu 0 4 865 866 867 868
		f 4 1203 1204 -1207 1207
		mu 0 4 866 869 870 871
		f 4 1208 1209 -1211 -1205
		mu 0 4 869 872 873 870
		f 4 1211 1212 -1214 -1210
		mu 0 4 872 874 875 873
		f 4 1214 1215 -1217 -1213
		mu 0 4 874 876 877 875
		f 4 1217 1218 -1220 -1216
		mu 0 4 876 878 879 877
		f 4 1220 1221 -1223 -1219
		mu 0 4 878 880 881 879
		f 4 1223 1202 -1225 -1222
		mu 0 4 880 882 883 881
		f 4 1226 -1228 -1229 1201
		mu 0 4 867 884 885 868
		f 4 1231 -1233 1230 1206
		mu 0 4 870 886 887 871
		f 4 1233 -1235 -1232 1210
		mu 0 4 873 888 886 870
		f 4 1235 -1237 -1234 1213
		mu 0 4 875 889 888 873
		f 4 1237 -1239 -1236 1216
		mu 0 4 877 890 889 875
		f 4 1239 -1241 -1238 1219
		mu 0 4 879 891 890 877
		f 4 1241 -1243 -1240 1222
		mu 0 4 881 892 891 879
		f 4 1228 -1244 -1242 1224
		mu 0 4 883 893 892 881
		f 4 1245 -1247 -1248 1227
		mu 0 4 884 894 895 885
		f 4 1250 -1252 1249 1232
		mu 0 4 886 896 897 887
		f 4 1252 -1254 -1251 1234
		mu 0 4 888 898 896 886
		f 4 1254 -1256 -1253 1236
		mu 0 4 889 899 898 888
		f 4 1256 -1258 -1255 1238
		mu 0 4 890 900 899 889
		f 4 1258 -1260 -1257 1240
		mu 0 4 891 901 900 890
		f 4 1260 -1262 -1259 1242
		mu 0 4 892 902 901 891
		f 4 1247 -1263 -1261 1243
		mu 0 4 893 903 902 892
		f 3 1246 1264 -1266
		mu 0 3 895 894 904
		f 3 1267 1251 1268
		mu 0 3 905 897 896
		f 4 1253 1270 -1272 -1269
		mu 0 4 896 898 906 905
		f 4 1255 1273 -1275 -1271
		mu 0 4 898 899 907 906
		f 4 1257 1276 -1278 -1274
		mu 0 4 899 900 908 907
		f 4 1259 1279 -1281 -1277
		mu 0 4 900 901 909 908
		f 4 1261 1282 -1284 -1280
		mu 0 4 901 902 910 909
		f 4 1262 1265 -1285 -1283
		mu 0 4 902 903 911 910
		f 4 1158 1131 -1194 -1124
		mu 0 4 912 913 914 915
		f 4 -1193 1188 -1160 -1125
		mu 0 4 915 916 917 918
		f 4 1159 1132 -1161 -1126
		mu 0 4 918 917 919 920
		f 4 1160 1133 -1162 -1127
		mu 0 4 920 919 921 922
		f 4 1161 1134 -1163 -1128
		mu 0 4 922 921 923 924
		f 4 1162 1135 -1164 -1129
		mu 0 4 924 923 925 926
		f 4 1163 1136 -1165 -1130
		mu 0 4 926 925 927 928
		f 4 1164 1137 -1159 -1131
		mu 0 4 928 927 929 930
		f 4 -1132 1166 1138 -1195
		mu 0 4 914 913 931 932
		f 4 -1166 -1189 -1192 1187
		mu 0 4 933 917 916 934
		f 4 -1133 1165 1139 -1168
		mu 0 4 919 917 933 935
		f 4 -1134 1167 1140 -1169
		mu 0 4 921 919 935 936
		f 4 -1135 1168 1141 -1170
		mu 0 4 923 921 936 937
		f 4 -1136 1169 1142 -1171
		mu 0 4 925 923 937 938
		f 4 -1137 1170 1143 -1172
		mu 0 4 927 925 938 939
		f 4 -1138 1171 1144 -1167
		mu 0 4 929 927 939 940
		f 4 -1139 1173 1145 -1196
		mu 0 4 932 931 941 942
		f 4 -1173 -1188 -1191 1186
		mu 0 4 943 933 934 944
		f 4 -1140 1172 1146 -1175
		mu 0 4 935 933 943 945
		f 4 -1141 1174 1147 -1176
		mu 0 4 936 935 945 946
		f 4 -1142 1175 1148 -1177
		mu 0 4 937 936 946 947
		f 4 -1143 1176 1149 -1178
		mu 0 4 938 937 947 948
		f 4 -1144 1177 1150 -1179
		mu 0 4 939 938 948 949
		f 4 -1145 1178 1151 -1174
		mu 0 4 940 939 949 950
		f 3 1179 -1197 -1146
		mu 0 3 941 951 942
		f 3 -1181 -1187 -1190
		mu 0 3 952 943 944
		f 4 1180 1152 -1182 -1147
		mu 0 4 943 952 953 945
		f 4 1181 1153 -1183 -1148
		mu 0 4 945 953 954 946
		f 4 1182 1154 -1184 -1149
		mu 0 4 946 954 955 947
		f 4 1183 1155 -1185 -1150
		mu 0 4 947 955 956 948
		f 4 1184 1156 -1186 -1151
		mu 0 4 948 956 957 949
		f 4 1185 1157 -1180 -1152
		mu 0 4 949 957 958 950
		f 4 1193 1199 -1201 -1198
		mu 0 4 959 960 867 866
		f 4 1192 1197 -1208 -1206
		mu 0 4 961 959 866 871
		f 4 -1200 1194 1225 -1227
		mu 0 4 867 960 962 884
		f 4 -1231 -1230 1191 1205
		mu 0 4 871 887 963 961
		f 4 -1226 1195 1244 -1246
		mu 0 4 884 962 964 894
		f 4 -1250 -1249 1190 1229
		mu 0 4 887 897 965 963
		f 4 1196 1263 -1265 -1245
		mu 0 4 964 966 904 894
		f 4 1189 1248 -1268 -1267
		mu 0 4 967 965 897 905
		f 4 -1153 1266 1271 -1270
		mu 0 4 968 967 905 906
		f 4 -1154 1269 1274 -1273
		mu 0 4 969 968 906 907
		f 4 -1155 1272 1277 -1276
		mu 0 4 970 969 907 908
		f 4 -1156 1275 1280 -1279
		mu 0 4 971 970 908 909
		f 4 -1157 1278 1283 -1282
		mu 0 4 972 971 909 910
		f 4 -1158 1281 1284 -1264
		mu 0 4 973 972 910 911
		f 4 1124 1125 1291 1290
		mu 0 4 915 918 920 974
		f 4 -1199 -1224 1287 1286
		mu 0 4 866 882 880 975
		f 4 -1287 1288 -1209 -1204
		mu 0 4 866 975 872 869
		f 4 -1288 -1221 -1218 1285
		mu 0 4 975 880 878 876
		f 4 -1289 -1286 -1215 -1212
		mu 0 4 872 975 876 874
		f 4 -1291 1292 1130 1123
		mu 0 4 915 974 928 912
		f 4 -1292 1126 1127 1289
		mu 0 4 974 920 922 924
		f 4 -1293 -1290 1128 1129
		mu 0 4 928 974 924 926
		f 4 1298 1306 -1294 -1295
		mu 0 4 976 977 978 979
		f 4 1300 1425 1421 -1299
		mu 0 4 980 981 982 983
		f 4 1301 1296 1308 -1300
		mu 0 4 984 985 986 987
		f 4 -1307 1304 1319 -1303
		mu 0 4 978 977 988 989
		f 4 -1422 1426 1422 -1305
		mu 0 4 983 982 990 991
		f 4 -1309 1303 1321 -1306
		mu 0 4 987 986 992 993
		f 4 -1315 1311 -1302 -1313
		mu 0 4 994 995 985 984
		f 4 -1320 1317 1328 -1316
		mu 0 4 989 988 996 997
		f 4 -1318 -1423 1453 1452
		mu 0 4 996 991 990 998
		f 4 -1322 1316 1330 -1319
		mu 0 4 993 992 999 1000
		f 4 1331 1429 -1323 1315
		mu 0 4 997 1001 1002 989
		f 4 -1327 1323 1314 -1325
		mu 0 4 1003 1004 995 994
		f 4 1433 1432 -1326 -1414
		mu 0 4 1005 1006 1007 1008
		f 4 -1335 1332 1326 -1334
		mu 0 4 1009 1010 1004 1003
		f 4 -1421 1424 -1301 -1337
		mu 0 4 1011 1012 981 980
		f 4 -1339 1336 1294 1295
		mu 0 4 1013 1014 976 979
		f 4 -1420 1423 1420 -1340
		mu 0 4 1015 1016 1012 1011
		f 4 -1342 1339 1338 1310
		mu 0 4 1008 1017 1014 1013
		f 4 1419 -1343 -1471 1472
		mu 0 4 1016 1015 1018 1019
		f 4 -1345 1342 1341 1325
		mu 0 4 1007 1018 1017 1008
		f 4 -1453 1455 1454 -1347
		mu 0 4 996 998 1020 1021
		f 4 -1331 1348 1349 -1346
		mu 0 4 1000 999 1022 1023
		f 4 1450 -1332 1350 1351
		mu 0 4 1024 1001 997 1025
		f 4 -1329 1346 1352 -1351
		mu 0 4 997 996 1021 1025
		f 4 -1433 1435 1434 -1355
		mu 0 4 1007 1006 1026 1027
		f 4 1334 1356 -1358 -1354
		mu 0 4 1010 1009 1028 1029
		f 4 1470 1358 -1469 1471
		mu 0 4 1019 1018 1030 1031
		f 4 1344 1354 -1361 -1359
		mu 0 4 1018 1007 1027 1030
		f 4 -1455 1457 1456 -1363
		mu 0 4 1021 1020 1032 1033
		f 4 -1350 1364 1365 -1362
		mu 0 4 1023 1022 1034 1035
		f 4 -1352 1366 1367 1449
		mu 0 4 1024 1025 1036 1037
		f 4 -1353 1362 1368 -1367
		mu 0 4 1025 1021 1033 1036
		f 4 -1435 1437 1436 -1371
		mu 0 4 1027 1026 1038 1039
		f 4 1357 1372 -1374 -1370
		mu 0 4 1029 1028 1040 1041
		f 4 1468 1374 -1467 1469
		mu 0 4 1031 1030 1042 1043
		f 4 1360 1370 -1377 -1375
		mu 0 4 1030 1027 1039 1042
		f 4 -1457 1459 1458 -1379
		mu 0 4 1033 1032 1044 1045
		f 4 -1366 1380 1381 -1378
		mu 0 4 1035 1034 1046 1047
		f 4 -1368 1382 1383 1447
		mu 0 4 1037 1036 1048 1049
		f 4 -1369 1378 1384 -1383
		mu 0 4 1036 1033 1045 1048
		f 4 -1437 1439 1438 -1387
		mu 0 4 1039 1038 1050 1051
		f 4 1373 1388 -1390 -1386
		mu 0 4 1041 1040 1052 1053
		f 4 1466 1390 -1465 1467
		mu 0 4 1043 1042 1054 1055
		f 4 1376 1386 -1393 -1391
		mu 0 4 1042 1039 1051 1054
		f 4 -1459 1461 1460 -1395
		mu 0 4 1045 1044 1056 1057
		f 4 -1382 1396 1397 -1394
		mu 0 4 1047 1046 1058 1059
		f 4 -1384 1398 1399 1445
		mu 0 4 1049 1048 1060 1061
		f 4 -1385 1394 1400 -1399
		mu 0 4 1048 1045 1057 1060
		f 4 -1439 1441 1440 -1403
		mu 0 4 1051 1050 1062 1063
		f 4 1389 1404 -1406 -1402
		mu 0 4 1053 1052 1064 1065
		f 4 1464 1406 -1463 1465
		mu 0 4 1055 1054 1066 1067
		f 4 1392 1402 -1409 -1407
		mu 0 4 1054 1051 1063 1066
		f 4 -1461 1463 1462 -1410
		mu 0 4 1057 1056 1067 1066
		f 4 -1398 1411 1405 -1411
		mu 0 4 1059 1058 1065 1064
		f 4 -1400 1412 -1441 1443
		mu 0 4 1061 1060 1063 1062
		f 4 -1401 1409 1408 -1413
		mu 0 4 1060 1057 1066 1063
		f 4 -1415 -1416 1413 -1311
		mu 0 4 1013 1068 1005 1008
		f 4 1297 -1417 1414 -1296
		mu 0 4 979 1069 1068 1013
		f 4 1293 1309 -1418 -1298
		mu 0 4 979 978 1070 1069
		f 4 -1419 -1310 1302 1322
		mu 0 4 1002 1070 978 989
		f 4 -1429 -1430 1427 -1317
		mu 0 4 992 1002 1001 999
		f 4 -1431 1418 1428 -1304
		mu 0 4 986 1070 1002 992
		f 4 1417 1430 -1297 -1432
		mu 0 4 1069 1070 986 985
		f 4 1416 1431 -1312 1313
		mu 0 4 1068 1069 985 995
		f 4 1415 -1314 -1324 1327
		mu 0 4 1005 1068 995 1004
		f 4 -1434 -1328 -1333 1335
		mu 0 4 1006 1005 1004 1010
		f 4 -1436 -1336 1353 1355
		mu 0 4 1026 1006 1010 1029
		f 4 -1438 -1356 1369 1371
		mu 0 4 1038 1026 1029 1041
		f 4 -1440 -1372 1385 1387
		mu 0 4 1050 1038 1041 1053
		f 4 -1442 -1388 1401 1403
		mu 0 4 1062 1050 1053 1065
		f 4 -1443 -1444 -1404 -1412
		mu 0 4 1058 1061 1062 1065
		f 4 -1445 -1446 1442 -1397
		mu 0 4 1046 1049 1061 1058
		f 4 -1447 -1448 1444 -1381
		mu 0 4 1034 1037 1049 1046
		f 4 -1449 -1450 1446 -1365
		mu 0 4 1022 1024 1037 1034
		f 4 -1428 -1451 1448 -1349
		mu 0 4 999 1001 1024 1022
		f 4 -1426 1451 1299 1307
		mu 0 4 982 981 984 987
		f 4 -1427 -1308 1305 1320
		mu 0 4 990 982 987 993
		f 4 -1454 -1321 1318 1329
		mu 0 4 998 990 993 1000
		f 4 -1456 -1330 1345 1347
		mu 0 4 1020 998 1000 1023
		f 4 -1458 -1348 1361 1363
		mu 0 4 1032 1020 1023 1035
		f 4 -1460 -1364 1377 1379
		mu 0 4 1044 1032 1035 1047
		f 4 -1462 -1380 1393 1395
		mu 0 4 1056 1044 1047 1059
		f 4 -1464 -1396 1410 1407
		mu 0 4 1067 1056 1059 1064
		f 4 1391 -1466 -1408 -1405
		mu 0 4 1052 1055 1067 1064
		f 4 1375 -1468 -1392 -1389
		mu 0 4 1040 1043 1055 1052
		f 4 1359 -1470 -1376 -1373
		mu 0 4 1028 1031 1043 1040
		f 4 1343 -1472 -1360 -1357
		mu 0 4 1009 1019 1031 1028
		f 4 -1473 -1344 1333 1340
		mu 0 4 1016 1019 1009 1003
		f 4 -1424 -1341 1324 1337
		mu 0 4 1012 1016 1003 994
		f 4 -1425 -1338 1312 -1452
		mu 0 4 981 1012 994 984
		f 4 1505 1513 1504 -1515
		mu 0 4 1071 1072 1073 1074
		f 4 -1481 1483 1515 1493
		mu 0 4 1075 1076 1077 1078
		f 4 1485 1480 1503 1488
		mu 0 4 1079 1076 1075 1080
		f 4 1496 1511 1479 1501
		mu 0 4 1081 1082 1083 1084
		f 4 1494 -1504 -1494 1499
		mu 0 4 1085 1086 1087 1088
		f 4 1490 1506 1491 1477
		mu 0 4 1089 1090 1091 1092
		f 4 -1479 1516 -1497 1502
		mu 0 4 1093 1094 1082 1081
		f 4 -1478 1473 -1486 1489
		mu 0 4 1095 1096 1076 1079
		f 4 -1474 -1492 1520 -1484
		mu 0 4 1076 1096 1097 1077
		f 4 -1485 1518 -1506 -1520
		mu 0 4 1098 1099 1072 1071
		f 4 -1475 1517 -1510 -1519
		mu 0 4 1099 1100 1101 1072
		f 4 1509 1512 1508 -1514
		mu 0 4 1072 1101 1102 1073
		f 4 -1480 -1508 -1495 1500
		mu 0 4 1103 1104 1086 1085
		f 4 1482 -1489 1507 -1512
		mu 0 4 1082 1079 1080 1083
		f 4 -1487 -1490 -1483 -1517
		mu 0 4 1094 1095 1079 1082
		f 4 1478 1510 -1491 1486
		mu 0 4 1105 1106 1090 1089
		f 4 -1476 1519 -1493 -1521
		mu 0 4 1097 1098 1071 1077
		f 4 1492 1514 1476 -1516
		mu 0 4 1077 1071 1074 1078
		f 4 1487 -1500 -1477 -1505
		mu 0 4 1073 1085 1088 1074
		f 4 -1496 -1501 -1488 -1509
		mu 0 4 1102 1103 1085 1073
		f 4 1481 -1502 1495 -1513
		mu 0 4 1107 1081 1084 1108
		f 4 -1498 -1503 -1482 -1518
		mu 0 4 1109 1093 1081 1107
		f 4 1497 1474 -1499 -1511
		mu 0 4 1106 1100 1099 1090
		f 4 1498 1484 1475 -1507
		mu 0 4 1090 1099 1098 1091
		f 4 -1524 1521 869 -1523
		mu 0 4 1113 1110 717 689
		f 4 -1526 1522 871 -1525
		mu 0 4 1115 1112 663 664
		f 4 -1528 1524 872 -1527
		mu 0 4 1117 1114 694 695
		f 3 -1529 1526 1776
		mu 0 3 1119 1116 686
		f 3 -1533 1771 -1532
		mu 0 3 1124 1122 660
		f 4 -1534 1531 -871 -1522
		mu 0 4 1111 1123 662 716
		f 4 -1537 1534 -882 -1536
		mu 0 4 1127 1125 669 705
		f 3 1778 -1571 1777
		mu 0 3 715 1132 1161
		f 4 -1544 1540 880 -1543
		mu 0 4 1137 1134 704 712
		f 4 -1546 1542 879 -1545
		mu 0 4 1138 1136 713 668
		f 4 -1547 1544 882 -1535
		mu 0 4 1125 1138 668 669
		f 4 -1550 1547 870 -1549
		mu 0 4 1142 1139 661 719
		f 3 -1552 1548 1772
		mu 0 3 1143 1141 660
		f 4 -1553 -1554 1550 -1531
		mu 0 4 1120 1145 1143 1122
		f 4 -1555 -1556 1552 -1530
		mu 0 4 1118 1147 1144 1121
		f 3 -1558 1775 -1557
		mu 0 3 1149 1146 709
		f 4 -1560 1556 -873 -1559
		mu 0 4 1151 1148 707 708
		f 4 -1562 1558 -872 -1561
		mu 0 4 1153 1150 664 663
		f 4 -1563 1560 -870 -1548
		mu 0 4 1140 1152 706 718
		f 4 -1566 1563 -883 -1565
		mu 0 4 1155 1154 669 668
		f 4 -1568 1564 -880 -1567
		mu 0 4 1157 1155 668 714
		f 4 -1570 1566 -881 -1569
		mu 0 4 1159 1156 667 710
		f 4 -1573 -1574 1570 -1540
		mu 0 4 1130 1163 1160 1133
		f 4 -1575 -1576 1572 -1539
		mu 0 4 1128 1165 1162 1131
		f 3 1774 1574 1773
		mu 0 3 665 1164 1129
		f 4 -1579 1576 881 -1564
		mu 0 4 1154 1166 711 669
		f 4 -1582 1579 1549 -1581
		mu 0 4 1171 1168 1139 1142
		f 4 -1584 1580 1551 -1583
		mu 0 4 1172 1170 1141 1143
		f 4 -1586 1582 1553 -1585
		mu 0 4 1174 1172 1143 1145
		f 4 -1588 1584 1555 -1587
		mu 0 4 1176 1173 1144 1147
		f 4 -1590 1586 1557 -1589
		mu 0 4 1178 1175 1146 1149
		f 4 -1592 1588 1559 -1591
		mu 0 4 1180 1177 1148 1151
		f 4 -1594 1590 1561 -1593
		mu 0 4 1182 1179 1150 1153
		f 4 -1595 1592 1562 -1580
		mu 0 4 1169 1181 1152 1140
		f 4 -1598 1595 1565 -1597
		mu 0 4 1184 1183 1154 1155
		f 4 -1600 1596 1567 -1599
		mu 0 4 1186 1184 1155 1157
		f 4 -1602 1598 1569 -1601
		mu 0 4 1188 1185 1156 1159
		f 4 -1604 1600 1571 -1603
		mu 0 4 1190 1187 1158 1161
		f 4 -1606 1602 1573 -1605
		mu 0 4 1192 1189 1160 1163
		f 4 -1608 1604 1575 -1607
		mu 0 4 1194 1191 1162 1165
		f 4 -1610 1606 1577 -1609
		mu 0 4 1196 1193 1164 1167
		f 4 -1611 1608 1578 -1596
		mu 0 4 1183 1195 1166 1154
		f 4 489 -1614 1611 -483
		mu 0 4 410 1198 1197 411
		f 3 -1616 -490 1780
		mu 0 3 1199 1198 410
		f 4 -1617 -1618 1614 1585
		mu 0 4 1174 1200 1199 1172
		f 4 -1620 1616 1587 -889
		mu 0 4 1201 1200 1173 1176
		f 3 1783 -1621 -1622
		mu 0 3 1202 406 1203
		f 4 -1624 1620 488 461
		mu 0 4 1204 1203 406 407
		f 4 481 -1626 -462 -481
		mu 0 4 408 1206 1205 409
		f 4 -1627 -482 -461 -1612
		mu 0 4 1197 1206 408 411
		f 4 1627 452 441 -1630
		mu 0 4 1207 377 374 1208
		f 4 442 440 -1632 -442
		mu 0 4 374 375 1209 1208
		f 4 -1634 -441 -440 -1633
		mu 0 4 1211 1210 372 373
		f 3 1782 1638 1781
		mu 0 3 376 1215 1193
		f 4 445 -1628 -1643 -444
		mu 0 4 376 377 1207 1216
		f 4 1612 2110 2109 1613
		mu 0 4 1198 1453 1454 1197
		f 4 2108 -1613 1615 -2106
		mu 0 4 1452 1453 1198 1199
		f 4 -2104 2106 2105 1617
		mu 0 4 1200 1451 1452 1199
		f 4 2104 2103 1619 1618
		mu 0 4 1449 1451 1200 1201
		f 4 1621 -2100 2102 -1619
		mu 0 4 1202 1203 1448 1450
		f 4 2100 2099 1623 1622
		mu 0 4 1446 1448 1203 1204
		f 4 1624 2098 -1623 1625
		mu 0 4 1206 1445 1447 1205
		f 4 2111 -1625 1626 -2110
		mu 0 4 1454 1445 1206 1197
		f 4 2113 1629 1628 2114
		mu 0 4 1456 1207 1208 1455
		f 4 1631 1630 2127 -1629
		mu 0 4 1208 1209 1463 1455
		f 4 2126 -1631 1633 -2124
		mu 0 4 1462 1464 1210 1211
		f 4 1634 2124 2123 1635
		mu 0 4 1212 1460 1462 1211
		f 4 2122 -1635 1637 -2120
		mu 0 4 1459 1461 1213 1214
		f 4 1639 -2118 2120 2119
		mu 0 4 1214 1215 1458 1459
		f 4 2118 2117 1641 1640
		mu 0 4 1457 1458 1215 1216
		f 4 1642 -2114 2116 -1641
		mu 0 4 1216 1207 1456 1457
		f 4 490 -1678 1675 471
		mu 0 4 400 1238 1237 401
		f 3 -1680 -491 1788
		mu 0 3 1239 1238 400
		f 4 -1681 -1682 1678 1649
		mu 0 4 1220 1240 1239 1219
		f 4 -1684 1680 1651 1650
		mu 0 4 1241 1240 1220 1221
		f 3 1791 -1685 -1686
		mu 0 3 1242 402 1243
		f 4 -1688 1684 487 468
		mu 0 4 1244 1243 402 403
		f 4 -1690 -469 470 474
		mu 0 4 1246 1245 404 405
		f 4 -1691 -475 472 -1676
		mu 0 4 1237 1246 405 401
		f 4 1691 -448 437 -1694
		mu 0 4 1247 367 370 1248
		f 4 -1696 -438 -437 435
		mu 0 4 1249 1248 370 371
		f 4 -1698 -436 -435 -1697
		mu 0 4 1251 1250 368 369
		f 4 -433 -1692 -1707 -431
		mu 0 4 366 367 1247 1256
		f 4 1676 2142 2141 1677
		mu 0 4 1238 1473 1474 1237
		f 4 2140 -1677 1679 -2138
		mu 0 4 1472 1473 1238 1239
		f 4 -2136 2138 2137 1681
		mu 0 4 1240 1471 1472 1239
		f 4 2136 2135 1683 1682
		mu 0 4 1469 1471 1240 1241
		f 4 1685 -2132 2134 -1683
		mu 0 4 1242 1243 1468 1470
		f 4 2132 2131 1687 1686
		mu 0 4 1466 1468 1243 1244
		f 4 2130 -1687 1689 1688
		mu 0 4 1465 1467 1245 1246
		f 4 2143 -1689 1690 -2142
		mu 0 4 1474 1465 1246 1237
		f 4 2145 1693 1692 2146
		mu 0 4 1476 1247 1248 1475
		f 4 2159 -1693 1695 1694
		mu 0 4 1483 1475 1248 1249
		f 4 2158 -1695 1697 -2156
		mu 0 4 1482 1484 1250 1251
		f 4 1698 2156 2155 1699
		mu 0 4 1252 1480 1482 1251
		f 4 2154 -1699 1701 -2152
		mu 0 4 1479 1481 1253 1254
		f 4 1703 -2150 2152 2151
		mu 0 4 1254 1255 1478 1479
		f 4 2150 2149 1705 1704
		mu 0 4 1477 1478 1255 1256
		f 4 1706 -2146 2148 -1705
		mu 0 4 1256 1247 1476 1477
		f 4 491 -1742 1739 465
		mu 0 4 384 1278 1277 387
		f 3 -1744 -492 1796
		mu 0 3 1279 1278 384
		f 4 -1745 -1746 1742 1713
		mu 0 4 1260 1280 1279 1259
		f 4 -1748 1744 1715 1714
		mu 0 4 1281 1280 1260 1261
		f 3 1799 -1749 -1750
		mu 0 3 1282 389 1283
		f 4 -1752 1748 486 466
		mu 0 4 1284 1283 389 390
		f 4 -1754 -467 467 476
		mu 0 4 1286 1285 396 397
		f 4 -1755 -477 473 -1740
		mu 0 4 1277 1286 397 387
		f 4 1755 -447 427 -1758
		mu 0 4 1287 351 361 1288
		f 4 -1760 -428 -427 421
		mu 0 4 1289 1288 361 362
		f 4 -1762 -422 -421 -1761
		mu 0 4 1291 1290 356 357
		f 4 -419 -1756 -1771 -416
		mu 0 4 350 351 1287 1296
		f 3 -1551 -1773 -1772
		mu 0 3 1122 1143 660
		f 3 -1538 1535 -1774
		mu 0 3 1129 1126 665
		f 3 -1578 -1775 -1577
		mu 0 3 1167 1164 665
		f 3 -1777 -1776 1554
		mu 0 3 1119 709 1146
		f 3 -1572 1568 -1778
		mu 0 3 1161 1158 666
		f 3 -1542 -1779 -1541
		mu 0 3 1135 1132 715
		f 3 -1780 -1615 -1781
		mu 0 3 410 1172 1199
		f 3 -1782 1609 -895
		mu 0 3 376 1193 1196
		f 3 -1642 -1783 443
		mu 0 3 1216 1215 376
		f 3 -1784 888 -1785
		mu 0 3 406 1202 1175
		f 3 -1786 -1636 1632
		mu 0 3 373 1212 1211
		f 3 -1787 890 1603
		mu 0 3 1190 373 1187
		f 3 -1679 -1789 -1788
		mu 0 3 1219 1239 400
		f 3 -1790 1673 1672
		mu 0 3 366 1235 1236
		f 3 -1706 -1791 430
		mu 0 3 1256 1255 366
		f 3 -1792 -1651 -1793
		mu 0 3 402 1242 1222
		f 3 -1794 -1700 1696
		mu 0 3 369 1252 1251
		f 3 -1795 438 1667
		mu 0 3 1232 369 1231
		f 3 -1743 -1797 -1796
		mu 0 3 1259 1279 384
		f 3 -1798 1737 1736
		mu 0 3 350 1275 1276
		f 3 -1770 -1799 415
		mu 0 3 1296 1295 350
		f 3 -1800 -1715 -1801
		mu 0 3 389 1282 1262
		f 3 -1802 -1764 1760
		mu 0 3 357 1292 1291
		f 3 -1803 433 1731
		mu 0 3 1272 357 1271
		f 4 -1816 1807 -762 -1804
		mu 0 4 1306 1300 566 540
		f 4 -1817 -763 -764 -1808
		mu 0 4 1300 1302 567 566
		f 4 -1818 1806 -766 762
		mu 0 4 1301 1299 562 564
		f 4 -1819 1804 -772 -1806
		mu 0 4 1298 1297 557 556
		f 4 -1820 1810 1545 -1810
		mu 0 4 1303 1304 1136 1138
		f 4 -639 876 1543 -1811
		mu 0 4 1299 439 1134 1137
		f 4 -1821 1809 1546 -1812
		mu 0 4 1298 1303 1138 1125
		f 4 -1822 1813 913 -1813
		mu 0 4 1297 1305 680 679
		f 4 -1823 1814 915 -1814
		mu 0 4 1305 1320 681 680
		f 4 -1834 -627 -628 -1826
		mu 0 4 1310 1308 419 504
		f 4 -1835 -755 -756 752
		mu 0 4 1311 1314 547 546
		f 4 -1836 1823 -758 754
		mu 0 4 1313 1307 543 544
		f 4 -1837 1803 -760 -1824
		mu 0 4 1307 1306 540 543
		f 4 -1838 1828 1523 -1830
		mu 0 4 1317 1315 1110 1113
		f 4 1825 863 1533 -1829
		mu 0 4 1309 690 1123 1111
		f 4 -1839 1829 1525 -1831
		mu 0 4 1318 1316 1112 1115
		f 4 -1840 1831 909 -1833
		mu 0 4 1319 1308 677 678
		f 4 1824 895 -911 -1832
		mu 0 4 1308 555 671 677
		f 4 -1841 1832 916 -1815
		mu 0 4 1320 1319 678 681
		f 4 694 1879 -1881 -1878
		mu 0 4 452 453 1322 1321
		f 4 -718 1882 1884 -1884
		mu 0 4 462 463 1324 1323
		f 4 644 1897 -1899 -1896
		mu 0 4 571 433 1326 1325
		f 4 -541 1893 1899 -1898
		mu 0 4 433 432 1327 1326
		f 4 -530 1900 1903 -1894
		mu 0 4 432 483 1328 1327
		f 4 -519 1904 1907 -1901
		mu 0 4 483 459 1329 1328
		f 4 -646 1908 1910 -1910
		mu 0 4 458 574 1331 1330
		f 4 -501 1909 1912 -1905
		mu 0 4 459 458 1330 1329
		f 4 670 1895 -1915 -1880
		mu 0 4 453 571 1325 1322
		f 4 -673 1883 1917 -1909
		mu 0 4 574 462 1323 1331
		f 4 -810 1920 1921 -1919
		mu 0 4 601 604 1333 1332
		f 4 806 1877 -1923 -1921
		mu 0 4 604 452 1321 1333
		f 4 -812 1918 1925 -1924
		mu 0 4 635 601 1332 1334
		f 4 -814 1923 1928 -1927
		mu 0 4 631 635 1334 1335
		f 4 -815 1929 1930 -1883
		mu 0 4 463 632 1336 1324
		f 4 -816 1926 1931 -1930
		mu 0 4 632 631 1335 1336
		f 4 297 -1951 1932 -288
		mu 0 4 243 1338 1337 246
		f 4 -1952 -298 -226 -1935
		mu 0 4 1340 1338 243 260
		f 4 265 -1953 1934 -257
		mu 0 4 259 1341 1339 260
		f 4 -1954 -266 -237 -1937
		mu 0 4 1342 1341 259 252
		f 4 279 -1955 1936 -270
		mu 0 4 251 1343 1342 252
		f 4 -1956 -280 -232 -1939
		mu 0 4 1344 1343 251 280
		f 4 -368 -1940 1938 235
		mu 0 4 257 256 1344 280
		f 4 -367 351 -1957 1939
		mu 0 4 177 176 1346 1345
		f 4 -366 350 -1958 -352
		mu 0 4 176 307 1347 1346
		f 4 -365 -1943 -1959 -351
		mu 0 4 287 180 1349 1348
		f 4 -1960 1942 -364 -1944
		mu 0 4 1350 1349 180 179
		f 4 -1961 1943 -363 -1945
		mu 0 4 1351 1350 179 192
		f 4 -1962 1944 -362 -1946
		mu 0 4 1352 1351 192 191
		f 4 -1963 1945 -361 -1947
		mu 0 4 1353 1352 191 168
		f 4 -1964 1946 -360 344
		mu 0 4 1354 1353 168 167
		f 4 -1965 -345 -359 -1949
		mu 0 4 1356 1355 304 172;
	setAttr ".fc[1000:1097]"
		f 4 -1966 1948 -358 -1950
		mu 0 4 1357 1356 172 171
		f 4 1949 -357 -228 -1933
		mu 0 4 1337 248 247 246
		f 4 -1985 -60 -46 -1968
		mu 0 4 1359 1358 84 85
		f 4 75 -1986 1967 -126
		mu 0 4 44 1360 1359 85
		f 4 -1987 -76 -58 -1970
		mu 0 4 1362 1361 746 81
		f 4 66 -1988 1969 -107
		mu 0 4 65 1363 1362 81
		f 4 -1989 -67 -52 -1972
		mu 0 4 1364 1363 65 68
		f 4 71 -1990 1971 -113
		mu 0 4 18 1365 1364 68
		f 4 -1991 -72 -16 -1975
		mu 0 4 1367 1366 18 19
		f 4 -1992 1974 -136 -1976
		mu 0 4 1369 1367 19 117
		f 4 -1993 1975 115 17
		mu 0 4 1370 1368 120 20
		f 4 20 19 -1994 -18
		mu 0 4 20 21 1371 1370
		f 4 101 29 -1995 -20
		mu 0 4 21 32 1372 1371
		f 4 32 31 -1996 -30
		mu 0 4 32 33 1373 1372
		f 4 128 8 -1997 -32
		mu 0 4 33 8 1374 1373
		f 4 11 -1982 -1998 -9
		mu 0 4 8 9 1376 1374
		f 4 147 12 -1999 1981
		mu 0 4 137 12 1377 1375
		f 4 13 59 -2000 -13
		mu 0 4 12 13 1378 1377
		f 4 -2003 2000 -315 331
		mu 0 4 1381 1379 720 211
		f 4 -2004 -2005 -332 -211
		mu 0 4 210 1383 1381 211
		f 4 -2007 2003 -291 1844
		mu 0 4 1384 1382 728 207
		f 4 -2009 -1845 -210 -2008
		mu 0 4 1386 1384 207 291
		f 4 -2011 2007 -313 -2010
		mu 0 4 1387 1385 735 205
		f 4 -2013 2009 -209 -2012
		mu 0 4 1389 1387 205 206
		f 4 -2015 2011 211 -2014
		mu 0 4 1390 1388 736 217
		f 4 -2016 2013 289 -2001
		mu 0 4 1380 1390 217 214
		f 4 -2019 2016 -4 -2018
		mu 0 4 1393 1391 53 57
		f 4 -2021 2017 -127 -2020
		mu 0 4 1395 1393 57 45
		f 4 -2023 2019 42 -2022
		mu 0 4 1396 1394 753 46
		f 4 -2025 2021 144 -2024
		mu 0 4 1398 1396 46 124
		f 4 -2027 2023 129 1845
		mu 0 4 1399 1397 745 48
		f 4 -2028 -2029 -1846 43
		mu 0 4 49 1401 1399 48
		f 4 -2031 2027 146 44
		mu 0 4 1402 1400 737 52
		f 4 -2032 -45 2 -2017
		mu 0 4 1392 1402 52 752
		f 4 -2035 2032 220 328
		mu 0 4 1405 1403 239 238
		f 4 -2037 -329 310 -2036
		mu 0 4 1407 1405 238 299
		f 4 -2039 2035 -260 267
		mu 0 4 1408 1406 237 234
		f 4 -2041 -268 -219 -2040
		mu 0 4 1410 1408 234 279
		f 4 -2043 2039 -309 -2042
		mu 0 4 1411 1409 295 232
		f 4 -2045 2041 -218 -2044
		mu 0 4 1413 1411 232 233
		f 4 -2047 2043 221 -2046
		mu 0 4 1414 1412 276 241
		f 4 -2033 -2048 2045 258
		mu 0 4 242 1404 1414 241
		f 4 -2051 2048 -41 -2050
		mu 0 4 1417 1415 79 80
		f 4 -2053 2049 -108 -2052
		mu 0 4 1419 1417 80 111
		f 4 -2055 2051 53 -2054
		mu 0 4 1420 1418 71 72
		f 4 -2057 2053 140 -2056
		mu 0 4 1422 1420 72 128
		f 4 -2059 2055 109 54
		mu 0 4 1423 1421 114 73
		f 4 -2061 -55 55 -2060
		mu 0 4 1425 1423 73 74
		f 4 -2063 2059 -143 56
		mu 0 4 1426 1424 132 77
		f 4 -2049 -2064 -57 -40
		mu 0 4 78 1416 1426 77
		f 4 -2067 2064 214 325
		mu 0 4 1428 1427 225 222
		f 4 -2069 -326 306 -2068
		mu 0 4 1430 1428 222 221
		f 4 -2071 2067 -273 281
		mu 0 4 1431 1429 734 218
		f 4 -2073 -282 -213 -2072
		mu 0 4 1432 1431 218 285
		f 4 -2075 2071 216 -2074
		mu 0 4 1433 1432 285 230
		f 4 -2077 2073 304 -2076
		mu 0 4 1434 1433 230 231
		f 4 -2079 2075 215 -2078
		mu 0 4 1435 1434 231 227
		f 4 -2065 -2080 2077 271
		mu 0 4 225 1427 1435 227
		f 4 -2083 2080 -29 -2082
		mu 0 4 1437 1436 64 67
		f 4 -2085 2081 -114 -2084
		mu 0 4 1438 1437 67 69
		f 4 -2087 2083 -53 -2086
		mu 0 4 1439 1438 69 70
		f 4 -2089 2085 -137 -2088
		mu 0 4 1440 1439 70 118
		f 4 -2091 2087 116 46
		mu 0 4 1441 1440 118 59
		f 4 -2093 -47 47 -2092
		mu 0 4 1443 1441 59 60
		f 4 -2095 2091 -139 48
		mu 0 4 1444 1442 751 63
		f 4 -2081 -2096 -49 -28
		mu 0 4 64 1436 1444 63
		f 4 2096 -1658 -2098 -2099
		mu 0 4 1445 1226 1225 1447
		f 4 -1656 1652 -2101 2097
		mu 0 4 1224 1223 1448 1446
		f 4 -2103 -1653 -1654 -2102
		mu 0 4 1450 1448 1223 1222
		f 4 -1652 1648 -2105 2101
		mu 0 4 1221 1220 1451 1449
		f 4 -2107 -1649 -1650 1646
		mu 0 4 1452 1451 1220 1219
		f 4 -1648 -2108 -2109 -1647
		mu 0 4 1219 1218 1453 1452
		f 4 -2111 2107 -1646 1643
		mu 0 4 1454 1453 1218 1217
		f 4 -1659 -2097 -2112 -1644
		mu 0 4 1217 1226 1445 1454
		f 4 1659 -2115 2112 -1662
		mu 0 4 1227 1456 1455 1228
		f 4 -2117 -1660 -1675 -2116
		mu 0 4 1457 1456 1227 1236
		f 4 -1674 1670 -2119 2115
		mu 0 4 1236 1235 1458 1457
		f 4 -2121 -1671 -1672 1668
		mu 0 4 1459 1458 1235 1234
		f 4 -1670 -2122 -2123 -1669
		mu 0 4 1234 1233 1461 1459
		f 4 -2125 2121 -1668 1664
		mu 0 4 1462 1460 1232 1231
		f 4 -1666 -2126 -2127 -1665
		mu 0 4 1231 1230 1464 1462
		f 4 -2128 2125 -1664 -2113
		mu 0 4 1455 1463 1229 1228
		f 4 -1722 -2130 -2131 2128
		mu 0 4 1266 1265 1467 1465
		f 4 -1720 1716 -2133 2129
		mu 0 4 1264 1263 1468 1466
		f 4 -2135 -1717 -1718 -2134
		mu 0 4 1470 1468 1263 1262
		f 4 -1716 1712 -2137 2133
		mu 0 4 1261 1260 1471 1469
		f 4 -2139 -1713 -1714 1710
		mu 0 4 1472 1471 1260 1259
		f 4 -1712 -2140 -2141 -1711
		mu 0 4 1259 1258 1473 1472
		f 4 -2143 2139 -1710 1707
		mu 0 4 1474 1473 1258 1257
		f 4 -1723 -2129 -2144 -1708
		mu 0 4 1257 1266 1465 1474
		f 4 1723 -2147 2144 -1726
		mu 0 4 1267 1476 1475 1268
		f 4 -2149 -1724 -1739 -2148
		mu 0 4 1477 1476 1267 1276
		f 4 -1738 1734 -2151 2147
		mu 0 4 1276 1275 1478 1477
		f 4 -2153 -1735 -1736 1732
		mu 0 4 1479 1478 1275 1274
		f 4 -1734 -2154 -2155 -1733
		mu 0 4 1274 1273 1481 1479
		f 4 -2157 2153 -1732 1728
		mu 0 4 1482 1480 1272 1271
		f 4 -1730 -2158 -2159 -1729
		mu 0 4 1271 1270 1484 1482
		f 4 -1728 -2145 -2160 2157
		mu 0 4 1269 1268 1475 1483;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vcs" 2;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "bodyShapeDeformedOrig" -p "heropengin_model_3:body";
	rename -uid "6CF55461-44F9-DBA7-1822-79BDAD61C971";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 1485 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.58333331 0.25 0.625 0.25
		 0.625 0.125 0.58333331 0.125 0.625 0.625 0.625 0.5 0.58333331 0.5 0.58333331 0.625
		 0.58333331 1 0.625 1 0.625 0.75 0.58333331 0.75 0.625 0.125 0.625 0.25 0.875 0.25
		 0.875 0.125 0.125 0.125 0.125 0.25 0.375 0.25 0.375 0.125 0.41666663 1 0.45833325
		 1 0.45833325 0.75 0.41666663 0.75 0.45833325 0.625 0.45833325 0.5 0.41666663 0.5
		 0.41666663 0.625 0.41666663 0.25 0.45833325 0.25 0.45833325 0.125 0.41666663 0.125
		 0.49999994 1 0.54166663 1 0.54166663 0.75 0.49999994 0.75 0.54166663 0.625 0.54166663
		 0.5 0.49999994 0.5 0.49999994 0.625 0.49999994 0.25 0.54166663 0.25 0.54166663 0.125
		 0.49999994 0.125 0.54166663 0.25 0.54166663 0.25 0.54166663 0.125 0.54166663 0.125
		 0.58333331 0 0.625 0 0.625 0 0.58333331 0 0.625 0.125 0.625 0.25 0.625 0.25 0.625
		 0.125 0.625 0.25 0.58333331 0.25 0.58333331 0.25 0.41666663 0 0.45833325 0 0.45833325
		 0 0.41666663 0 0.45833325 0.125 0.45833325 0.25 0.45833325 0.25 0.45833325 0.125
		 0.41666663 0.25 0.41666663 0.25 0.375 0.25 0.375 0.125 0.45833325 0.25 0.45833325
		 0.125 0.49999994 0 0.54166663 0 0.54166663 0 0.49999994 0 0.54166663 0.125 0.54166663
		 0.25 0.54166663 0.25 0.49999994 0.25 0.49999994 0.25 0.58333331 0.25 0.625 0.25 0.625
		 0.25 0.58333331 0.25 0.625 0.5 0.58333331 0.5 0.41666663 0.25 0.45833325 0.25 0.45833325
		 0.5 0.41666663 0.5 0.375 0.5 0.375 0.5 0.375 0.25 0.49999994 0.25 0.54166663 0.25
		 0.54166663 0.5 0.49999994 0.5 0.55915445 0.24862382 0.625 0.25 0.625 0.5 0.56097257
		 0.49824047 0.44228414 0.24784225 0.50956827 0.2456845 0.50370687 0.4944599 0.43935344
		 0.49722993 0.375 0.5 0.375 0.25 0.49330893 0.24724764 0.49694514 0.49648094 0.45833325
		 0.25 0.45833325 0.25 0.45833325 0.125 0.45833325 0 0.375 0.125 0.375 0.25 0.375 0
		 0.375 0 0.375 0.75 0.375 1 0.375 0.625 0.54166663 0.25 0.54166663 0.125 0.54166663
		 0 0.375 0 0.41666663 0 0.45833325 0 0.45833325 0 0.49999994 0 0.45833325 0 0.54166663
		 0 0.54166663 0 0.58333331 0 0.54166663 0 0.625 0 0.625 0 0.625 0 0.875 0 0.125 0
		 0.375 0.375 0.375 0.375 0.375 0.375 0.25 0.25 0.25 0.125 0.375 0.875 0.25 0 0.41666663
		 0.875 0.45833325 0.875 0.49999994 0.875 0.54166663 0.875 0.58333331 0.875 0.75 0
		 0.625 0.875 0.75 0.125 0.75 0.25 0.625 0.375 0.625 0.375 0.625 0.375 0.58333331 0.25
		 0.58333331 0.125 0.625 0.125 0.625 0.25 0.625 0.625 0.58333331 0.625 0.58333331 0.5
		 0.625 0.5 0.625 0.875 0.58333331 0.875 0.58333331 0.75 0.625 0.75 0.75 0.25 0.75
		 0.125 0.875 0.125 0.875 0.25 0.125 0.125 0.25 0.125 0.25 0.25 0.125 0.25 0.45833325
		 0.875 0.41666663 0.875 0.41666663 0.75 0.45833325 0.75 0.45833325 0.625 0.41666663
		 0.625 0.41666663 0.5 0.45833325 0.5 0.41666663 0.25 0.41666663 0.125 0.45833325 0.125
		 0.45833325 0.25 0.54166663 0.875 0.49999994 0.875 0.49999994 0.75 0.54166663 0.75
		 0.54166663 0.625 0.49999994 0.625 0.49999994 0.5 0.54166663 0.5 0.49999994 0.25 0.49999994
		 0.125 0.54166663 0.125 0.54166663 0.25 0.54166663 0.25 0.54166663 0.125 0.54166663
		 0.125 0.54166663 0.25 0.58333331 0 0.58333331 0 0.625 0 0.625 0 0.625 0.125 0.625
		 0.125 0.625 0.25 0.625 0.25 0.625 0.25 0.58333331 0.25 0.58333331 0.25 0.41666663
		 0 0.41666663 0 0.45833325 0 0.45833325 0 0.45833325 0.125 0.45833325 0.125 0.45833325
		 0.25 0.45833325 0.25 0.41666663 0.25 0.41666663 0.25 0.375 0.25 0.375 0.125 0.375
		 0.125 0.375 0.25 0.45833325 0.125 0.45833325 0.25 0.49999994 0 0.49999994 0 0.54166663
		 0 0.54166663 0 0.54166663 0.125 0.54166663 0.25 0.49999994 0.25 0.49999994 0.25 0.54166663
		 0.25 0.58333331 0.25 0.58333331 0.25 0.625 0.25 0.625 0.25 0.625 0.375 0.625 0.375
		 0.625 0.5;
	setAttr ".uvst[0].uvsp[250:499]" 0.58333331 0.5 0.41666663 0.25 0.45833325
		 0.25 0.41666663 0.5 0.45833325 0.5 0.375 0.5 0.375 0.375 0.375 0.375 0.375 0.5 0.49999994
		 0.25 0.54166663 0.25 0.49999994 0.5 0.54166663 0.5 0.55915445 0.24862382 0.625 0.25
		 0.625 0.375 0.625 0.5 0.56097257 0.49824047 0.44228414 0.24784225 0.50956827 0.2456845
		 0.43935344 0.49722993 0.50370687 0.4944599 0.375 0.375 0.375 0.5 0.49330893 0.24724764
		 0.49694514 0.49648094 0.45833325 0.25 0.45833325 0.25 0.45833325 0.125 0.45833325
		 0 0.375 0.25 0.375 0.25 0.375 0.125 0.375 0.25 0.375 0 0.375 0 0.375 0.75 0.375 0.875
		 0.375 0.625 0.54166663 0.25 0.54166663 0.125 0.54166663 0 0.375 0 0.41666663 0 0.45833325
		 0 0.45833325 0 0.45833325 0 0.49999994 0 0.54166663 0 0.54166663 0 0.54166663 0 0.58333331
		 0 0.625 0 0.625 0 0.75 0 0.875 0 0.125 0 0.25 0 0.625 0.125 0.625 0.25 0.625 0 0.58333331
		 1 0.625 1 0.54166663 1 0.49999994 1 0.45833325 1 0.41666663 1 0.375 1 0.53021657
		 0.23919326 0.52464145 0.11652415 0.55222106 0.47051868 0.53655195 1.023146152 0.56160665
		 0.67741442 0.875 0.12172019 0.125 0.12172019 0.475346 0.11654277 0.4697926 0.23917831
		 0.44791281 0.47037825 0.43850669 0.67722756 0.46344787 1.023146152 0.51388884 1 0.51388884
		 0.75 0.51388884 0.5 0.51388884 0.25 0.51388884 0.12172019 0.48611099 0.75 0.48611099
		 1 0.48611099 0.25 0.48611099 0.5 0.48611099 0.12172019 0.49999991 1 0.49999991 0.75
		 0.49999991 0.5 0.49999991 0.25 0.49999988 0.12172019 0.52602375 0.06310235 0.47391474
		 0.063109204 0.48611099 0 0.49999991 0 0.51388884 0 0.5 0.069389716 0.625 0.069389716
		 0.625 0 0.5 0 0.5 0.75 0.625 0.75 0.625 0.6806103 0.5 0.6806103 0.5 0.87410772 0.625
		 0.87410772 0.75089228 0 0.75089228 0.069389716 0.875 0.069389716 0.875 0 0.125 0
		 0.24910769 0 0.5 0.18603458 0.625 0.18603458 0.625 0.56396544 0.5 0.56396544 0.75089228
		 0.18603458 0.875 0.18603458 0.625 0.5 0.5 0.5 0.75089228 0.25 0.875 0.25 0.5 0.25
		 0.625 0.25 0.5 1 0.625 1 0.375 0 0.375 0.87410772 0.375 1 0.375 0.75 0.5 0.069389716
		 0.5 0 0.625 0 0.625 0.069389716 0.5 0.75 0.5 0.6806103 0.625 0.6806103 0.625 0.75
		 0.5 0.87410772 0.625 0.87410772 0.75089228 0 0.875 0 0.875 0.069389716 0.75089228
		 0.069389716 0.125 0 0.24910769 0 0.5 0.18603458 0.625 0.18603458 0.5 0.56396544 0.625
		 0.56396544 0.875 0.18603458 0.75089228 0.18603458 0.5 0.5 0.625 0.5 0.75089228 0.25
		 0.875 0.25 0.5 0.25 0.625 0.25 0.5 1 0.625 1 0.375 0 0.375 0.87410772 0.375 1 0.375
		 0.75 0.625 0.16129632 0.625 0.19890146 0.5625 0.19890146 0.5625 0.16129632 0.5625
		 0.5 0.5625 0.43749997 0.625 0.43749997 0.625 0.5 0.5625 0.58870363 0.5625 0.55109853
		 0.625 0.55109853 0.625 0.58870363 0.625 0.8125 0.5625 0.8125 0.5625 0.75 0.625 0.75
		 0.875 0.16129634 0.875 0.19890146 0.81249994 0.19890146 0.81249994 0.16129634 0.18750003
		 0.16129634 0.18750003 0.19890146 0.125 0.19890146 0.125 0.16129634 0.625 0.03382913
		 0.625 0.042465165 0.5625 0.042465162 0.5625 0.033829127 0.8125 0.03382913 0.875 0.03382913
		 0.875 0.042465165 0.8125 0.042465165 0.5625 0.71617085 0.5625 0.70753479 0.625 0.70753479
		 0.625 0.71617085 0.18750003 0.03382913 0.18750003 0.042465165 0.125 0.042465165 0.125
		 0.03382913 0.375 0.75 0.4375 0.75 0.4375 0.8125 0.375 0.8125 0.375 0.71617085 0.375
		 0.70753479 0.4375 0.70753479 0.4375 0.71617085 0.375 0.58870363 0.375 0.55109853
		 0.4375 0.55109853 0.4375 0.58870363 0.375 0.43749997 0.4375 0.43749997 0.4375 0.5
		 0.375 0.5 0.4375 0.19890146 0.375 0.19890146 0.375 0.16129632 0.4375 0.16129632 0.4375
		 0.042465165 0.375 0.042465165 0.375 0.03382913 0.4375 0.03382913 0.49999994 0.8125
		 0.49999994 0.75 0.49999991 0.70753479 0.49999994 0.71617085 0.49999994 0.55109853
		 0.49999994 0.58870363 0.49999994 0.43749997 0.49999994 0.5 0.49999994 0.19890146
		 0.49999994 0.16129632 0.49999994 0.042465162 0.49999994 0.033829127 0.375 0.25 0.4375
		 0.25 0.4375 0.3125 0.375 0.3125 0.49999994 0.3125 0.49999994 0.25;
	setAttr ".uvst[0].uvsp[500:749]" 0.5625 0.3125 0.5625 0.25 0.625 0.3125 0.625
		 0.25 0.6875 0.19890146 0.6875 0.16129632 0.6875 0.042465165 0.6875 0.03382913 0.5625
		 1 0.5625 0.9375 0.625 0.9375 0.625 1 0.49999994 1 0.49999994 0.9375 0.4375 1 0.4375
		 0.9375 0.375 0.9375 0.375 1 0.3125 0.042465165 0.3125 0.03382913 0.3125 0.19890146
		 0.3125 0.16129632 0.4375 0.37499994 0.375 0.37499994 0.49999994 0.37499994 0.5625
		 0.37499994 0.625 0.37499994 0.74999988 0.042465165 0.74999988 0.03382913 0.5625 0.90625
		 0.59375 0.90625 0.53125 0.90625 0.25000006 0.042465165 0.25000006 0.03382913 0.625
		 0.87500006 0.59375 0.875 0.59375 0.84375 0.53125 0.84375 0.53125 0.875 0.49999994
		 0.875 0.49999994 0.52835763 0.49999994 0.5046978 0.5625 0.5046978 0.5625 0.52835763
		 0.625 0.52835763 0.625 0.5046978 0.81249988 0.2216424 0.875 0.2216424 0.875 0.2453022
		 0.81249988 0.2453022 0.74999988 0.2453022 0.74999988 0.2216424 0.6875 0.2453022 0.6875
		 0.2216424 0.625 0.2453022 0.625 0.2216424 0.3125 0.2216424 0.375 0.2216424 0.375
		 0.2453022 0.3125 0.2453022 0.25000006 0.2216424 0.25000006 0.2453022 0.18750003 0.2216424
		 0.18750003 0.2453022 0.125 0.2216424 0.125 0.2453022 0.4375 0.52835763 0.375 0.52835763
		 0.375 0.5046978 0.4375 0.5046978 0.5625 0.73186558 0.625 0.73186558 0.49999994 0.73186558
		 0.4375 0.73186558 0.375 0.73186558 0.18750003 0 0.18750003 0.018134406 0.125 0.018134406
		 0.125 0 0.25000006 0 0.25000006 0.018134406 0.3125 0 0.3125 0.018134406 0.375 0 0.375
		 0.018134406 0.4375 0.018134406 0.4375 0 0.49999994 0.018134404 0.49999994 0 0.5625
		 0.018134404 0.5625 0 0.625 0 0.625 0.018134406 0.6875 0.018134406 0.6875 0 0.74999994
		 0.018134406 0.74999994 0 0.8125 0.018134406 0.8125 0 0.875 0 0.875 0.018134406 0.5625
		 0.669083 0.5625 0.62500006 0.625 0.62500006 0.625 0.669083 0.8125 0.080917008 0.875
		 0.080917008 0.875 0.12499994 0.81249994 0.12499994 0.74999988 0.12499993 0.74999988
		 0.080917001 0.6875 0.12499993 0.6875 0.080917001 0.625 0.12499993 0.625 0.080917001
		 0.5625 0.080917001 0.5625 0.12499993 0.49999994 0.12499993 0.49999994 0.080917001
		 0.4375 0.12499993 0.4375 0.080917001 0.375 0.12499993 0.375 0.080917001 0.3125 0.080917001
		 0.3125 0.12499993 0.25000006 0.080917008 0.25000006 0.12499994 0.18750003 0.080917008
		 0.18750003 0.12499994 0.125 0.080917008 0.125 0.12499994 0.4375 0.669083 0.375 0.669083
		 0.375 0.62500006 0.4375 0.62500006 0.49999991 0.669083 0.49999994 0.62500006 0.5625
		 0.2453022 0.49999994 0.2453022 0.4375 0.2453022 0.3125 0.25 0.25000006 0.25 0.18750003
		 0.25 0.125 0.25 0.875 0.25 0.81249994 0.25 0.74999988 0.25 0.6875 0.25 0.74999988
		 0.16129632 0.25000006 0.16129634 0.5625 0.84375 0.46874997 0.875 0.46874997 0.84375
		 0.46874997 0.90625 0.4375 0.90625 0.40625 0.90625 0.375 0.87500006 0.40625 0.875
		 0.40625 0.84375 0.4375 0.84375 0.6875 0.19890146 0.81249994 0.16129634 0.81249994
		 0.19890146 0.18750003 0.16129634 0.18750003 0.19890146 0.6875 0.2216424 0.81249988
		 0.2216424 0.18750003 0.2216424 0.25000006 0.2216424 0.3125 0.2216424 0.625 0.2453022
		 0.625 0.2216424 0.5625 0.2453022 0.49999994 0.2453022 0.4375 0.2453022 0.375 0.2453022
		 0.375 0.2216424 0.625 0.19890146 0.5625 0.19890146 0.375 0.19890146 0.4375 0.19890146
		 0.49999994 0.19890146 0.3125 0.16129632 0.3125 0.19890146 0.25000006 0.16129634 0.3125
		 0.16129632 0.3125 0.16129632 0.74999988 0.16129632 0.81249994 0.16129634 0.74999988
		 0.16129632 0.81249994 0.19890146 0.18750003 0.19890146 0.18750003 0.16129634 0.18750003
		 0.16129634 0.25000006 0.16129634 0.18750003 0.16129634 0.74999988 0.2216424 0.6875
		 0.2216424 0.6875 0.2216424 0.6875 0.19890146 0.81249988 0.2216424 0.74999988 0.2216424
		 0.81249994 0.19890146 0.81249988 0.2216424 0.18750003 0.19890146 0.3125 0.19890146
		 0.74999988 0.16129632 0.18750003 0.16129634 0.25000006 0.16129634 0.3125 0.16129632
		 0.18750003 0.19890146 0.3125 0.19890146 0.18750003 0.2216424 0.18750003 0.2216424
		 0.18750003 0.2216424 0.81249988 0.2216424 0.81249994 0.16129634 0.81249994 0.16129634
		 0.81249994 0.16129634 0.81249994 0.19890146 0.625 0.25 0.54166663 0.125 0.54166663
		 0 0.54166663 0 0.54166663 0 0.45833325 0 0.45833325 0 0.45833325 0 0.625 0 0.54166663
		 0.25 0.54166663 0.25 0.54166663 0.25 0.54166663 0.25 0.54166663 0.25 0.45833325 0
		 0.54166663 0 0.54166663 0.25 0.625 0 0.54166663 0.125 0.54166663 0 0.54166663 0 0.54166663
		 0 0.45833325 0 0.45833325 0 0.45833325 0 0.54166663 0 0.54166663 0.25 0.54166663
		 0.25 0.54166663 0.25 0.54166663 0.25;
	setAttr ".uvst[0].uvsp[750:999]" 0.54166663 0.25 0.45833325 0 0.625 0.25 0.54166663
		 0.25 0.375 0.3125 0.375 0.37515664 0.40106314 0.37515664 0.40625 0.3125 0.41143689
		 0.37515664 0.4375 0.37515664 0.4375 0.3125 0.46875 0.37515664 0.46875 0.3125 0.5
		 0.37515664 0.5 0.3125 0.53125 0.37515664 0.53125 0.3125 0.5625 0.37515664 0.5625
		 0.3125 0.59375 0.37515664 0.59375 0.3125 0.625 0.37515664 0.625 0.3125 0.375 0.50046992
		 0.39073604 0.50046992 0.42176396 0.50046992 0.4375 0.50046992 0.46875 0.50046992
		 0.5 0.50046992 0.53125 0.50046992 0.5625 0.50046992 0.59375 0.50046992 0.625 0.50046992
		 0.375 0.62578321 0.38048333 0.62578321 0.4320167 0.62578321 0.4375 0.62578321 0.46875
		 0.62578321 0.5 0.62578321 0.53125 0.62578321 0.5625 0.62578321 0.59375 0.62578321
		 0.625 0.62578321 0.375 0.68843985 0.4375 0.68843985 0.46875 0.68843985 0.5 0.68843985
		 0.53125 0.68843985 0.5625 0.68843985 0.59375 0.68843985 0.625 0.68843985 0.375 0.3125
		 0.40625 0.3125 0.40106314 0.37515664 0.375 0.37515664 0.4375 0.3125 0.4375 0.37515664
		 0.41143689 0.37515664 0.46875 0.3125 0.46875 0.37515664 0.5 0.3125 0.5 0.37515664
		 0.53125 0.3125 0.53125 0.37515664 0.5625 0.3125 0.5625 0.37515664 0.59375 0.3125
		 0.59375 0.37515664 0.625 0.3125 0.625 0.37515664 0.39073604 0.50046992 0.375 0.50046992
		 0.4375 0.50046992 0.42176396 0.50046992 0.46875 0.50046992 0.5 0.50046992 0.53125
		 0.50046992 0.5625 0.50046992 0.59375 0.50046992 0.625 0.50046992 0.38048333 0.62578321
		 0.375 0.62578321 0.4375 0.62578321 0.4320167 0.62578321 0.46875 0.62578321 0.5 0.62578321
		 0.53125 0.62578321 0.5625 0.62578321 0.59375 0.62578321 0.625 0.62578321 0.375 0.68843985
		 0.4375 0.68843985 0.46875 0.68843985 0.5 0.68843985 0.53125 0.68843985 0.5625 0.68843985
		 0.59375 0.68843985 0.625 0.68843985 0.40625 0.3125 0.40106314 0.37515664 0.41143689
		 0.37515664 0.39073604 0.50046992 0.42176396 0.50046992 0.38048333 0.62578321 0.4320167
		 0.62578321 0.375 0.68843985 0.4375 0.68843985 0.46875 0.68843985 0.5 0.68843985 0.53125
		 0.68843985 0.5625 0.68843985 0.59375 0.68843985 0.625 0.68843985 0.46249998 0.3125
		 0.46249998 0.3125 0.375 0.3125 0.40625 0.3125 0.40106314 0.37515664 0.375 0.37515664
		 0.4375 0.3125 0.4375 0.37515664 0.41143689 0.37515664 0.46875 0.3125 0.46875 0.37515664
		 0.5 0.3125 0.5 0.37515664 0.53125 0.3125 0.53125 0.37515664 0.5625 0.3125 0.5625
		 0.37515664 0.59375 0.3125 0.59375 0.37515664 0.625 0.3125 0.625 0.37515664 0.39073604
		 0.50046992 0.375 0.50046992 0.4375 0.50046992 0.42176396 0.50046992 0.46875 0.50046992
		 0.5 0.50046992 0.53125 0.50046992 0.5625 0.50046992 0.59375 0.50046992 0.625 0.50046992
		 0.38048333 0.62578321 0.375 0.62578321 0.4375 0.62578321 0.4320167 0.62578321 0.46875
		 0.62578321 0.5 0.62578321 0.53125 0.62578321 0.5625 0.62578321 0.59375 0.62578321
		 0.625 0.62578321 0.375 0.68843985 0.4375 0.68843985 0.46875 0.68843985 0.5 0.68843985
		 0.53125 0.68843985 0.5625 0.68843985 0.59375 0.68843985 0.625 0.68843985 0.375 0.3125
		 0.375 0.37515664 0.40106314 0.37515664 0.40625 0.3125 0.41143689 0.37515664 0.4375
		 0.37515664 0.4375 0.3125 0.46875 0.37515664 0.46875 0.3125 0.5 0.37515664 0.5 0.3125
		 0.53125 0.37515664 0.53125 0.3125 0.5625 0.37515664 0.5625 0.3125 0.59375 0.37515664
		 0.59375 0.3125 0.625 0.37515664 0.625 0.3125 0.375 0.50046992 0.39073604 0.50046992
		 0.4375 0.50046992 0.42176396 0.50046992 0.46875 0.50046992 0.5 0.50046992 0.53125
		 0.50046992 0.5625 0.50046992 0.59375 0.50046992 0.625 0.50046992 0.375 0.62578321
		 0.38048333 0.62578321 0.4375 0.62578321 0.4320167 0.62578321 0.46875 0.62578321 0.5
		 0.62578321 0.53125 0.62578321 0.5625 0.62578321 0.59375 0.62578321 0.625 0.62578321
		 0.375 0.68843985 0.4375 0.68843985 0.46875 0.68843985 0.5 0.68843985 0.53125 0.68843985
		 0.5625 0.68843985 0.59375 0.68843985 0.625 0.68843985 0.40625 0.3125 0.40106314 0.37515664
		 0.41143689 0.37515664 0.39073604 0.50046992 0.42176396 0.50046992 0.38048333 0.62578321
		 0.4320167 0.62578321 0.375 0.68843985 0.4375 0.68843985 0.46875 0.68843985 0.5 0.68843985
		 0.53125 0.68843985 0.5625 0.68843985 0.59375 0.68843985 0.625 0.68843985 0.46249998
		 0.3125 0.46249998 0.3125 0.37495854 0.019534364 0.44044703 0.13089406 0.44044703
		 0.25 0.375 0.25 0.37481844 0.99921536 0.41550481 0.6337738 0.4643203 0.6400336 0.44044703
		 0.86910594 0.4375 0.4375 0.4375 0.3125 0.48658529 0.29613823 0.48658529 0.45386177
		 0.50729215 0.2645843 0.50729215 0.25 0.52057123 0.62160063 0.50729215 0.7354157 0.53671914
		 0.27942693 0.53671914 0.47057301 0.38841474 0.42113826 0.38841474 0.32886177 0.56832469
		 0.5 0.56832469 0.25 0.57598948 0.49233517 0.58249354 0.2641688;
	setAttr ".uvst[0].uvsp[1000:1249]" 0.58249354 0.48583114 0.5758639 0.25753918
		 0.51891017 0.26184094 0.33828089 0.40442696 0.33828089 0.34557304 0.32080632 0.32787555
		 0.28587687 0.35420156 0.27833766 0.34666234 0.30885392 0.31614608 0.29250652 0.38916886
		 0.29250652 0.3608312 0.34102198 0.83011001 0.36868048 0.60605013 0.34227648 0.28272352
		 0.34102198 0.101934 0.30778986 0.66394937 0.31812617 0.5512681 0.30778986 0.20163041
		 0.27285346 0.39785349 0.28348505 0.39315543 0.57598948 0.49233517 0.56832469 0.5
		 0.58249354 0.2641688 0.58249354 0.48583114 0.5758639 0.25753918 0.56832469 0.25 0.28587687
		 0.35420156 0.27833766 0.34666234 0.29250652 0.38916886 0.29250652 0.3608312 0.27285346
		 0.39785349 0.28348505 0.39315543 0.57598948 0.49233517 0.56832469 0.5 0.58249354
		 0.2641688 0.58249354 0.48583114 0.56832469 0.25 0.5758639 0.25753918 0.28587687 0.35420156
		 0.27833766 0.34666234 0.29250652 0.38916886 0.29250652 0.3608312 0.27285346 0.39785349
		 0.28348505 0.39315543 0.57598948 0.49233517 0.56832469 0.5 0.58249354 0.2641688 0.58249354
		 0.48583114 0.56832469 0.25 0.5758639 0.25753918 0.28587687 0.35420156 0.27833766
		 0.34666234 0.29250652 0.38916886 0.29250652 0.3608312 0.27285346 0.39785349 0.28348505
		 0.39315543 0.57598948 0.49233517 0.56832469 0.5 0.58249354 0.2641688 0.58249354 0.48583114
		 0.56832469 0.25 0.5758639 0.25753918 0.28587687 0.35420156 0.27833766 0.34666234
		 0.29250652 0.38916886 0.29250652 0.3608312 0.27285346 0.39785349 0.28348505 0.39315543
		 0.36906499 0.30763853 0.41563106 0.29063109 0.46442527 0.27585173 0.5 0.25 0.5 0.125
		 0.625 0.125 0.625 0.25 0.625 0.5 0.5 0.5 0.5 0.375 0.625 0.375 0.5 0.625 0.625 0.625
		 0.5 0.875 0.5 0.75 0.625 0.75 0.625 0.875 0.75 0.125 0.875 0.125 0.875 0.25 0.75
		 0.25 0.125 0.125 0.25 0.125 0.25 0.25 0.125 0.25 0.375 0.875 0.375 0.75 0.375 0.625
		 0.375 0.5 0.375 0.375 0.375 0.25 0.375 0.125 0.375 0 0.5 0 0.625 0 0.75 0 0.875 0
		 0.125 0 0.25 0 0.5 1 0.625 1 0.375 1 0.81249994 0.16129634 0.81249994 0.16129634
		 0.18750003 0.16129634 0.74999988 0.16129632 0.25000006 0.16129634 0.18750003 0.19890146
		 0.3125 0.16129632 0.18750003 0.16129634 0.3125 0.19890146 0.25000006 0.16129634 0.74999988
		 0.16129632 0.3125 0.16129632 0.6875 0.16129632 0.81249994 0.19890146 0.6875 0.19890146
		 0.3125 0.2216424 0.6875 0.2216424 0.3125 0.19890146 0.6875 0.19890146 0.74999988
		 0.2216424 0.81249988 0.2216424 0.6875 0.2216424 0.74999988 0.2216424 0.81249994 0.19890146
		 0.18750003 0.19890146 0.81249988 0.2216424 0.18750003 0.2216424 0.18750003 0.2216424
		 0.25000006 0.2216424 0.77845478 0.17740263 0.77845478 0.17740263 0.6534549 0.20817964
		 0.75575805 0.20817964 0.63075811 0.17740262 0.3009896 0.17740262 0.65905082 0.17740262
		 0.27269682 0.22279617 0.27845484 0.20817964 0.24424195 0.22279617 0.34654516 0.22279616
		 0.31233227 0.20817964 0.31809035 0.22279617 0.75016195 0.17740262 0.28979751 0.17740263
		 0.36924192 0.22679141 0.34094915 0.22679141 0.26693872 0.27218497 0.31233227 0.22679141
		 0.75575793 0.27218497 0.24424195 0.25357318 0.68766773 0.20817964 0.68190962 0.27218497
		 0.60789931 0.22679141 0.7102024 0.22679141 0.68190962 0.22679141 0.63075811 0.20817964
		 0.34654516 0.20817964 0.6534549 0.22679141 0.65988588 0.23349595 0.65988588 0.23349595
		 0.53488594 0.24049269 0.5581432 0.24049269 0.4331432 0.23349594 0.26090235 0.23349594
		 0.3423028 0.23349594 0.35174274 0.43698138 0.15988591 0.24049269 0.4418568 0.43698138
		 0.46511406 0.43698138 0.74708498 0.24049269 0.55522811 0.43698138 0.75072622 0.23349594
		 0.64606845 0.23349595 0.56685674 0.24472383 0.65769708 0.24472383 0.54359949 0.44820926
		 0.74708498 0.24472383 0.55814314 0.44820926 0.4418568 0.44397813 0.25291502 0.24049269
		 0.44477183 0.44820926 0.33067417 0.24472383 0.35393143 0.24472383 0.44477183 0.24472383
		 0.4331432 0.24049269 0.46511406 0.24049269 0.53488594 0.24472383 0.625 0.24877797
		 0.5 0.24877797 0.375 0.24877797 0.24910769 0.24877797 0.125 0.24877797 0.375 0.50122201
		 0.5 0.50122201 0.625 0.50122201 0.875 0.24877797 0.75089228 0.24877797 0.625 0.24877797
		 0.75089228 0.24877797 0.875 0.24877797 0.625 0.50122201 0.5 0.50122201 0.375 0.50122201
		 0.125 0.24877797 0.24910769 0.24877797 0.375 0.24877797 0.5 0.24877797 0.625 0.18793984
		 0.5 0.18793984 0.375 0.18793984 0.24910769 0.18793984 0.125 0.18793984 0.375 0.56206018
		 0.5 0.56206018 0.625 0.56206018 0.875 0.18793984 0.75089228 0.18793984 0.625 0.18793984
		 0.75089228 0.18793984 0.875 0.18793984 0.625 0.56206018 0.5 0.56206018 0.375 0.56206018
		 0.125 0.18793984 0.24910769 0.18793984 0.375 0.18793984 0.5 0.18793984 0.625 0.18159419
		 0.5 0.18159419 0.375 0.18159419 0.24910769 0.18159419 0.125 0.18159419 0.375 0.56840581
		 0.5 0.56840581 0.625 0.56840581 0.875 0.18159419 0.75089228 0.18159419 0.625 0.18159419
		 0.75089228 0.18159419 0.875 0.18159419;
	setAttr ".uvst[0].uvsp[1250:1484]" 0.625 0.56840581 0.5 0.56840581 0.375 0.56840581
		 0.125 0.18159419 0.24910769 0.18159419 0.375 0.18159419 0.5 0.18159419 0.625 0.074365556
		 0.5 0.074365556 0.375 0.074365556 0.2491077 0.074365556 0.125 0.074365556 0.375 0.6756345
		 0.5 0.6756345 0.625 0.6756345 0.875 0.074365556 0.75089228 0.074365556 0.625 0.074365556
		 0.75089228 0.074365556 0.875 0.074365556 0.625 0.6756345 0.5 0.6756345 0.375 0.6756345
		 0.125 0.074365556 0.2491077 0.074365556 0.375 0.074365556 0.5 0.074365556 0.625 0.066072062
		 0.5 0.066072062 0.375 0.066072062 0.24910769 0.066072062 0.125 0.066072062 0.375
		 0.68392789 0.5 0.68392789 0.625 0.68392789 0.875 0.066072062 0.75089228 0.066072062
		 0.625 0.066072062 0.75089228 0.066072062 0.875 0.066072062 0.625 0.68392789 0.5 0.68392789
		 0.375 0.68392789 0.125 0.066072062 0.24910769 0.066072062 0.375 0.066072062 0.5 0.066072062
		 0.3719382 0.20836085 0.3136794 0.20972334 0.1871819 0.20953211 0.4375 0.54072011
		 0.125 0.20927989 0.375 0.54072011 0.25000006 0.2216424 0.20812279 0.2216424 0.4375
		 0.19890146 0.49999994 0.54072011 0.5625 0.54072011 0.6280399 0.20835944 0.81249994
		 0.18178281 0.68749988 0.20927989 0.81249994 0.20927989 0.21601276 0.16129634 0.625
		 0.54072011 0.875 0.20927989 0.79566473 0.16129634 0.18750003 0.16129634 0.74999988
		 0.16129632 0.18750003 0.18649341 0.5625 0.19890146 0.49999994 0.19890146 0.625 0.70753479
		 0.625 0.71617085 0.375 0.71617085 0.375 0.70753479 0.625 0.73186558 0.625 0.75 0.5625
		 0.75 0.49999994 0.75 0.4375 0.75 0.375 0.75 0.375 0.73186558 0.5625 0.669083 0.625
		 0.669083 0.49999991 0.669083 0.4375 0.669083 0.375 0.669083 0.62534904 0.26232159
		 0.58333331 0.25 0.54166663 0.25 0.54166663 0.25 0.49999994 0.25 0.45833328 0.25 0.41666663
		 0.25 0.37465096 0.26232183 0.3622936 0.25004283 0.36249998 0.125 0.36249998 0 0.375
		 0.98750001 0.4166666 0.98749995 0.45833322 0.98749995 0.49999991 0.98749995 0.54166663
		 0.98749995 0.58333331 0.98749995 0.625 0.98750001 0.63750005 0 0.63749999 0.125 0.63770634
		 0.25004286 0.62534904 0.26232159 0.58333331 0.25 0.54166663 0.25 0.54166663 0.25
		 0.49999994 0.25 0.45833328 0.25 0.41666663 0.25 0.37465096 0.26232186 0.3622936 0.25004283
		 0.36249998 0.125 0.375 0.98750001 0.36249998 0 0.4166666 0.98749995 0.45833322 0.98749995
		 0.49999991 0.98749995 0.54166663 0.98749995 0.58333331 0.98749995 0.63750005 0 0.625
		 0.98750001 0.63749999 0.125 0.63770634 0.25004286 0.625 0.25 0.625 0.25 0.625 0.125
		 0.625 0 0.625 0 0.58333331 0 0.54166663 0 0.54166663 0 0.54166663 0.125 0.54166663
		 0.25 0.54166663 0.25 0.58333331 0.25 0.625 0.25 0.625 0.25 0.58333331 0.25 0.54166663
		 0.25 0.54166663 0.25 0.54166663 0.125 0.54166663 0 0.54166663 0 0.58333331 0 0.625
		 0 0.625 0 0.625 0.125 0.54166663 0.25 0.54166663 0.25 0.54166663 0.125 0.54166663
		 0 0.54166663 0 0.49999994 0 0.45833325 0 0.45833325 0 0.45833325 0.125 0.45833325
		 0.25 0.45833325 0.25 0.49999994 0.25 0.54166663 0.25 0.54166663 0.25 0.49999994 0.25
		 0.45833325 0.25 0.45833325 0.25 0.45833325 0.125 0.45833325 0 0.45833325 0 0.49999994
		 0 0.54166663 0 0.54166663 0 0.54166663 0.125 0.45833325 0.25 0.45833325 0.125 0.45833325
		 0 0.45833325 0 0.41666663 0 0.37499997 0 0.37499997 0.125 0.37499997 0.25 0.41666663
		 0.25 0.45833325 0.25 0.41666663 0.25 0.37499997 0.25 0.37499997 0.125 0.37499997
		 0 0.41666663 0 0.45833325 0 0.45833325 0 0.45833325 0.125 0.75089228 0.2183986 0.625
		 0.53160143 0.875 0.2183986 0.5 0.53160143 0.125 0.2183986 0.375 0.53160143 0.24910769
		 0.2183986 0.375 0.2183986 0.5 0.2183986 0.625 0.2183986 0.75089228 0.2183986 0.625
		 0.2183986 0.5 0.2183986 0.375 0.2183986 0.24910769 0.2183986 0.375 0.53160143 0.125
		 0.2183986 0.5 0.53160143 0.875 0.2183986 0.625 0.53160143 0.75089228 0.12669659 0.625
		 0.62330341 0.875 0.12669659 0.5 0.62330341 0.125 0.12669659 0.375 0.62330341 0.24910769
		 0.12669659 0.375 0.12669659 0.5 0.12669659 0.625 0.12669659 0.75089228 0.12669659
		 0.625 0.12669659 0.5 0.12669659 0.375 0.12669659 0.24910769 0.12669659 0.375 0.62330341
		 0.125 0.12669659 0.5 0.62330341 0.875 0.12669659 0.625 0.62330341;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 1070 ".vt";
	setAttr ".vt[0:165]"  -1.13955319 0 7.17969418 -15.67647839 0 7.17969418
		 -1.13955319 2.079115391 7.17969418 -15.67647839 2.079115391 7.17969418 -3.58648729 2.079115391 -4.73743248
		 -13.2295475 2.079115391 -4.73743248 -3.58648729 0 -4.73743248 -13.2295475 0 -4.73743248
		 -5.98519135 0 7.17969513 -6.9115572 0 -6.81993151 -6.9115572 2.079115391 -6.81993151
		 -5.98519135 2.079115391 7.17969418 -10.83083534 0 7.17969513 -9.90446949 0 -6.81993151
		 -9.90446949 2.079115391 -6.81993151 -10.83083534 2.079115391 7.17969418 -12.28652191 2.079115391 13.53968143
		 -12.34149075 0 14.24679565 -15.032758713 0 13.53968143 -15.032758713 2.079115391 13.53968143
		 -1.7832768 0 13.5396843 -4.47454119 0 14.24679852 -4.52950621 2.079115391 13.5396843
		 -1.7832768 2.079115391 13.5396843 -6.8914876 2.079115391 14.52869034 -6.8914876 0 14.52869034
		 -9.92454243 0 14.52869034 -9.92454243 2.079115391 14.52869034 -9.89259052 3.1352706 -5.30362988
		 -10.065759659 3.1352706 4.92106533 -13.72596741 3.1352706 3.68908668 -12.32606125 3.1352706 -3.61513305
		 -3.090065479 3.1352706 3.68908668 -6.75027084 3.1352706 4.92106533 -6.9234376 3.1352706 -5.30362988
		 -4.4899745 3.1352706 -3.61513352 -8.4080143 4.80291128 -3.11404037 -8.4080143 4.80291128 3.58926225
		 -12.16726971 4.80291128 3.58926225 -11.1827774 4.80291128 -2.30944586 -4.64876318 4.80291128 3.58926225
		 -5.63325691 4.80291128 -2.30944705 -8.40801334 0 7.17969561 -8.40801334 0 -7.1197896
		 -8.40801334 2.079115391 -7.1197896 -8.4080143 3.1352706 -5.3686533 -8.4080143 3.1352706 5.17213202
		 -8.40801334 2.18172669 8.64858723 -8.4080143 2.079115391 16.42354393 -8.4080143 0 16.42354393
		 -6.52838802 4.80291128 3.58926225 -5.027443409 3.1352706 4.44532442 -3.70147228 2.18172669 8.58270264
		 -3.15639234 2.079115391 15.15777397 -3.15639234 0 15.15777397 -3.56237221 0 7.17969561
		 -5.24902153 0 -5.77868319 -5.24902153 2.079115391 -5.77868319 -5.5325942 3.1352706 -4.61647272
		 -7.020636559 4.80291128 -2.71174312 -10.28764153 4.80291128 3.58926225 -11.78858852 3.1352706 4.44532442
		 -13.1138649 2.18172669 8.57211018 -13.65964222 2.079115391 15.15777111 -13.65964222 0 15.15777111
		 -13.2536602 0 7.17969561 -11.56701088 0 -5.77868319 -11.56701088 2.079115391 -5.77868319
		 -11.28343964 3.1352706 -4.61647272 -9.7953968 4.80291128 -2.71174312 -0.60219187 1.039557695 7.17969418
		 -1.47988403 0.97348785 14.67425728 -3.15639234 1.039557695 16.29234695 -4.87315035 0.89868039 14.67425728
		 -5.87464619 1.039557695 10.016517639 -6.54929018 1.097955346 15.66326427 -8.4080143 1.039557695 17.55811691
		 -10.26673889 1.097955346 15.66326427 -10.94138145 1.039557695 10.016517639 -11.94287968 0.89868039 14.67425442
		 -13.65964222 1.039557695 16.29234314 -15.33614922 0.97348785 14.67425442 -16.21384048 1.039557695 7.17969418
		 -13.67595768 1.039557695 -5.036389828 -11.92947388 1.039557695 -6.31338453 -10.080117226 1.039557695 -7.33312941
		 -8.40801334 1.039557695 -7.81919289 -6.73590994 1.039557695 -7.33312941 -4.88655663 1.039557695 -6.31338453
		 -3.14007807 1.039557695 -5.036389828 -5.14101028 4.80291128 0.63990778 -3.79001927 3.1352706 0.036976524
		 -2.36302066 2.079115391 1.22113097 -1.87113488 1.039557695 1.071652532 -2.36302066 0 1.22113097
		 -4.40569687 0 0.70050651 -6.44837427 0 0.17988181 -8.40801334 0 0.029953025 -10.36765194 0 0.17988181
		 -12.41033554 0 0.70050651 -14.45301437 0 1.22113097 -14.94489765 1.039557695 1.071652532
		 -14.45301437 2.079115391 1.22113097 -13.026014328 3.1352706 0.036976658 -11.67502499 4.80291128 0.63990808
		 1.13955152 0 7.17969418 15.67647743 0 7.17969418 1.13955152 2.079115391 7.17969418
		 15.67647743 2.079115391 7.17969418 3.58648586 2.079115391 -4.73743248 13.22954559 2.079115391 -4.73743248
		 3.58648586 0 -4.73743248 13.22954559 0 -4.73743248 5.98518896 0 7.17969513 6.91155386 0 -6.81993151
		 6.91155386 2.079115391 -6.81993151 5.98518896 2.079115391 7.17969418 10.83083344 0 7.17969513
		 9.90446758 0 -6.81993151 9.90446758 2.079115391 -6.81993151 10.83083344 2.079115391 7.17969418
		 12.28652 2.079115391 13.53968143 12.34148693 0 14.24679565 15.032755852 0 13.53968143
		 15.032755852 2.079115391 13.53968143 1.78327465 0 13.5396843 4.47453928 0 14.24679852
		 4.52950525 2.079115391 13.5396843 1.78327465 2.079115391 13.5396843 6.89148521 2.079115391 14.52869034
		 6.89148521 0 14.52869034 9.92453957 0 14.52869034 9.92453957 2.079115391 14.52869034
		 9.89258957 3.1352706 -5.30362988 10.065756798 3.1352706 4.92106533 13.7259655 3.1352706 3.68908668
		 12.32605934 3.1352706 -3.61513305 3.090063572 3.1352706 3.68908668 6.75026894 3.1352706 4.92106533
		 6.92343616 3.1352706 -5.30362988 4.48997211 3.1352706 -3.61513352 8.4080143 4.80291128 -3.11404037
		 8.4080143 4.80291128 3.58926225 12.1672678 4.80291128 3.58926225 11.1827755 4.80291128 -2.30944586
		 4.64876127 4.80291128 3.58926225 5.633255 4.80291128 -2.30944705 8.40801144 0 7.17969561
		 8.40801144 0 -7.1197896 8.40801144 2.079115391 -7.1197896 8.40801334 3.1352706 -5.3686533
		 8.40801334 3.1352706 5.17213202 8.40801144 2.18172669 8.64858723 8.40801334 2.079115391 16.42354393
		 8.40801334 0 16.42354393 6.52838755 4.80291128 3.58926225 5.027441502 3.1352706 4.44532442
		 3.70147038 2.18172669 8.58270264 3.15638971 2.079115391 15.15777397 3.15638971 0 15.15777397
		 3.5623703 0 7.17969561 5.24901962 0 -5.77868319 5.24901962 2.079115391 -5.77868319
		 5.5325923 3.1352706 -4.61647272 7.020635128 4.80291128 -2.71174312 10.28763962 4.80291128 3.58926225;
	setAttr ".vt[166:331]" 11.78858662 3.1352706 4.44532442 13.11386204 2.18172669 8.57211018
		 13.6596384 2.079115391 15.15777111 13.6596384 0 15.15777111 13.25365734 0 7.17969561
		 11.56700611 0 -5.77868319 11.56700611 2.079115391 -5.77868319 11.28343773 3.1352706 -4.61647272
		 9.79539394 4.80291128 -2.71174312 0.6021902 1.039557695 7.17969418 1.47988236 0.97348785 14.67425728
		 3.15638971 1.039557695 16.29234695 4.87314844 0.89868039 14.67425728 5.87464428 1.039557695 10.016517639
		 6.54928827 1.097955346 15.66326427 8.40801334 1.039557695 17.55811691 10.26673794 1.097955346 15.66326427
		 10.94137859 1.039557695 10.016517639 11.94287777 0.89868039 14.67425442 13.6596384 1.039557695 16.29234314
		 15.33614731 0.97348785 14.67425442 16.21384048 1.039557695 7.17969418 13.67595577 1.039557695 -5.036389828
		 11.92947197 1.039557695 -6.31338453 10.080115318 1.039557695 -7.33312941 8.40801144 1.039557695 -7.81919289
		 6.73590803 1.039557695 -7.33312941 4.88655472 1.039557695 -6.31338453 3.14007616 1.039557695 -5.036389828
		 11.67502117 4.80291128 0.63990808 13.026012421 3.1352706 0.036976658 14.45301247 2.079115391 1.22113097
		 14.94489765 1.039557695 1.071652532 14.45301247 0 1.22113097 12.41033173 0 0.70050651
		 10.36765003 0 0.17988181 8.40801144 0 0.029953025 6.44837189 0 0.17988181 4.40569544 0 0.70050651
		 2.36301875 0 1.22113097 1.87113321 1.039557695 1.071652532 2.36301875 2.079115391 1.22113097
		 3.79001808 3.1352706 0.036976524 5.14100838 4.80291128 0.63990778 -4.85432911 56.22476578 22.46108246
		 4.8543191 56.22476578 22.46108246 -4.85432911 57.21320724 22.25105476 4.8543191 57.21320724 22.25105476
		 -6.090795517 57.84795761 18.44740486 6.090785503 57.84795761 18.44740486 -6.11541271 56.074501038 18.51898193
		 6.1154027 56.074501038 18.51898193 -2.35076666 56.71653366 24.07384491 -2.19185495 56.71653366 19.47759819
		 -2.99581146 58.83200455 18.7881279 -2.35076666 57.70497513 23.86382103 2.35075426 56.71653366 24.07384491
		 2.19184256 56.71653366 19.47759819 2.9957993 58.83200455 18.7881279 2.35075426 57.70497513 23.86382103
		 -6.1395149e-06 56.98391724 27.268116 -6.1395149e-06 56.98391724 19.70851707 -6.1395149e-06 60.20213699 19.079507828
		 -6.1395149e-06 57.9723587 27.058092117 5.0070576668 56.74161911 22.6574173 6.87886238 57.036396027 17.93314171
		 -6.87528658 57.036281586 17.93227577 -5.0070667267 56.74161911 22.6574173 -2.45147085 57.23338699 24.30028534
		 -6.1395149e-06 57.50077057 27.51352501 2.45145845 57.23338699 24.30028534 -52.029151917 45.58172607 2.28143287
		 -52.029159546 47.15561295 2.28143287 -19.45203018 47.69820786 6.90675974 -19.073575974 47.75342941 -4.35314655
		 -51.36393356 45.58173752 -5.82744837 -51.36392975 47.15560532 -5.82744837 -43.86970901 47.41487885 6.5956583
		 -42.52762222 47.41487503 -8.74534988 -30.65470123 47.4703598 -6.89253664 -31.82198334 47.4703598 7.33618689
		 -31.23418045 48.68177032 0.17103979 -43.19387054 48.43540955 -1.12960088 -55.2439537 47.15559769 -2.02594471
		 -55.24396133 45.5817337 -2.02594471 -19.99638176 48.91519165 1.23454475 -19.44126701 46.36865997 7.48508644
		 -31.87247849 46.36865616 7.94434547 -43.93266296 46.36866379 7.15206766 -53.58942413 46.36867142 2.52263308
		 -57.038917542 46.36865616 -2.099214315 -52.87563324 46.36867523 -6.17825413 -42.55174255 46.36865997 -9.30893803
		 -30.57129288 46.36865997 -7.33112049 -18.99541664 46.36865997 -4.59649515 52.02917099 45.58172989 2.2814343
		 52.029178619 47.15560913 2.2814343 19.452034 47.69820786 6.90675974 19.073587418 47.75342941 -4.35314655
		 51.36394501 45.5817337 -5.82744741 51.36396027 47.15561295 -5.82744741 43.86970901 47.41487885 6.5956583
		 42.52762222 47.41487503 -8.74534988 30.65471268 47.47036362 -6.89253664 31.82199097 47.4703598 7.33618689
		 31.23418617 48.68177032 0.17104048 43.19387817 48.43540192 -1.12960005 55.24396133 47.15559769 -2.025944233
		 55.24395752 45.5817337 -2.025944233 19.99638939 48.91519165 1.23454487 19.44127655 46.36865997 7.48508644
		 31.87247849 46.36865616 7.94434643 43.93266296 46.36865997 7.15207195 53.58942413 46.36867142 2.52263331
		 57.0389328 46.36865997 -2.099214554 52.87564087 46.36867142 -6.17825317 42.55174255 46.36865997 -9.30893803
		 30.57129669 46.36865997 -7.33111382 18.99542236 46.36865997 -4.59649324 -11.75802898 6.071452618 11.76374912
		 11.75802708 6.071452618 11.76374912 -9.45568562 72.69384003 10.081136703 9.4556818 72.69384003 10.081136703
		 -9.45568562 72.69384003 -8.022335052 9.4556818 72.69384003 -8.022335052 -11.75802898 6.018058777 -10.94976521
		 11.75802708 6.018058777 -10.94976521 -14.23800659 33.60491562 15.6186533 14.23800182 33.60491562 15.6186533
		 13.31194782 33.60490417 -12.29646015 -13.31194973 33.60490417 -12.29646015 -7.6367116 6.012224197 14.070345879
		 -7.19876003 5.68767166 -13.24404335 -7.5915947 33.60490417 -14.38772011 -6.0097427368 72.69384766 -9.95886326
		 -6.0097427368 72.69384766 12.017669678 -9.012252808 33.60491562 19.7488842 -7.7742507e-06 6.6613431 14.98603439
		 -7.7742507e-06 6.030326366 -14.17204952 -7.0608885e-06 33.60490417 -15.92136478 -8.4677395e-06 72.69384766 -11.044197083
		 -8.4677395e-06 72.69384766 13.10299492 -7.4173595e-06 33.60491562 21.86433983 7.63670683 6.012224197 14.070345879
		 7.19875383 5.68767166 -13.24404335 7.59158945 33.60490417 -14.38772011 6.0097379684 72.69384766 -9.95886326
		 6.0097379684 72.69384766 12.017669678 9.012248039 33.60491562 19.7488842 -11.48443508 72.69384766 6.82081938
		 -6.35422039 76.27532959 6.74620295 -8.8729457e-06 76.27532959 7.83106422 6.35421562 76.27532959 6.74620295
		 11.48443317 72.69384766 6.82081938 17.98454475 33.60491562 9.45545387 14.30561447 6.047056675 7.23866796
		 8.49767303 4.56679535 7.23866796 -7.7742507e-06 5.81809473 7.23866796 -8.4976778 4.56679535 7.23866796
		 -14.30561638 6.047056675 7.23866796 -17.98454475 33.60491562 9.45545387 -12.84598923 72.69384766 1.029407978
		 -7.66946793 76.27532959 1.029408097 -8.8729457e-06 77.33612061 1.029408336 7.66946363 76.27532959 1.029408097
		 12.84598732 72.69384766 1.029407978;
	setAttr ".vt[332:497]" 19.050983429 33.60491562 -0.25328046 15.14939213 6.21293974 0.40699807
		 -7.7742507e-06 5.39561987 0.40699843 -15.14939404 6.21293974 0.40699807 -19.050981522 33.60491562 -0.25328034
		 -11.48443508 72.69384766 -4.76201153 -6.22541189 76.27532959 -4.60215902 -8.8729457e-06 76.27532959 -5.7722578
		 6.22540808 76.27532959 -4.60215902 11.48443317 72.69384766 -4.76201153 17.36724091 33.60491562 -7.66607332
		 14.30561447 6.17571068 -6.42468166 8.10135269 4.56679535 -6.42468166 -7.7742507e-06 5.55838108 -6.42468166
		 -8.10135841 4.56679535 -6.42468166 -14.30561638 6.17571068 -6.42468166 -17.367239 33.60491562 -7.66607332
		 -7.8491103e-06 46.48395538 -14.80310345 7.28244591 46.48395538 -13.3611784 12.35468006 46.48395538 -11.073562622
		 15.61140251 46.48395538 -7.071582794 16.66597939 46.48395538 8.69705772 12.85670471 46.48395538 13.15773964
		 7.70307589 46.48395538 16.727005 -8.0216214e-06 46.48395538 18.038339615 -7.70307827 46.48395538 16.727005
		 -12.85670662 46.48395538 13.15773964 -16.66597939 46.48395538 8.69705772 -15.61140442 46.48395538 -7.071582794
		 -12.35468006 46.48395538 -11.073562622 -7.28245068 46.48395538 -13.3611784 12.89422703 9.38925266 -12.44137573
		 -12.89422894 9.38925266 -12.44137573 -15.99385548 9.38926029 -7.30085945 -17.026351929 9.38926029 0.59577012
		 -16.036817551 9.38926029 8.42145634 -13.23389721 9.38926029 13.68795872 -8.09373951 9.38926029 16.75562096
		 -7.9536421e-06 9.38926029 18.33402443 8.093733788 9.38926029 16.75562096 13.23389435 9.38926029 13.68795872
		 16.036817551 9.38926029 8.42145634 17.026353836 9.38926029 0.59577036 15.99385357 9.38926029 -7.30085945
		 16.62064934 12.65061951 -7.65045309 13.28778934 12.65061188 -12.88734818 -13.28779221 12.65061188 -12.88734818
		 -16.62064743 12.65061951 -7.65045309 -17.7355175 12.65061951 0.50992584 -16.7010231 12.65061951 8.92135429
		 -14.12300682 12.65061951 14.44093323 -8.30699635 12.65061951 18.2017765 -7.9734182e-06 12.65061951 19.80629539
		 8.30699062 12.65061951 18.2017765 14.12300491 12.65061951 14.44093323 16.70102119 12.65061951 8.92135429
		 17.7355175 12.65061951 0.50992584 13.63877296 16.48475647 -13.28609467 17.13473129 16.48477936 -7.94364929
		 18.30659103 16.48477936 0.44458362 17.23678589 16.48477936 9.051496506 14.44550514 16.48477936 15.036458015
		 8.65317249 16.48477936 19.047182083 -8.0784985e-06 16.48477936 20.66480637 -8.65318012 16.48477936 19.047182083
		 -14.44550896 16.48477936 15.036458015 -17.23678589 16.48477936 9.051496506 -18.30659103 16.48477936 0.44458351
		 -17.1347332 16.48477936 -7.94364929 -13.63877487 16.48475647 -13.28609467 10.63973427 67.58625793 13.76534843
		 5.9721899 67.58625793 16.2864418 -8.5863448e-06 67.58625793 17.54674721 -5.97219467 67.58625793 16.2864418
		 -10.63973522 67.58625793 13.76534843 -13.60903549 67.58625793 7.59602022 -15.33268929 67.58625793 1.031385541
		 -13.52967167 67.58625793 -5.99038363 -10.90861416 67.58625793 -9.71049404 -6.22008562 67.58625793 -12.21579742
		 -8.5695337e-06 67.58625793 -13.47020817 6.22007895 67.58625793 -12.21579742 10.90861225 67.58625793 -9.71049404
		 13.52966976 67.58625793 -5.99038363 15.33268738 67.58625793 1.031385541 13.60903358 67.58625793 7.59602022
		 12.036053658 57.20291138 13.76236248 15.61661911 57.20291138 8.13948631 17.080347061 57.20291138 1.025368571
		 15.14961147 57.20291138 -6.72751522 12.10003757 57.20291138 -10.87276363 7.014839172 57.20291138 -13.45030975
		 -8.7677172e-06 57.20291138 -14.91649342 -7.014844894 57.20291138 -13.45030975 -12.10003948 57.20291138 -10.87276363
		 -15.14961338 57.20291138 -6.72751522 -17.080347061 57.20291138 1.025368333 -15.61662102 57.20291138 8.13948631
		 -12.036053658 57.20291138 13.76236248 8.42744923 40.55766296 18.15180016 13.81802368 40.55766296 14.31144905
		 17.4881115 40.55766296 8.53886127 18.50815964 40.55766296 0.60586429 16.81345367 40.55766296 -7.0038952827
		 12.8111124 40.55765533 -11.45387363 7.52150822 40.55765533 -13.71518993 -7.9331567e-06 40.55765533 -15.15218258
		 -7.52151251 40.55765533 -13.71518993 -12.81111431 40.55765533 -11.45387363 -16.81345558 40.55766296 -7.0038952827
		 -18.50815964 40.55765915 0.60586381 -17.4881115 40.55766296 8.53886127 -13.81802654 40.55766296 14.31144905
		 -8.42745399 40.55766296 18.15180016 -8.0216232e-06 40.55766296 19.6568222 18.94157791 24.46081924 0.0026670396
		 17.50251961 24.46081924 -7.75826454 13.66385841 24.4608078 -12.72615719 7.52923822 24.4608078 -14.65009117
		 -7.755496e-06 24.4608078 -16.22455025 -7.5292449 24.4608078 -14.65009117 -13.66386223 24.4608078 -12.72615719
		 -17.5025177 24.46081924 -7.75826454 -18.94157791 24.46081924 0.0026669875 -17.85107231 24.46081924 9.47485352
		 -14.54854298 24.46081924 15.70294666 -9.22353172 24.46081924 19.8108139 -8.0275113e-06 24.46081924 21.59563637
		 9.22352695 24.46081924 19.8108139 14.54854202 24.46081924 15.70294666 17.8510704 24.46081924 9.47485352
		 4.77023745 4.99818039 -3.0088415146 4.01845789 4.87044525 0.40699843 4.057676792 4.9749794 4.03801775
		 8.49767303 4.96403217 4.22468185 12.33311749 5.10012817 3.96089053 12.12716103 5.10012817 0.40699825
		 11.53714943 5.10012817 -3.0088415146 8.29951286 5.031570435 -3.74161148 -4.77024794 4.99818039 -3.0088415146
		 -4.018468857 4.87044525 0.40699843 -4.057687759 4.9749794 4.03801775 -8.4976778 4.96403217 4.22468185
		 -12.33312035 5.10012817 3.96089053 -12.12716484 5.10012817 0.40699825 -11.53715324 5.10012817 -3.0088415146
		 -8.29951763 5.031570435 -3.74161148 17.53723145 46.4734726 7.77833223 16.98403549 46.4229126 -4.88111448
		 17.55433464 48.37817383 6.83009243 18.34491348 49.36906052 1.49800682 17.12954903 48.38153839 -4.55629396
		 -17.53723335 46.4734726 7.77833223 -16.98403358 46.4229126 -4.88111496 -18.34491539 49.36906052 1.4980067
		 -17.12954903 48.38153839 -4.55629396 -17.55434227 48.37817383 6.83009243 7.87357283 56.96275711 16.80500031
		 6.92759752 58.15427399 17.25297928 3.81815195 59.92506409 18.24876213 -8.924927e-06 61.91457367 18.66641235
		 -3.81825709 59.9250946 18.24872971 -6.92628384 58.15390015 17.25109673 -7.86868286 56.96205521 16.7989006
		 7.15300703 55.70540237 17.21933937 4.26543045 54.91493988 18.67404747;
	setAttr ".vt[498:663]" -7.14989758 55.70505142 17.21577072 -4.26332855 54.91456604 18.66977692
		 2.8819733e-05 54.86477661 19.23919106 -2.11661053 52.37269974 -16.6146431 -2.017203331 52.11299133 -17.079315186
		 -1.69627857 52.46799469 -17.33274841 -1.48506832 52.83226776 -17.36307526 -1.34863758 53.43270874 -17.0012359619
		 -1.44804192 53.69242096 -16.53656197 -1.76896763 53.33741379 -16.28313446 -2.079506874 52.69750214 -16.34752274
		 -7.18450642 53.086196899 -18.54268837 -5.9603281 53.36375427 -20.63410187 -5.18798542 55.062080383 -20.54581833
		 -5.31230831 56.93325043 -19.7810955 -6.26995945 57.77510834 -18.80752182 -6.53648853 56.65569687 -17.68968201
		 -6.91923809 54.66957092 -17.58811569 -15.80178356 56.63860321 -23.047189713 -14.51902676 56.92943192 -25.23868561
		 -13.5375452 59.57250214 -24.93080711 -13.7354517 62.018547058 -24.10466957 -14.64692783 62.85128021 -23.037212372
		 -15.018212318 61.72771454 -21.91317749 -15.35163975 59.16120529 -21.83156586 -22.71352005 61.81600189 -26.67075157
		 -21.65879059 62.055130005 -28.47267532 -22.06546402 64.09702301 -28.94736862 -22.93146133 66.11671448 -28.67860794
		 -23.97110748 66.95726776 -27.95008469 -23.98618317 65.87757874 -26.87668228 -23.5570755 63.75884247 -26.39905548
		 -24.86306381 63.53943253 -27.80099106 -23.89504242 63.75890732 -29.45477676 -26.57629395 66.38658142 -30.80099869
		 -28.47305679 68.19652557 -31.19280624 -29.60700607 69.18045044 -30.95394516 -29.1374855 68.045890808 -30.057668686
		 -27.65232849 66.1426239 -28.96267891 -21.78761673 61.93344116 -28.34919548 -14.96865749 56.50471878 -24.80770683
		 -6.67103291 52.69242477 -19.95288658 -6.87422085 52.6463623 -19.60574722 -15.60548496 56.3603363 -23.71974945
		 -22.65727615 61.73627472 -26.86344337 -2.15531445 52.25764847 -16.57139778 -2.030674934 51.96134186 -17.1073246
		 -6.93968296 52.42786407 -19.59794044 -7.33686543 52.91232681 -18.50844193 -1.66512394 52.36878586 -17.40884209
		 -5.94641972 53.21260834 -20.79502487 -6.67182827 52.48858261 -20.055530548 -1.40931225 52.82766724 -17.43857956
		 -5.031949043 55.047092438 -20.6547699 -1.25894833 53.52503586 -17.020462036 -5.19308567 57.115448 -19.83325958
		 -1.38195229 53.8190155 -16.4810791 -6.11351871 57.95591354 -18.69195938 -1.75154972 53.41335297 -16.1788826
		 -6.58081341 56.83359909 -17.54573059 -2.10637188 52.66963196 -16.24770737 -6.96498966 54.63173294 -17.42048454
		 -15.7134161 56.15871811 -23.73730469 -15.91566563 56.46052551 -22.98250198 -15.014332771 56.31724548 -24.93169594
		 -14.51599216 56.78794479 -25.40933228 -13.4659338 59.59983826 -25.082273483 -13.64973354 62.20689392 -24.18253517
		 -14.59552097 63.099067688 -22.97423553 -15.0019578934 61.85726547 -21.73180199 -15.41709423 59.13132095 -21.67512321
		 -22.79058075 61.55306244 -26.89474297 -22.43480301 61.31721497 -26.42763901 -21.85832977 61.76303864 -28.48434258
		 -21.22270584 61.55134583 -28.42846298 -22.20569611 64.20539093 -29.19526672 -22.85211563 66.29051971 -28.76516914
		 -24.14461136 67.30383301 -28.0056552887 -23.77545547 65.89894867 -26.56978607 -23.64199829 63.70862579 -26.24881935
		 -25.0095672607 63.37656403 -27.776577 -23.92812729 63.62175369 -29.62412643 -26.52243042 66.39647675 -30.97034454
		 -28.38011169 68.36476135 -31.27330017 -29.54862213 69.44259644 -30.88497925 -29.17986679 68.18344879 -29.90697861
		 -27.7724762 66.11306763 -28.83473969 -1.7387495 52.79728699 -16.82551575 -1.76108074 52.8237381 -16.83507538
		 2.11660767 52.37269592 -16.6146431 2.017201424 52.11299133 -17.079317093 1.69627666 52.46799469 -17.33274651
		 1.48506737 52.83226776 -17.36307526 1.34863663 53.43270874 -17.0012359619 1.44804192 53.69242096 -16.53656387
		 1.76896667 53.33740997 -16.28313637 2.079502106 52.69749832 -16.34752464 7.18450356 53.086204529 -18.54268646
		 5.96032429 53.36375427 -20.63410378 5.18798447 55.062084198 -20.54582024 5.3123045 56.93324661 -19.7810955
		 6.26995945 57.77510834 -18.80752373 6.53648615 56.65569687 -17.68968201 6.91923475 54.66957092 -17.58811569
		 15.80177975 56.63860703 -23.04719162 14.51902103 56.92943573 -25.23868561 13.53754234 59.57249832 -24.93080902
		 13.73544979 62.018547058 -24.10467148 14.64692402 62.85128403 -23.037214279 15.018209457 61.72771835 -21.91317749
		 15.35163403 59.16120529 -21.83156586 22.71352005 61.81600571 -26.67075157 21.65878487 62.055130005 -28.47267532
		 22.065460205 64.09703064 -28.94737244 22.93145752 66.11671448 -28.67860794 23.97110939 66.95726776 -27.95009232
		 23.98617935 65.87758636 -26.87667847 23.55707169 63.75884247 -26.39905739 24.86306381 63.53943634 -27.80099106
		 23.89504242 63.7589035 -29.45478249 26.57629013 66.38658905 -30.80100441 28.47305679 68.1965332 -31.19281006
		 29.60699272 69.18045044 -30.95394707 29.13747787 68.045890808 -30.057666779 27.65233231 66.14261627 -28.96268272
		 21.78761482 61.93344498 -28.34919357 14.96865463 56.5047226 -24.80770683 6.67103195 52.69242477 -19.95288658
		 6.87421942 52.64636612 -19.60574722 15.60548401 56.36033249 -23.71975136 22.65727615 61.73628235 -26.86344147
		 2.15531063 52.25765228 -16.57139587 2.030673027 51.96134186 -17.10732651 6.93967962 52.42786026 -19.59794235
		 7.3368659 52.91232681 -18.50844193 1.66512012 52.36878586 -17.40884018 5.94642162 53.21261215 -20.79502487
		 6.67182589 52.48858643 -20.055528641 1.40931129 52.82766724 -17.43858337 5.031947136 55.047088623 -20.6547699
		 1.25894451 53.52503204 -17.020462036 5.19308472 57.11545181 -19.83325958 1.38195229 53.81900787 -16.4810791
		 6.11351585 57.95590973 -18.6919632 1.75154495 53.41335678 -16.1788826 6.58081293 56.83359528 -17.5457325
		 2.10636806 52.66963196 -16.24770546 6.96498585 54.63173676 -17.42048264 15.71341324 56.15871811 -23.73730659
		 15.91566658 56.46052933 -22.98250389 15.014326096 56.31723785 -24.93169594 14.51599312 56.78794098 -25.409338
		 13.46593285 59.59983444 -25.082277298 13.64972878 62.20689774 -24.18253517 14.59551907 63.099063873 -22.97423935
		 15.001955986 61.85726166 -21.73180389 15.41709614 59.13132477 -21.67512512 22.79058075 61.55306244 -26.89474297
		 22.43479919 61.3172226 -26.42763901 21.85832787 61.76304626 -28.48434067 21.22270393 61.55134964 -28.4284668
		 22.20569229 64.20539093 -29.19526863 22.85211563 66.29051971 -28.76517296 24.14460754 67.30384064 -28.005657196
		 23.77545166 65.89894867 -26.56978798 23.64199829 63.70862961 -26.24881935;
	setAttr ".vt[664:829]" 25.0095672607 63.37656403 -27.77658081 23.9281292 63.62174988 -29.62413025
		 26.52242279 66.39648438 -30.97034264 28.38010406 68.36476135 -31.27330399 29.54861832 69.44259644 -30.88498306
		 29.17987061 68.18345642 -29.90698051 27.77248383 66.11307526 -28.8347435 1.73874664 52.7972908 -16.82551384
		 1.76107883 52.82373428 -16.83507538 1.8933801e-07 35.52902222 22.26082993 1.8933801e-07 35.56044769 23.31363297
		 1.8933801e-07 51.51533127 22.19868469 1.8933801e-07 51.48391724 21.14589119 8.60917282 40.49371719 19.36015511
		 9.32243347 52.38165283 19.80118561 8.60917282 40.46226883 18.3073616 9.32243347 52.35022736 18.74838638
		 -8.60917282 40.49371719 19.36015511 -9.32243347 52.38165283 19.80118561 -9.32243347 52.35022736 18.74838638
		 16.91123962 45.52328491 12.65692139 16.80796814 53.47069931 12.81984711 16.033037186 45.50250244 11.96059132
		 15.92510033 53.45007706 12.12826824 -16.80796814 53.47069931 12.81984711 -15.92510033 53.45007706 12.12826824
		 -16.91124344 45.52328873 12.65692329 19.63153076 48.99574661 5.77785301 20.081438065 54.21837234 1.87234116
		 18.71645164 48.9993782 5.89964581 18.91837502 54.22200012 1.99413109 -20.081441879 54.21837234 1.87234116
		 -18.91837502 54.22200012 1.99413109 -19.63153648 48.99574661 5.77785301 -8.60917282 40.48365784 18.29937744
		 -16.027965546 45.52392578 11.9559288 -18.67752266 49.021636963 5.90305901 16.79076767 54.29580688 -6.43568802
		 16.30545235 49.55711746 -5.81566048 17.95383072 54.29218674 -6.55748177 17.46852112 49.55350494 -5.93745232
		 -17.95383835 54.29218674 -6.55748177 -17.46852303 49.55350876 -5.93744469 -16.79076767 54.29580688 -6.43568802
		 -16.26652336 49.57939529 -5.81223488 12.59387302 54.42839432 -11.8161068 12.59387398 50.15136337 -11.68849945
		 13.36957169 54.40486526 -12.6047554 13.36956596 50.12783813 -12.47714996 -13.36957264 54.40486145 -12.60475922
		 -13.36957264 50.12784195 -12.47714615 -12.59387302 54.42839432 -11.8161068 -12.56791115 50.17429733 -11.66276169
		 7.82963085 54.27242661 -14.037017822 7.82963085 50.97119141 -13.90690994 8.074241638 54.24171829 -15.06659317
		 8.074240685 50.94048309 -14.93648148 -8.074241638 54.24171829 -15.0666008 -8.074248314 50.94049454 -14.93648148
		 -7.82963085 54.27242661 -14.037017822 -7.82144785 50.99437332 -13.87310028 2.61747861 54.31415176 -15.154953
		 2.61747789 51.52629852 -15.023529053 2.8620894 54.28344345 -16.18452835 2.86208749 51.49559021 -16.053104401
		 -2.86208844 54.28344345 -16.18453598 -2.86209464 51.49560165 -16.053104401 -2.61747813 54.31415176 -15.154953
		 -2.60929418 51.54947662 -14.98971939 -16.28499222 49.080669403 12.0071678162 -8.056442261 47.84939957 17.77657509
		 1.8933801e-07 47.19649506 20.18550873 8.056442261 47.84939957 17.77657509 16.28499222 49.080665588 12.0071649551
		 -15.52787113 49.15572357 11.5838871 -8.056442261 47.82759094 16.72018433 1.8933801e-07 47.16507721 19.13271332
		 8.056442261 47.81796646 16.72377777 15.52787113 49.14291 11.5879221 19.39107704 51.19158554 3.64192581
		 -19.39108086 51.19158554 3.64192581 -17.46020699 51.57756805 -6.033369064 -13.16810799 51.98603058 -12.2341404
		 -7.92782068 52.51971436 -14.76533127 -2.86209154 52.98583221 -15.81421661 2.86208844 52.98582458 -15.81420898
		 7.92781639 52.51970673 -14.76532745 13.16810226 51.98603058 -12.2341404 17.46020317 51.57756805 -6.033372879
		 18.3523407 51.23313522 3.76258469 16.3056469 51.61909485 -5.91646004 12.39240932 52.047473907 -11.44662285
		 7.68320608 52.58833313 -13.73688126 2.61747837 53.054450989 -14.78577042 -2.61372137 53.065090179 -14.77024841
		 -7.67945004 52.59897614 -13.72136307 -12.3804903 52.058002472 -11.43480873 -16.28777504 51.62932205 -5.91489029
		 -18.33446884 51.24335098 3.76415157 -1.64231706 51.22265244 -14.87017155 1.64231706 51.22265244 -14.87017155
		 -1.66788185 54.44869232 -14.87017155 1.66788185 54.44869232 -14.87017155 -1.66788185 54.44869232 -18.012853622
		 1.66788185 54.44869232 -18.012853622 -1.64231706 51.22265244 -18.012853622 1.64231706 51.22265244 -18.012853622
		 1.5987212e-14 50.82685471 -14.87017155 1.5987212e-14 50.94807434 -18.012853622 1.5987212e-14 54.95178986 -18.012853622
		 1.5987212e-14 54.95178986 -14.87017155 -2.25367641 52.9499321 -14.87017155 1.5987212e-14 52.9499321 -14.31710243
		 2.25367641 52.9499321 -14.87017155 2.042884111 52.9499321 -18.012853622 1.5987212e-14 52.9499321 -18.56592369
		 -2.042884111 52.9499321 -18.012853622 -1.8059876 54.76888657 -16.44151306 1.5987212e-14 55.37947083 -16.44151306
		 1.8059876 54.76888657 -16.44151306 2.4718976 52.9499321 -16.44151306 1.77496111 50.85363388 -16.44151306
		 1.5987212e-14 50.39917755 -16.44151306 -1.77496111 50.85363388 -16.44151306 -2.4718976 52.9499321 -16.44151306
		 17.18454552 48.87826157 6.90429401 18.013271332 49.81299591 1.471223 16.75736809 48.88143539 -4.67933369
		 16.51371002 46.42637253 -5.18320704 17.024757385 44.71427536 -4.49672174 18.20940971 44.71149445 0.85756207
		 17.6309166 44.71499252 7.37878942 17.085920334 46.47406769 7.92326403 -17.18455505 48.87826157 6.90429401
		 -17.085922241 46.47406769 7.92326403 -17.63091278 44.71499252 7.37878942 -18.20940971 44.71149445 0.85756153
		 -17.024751663 44.71427536 -4.49672174 -16.51370811 46.42637253 -5.18320751 -16.75736809 48.88143539 -4.67933369
		 -18.013273239 49.81299591 1.47122288 17.97209358 48.12117386 6.84401321 17.96931839 46.45444107 7.72508669
		 18.31403351 45.013660431 7.23604584 18.86462021 45.033454895 0.93578017 17.75258827 45.04108429 -4.34738636
		 17.43561363 46.41305923 -4.82943439 17.55572128 48.13395309 -4.51940775 18.71796417 49.15311432 1.45016897
		 -17.9720993 48.12117386 6.84401321 -18.71796417 49.15311432 1.45016873 -17.55571938 48.13395309 -4.51940775
		 -17.43561172 46.41305923 -4.82943535 -17.75258255 45.04108429 -4.34738636 -18.8646183 45.033454895 0.93577969
		 -18.31402969 45.013660431 7.23604584 -17.96931839 46.45444107 7.72508669 18.92271614 47.82472229 6.89249516
		 18.90385437 46.38816071 7.5396471 18.98983765 45.18404388 6.9816184 19.5356102 45.28569412 1.11906683
		 18.56978989 45.30963516 -4.35183716 18.43802834 46.37875366 -4.64944935 18.53564835 47.87029266 -4.39094353
		 19.51288414 48.9996376 1.28356409 -18.92271423 47.82472229 6.89249516;
	setAttr ".vt[830:995]" -19.51287651 48.9996376 1.28356397 -18.53563881 47.87029266 -4.39094353
		 -18.43802261 46.37875366 -4.64945078 -18.56977844 45.30963516 -4.35183716 -19.53560448 45.28569412 1.1190666
		 -18.98983383 45.18404388 6.9816184 -18.90384674 46.38816071 7.5396471 20.013372421 47.6938591 6.91496372
		 20.0014133453 46.36865997 7.49386024 20.013380051 45.23706055 6.91496372 20.28807259 45.35250854 1.21422708
		 19.61985588 45.38857269 -4.40166044 19.54158783 46.36866379 -4.64873695 19.61986351 47.74802399 -4.40166044
		 20.53609848 48.91072845 1.21422708 -20.013362885 47.6938591 6.91496372 -20.53609085 48.91073227 1.21422696
		 -19.61985016 47.74802399 -4.40166044 -19.54158592 46.3686676 -4.64873886 -19.61984825 45.38857269 -4.40166044
		 -20.28806114 45.3525238 1.21422696 -20.013376236 45.23704529 6.91496372 -20.0013961792 46.36865997 7.49386024
		 30.12841606 47.49921799 7.28180647 30.2266407 46.36865997 7.88618803 30.18082047 45.36532593 7.28180647
		 29.99207687 45.011940002 0.27862999 29.11343765 45.3848877 -6.57096195 29.03068924 46.36866379 -6.98481607
		 29.061031342 47.50621033 -6.57096195 29.68398285 48.71133423 0.30571699 -30.12841034 47.49921417 7.28180647
		 -29.68397141 48.71133041 0.30571637 -29.061021805 47.50621033 -6.57096195 -29.030683517 46.36865997 -6.98482227
		 -29.11343002 45.38488388 -6.57096195 -29.99206924 45.011940002 0.27862936 -30.18081284 45.36532593 7.28180647
		 -30.2266407 46.36865997 7.88618708 33.4548378 47.46305084 7.25724459 33.44998169 46.36865616 7.8596859
		 33.48384094 45.36584854 7.25724459 32.8421936 44.9588623 0.0074357167 32.29352951 45.36584854 -7.14899254
		 32.2445488 46.36865616 -7.60519981 32.264534 47.46305084 -7.14899254 32.85543442 48.64931107 0.0027079955
		 -33.45483017 47.46305084 7.25724459 -32.8554306 48.64931107 0.0027072951 -32.26452255 47.46305084 -7.14899254
		 -32.24454498 46.36865997 -7.60520554 -32.2935257 45.36584854 -7.14899254 -32.84218597 44.9588623 0.0074350163
		 -33.48383331 45.36584473 7.25724459 -33.44998169 46.36865616 7.85968399 42.46263123 47.42081451 6.65144444
		 42.50959396 46.36865997 7.21198845 42.48860168 45.25897598 6.65144444 41.79473877 44.87613297 -0.99450111
		 41.16519928 45.25897598 -8.53816128 41.15268707 46.36866379 -9.087393761 41.13922882 47.4208107 -8.53816128
		 41.79620361 48.46175385 -0.997572 -42.4626236 47.42081451 6.65144444 -41.79620361 48.46175385 -0.99757284
		 -41.13922882 47.4208107 -8.53816128 -41.15268707 46.36866379 -9.087395668 -41.16519928 45.25897598 -8.53816128
		 -41.79473495 44.87613297 -0.99450195 -42.48860168 45.25897598 6.65144444 -42.50959396 46.36865997 7.21198463
		 45.1509285 47.37828064 5.97765255 45.36045456 46.3686676 6.48892307 45.11798096 45.29164124 5.97765255
		 44.30207062 44.9241333 -1.2016505 43.87143326 45.29163742 -8.32070351 44.076255798 46.3686676 -8.85331249
		 43.9043808 47.37828064 -8.32070351 45.024280548 48.2547493 -1.25357556 -45.15091705 47.37828445 5.97765207
		 -45.024276733 48.2547493 -1.2535764 -43.9043808 47.37828064 -8.32070351 -44.076255798 46.3686676 -8.85331249
		 -43.87143707 45.29164505 -8.32070351 -44.30207062 44.92412567 -1.20165122 -45.11797333 45.29163742 5.97765207
		 -45.36044693 46.36866379 6.48891926 -12.48217964 51.3758316 13.43367577 -16.18707657 51.3758316 8.44259548
		 -15.40065384 51.3758316 -6.91455841 -7.16032171 51.3758316 -13.40185547 -12.23846817 51.3758316 -10.98192215
		 -17.81597519 51.3758316 1.37693262 -6.79145193 51.3758316 17.85430145 -8.26834e-06 51.3758316 -14.85485172
		 7.16031647 51.3758316 -13.40185547 12.48217964 51.3758316 13.43367577 16.18707657 51.3758316 8.44259548
		 15.40065193 51.3758316 -6.91455841 12.23846722 51.3758316 -10.98192215 17.81597519 51.3758316 1.37693262
		 6.79275894 51.3758316 17.85672951 1.3482637e-05 51.3758316 18.73927689 7.068232059 12.65061188 -24.085447311
		 7.64521217 16.48475647 -20.13476753 11.433815 16.29713249 -15.54383278 10.84703922 12.47254944 -16.37752914
		 -11.43381786 16.29713249 -15.54383278 -10.84704304 12.47254944 -16.37753105 -7.64521694 16.48475647 -20.13476753
		 -7.068238735 12.65061188 -24.085447311 -7.93447e-06 16.48475647 -21.70618439 -7.8599769e-06 12.65061188 -26.15162468
		 6.86193562 6.87391376 -19.097602844 6.053697586 9.84975433 -30.49008942 10.15624142 9.058828354 -17.30083847
		 9.81053352 7.52564001 -17.51461029 -8.0330319e-06 6.65753841 -20.2616024 -7.8929988e-06 9.68597507 -32.097984314
		 -6.86194229 6.87391376 -19.097602844 -6.053703785 9.84975433 -30.49008942 -10.15624332 9.058828354 -17.30083847
		 -9.81053638 7.52564049 -17.51461029 7.59015799 20.61456108 -16.47428513 10.58761215 19.30859947 -15.21720219
		 -7.9427236e-06 20.98799515 -17.94406319 -7.59016466 20.61456108 -16.47428513 -10.58761597 19.30859947 -15.21720314
		 15.55413055 2.079115391 6.58383799 12.77813625 2.42191339 7.50362587 10.6778183 2.29034638 6.72796822
		 8.40801239 2.42191339 7.73952723 6.099951267 2.23753881 6.84089994 4.037890911 2.42191339 7.50362587
		 1.26189828 2.079115391 6.58383799 0.72908449 1.039557695 6.56889009 1.26189828 0 6.58383799
		 3.64670277 0 6.53177643 6.031507492 0 6.47971344 8.40801144 0 6.4647212 10.78451538 0 6.47971344
		 13.16932487 0 6.53177643 15.55413055 0 6.58383799 16.086946487 1.039557695 6.56889009
		 -15.55413151 2.079115391 6.58383799 -12.77813911 2.42191339 7.50362587 -10.67782021 2.29034638 6.72796822
		 -8.40801334 2.42191339 7.73952723 -6.099953651 2.23753881 6.84089994 -4.037893295 2.42191339 7.50362587
		 -1.26189983 2.079115391 6.58383799 -0.72908616 1.039557695 6.56889009 -1.26189995 0 6.58383799
		 -3.64670444 0 6.53177643 -6.031509399 0 6.47971344 -8.40801334 0 6.4647212 -10.78451633 0 6.47971344
		 -13.16932774 0 6.53177643 -15.55413246 0 6.58383799 -16.086946487 1.039557695 6.56889009
		 15.61264992 2.079115391 7.81031847 16.12681198 1.033006549 7.92281723 15.61264992 0 7.81031847
		 13.29391289 0 7.9707613 10.98062229 0 7.88043308 11.040681839 1.025588989 11.21474934;
	setAttr ".vt[996:1069]" 10.97517204 2.079115391 7.81031847 13.29391289 2.079115391 9.58649254
		 -15.61265087 2.079115391 7.81031847 -13.29391575 2.079115391 9.58649254 -10.97517395 2.079115391 7.81031847
		 -11.040685654 1.025588989 11.21474934 -10.98062515 0 7.88043308 -13.29391575 0 7.9707613
		 -15.61265087 0 7.81031847 -16.12681198 1.033006549 7.92281723 10.74495125 2.079115391 7.87609959
		 10.87744808 1.045091629 11.29159927 10.74495125 0 7.87610054 8.40801144 0 8.055661201
		 6.071071625 0 7.87610054 5.93857479 1.04509151 11.29159927 6.071071625 2.079115391 7.87609959
		 8.40801144 2.079115391 9.6792717 -10.74495316 2.079115391 7.87609959 -8.40801334 2.079115391 9.6792717
		 -6.071073532 2.079115391 7.87609959 -5.9385767 1.04509151 11.29159927 -6.071073532 0 7.87610054
		 -8.40801334 0 8.055661201 -10.74495316 0 7.87610054 -10.87745094 1.045091629 11.29159927
		 5.80140018 2.079115391 7.98267746 5.74819994 1.021771193 11.31882286 5.79446077 0 8.071955681
		 3.51111293 0 8.18697166 1.22082508 0 7.98267746 0.71300364 1.031216025 8.12592316
		 1.22082508 2.079115391 7.98267746 3.51111293 2.079115391 9.75409603 -5.80140305 2.079115391 7.98267746
		 -3.51111507 2.079115391 9.75409603 -1.22082686 2.079115391 7.98267746 -0.7130053 1.031216025 8.12592316
		 -1.22082686 0 7.98267746 -3.51111507 0 8.18697166 -5.79446363 0 8.071955681 -5.74820185 1.021771193 11.31882286
		 25.10407257 48.81116486 0.76056486 24.33428764 47.62727737 -5.48489571 24.27994537 46.36866379 -5.8152523
		 24.36045265 45.38673401 -5.48489571 25.52690887 45.16864777 0.70913249 25.090465546 45.30110931 7.098145485
		 25.10735512 46.36865997 7.68976831 25.064292908 47.59666443 7.098145485 -25.10406303 48.81116486 0.76056451
		 -25.064285278 47.59666443 7.098145485 -25.10734558 46.36865997 7.68976784 -25.090459824 45.30110168 7.098145485
		 -25.52689934 45.1686554 0.70913213 -24.36044502 45.38673401 -5.48489571 -24.27994156 46.36866379 -5.81525612
		 -24.3342762 47.62727737 -5.48489571 37.43282318 48.55328751 -0.50940305 36.80809021 47.44142532 -7.86020184
		 36.80522919 46.36865997 -8.36403561 36.83553696 45.31113434 -7.86020184 37.31000137 44.91757584 -0.49258536
		 38.093986511 45.31113434 6.94709492 38.08821106 46.36865997 7.52808571 38.06653595 47.44142914 6.94709492
		 -37.43281937 48.55328751 -0.50940382 -38.06652832 47.44142914 6.94709492 -38.08821106 46.36865997 7.52808285
		 -38.093986511 45.31113434 6.94709492 -37.30999374 44.91757584 -0.49258614 -36.83553696 45.31113434 -7.86020184
		 -36.80522537 46.36865997 -8.36403942 -36.80808258 47.44142532 -7.86020184;
	setAttr -s 2160 ".ed";
	setAttr ".ed[0:165]"  63 80 1 80 81 1 81 19 1 63 19 1 83 84 1 84 67 1 67 5 1
		 5 83 1 65 987 1 66 7 1 7 100 1 65 1 1 82 989 1 82 3 1 89 93 1 70 2 1 4 89 1 55 983 1
		 56 9 1 8 984 1 55 8 1 87 88 1 88 57 1 57 10 1 87 10 1 53 72 1 72 73 1 22 73 1 53 22 1
		 42 985 1 43 13 1 12 986 1 42 12 1 85 86 1 86 44 1 44 14 1 85 14 1 48 76 1 76 77 1
		 27 77 1 48 27 1 15 78 1 16 79 1 64 18 1 81 1005 1 62 3 1 54 1035 1 54 21 1 73 1037 1
		 11 74 1 11 1030 1 52 11 1 71 23 1 24 75 1 49 1019 1 49 26 1 77 1021 1 47 15 1 61 975 1
		 3 974 1 61 30 0 5 31 1 30 103 0 67 68 1 68 31 0 51 979 1 11 978 1 51 33 0 57 58 1
		 58 34 0 10 34 1 2 980 1 32 91 0 4 35 1 46 977 1 15 976 1 46 29 0 44 45 1 45 28 0
		 14 28 1 60 61 1 30 38 1 60 38 1 31 39 1 38 104 1 68 69 1 69 39 1 50 51 1 33 37 1
		 50 37 1 58 59 1 59 36 1 34 36 0 32 40 1 40 90 1 35 41 1 37 46 1 29 37 1 45 36 1 28 36 1
		 9 43 1 8 42 1 86 87 1 10 44 1 34 45 0 33 46 0 11 47 1 24 48 1 75 76 1 25 49 1 32 51 0
		 40 50 1 2 52 1 23 53 1 71 72 1 0 55 1 20 54 1 6 56 1 6 94 1 4 57 1 88 89 1 35 58 0
		 41 59 1 29 61 0 37 60 1 15 62 1 16 63 1 79 80 1 12 65 1 17 64 1 13 66 1 84 85 1 14 67 1
		 28 68 0 36 69 1 0 70 1 20 71 1 72 54 1 73 21 1 74 8 1 75 25 1 76 49 1 77 26 1 78 12 1
		 79 17 1 80 64 1 18 81 1 1 82 1 83 7 1 66 84 1 13 85 1 43 86 1 9 87 1 56 88 1 89 6 1
		 90 41 1 91 35 0 92 4 1 93 981 1 94 982 1 95 56 1 96 9 1 97 43 1 98 13 1 99 66 1 100 988 1;
	setAttr ".ed[166:331]" 101 83 1 102 5 1 103 31 0 104 39 1 90 91 1 91 92 1 92 93 1
		 93 94 1 94 95 1 95 96 1 96 97 1 97 98 1 98 99 1 99 100 1 100 101 1 101 102 1 102 103 1
		 103 104 1 105 160 1 107 157 1 109 162 1 111 161 1 105 175 1 106 187 1 109 194 1 110 188 1
		 111 205 1 112 199 1 113 147 1 114 148 1 115 149 1 116 152 1 113 968 1 114 192 1 116 179 1
		 117 170 1 118 171 1 119 172 1 120 167 1 117 970 1 118 190 1 120 183 1 121 184 1 122 169 1
		 123 186 1 121 168 1 125 159 1 116 1022 1 127 178 1 128 158 1 125 176 1 129 180 1
		 130 154 1 120 1006 1 132 182 1 129 153 1 119 133 1 120 960 1 108 958 1 134 166 0
		 110 136 1 135 196 0 133 173 0 107 964 1 116 962 1 137 156 0 115 139 1 109 140 1 140 163 0
		 137 208 0 138 151 0 139 150 0 133 141 1 134 142 1 135 143 1 142 165 1 136 144 1 143 195 1
		 141 174 1 137 145 1 138 142 1 145 155 1 139 141 0 140 146 1 146 164 1 145 209 1 147 117 1
		 148 118 1 149 119 1 150 133 0 151 134 0 152 120 1 153 132 1 154 131 1 147 969 1 148 191 1
		 149 150 1 150 141 1 142 151 1 151 961 1 153 181 1 154 1009 1 155 142 1 156 138 0
		 157 116 1 158 127 1 159 126 1 160 113 1 161 114 1 162 115 1 163 139 0 164 141 1 155 156 1
		 156 963 1 158 177 1 159 1025 1 160 967 1 161 193 1 162 163 1 163 164 1 165 143 1
		 166 135 0 167 108 1 168 124 1 169 123 1 170 106 1 171 112 1 172 110 1 173 136 0 174 144 1
		 165 166 1 166 959 1 168 185 1 170 971 1 171 189 1 172 173 1 173 174 1 175 107 1 176 128 1
		 177 159 1 178 126 1 179 113 1 180 130 1 181 154 1 182 131 1 183 117 1 184 122 1 185 169 1
		 186 124 1 187 108 1 188 112 1 189 172 1 190 119 1 191 149 1 192 115 1 193 162 1 194 111 1
		 176 177 1 177 178 1 178 1023 1 180 181 1 181 182 1 182 1007 1 184 185 1 185 186 1
		 186 991 1;
	setAttr ".ed[332:497]" 187 973 1 188 189 1 189 190 1 190 191 1 191 192 1 192 193 1
		 193 194 1 194 206 1 195 144 1 196 136 0 197 110 1 198 188 1 199 972 1 200 171 1 201 118 1
		 202 148 1 203 114 1 204 161 1 205 966 1 206 965 1 207 109 1 208 140 0 209 146 1 195 196 1
		 196 197 1 197 198 1 198 199 1 199 200 1 200 201 1 201 202 1 202 203 1 203 204 1 204 205 1
		 205 206 1 206 207 1 207 208 1 208 209 1 210 233 0 211 230 0 212 214 0 213 215 0 214 232 0
		 215 231 0 216 210 0 217 211 0 210 218 0 216 219 0 214 220 0 212 221 0 213 230 1 218 226 0
		 219 227 0 220 228 0 221 229 0 218 219 1 220 221 1 221 234 1 222 211 0 223 217 0 224 215 0
		 225 213 0 222 223 1 224 225 1 225 236 1 226 222 0 227 223 0 228 224 0 229 225 0 226 227 1
		 228 229 1 229 235 1 231 217 0 230 231 1 232 216 0 233 212 0 232 233 1 234 218 1 233 234 1
		 235 226 1 234 235 1 236 222 1 235 236 1 236 230 1 254 916 1 255 238 1 238 909 1 243 254 1
		 257 912 1 258 244 1 244 911 1 257 242 1 256 257 1 242 249 1 249 256 1 244 248 1 248 910 1
		 241 250 1 250 914 1 253 884 1 243 893 1 246 253 1 258 896 1 259 245 1 245 879 1 245 247 1
		 247 878 1 259 864 1 260 240 1 240 847 1 251 846 1 251 240 1 252 852 1 246 861 1 252 239 1
		 248 243 1 247 246 1 249 238 1 255 256 1 250 237 1 237 915 1 239 251 1 237 255 1 256 250 1
		 241 257 1 261 279 1 265 281 1 261 903 1 262 901 1 263 275 1 264 843 1 265 274 1 266 273 1
		 267 885 1 267 278 1 268 907 1 268 272 1 269 875 1 270 853 1 269 271 1 270 277 1 271 270 1
		 272 267 1 271 876 1 273 262 1 272 908 1 274 261 1 273 280 1 274 904 1 275 264 1 275 844 1
		 276 263 1 279 262 1 280 274 1 281 266 1 282 268 1 283 269 1 284 264 1 276 838 1 277 870 1
		 278 902 1 279 280 1 280 281 1 281 906 1 282 890 1 283 858 1 285 297 1;
	setAttr ".ed[498:663]" 287 301 1 289 300 1 291 298 1 287 315 1 288 319 1 289 410 1
		 290 414 1 291 347 1 292 343 1 285 368 1 286 372 1 295 449 1 296 453 1 293 302 1 294 320 1
		 295 311 1 296 348 1 293 444 1 294 432 1 297 303 1 298 304 1 299 296 1 300 306 1 301 307 1
		 302 308 1 297 324 1 299 439 1 300 338 1 301 405 1 302 458 1 303 309 1 304 310 1 305 299 1
		 306 312 1 307 313 1 308 314 1 303 323 1 305 438 1 306 339 1 307 404 1 308 459 1 309 286 1
		 310 292 1 311 305 1 312 290 1 313 288 1 314 294 1 309 322 1 311 437 1 312 340 1 313 403 1
		 314 460 1 315 327 1 316 301 1 317 307 1 318 313 1 319 331 1 320 332 1 321 286 1 322 466 1
		 323 334 1 324 474 1 325 285 1 326 293 1 315 316 1 316 317 1 317 318 1 318 319 1 319 417 1
		 320 462 1 321 322 1 322 323 1 323 324 1 324 325 1 325 367 1 326 443 1 327 337 1 328 316 1
		 329 317 1 330 318 1 331 341 1 332 342 1 333 321 1 334 345 1 335 325 1 336 326 1 327 328 1
		 328 329 1 329 330 1 330 331 1 331 416 1 332 447 1 333 468 1 334 472 1 335 366 1 336 442 1
		 337 289 1 338 328 1 339 329 1 340 330 1 341 290 1 342 295 1 343 333 1 344 310 1 345 304 1
		 346 298 1 347 335 1 348 336 1 337 338 1 338 339 1 339 340 1 340 341 1 341 415 1 342 448 1
		 343 344 1 344 345 1 345 346 1 346 347 1 347 365 1 348 441 1 349 924 1 350 925 1 349 350 1
		 351 436 1 350 351 1 352 435 1 351 352 1 353 433 1 354 926 1 353 354 1 355 431 1 354 355 1
		 356 446 1 355 356 1 357 445 1 356 357 1 358 917 1 357 358 1 359 918 1 358 359 1 360 919 1
		 361 440 1 360 361 1 362 920 1 361 362 1 362 349 1 363 292 1 364 291 1 365 379 1 364 365 1
		 366 380 1 365 366 1 367 381 1 366 367 1 368 382 1 367 368 1 369 297 1 368 369 1 370 303 1
		 369 370 1 371 309 1 370 371 1 372 386 1 371 372 1 373 321 1 372 373 1;
	setAttr ".ed[664:829]" 374 333 1 373 374 1 375 343 1 374 375 1 375 363 1 376 375 1
		 377 363 1 376 377 1 378 364 1 379 400 1 378 379 1 380 399 1 379 380 1 381 398 1 380 381 1
		 382 397 1 381 382 1 383 369 1 382 383 1 384 370 1 383 384 1 385 371 1 384 385 1 386 393 1
		 385 386 1 387 373 1 386 387 1 388 374 1 387 388 1 388 376 1 389 377 1 390 376 1 389 390 1
		 391 388 1 390 391 1 392 387 1 391 392 1 393 461 1 392 393 1 394 385 1 393 394 1 395 384 1
		 394 395 1 396 383 1 395 396 1 397 457 1 396 397 1 398 456 1 397 398 1 399 455 1 398 399 1
		 400 454 1 399 400 1 401 378 1 400 401 1 402 288 0 402 403 1 403 404 1 404 405 1 406 287 0
		 405 406 1 407 315 1 406 407 1 408 327 1 407 408 1 409 337 1 408 409 1 410 426 1 409 410 1
		 411 300 1 410 411 1 412 306 1 411 412 1 413 312 1 412 413 1 414 422 1 413 414 1 415 421 1
		 414 415 1 416 420 1 415 416 1 417 419 1 416 417 1 417 402 1 418 402 1 419 927 1 418 419 1
		 419 420 1 421 928 1 420 421 1 422 929 1 421 422 1 423 413 1 422 423 1 424 412 1 423 424 1
		 425 411 1 424 425 1 426 921 1 425 426 1 427 409 1 426 427 1 428 408 1 427 428 1 429 407 1
		 428 429 1 430 406 1 429 430 1 431 314 1 432 354 1 431 432 1 433 320 1 432 433 1 434 332 1
		 433 434 1 435 342 1 434 435 1 436 295 1 435 436 1 437 350 1 436 437 1 438 349 1 437 438 1
		 439 362 1 438 439 1 440 296 1 439 440 1 441 360 1 440 441 1 441 442 1 443 359 1 442 443 1
		 444 358 1 443 444 1 445 302 1 444 445 1 446 308 1 445 446 1 446 431 1 447 391 1 448 390 1
		 447 448 1 449 389 1 448 449 1 450 311 1 449 450 1 451 305 1 450 451 1 452 299 1 451 452 1
		 453 401 1 452 453 1 454 348 1 453 454 1 455 336 1 454 455 1 456 326 1 455 456 1 457 293 1
		 456 457 1 458 396 1 457 458 1 459 395 1 458 459 1 460 394 1 459 460 1;
	setAttr ".ed[830:995]" 461 294 1 460 461 1 462 392 1 461 462 1 462 447 1 347 477 1
		 345 463 1 325 475 1 323 465 1 464 334 1 467 321 1 469 343 1 470 344 1 463 464 1 464 465 1
		 465 466 1 466 467 1 467 468 1 468 469 1 469 470 1 470 463 1 471 345 1 473 323 1 476 335 1
		 478 346 1 471 472 1 472 473 1 473 474 1 474 475 1 475 476 1 476 477 1 477 478 1 478 471 1
		 353 796 1 433 795 1 434 794 1 352 792 1 435 793 1 420 930 1 481 482 1 481 479 1 482 483 1
		 483 480 1 443 799 1 359 798 1 442 800 1 360 802 1 441 801 1 428 922 1 487 486 1 485 487 1
		 484 488 1 486 488 1 276 822 1 263 821 1 275 828 1 264 827 1 284 826 1 841 825 1 849 833 1
		 260 832 1 240 831 1 251 830 1 239 829 1 252 836 1 418 489 1 402 490 1 489 490 1 403 491 1
		 490 491 1 404 492 1 491 492 1 405 493 1 492 493 1 406 494 1 493 494 1 430 495 1 495 494 1
		 355 931 1 496 497 1 496 489 1 498 495 1 357 923 1 499 498 1 356 932 1 500 499 1 497 500 1
		 217 496 1 215 490 1 231 489 1 214 494 1 216 498 1 232 495 1 228 492 1 227 500 1 155 466 0
		 164 470 0 146 463 0 209 464 0 145 465 0 59 478 0 50 474 0 40 473 0 90 472 0 41 471 0
		 174 470 0 165 466 0 143 467 0 195 468 0 144 469 0 60 474 0 69 478 0 39 477 0 104 476 0
		 38 475 0 36 478 1 141 470 1 37 474 1 142 466 1 224 491 1 220 493 1 499 219 1 497 223 1
		 543 544 0 544 545 0 546 545 1 543 546 1 544 547 0 547 548 1 549 548 1 549 544 0 547 550 0
		 550 551 1 548 551 1 550 552 0 552 553 1 551 553 1 552 554 0 554 555 1 553 555 1 554 556 0
		 556 557 1 555 557 1 556 558 0 558 559 1 557 559 1 558 543 0 559 546 1 545 560 0 561 560 1
		 546 561 1 548 563 1 562 563 1 562 549 0 551 564 1 563 564 1 553 565 1 564 565 1 555 566 1
		 565 566 1 557 567 1 566 567 1 559 568 1 567 568 1 568 561 1 560 569 0;
	setAttr ".ed[996:1161]" 570 569 1 561 570 1 563 572 1 571 572 1 571 562 0 564 573 1
		 572 573 1 565 574 1 573 574 1 566 575 1 574 575 1 567 576 1 575 576 1 568 577 1 576 577 1
		 577 570 1 569 578 0 570 578 1 579 571 0 572 579 1 573 580 1 579 580 0 574 581 1 580 581 0
		 575 582 1 581 582 0 576 583 1 582 583 0 577 584 1 583 584 0 584 578 0 501 509 1 509 540 1
		 502 540 0 501 502 0 539 502 0 539 510 1 503 510 1 502 503 0 510 511 1 504 511 1 503 504 0
		 511 512 1 505 512 1 504 505 0 512 513 1 506 513 1 505 506 0 513 514 1 507 514 1 506 507 0
		 514 515 1 508 515 1 507 508 0 515 509 1 508 501 0 509 516 1 516 541 1 540 541 0 510 517 1
		 538 539 0 538 517 1 517 518 1 511 518 1 518 519 1 512 519 1 519 520 1 513 520 1 520 521 1
		 514 521 1 521 522 1 515 522 1 522 516 1 516 523 1 523 542 1 541 542 0 517 524 1 537 538 0
		 537 524 1 524 525 1 518 525 1 525 526 1 519 526 1 526 527 1 520 527 1 527 528 1 521 528 1
		 528 529 1 522 529 1 529 523 1 523 530 0 542 530 0 524 531 0 531 537 0 531 532 0 525 532 0
		 532 533 0 526 533 0 533 534 0 527 534 0 534 535 0 528 535 0 535 536 0 529 536 0 536 530 0
		 540 545 1 502 544 0 539 549 1 541 560 1 538 562 1 542 569 1 537 571 1 530 578 0 531 579 0
		 532 580 0 533 581 0 534 582 0 535 583 0 536 584 0 504 586 1 586 502 1 558 585 1 585 544 1
		 585 550 1 554 585 1 586 508 1 506 586 1 587 588 0 588 589 0 589 590 0 590 591 0 591 592 0
		 592 593 0 593 594 0 594 587 0 595 626 1 596 597 1 597 598 1 598 599 1 599 600 1 600 601 1
		 601 595 1 602 627 1 603 604 1 604 605 1 605 606 1 606 607 1 607 608 1 608 602 1 609 628 1
		 610 611 1 611 612 1 612 613 1 613 614 1 614 615 1 615 609 1 617 618 0 618 619 0 619 620 0
		 620 621 0 621 622 0 622 616 0 587 595 1 589 596 1 590 597 1 591 598 1;
	setAttr ".ed[1162:1327]" 592 599 1 593 600 1 594 601 1 596 603 1 595 602 1 597 604 1
		 598 605 1 599 606 1 600 607 1 601 608 1 603 610 1 602 609 1 604 611 1 605 612 1 606 613 1
		 607 614 1 608 615 1 609 616 0 610 617 0 611 618 0 612 619 0 613 620 0 614 621 0 615 622 0
		 623 610 1 624 603 1 625 596 1 617 623 0 623 624 0 624 625 0 625 588 0 588 626 0 626 627 0
		 627 628 0 628 616 0 588 630 0 629 630 0 626 631 1 630 631 0 632 631 1 629 632 1 630 633 0
		 633 634 1 625 635 1 635 634 1 635 630 0 633 636 0 636 637 1 634 637 1 636 638 0 638 639 1
		 637 639 1 638 640 0 640 641 1 639 641 1 640 642 0 642 643 1 641 643 1 642 644 0 644 645 1
		 643 645 1 644 629 0 645 632 1 627 646 1 631 646 0 647 646 1 632 647 1 624 648 1 648 635 0
		 634 649 1 648 649 1 637 650 1 649 650 1 639 651 1 650 651 1 641 652 1 651 652 1 643 653 1
		 652 653 1 645 654 1 653 654 1 654 647 1 628 655 1 646 655 0 656 655 1 647 656 1 623 657 1
		 657 648 0 649 658 1 657 658 1 650 659 1 658 659 1 651 660 1 659 660 1 652 661 1 660 661 1
		 653 662 1 661 662 1 654 663 1 662 663 1 663 656 1 616 664 0 655 664 0 656 664 1 617 665 0
		 665 657 0 658 665 1 618 666 0 659 666 1 665 666 0 619 667 0 660 667 1 666 667 0 620 668 0
		 661 668 1 667 668 0 621 669 0 662 669 1 668 669 0 622 670 0 663 670 1 669 670 0 670 664 0
		 640 671 1 671 630 1 644 671 1 671 636 1 592 672 1 672 588 1 590 672 1 672 594 1 674 677 0
		 673 674 0 674 681 0 675 678 0 674 735 1 673 679 0 676 680 0 673 740 1 676 675 1 677 684 0
		 678 685 0 679 686 0 680 687 0 679 677 1 680 741 1 678 680 1 677 736 1 681 690 0 682 675 0
		 683 676 0 682 734 1 682 683 1 684 691 0 685 692 0 686 693 0 687 694 0 686 684 1 687 742 1
		 685 687 1 684 737 1 688 682 0 689 683 0 690 697 0 688 689 1 688 733 1;
	setAttr ".ed[1328:1493]" 693 691 0 694 753 0 692 694 0 691 743 1 695 688 0 696 689 0
		 695 696 0 695 744 1 698 673 0 683 739 1 698 681 1 699 698 0 689 738 1 699 690 1 700 699 0
		 696 762 0 700 697 0 694 701 0 693 702 0 701 754 0 692 703 0 703 701 0 691 704 0 704 752 1
		 702 704 0 695 705 0 697 706 0 705 745 1 696 707 0 705 707 0 700 708 0 707 761 0 708 706 0
		 701 709 0 702 710 0 709 755 0 703 711 0 711 709 0 704 712 0 712 751 1 710 712 0 705 713 0
		 706 714 0 713 746 1 707 715 0 713 715 0 708 716 0 715 760 0 716 714 0 709 717 0 710 718 0
		 717 756 0 711 719 0 719 717 0 712 720 0 720 750 1 718 720 0 713 721 0 714 722 0 721 747 1
		 715 723 0 721 723 0 716 724 0 723 759 0 724 722 0 717 725 0 718 726 0 725 757 0 719 727 0
		 727 725 0 720 728 0 728 749 1 726 728 0 721 729 0 722 730 0 729 748 1 723 731 0 729 731 0
		 724 732 0 731 758 0 732 730 0 726 732 0 725 731 0 727 729 0 728 730 0 733 690 1 734 681 1
		 733 734 1 734 735 1 735 736 1 736 737 1 738 699 1 739 698 1 741 679 1 742 686 1 738 739 1
		 739 740 1 740 741 1 741 742 1 743 692 1 737 685 1 743 737 1 736 678 1 735 675 1 744 697 1
		 733 744 1 745 706 1 744 745 1 746 714 1 745 746 1 747 722 1 746 747 1 748 730 1 747 748 1
		 749 727 1 748 749 1 750 719 1 749 750 1 751 711 1 750 751 1 752 703 1 751 752 1 752 743 1
		 740 676 1 753 693 0 742 753 1 754 702 0 753 754 1 755 710 0 754 755 1 756 718 0 755 756 1
		 757 726 0 756 757 1 758 732 0 757 758 1 759 724 0 758 759 1 760 716 0 759 760 1 761 708 0
		 760 761 1 762 700 0 761 762 1 762 738 1 767 773 1 763 775 1 765 781 1 766 783 1 767 780 1
		 769 787 1 770 785 1 773 768 1 771 786 1 772 779 1 773 782 1 775 765 1 779 773 1 780 769 1
		 777 784 1 778 779 1 779 780 1 780 788 1 781 767 1 782 774 1 783 768 1;
	setAttr ".ed[1494:1659]" 784 778 1 785 764 1 786 772 1 787 763 1 788 775 1 783 784 1
		 784 785 1 785 786 1 786 787 1 768 778 1 777 766 1 774 776 1 788 781 1 778 770 1 764 777 1
		 776 771 1 787 788 1 772 770 1 771 764 1 776 777 1 774 766 1 782 783 1 769 772 1 763 771 1
		 775 776 1 765 774 1 781 782 1 789 481 1 790 482 1 789 790 1 791 483 1 790 791 1 792 480 1
		 791 792 1 792 793 1 793 794 1 794 795 1 796 479 1 795 796 1 796 789 1 797 488 1 798 484 1
		 797 798 1 798 799 1 799 800 1 800 801 1 802 485 1 801 802 1 803 487 1 802 803 1 804 486 1
		 803 804 1 804 797 1 805 481 1 806 479 1 805 806 1 807 795 1 806 807 1 808 794 1 807 808 1
		 809 793 1 808 809 1 810 480 1 809 810 1 811 483 1 810 811 1 812 482 1 811 812 1 812 805 1
		 813 488 1 814 486 1 813 814 1 815 487 1 814 815 1 816 485 1 815 816 1 817 801 1 816 817 1
		 818 800 1 817 818 1 819 799 1 818 819 1 820 484 1 819 820 1 820 813 1 821 805 1 822 806 1
		 821 822 1 823 807 1 822 823 1 824 808 1 823 824 1 825 809 1 824 825 1 826 810 1 825 826 1
		 827 811 1 826 827 1 828 812 1 827 828 1 828 821 1 829 813 1 830 814 1 829 830 1 831 815 1
		 830 831 1 832 816 1 831 832 1 833 817 1 832 833 1 834 818 1 833 834 1 835 819 1 834 835 1
		 836 820 1 835 836 1 836 829 1 837 263 1 838 1044 1 837 838 1 839 823 1 838 839 1
		 840 824 1 839 840 1 841 1041 1 840 841 1 842 284 1 841 842 1 843 1039 1 842 843 1
		 844 1038 1 843 844 1 844 837 1 845 239 1 846 1046 1 845 846 1 847 1053 1 846 847 1
		 848 260 1 847 848 1 849 1051 1 848 849 1 850 834 1 849 850 1 851 835 1 850 851 1
		 852 1048 1 851 852 1 852 845 1 853 1045 1 854 277 1 853 854 1 855 1043 1 854 855 1
		 856 1042 1 855 856 1 857 873 1 856 857 1 858 1040 1 857 858 1 859 269 1 858 859 1
		 860 271 1 859 860 1 860 853 1 861 1047 1;
	setAttr ".ed[1660:1825]" 862 247 1 861 862 1 863 245 1 862 863 1 864 1052 1 863 864 1
		 865 881 1 864 865 1 866 1050 1 865 866 1 867 1049 1 866 867 1 868 253 1 867 868 1
		 868 861 1 869 270 1 870 1060 1 869 870 1 871 855 1 870 871 1 872 856 1 871 872 1
		 873 1057 1 872 873 1 874 283 1 873 874 1 875 1055 1 874 875 1 876 1054 1 875 876 1
		 876 869 1 877 246 1 878 1062 1 877 878 1 879 1069 1 878 879 1 880 259 1 879 880 1
		 881 1067 1 880 881 1 882 866 1 881 882 1 883 867 1 882 883 1 884 1064 1 883 884 1
		 884 877 1 885 1061 1 886 278 1 885 886 1 887 1059 1 886 887 1 888 1058 1 887 888 1
		 889 905 1 888 889 1 890 1056 1 889 890 1 891 268 1 890 891 1 892 272 1 891 892 1
		 892 885 1 893 1063 1 894 248 1 893 894 1 895 244 1 894 895 1 896 1068 1 895 896 1
		 897 913 1 896 897 1 898 1066 1 897 898 1 899 1065 1 898 899 1 900 254 1 899 900 1
		 900 893 1 901 267 1 902 279 1 901 902 1 903 887 1 902 903 1 904 888 1 903 904 1 905 265 1
		 904 905 1 906 282 1 905 906 1 907 266 1 906 907 1 908 273 1 907 908 1 908 901 1 909 243 1
		 910 249 1 909 910 1 911 242 1 910 911 1 912 258 1 911 912 1 913 241 1 912 913 1 914 898 1
		 913 914 1 915 899 1 914 915 1 916 255 1 915 916 1 916 909 1 795 479 1 479 807 1 799 484 1
		 484 819 1 809 480 1 480 793 1 817 485 1 485 801 1 823 276 1 276 839 1 835 252 1 252 851 1
		 841 284 1 284 825 1 849 260 1 260 833 1 855 277 1 277 871 1 867 253 1 253 883 1 873 283 1
		 283 857 1 881 259 1 259 865 1 887 278 1 278 903 1 899 254 1 254 915 1 905 282 1 282 889 1
		 913 258 1 258 897 1 924 424 1 917 430 1 918 429 1 919 427 1 920 425 1 921 361 1 922 804 1
		 919 803 1 918 797 1 917 498 1 923 499 1 932 500 1 920 924 1 921 920 1 919 921 1 917 918 1
		 919 922 1 922 918 1 923 917 1 932 923 1 925 423 1 926 418 1 927 353 1;
	setAttr ".ed[1826:1991]" 928 352 1 929 351 1 927 789 1 930 790 1 928 791 1 926 496 1
		 931 497 1 926 927 1 929 928 1 925 929 1 924 925 1 927 930 1 930 928 1 926 931 1 931 932 1
		 106 992 1 1 1004 1 15 1014 1 169 993 1 64 1003 1 117 1008 1 113 1010 1 179 1011 1
		 116 1012 1 152 1013 1 47 1015 1 11 1016 1 74 1017 1 8 1018 1 12 1020 1 113 1024 1
		 105 1026 1 175 1027 1 107 1028 1 157 1029 1 52 1031 1 2 1032 1 70 1033 1 0 1034 1
		 8 1036 1 117 994 1 183 995 1 120 996 1 167 997 1 108 990 1 3 998 1 62 999 1 15 1000 1
		 78 1001 1 12 1002 1 933 934 1 389 935 1 934 935 1 377 936 1 935 936 1 936 933 1 401 937 1
		 378 938 1 937 938 1 937 939 1 940 939 1 940 938 1 939 941 1 942 941 1 942 940 1 941 934 1
		 933 942 1 310 943 1 943 944 1 363 945 1 945 944 1 292 946 0 945 946 1 943 946 1 304 947 1
		 947 948 1 944 948 1 947 943 1 298 949 1 949 950 1 948 950 1 949 947 1 364 951 1 291 952 0
		 951 952 1 950 951 1 952 949 1 944 933 1 936 945 1 948 942 1 950 940 1 938 951 1 450 953 1
		 934 953 1 449 954 0 954 953 1 954 935 1 451 955 1 941 955 1 953 955 1 452 956 1 939 956 1
		 955 956 1 453 957 0 957 937 1 956 957 1 958 135 1 959 167 1 960 134 1 961 152 1 962 138 1
		 963 157 1 964 137 1 964 207 1 965 175 1 966 105 1 967 204 1 968 203 1 969 202 1 970 201 1
		 971 200 1 972 106 1 973 198 1 958 197 1 958 959 1 959 960 1 960 961 1 961 962 1 962 963 1
		 963 964 1 964 965 1 965 966 1 966 967 1 967 968 1 968 969 1 969 970 1 970 971 1 971 972 1
		 972 973 1 973 958 1 974 30 1 975 62 1 976 29 1 977 47 1 978 33 1 979 52 1 980 32 1
		 980 92 1 981 70 1 982 0 1 983 95 1 984 96 1 985 97 1 986 98 1 987 99 1 988 1 1 989 101 1
		 974 102 1 974 975 1 975 976 1 976 977 1 977 978 1 978 979 1 979 980 1 980 981 1 981 982 1;
	setAttr ".ed[1992:2157]" 982 983 1 983 984 1 984 985 1 985 986 1 986 987 1 987 988 1
		 988 989 1 989 974 1 990 124 1 991 187 1 990 991 1 992 123 1 991 992 1 993 170 1 992 993 1
		 994 122 1 993 994 1 995 184 1 994 995 1 996 121 1 995 996 1 997 168 1 996 997 1 997 990 1
		 998 19 1 999 63 1 998 999 1 1000 16 1 999 1000 1 1001 79 1 1000 1001 1 1002 17 1
		 1001 1002 1 1003 65 1 1002 1003 1 1004 18 1 1003 1004 1 1005 82 1 1004 1005 1 1005 998 1
		 1006 132 1 1007 183 1 1006 1007 1 1008 131 1 1007 1008 1 1009 147 1 1008 1009 1 1010 130 1
		 1009 1010 1 1011 180 1 1010 1011 1 1012 129 1 1011 1012 1 1013 153 1 1012 1013 1
		 1013 1006 1 1014 27 1 1015 48 1 1014 1015 1 1016 24 1 1015 1016 1 1017 75 1 1016 1017 1
		 1018 25 1 1017 1018 1 1019 42 1 1018 1019 1 1020 26 1 1019 1020 1 1021 78 1 1020 1021 1
		 1021 1014 1 1022 127 1 1023 179 1 1022 1023 1 1024 126 1 1023 1024 1 1025 160 1 1024 1025 1
		 1026 125 1 1025 1026 1 1027 176 1 1026 1027 1 1028 128 1 1027 1028 1 1029 158 1 1028 1029 1
		 1029 1022 1 1030 22 1 1031 53 1 1030 1031 1 1032 23 1 1031 1032 1 1033 71 1 1032 1033 1
		 1034 20 1 1033 1034 1 1035 55 1 1034 1035 1 1036 21 1 1035 1036 1 1037 74 1 1036 1037 1
		 1037 1030 1 1038 860 1 1039 859 1 1038 1039 1 1040 842 1 1039 1040 1 1041 857 1 1040 1041 1
		 1042 840 1 1041 1042 1 1043 839 1 1042 1043 1 1044 854 1 1043 1044 1 1045 837 1 1044 1045 1
		 1045 1038 1 1046 862 1 1047 845 1 1046 1047 1 1048 868 1 1047 1048 1 1049 851 1 1048 1049 1
		 1050 850 1 1049 1050 1 1051 865 1 1050 1051 1 1052 848 1 1051 1052 1 1053 863 1 1052 1053 1
		 1053 1046 1 1054 892 1 1055 891 1 1054 1055 1 1056 874 1 1055 1056 1 1057 889 1 1056 1057 1
		 1058 872 1 1057 1058 1 1059 871 1 1058 1059 1 1060 886 1 1059 1060 1 1061 869 1 1060 1061 1
		 1061 1054 1 1062 894 1 1063 877 1 1062 1063 1 1064 900 1 1063 1064 1 1065 883 1 1064 1065 1
		 1066 882 1 1065 1066 1 1067 897 1 1066 1067 1 1068 880 1 1067 1068 1 1069 895 1;
	setAttr ".ed[2158:2159]" 1068 1069 1 1069 1062 1;
	setAttr -s 1098 -ch 4320 ".fc";
	setAttr ".fc[0:499]" -type "polyFaces" 
		f 4 3 -3 -2 -1
		mu 0 4 0 1 2 3
		f 4 -8 -7 -6 -5
		mu 0 4 4 5 6 7
		f 4 179 -11 -10 -165
		mu 0 4 151 153 10 11
		f 4 181 167 7 -167
		mu 0 4 154 155 14 15
		f 4 -17 -158 172 -15
		mu 0 4 16 17 143 144
		f 4 175 161 -19 -161
		mu 0 4 147 148 22 23
		f 4 24 -24 -23 -22
		mu 0 4 24 25 26 27
		f 4 28 27 -27 -26
		mu 0 4 28 29 30 31
		f 4 177 163 -31 -163
		mu 0 4 149 150 34 35
		f 4 36 -36 -35 -34
		mu 0 4 36 37 38 39
		f 4 40 39 -39 -38
		mu 0 4 40 41 42 43
		f 4 -42 1873 2022 -1875
		mu 0 4 47 749 1394 1396
		f 4 -1843 -12 -2026 2028
		mu 0 4 1401 50 51 1399
		f 4 -14 -2030 2031 -1872
		mu 0 4 54 55 1402 1392
		f 4 45 1871 2018 -1873
		mu 0 4 58 56 1391 1393
		f 4 -21 -2090 2092 -1866
		mu 0 4 742 62 1441 1443
		f 4 2095 -51 49 -2094
		mu 0 4 1444 1436 65 66
		f 4 51 50 2082 -1862
		mu 0 4 68 65 1436 1437
		f 4 15 1862 2086 -1864
		mu 0 4 19 18 1438 1439
		f 4 -50 1852 2054 -1854
		mu 0 4 66 65 1418 1420
		f 4 -33 -2058 2060 -1856
		mu 0 4 739 76 1423 1425
		f 4 2063 -1844 41 -2062
		mu 0 4 1426 1416 748 738
		f 4 57 1843 2050 -1852
		mu 0 4 81 747 1415 1417
		f 4 60 -1967 1984 -59
		mu 0 4 82 83 1358 1359
		f 4 182 168 -62 -168
		mu 0 4 156 157 86 5
		f 4 61 -65 -64 6
		mu 0 4 5 86 87 6
		f 4 67 -1971 1988 -66
		mu 0 4 88 89 1363 1364
		f 4 70 -70 -69 23
		mu 0 4 25 90 91 26
		f 4 73 -157 171 157
		mu 0 4 92 93 141 142
		f 4 76 -1969 1986 -75
		mu 0 4 95 96 1361 1362
		f 4 79 -79 -78 35
		mu 0 4 37 97 98 38
		f 4 82 -82 -61 -81
		mu 0 4 99 100 83 82
		f 4 183 169 -84 -169
		mu 0 4 157 158 101 86
		f 4 83 -87 -86 64
		mu 0 4 86 101 102 87
		f 4 89 -89 -68 -88
		mu 0 4 103 104 89 88
		f 4 92 -92 -91 69
		mu 0 4 90 105 106 91
		f 4 95 -156 170 156
		mu 0 4 93 107 140 141
		f 3 -98 -77 -97
		mu 0 3 109 96 95
		f 3 99 -99 78
		mu 0 3 97 110 98
		f 4 176 162 -101 -162
		mu 0 4 148 149 35 22
		f 4 34 -104 -25 -103
		mu 0 4 39 38 25 24
		f 4 -105 -71 103 77
		mu 0 4 98 90 25 38
		f 3 -93 104 98
		mu 0 3 110 90 98
		f 3 88 96 -106
		mu 0 3 89 109 95
		f 4 1987 1970 105 74
		mu 0 4 1362 1363 89 95
		f 4 106 1851 2052 -1853
		mu 0 4 65 81 1417 1419
		f 4 107 37 -109 -54
		mu 0 4 112 40 43 113
		f 4 -102 1854 2058 2057
		mu 0 4 76 743 1421 1423
		f 4 93 111 87 -111
		mu 0 4 94 108 103 88
		f 4 1989 1972 110 65
		mu 0 4 1364 1365 94 88
		f 4 112 1861 2084 -1863
		mu 0 4 18 68 1437 1438
		f 4 52 113 25 -115
		mu 0 4 115 116 28 31
		f 4 -116 1864 2090 2089
		mu 0 4 62 117 1440 1441
		f 4 118 174 160 -118
		mu 0 4 119 145 147 23
		f 4 16 -121 22 -120
		mu 0 4 92 121 27 26
		f 4 -122 -74 119 68
		mu 0 4 91 93 92 26
		f 4 -123 -96 121 90
		mu 0 4 106 107 93 91
		f 4 97 124 80 -124
		mu 0 4 96 109 99 82
		f 4 1985 1968 123 58
		mu 0 4 1359 1360 96 82
		f 4 125 1872 2020 -1874
		mu 0 4 750 58 1393 1395
		f 4 126 0 -128 -43
		mu 0 4 122 0 3 123
		f 4 -129 1875 2026 2025
		mu 0 4 51 740 1397 1399
		f 4 178 164 -131 -164
		mu 0 4 150 151 11 34
		f 4 5 -133 -37 -132
		mu 0 4 7 6 37 36
		f 4 -134 -80 132 63
		mu 0 4 87 97 37 6
		f 4 -135 -100 133 85
		mu 0 4 102 110 97 87
		f 4 135 1863 2088 -1865
		mu 0 4 117 19 1439 1440
		f 4 136 114 137 -117
		mu 0 4 125 115 31 126
		f 4 138 -48 -138 26
		mu 0 4 30 127 126 31
		f 4 139 1865 2094 2093
		mu 0 4 66 61 1442 1444
		f 4 -140 1853 2056 -1855
		mu 0 4 744 66 1420 1422
		f 4 141 -110 -141 108
		mu 0 4 43 129 130 113
		f 4 142 -56 -142 38
		mu 0 4 42 131 129 43
		f 4 143 1855 2062 2061
		mu 0 4 738 75 1424 1426
		f 4 -144 1874 2024 -1876
		mu 0 4 741 47 1396 1398
		f 4 145 -130 -145 127
		mu 0 4 3 133 134 123
		f 4 -147 -44 -146 1
		mu 0 4 2 135 133 3
		f 4 -148 1842 2030 2029
		mu 0 4 55 136 1400 1402
		f 4 180 166 148 10
		mu 0 4 152 154 15 138
		f 4 9 -149 4 -150
		mu 0 4 11 10 4 7
		f 4 130 149 131 -151
		mu 0 4 34 11 7 36
		f 4 30 150 33 -152
		mu 0 4 35 34 36 39
		f 4 100 151 102 -153
		mu 0 4 22 35 39 24
		f 4 18 152 21 -154
		mu 0 4 23 22 24 27
		f 4 154 117 153 120
		mu 0 4 121 119 23 27
		f 4 -155 14 173 -119
		mu 0 4 139 16 144 146
		f 4 -171 -95 -94 72
		mu 0 4 141 140 108 94
		f 4 -172 -73 -1973 1973
		mu 0 4 142 141 94 1365
		f 4 -173 -1974 1990 -159
		mu 0 4 144 143 1366 1367
		f 4 -174 158 1991 -160
		mu 0 4 146 144 1367 1369
		f 4 -175 159 1992 1976
		mu 0 4 147 145 1368 1370
		f 4 1993 1977 -176 -1977
		mu 0 4 1370 1371 148 147
		f 4 1994 1978 -177 -1978
		mu 0 4 1371 1372 149 148
		f 4 1995 1979 -178 -1979
		mu 0 4 1372 1373 150 149
		f 4 1996 1980 -179 -1980
		mu 0 4 1373 1374 151 150
		f 4 1997 -166 -180 -1981
		mu 0 4 1374 1376 153 151
		f 4 1998 1982 -181 165
		mu 0 4 1375 1377 154 152
		f 4 1999 1983 -182 -1983
		mu 0 4 1377 1378 155 154
		f 4 1966 62 -183 -1984
		mu 0 4 1358 83 157 156
		f 4 81 84 -184 -63
		mu 0 4 83 100 158 157
		f 4 298 330 314 -290
		mu 0 4 159 160 161 162
		f 4 333 317 293 191
		mu 0 4 163 164 165 166
		f 4 359 345 292 193
		mu 0 4 167 168 169 170
		f 4 357 343 -192 -343
		mu 0 4 171 172 173 174
		f 4 339 366 352 190
		mu 0 4 175 176 177 178
		f 4 363 349 274 -349
		mu 0 4 179 180 181 182
		f 4 337 321 275 -321
		mu 0 4 183 184 185 186
		f 4 280 324 -215 -272
		mu 0 4 187 188 189 190
		f 4 361 347 253 -347
		mu 0 4 191 192 193 194
		f 4 335 319 254 -319
		mu 0 4 195 196 197 198
		f 4 266 327 -221 -259
		mu 0 4 199 200 201 202
		f 4 207 1867 2012 -1869
		mu 0 4 731 204 1387 1389
		f 4 291 1841 2006 2005
		mu 0 4 208 209 1382 1384
		f 4 315 1870 2002 2001
		mu 0 4 212 213 1379 1381
		f 4 -289 1869 2015 -1871
		mu 0 4 215 216 1390 1380
		f 4 273 1856 2070 2069
		mu 0 4 219 726 1429 1431
		f 4 -201 213 2066 2065
		mu 0 4 223 224 1427 1428
		f 4 2079 -214 -271 1860
		mu 0 4 1435 1427 224 226
		f 4 -304 1858 2076 -1860
		mu 0 4 228 229 1433 1434
		f 4 200 1848 2044 -1850
		mu 0 4 224 223 1411 1413
		f 4 252 1846 2038 2037
		mu 0 4 235 723 1406 1408
		f 4 -208 219 2034 2033
		mu 0 4 721 732 1403 1405
		f 4 2047 -220 -258 1850
		mu 0 4 1414 1404 733 240
		f 4 1950 1933 288 224
		mu 0 4 1337 1338 244 245
		f 4 356 342 226 -342
		mu 0 4 247 248 166 249
		f 4 -294 301 294 -227
		mu 0 4 166 165 250 249
		f 4 1954 1937 270 230
		mu 0 4 1342 1343 226 224
		f 4 -276 284 276 -233
		mu 0 4 186 185 253 254
		f 4 -353 367 353 -234
		mu 0 4 255 256 257 258
		f 4 1952 1935 257 223
		mu 0 4 1339 1341 240 203
		f 4 -255 262 255 -223
		mu 0 4 198 197 261 262
		f 4 296 287 240 -287
		mu 0 4 263 243 246 264
		f 4 355 341 242 -341
		mu 0 4 265 247 249 266
		f 4 -295 302 295 -243
		mu 0 4 249 250 267 266
		f 4 278 269 246 -269
		mu 0 4 268 251 252 269
		f 4 -277 285 277 -249
		mu 0 4 254 253 270 271
		f 4 -354 368 354 -250
		mu 0 4 258 257 272 273
		f 3 264 256 239
		mu 0 3 274 259 260
		f 3 -256 263 -239
		mu 0 3 262 261 275
		f 4 362 348 195 -348
		mu 0 4 192 179 182 193
		f 4 336 320 196 -320
		mu 0 4 196 183 186 197
		f 4 -263 -197 232 237
		mu 0 4 261 197 186 254
		f 3 -264 -238 248
		mu 0 3 275 261 254
		f 3 236 -265 -247
		mu 0 3 252 259 274
		f 4 197 -1936 1953 -231
		mu 0 4 224 240 1341 1342
		f 4 -198 1849 2046 -1851
		mu 0 4 240 224 1412 1414
		f 4 217 326 -267 -222
		mu 0 4 277 278 200 199
		f 4 194 -2038 2040 -1848
		mu 0 4 725 235 1408 1410
		f 4 231 -279 -248 -246
		mu 0 4 280 251 268 281
		f 4 185 -1938 1955 -230
		mu 0 4 228 226 1343 1344
		f 4 -186 1859 2078 -1861
		mu 0 4 226 228 1434 1435
		f 4 323 -281 -216 -305
		mu 0 4 282 188 187 283
		f 4 184 -2070 2072 -1858
		mu 0 4 284 219 1431 1432
		f 4 187 -350 364 -193
		mu 0 4 286 181 180 287
		f 4 186 -322 338 -191
		mu 0 4 255 185 184 288
		f 4 -285 -187 233 234
		mu 0 4 253 185 255 258
		f 4 -286 -235 249 250
		mu 0 4 270 253 258 273
		f 4 225 -297 -242 -240
		mu 0 4 260 243 263 274
		f 4 204 -1934 1951 -224
		mu 0 4 729 244 1338 1340
		f 4 -205 1868 2014 -1870
		mu 0 4 216 730 1388 1390
		f 4 208 329 -299 -212
		mu 0 4 289 290 160 159
		f 4 201 -2006 2008 -1867
		mu 0 4 722 208 1384 1386
		f 4 360 346 202 -346
		mu 0 4 168 191 194 169
		f 4 334 318 203 -318
		mu 0 4 164 195 198 165
		f 4 -302 -204 222 228
		mu 0 4 250 165 198 262
		f 4 -303 -229 238 244
		mu 0 4 267 250 262 275
		f 4 -189 1857 2074 -1859
		mu 0 4 229 284 1432 1433
		f 4 212 -306 -324 -217
		mu 0 4 292 293 188 282
		f 4 -325 305 272 -307
		mu 0 4 189 188 293 294
		f 4 -308 -2066 2068 -1857
		mu 0 4 727 223 1428 1430
		f 4 307 1847 2042 -1849
		mu 0 4 223 220 1409 1411
		f 4 -327 308 218 -310
		mu 0 4 200 278 296 297
		f 4 -328 309 259 -311
		mu 0 4 201 200 297 298
		f 4 -312 -2034 2036 -1847
		mu 0 4 724 721 1405 1407
		f 4 311 1866 2010 -1868
		mu 0 4 204 236 1385 1387
		f 4 -330 312 209 -314
		mu 0 4 160 290 300 301
		f 4 -331 313 290 210
		mu 0 4 161 160 301 302
		f 4 -1842 189 -2002 2004
		mu 0 4 1383 303 212 1381
		f 4 358 -194 -317 -344
		mu 0 4 172 304 305 173
		f 4 300 -334 316 -293
		mu 0 4 169 164 163 170
		f 4 206 -335 -301 -203
		mu 0 4 194 195 164 169
		f 4 261 -336 -207 -254
		mu 0 4 193 196 195 194
		f 4 199 -337 -262 -196
		mu 0 4 182 183 196 193
		f 4 283 -338 -200 -275
		mu 0 4 181 184 183 182
		f 4 -339 -284 -188 -323
		mu 0 4 288 184 181 286
		f 4 192 365 -340 322
		mu 0 4 306 307 176 175
		f 4 227 -356 -244 -241
		mu 0 4 246 247 265 264
		f 4 332 1965 -225 -316
		mu 0 4 308 1356 1357 309
		f 4 -1948 1964 -333 -190
		mu 0 4 310 1355 1356 308
		f 4 299 1963 1947 -292
		mu 0 4 311 1353 1354 312
		f 4 205 1962 -300 -202
		mu 0 4 313 1352 1353 311
		f 4 260 1961 -206 -253
		mu 0 4 314 1351 1352 313
		f 4 198 1960 -261 -195
		mu 0 4 315 1350 1351 314
		f 4 282 1959 -199 -274
		mu 0 4 316 1349 1350 315
		f 4 1958 -283 -185 -1942
		mu 0 4 1348 1349 316 317
		f 4 1957 1941 188 -1941
		mu 0 4 1346 1347 284 229
		f 4 1956 1940 303 229
		mu 0 4 1345 1346 229 228
		f 4 -369 -236 245 251
		mu 0 4 272 257 280 281
		f 4 404 -375 -373 381
		mu 0 4 319 323 320 318
		f 4 407 406 371 373
		mu 0 4 324 325 326 327
		f 4 393 390 376 -390
		mu 0 4 330 331 322 321
		f 4 394 392 372 -392
		mu 0 4 332 333 318 320
		f 4 395 414 -382 -393
		mu 0 4 333 334 319 318
		f 4 -376 378 -387 -378
		mu 0 4 329 328 335 336
		f 4 -372 380 -388 -380
		mu 0 4 327 326 337 338
		f 4 -407 409 -389 -381
		mu 0 4 326 325 339 337
		f 4 400 397 -394 -397
		mu 0 4 340 341 331 330
		f 4 401 399 -395 -399
		mu 0 4 342 343 333 332
		f 4 402 413 -396 -400
		mu 0 4 343 344 334 333
		f 4 386 383 -401 -383
		mu 0 4 336 335 341 340
		f 4 387 385 -402 -385
		mu 0 4 338 337 343 342
		f 4 388 411 -403 -386
		mu 0 4 337 339 344 343
		f 4 -377 -404 -405 -371
		mu 0 4 345 322 323 319
		f 4 375 369 -408 405
		mu 0 4 328 346 325 324
		f 4 -410 -370 377 -409
		mu 0 4 339 325 346 347
		f 4 -412 408 382 -411
		mu 0 4 344 339 347 348
		f 4 -414 410 396 -413
		mu 0 4 334 344 348 349
		f 4 -415 412 389 370
		mu 0 4 319 334 349 345
		f 4 1770 -418 -417 -1769
		mu 0 4 1296 1287 352 353
		f 4 422 -1759 1761 -420
		mu 0 4 354 355 1290 1291
		f 4 -426 -425 -423 -424
		mu 0 4 358 359 355 354
		f 4 -1757 1759 1758 424
		mu 0 4 360 1288 1289 363
		f 4 -1763 1765 -430 -429
		mu 0 4 364 1293 1294 365
		f 4 1738 -432 418 -1737
		mu 0 4 1276 1267 351 350
		f 4 -1731 1733 -1765 -1766
		mu 0 4 1293 1273 1274 1294
		f 4 420 -1727 1729 -434
		mu 0 4 357 356 1270 1271
		f 4 -1725 1727 1726 426
		mu 0 4 361 1268 1269 362
		f 4 -1667 1669 -1701 -1702
		mu 0 4 1253 1233 1234 1254
		f 4 434 -1663 1665 -439
		mu 0 4 369 368 1230 1231
		f 4 1663 1662 436 -1661
		mu 0 4 1228 1229 371 370
		f 4 1674 -445 432 -1673
		mu 0 4 1236 1227 367 366
		f 4 431 1725 1724 446
		mu 0 4 351 1267 1268 361
		f 4 417 1757 1756 448
		mu 0 4 352 1287 1288 360
		f 4 416 -449 425 -450
		mu 0 4 378 379 359 358
		f 4 1767 -452 -451 429
		mu 0 4 1294 1295 380 365
		f 4 1735 -1767 -1768 1764
		mu 0 4 1274 1275 1295 1294
		f 4 1671 -1703 -1704 1700
		mu 0 4 1234 1235 1255 1254
		f 4 444 1661 1660 447
		mu 0 4 367 1227 1228 370
		f 3 1789 1790 1702
		mu 0 3 1235 366 1255
		f 3 1797 1798 1766
		mu 0 3 1275 350 1295
		f 4 451 1769 1768 -454
		mu 0 4 380 1295 1296 353
		f 4 450 453 449 454
		mu 0 4 381 382 378 358
		f 4 428 -455 423 -456
		mu 0 4 383 381 358 354
		f 4 1762 455 419 1763
		mu 0 4 1292 383 354 1291
		f 3 1802 1730 1801
		mu 0 3 357 1272 1292
		f 3 1794 1666 1793
		mu 0 3 369 1232 1252
		f 4 1740 483 459 1741
		mu 0 4 1278 385 386 1277
		f 4 494 1751 1750 -486
		mu 0 4 388 1283 1284 391
		f 4 493 485 463 478
		mu 0 4 392 388 391 393
		f 4 -464 -1751 1753 1752
		mu 0 4 394 395 1285 1286
		f 4 462 479 1747 1746
		mu 0 4 398 399 1280 1281
		f 4 1708 -466 464 1709
		mu 0 4 1258 384 387 1257
		f 4 495 1719 1718 -487
		mu 0 4 389 1263 1264 390
		f 4 -468 -1719 1721 1720
		mu 0 4 397 396 1265 1266
		f 4 496 1655 1654 -488
		mu 0 4 402 1223 1224 403
		f 4 1656 -471 -1655 1657
		mu 0 4 1226 405 404 1225
		f 4 1644 -472 469 1645
		mu 0 4 1218 400 401 1217
		f 4 -474 -1721 1722 -465
		mu 0 4 387 397 1266 1257
		f 4 -476 -1753 1754 -460
		mu 0 4 386 394 1286 1277
		f 4 492 -479 475 -484
		mu 0 4 412 392 393 413
		f 4 -480 477 458 1745
		mu 0 4 1280 399 414 1279
		f 4 -473 -1657 1658 -470
		mu 0 4 401 405 1226 1217
		f 3 1787 -1645 1647
		mu 0 3 1219 400 1218
		f 3 1795 -1709 1711
		mu 0 3 1259 384 1258
		f 4 456 -1741 1743 -459
		mu 0 4 414 385 1278 1279
		f 4 -485 -493 -457 -478
		mu 0 4 415 392 412 416
		f 4 457 -494 484 -463
		mu 0 4 417 388 392 415
		f 4 1749 -495 -458 -1747
		mu 0 4 1282 1283 388 417
		f 3 1717 -496 1800
		mu 0 3 1262 1263 389
		f 3 1653 -497 1792
		mu 0 3 1222 1223 402
		f 4 773 629 628 774
		mu 0 4 418 419 420 421
		f 4 547 609 598 -543
		mu 0 4 422 423 424 425
		f 4 783 622 621 784
		mu 0 4 426 427 428 429
		f 4 612 601 540 506
		mu 0 4 430 431 432 433
		f 4 -622 624 623 782
		mu 0 4 434 435 436 437
		f 4 791 640 639 792
		mu 0 4 438 439 440 441
		f 4 687 704 703 688
		mu 0 4 442 443 444 445
		f 4 671 -695 696 695
		mu 0 4 446 447 448 449
		f 4 1876 1878 1880 1881
		mu 0 4 450 451 1321 1322
		f 4 673 718 717 674
		mu 0 4 454 455 456 457
		f 4 500 -604 615 -506
		mu 0 4 458 459 460 461
		f 4 -1885 1885 -1887 1887
		mu 0 4 1323 1324 464 465
		f 4 -640 642 -788 790
		mu 0 4 466 467 468 469
		f 4 606 -526 -500 -595
		mu 0 4 470 471 472 473
		f 4 635 -797 799 -633
		mu 0 4 474 475 476 477
		f 4 710 -680 682 -708
		mu 0 4 478 479 480 481
		f 4 614 603 518 -603
		mu 0 4 482 460 459 483
		f 4 1886 1888 -1890 1890
		mu 0 4 465 464 484 485
		f 4 787 643 -786 788
		mu 0 4 469 468 486 487
		f 4 525 607 -537 -521
		mu 0 4 472 471 488 489
		f 4 633 632 801 -631
		mu 0 4 490 474 477 491
		f 4 708 707 684 -706
		mu 0 4 492 478 481 493
		f 4 613 602 529 -602
		mu 0 4 431 482 483 432
		f 4 1889 1891 -1877 1892
		mu 0 4 485 484 451 450
		f 4 785 620 -784 786
		mu 0 4 487 486 427 426
		f 4 536 608 -548 -532
		mu 0 4 489 488 423 422
		f 4 631 630 802 -629
		mu 0 4 420 490 491 421
		f 4 706 705 686 -704
		mu 0 4 444 492 493 445
		f 4 498 -552 -563 -502
		mu 0 4 494 495 496 497
		f 4 -564 551 521 -553
		mu 0 4 498 496 495 499
		f 4 -565 552 532 -554
		mu 0 4 500 498 499 501
		f 4 -566 553 543 502
		mu 0 4 502 500 501 503
		f 4 627 -774 776 -626
		mu 0 4 504 419 418 505
		f 4 702 -688 690 -700
		mu 0 4 506 443 442 507
		f 4 545 -569 556 -540
		mu 0 4 508 509 510 511
		f 4 534 -570 -546 -529
		mu 0 4 512 513 509 508
		f 4 523 -571 -535 -518
		mu 0 4 514 515 513 512
		f 4 -572 -524 -498 -561
		mu 0 4 516 515 514 517
		f 4 679 712 -678 680
		mu 0 4 480 479 518 519
		f 4 796 637 -795 797
		mu 0 4 476 475 520 521
		f 4 562 -576 -585 -551
		mu 0 4 497 496 522 523
		f 4 -586 575 563 -577
		mu 0 4 524 522 496 498
		f 4 -587 576 564 -578
		mu 0 4 525 524 498 500
		f 4 -588 577 565 554
		mu 0 4 526 525 500 502
		f 4 700 699 692 -698
		mu 0 4 527 506 507 528
		f 4 568 557 846 840
		mu 0 4 510 509 529 530
		f 4 569 838 845 -558
		mu 0 4 509 513 531 529
		f 4 677 714 -676 678
		mu 0 4 519 518 532 533
		f 4 584 -596 -607 -575
		mu 0 4 523 522 471 470
		f 4 -608 595 585 -597
		mu 0 4 488 471 522 524
		f 4 -609 596 586 -598
		mu 0 4 423 488 524 525
		f 4 -610 597 587 578
		mu 0 4 424 423 525 526
		f 4 698 697 693 -696
		mu 0 4 449 527 528 446
		f 4 590 848 841 600
		mu 0 4 534 535 536 430
		f 4 843 839 581 836
		mu 0 4 537 538 539 482
		f 4 675 716 -674 676
		mu 0 4 533 532 455 454
		f 4 758 738 -757 759
		mu 0 4 540 541 542 543
		f 4 757 756 740 739
		mu 0 4 544 543 542 545
		f 4 755 -740 742 741
		mu 0 4 546 547 548 549
		f 4 744 743 753 -742
		mu 0 4 549 550 551 546
		f 4 746 745 751 -744
		mu 0 4 550 552 553 551
		f 4 747 -749 750 -746
		mu 0 4 552 554 555 553
		f 4 771 770 726 -769
		mu 0 4 556 557 558 559
		f 4 769 768 728 -767
		mu 0 4 560 556 559 561
		f 4 767 766 730 -765
		mu 0 4 562 560 561 563
		f 4 765 764 732 731
		mu 0 4 564 562 563 565
		f 4 763 -732 734 -761
		mu 0 4 566 567 568 569
		f 4 761 760 736 -759
		mu 0 4 540 566 569 541
		f 4 1894 -1897 1898 -1900
		mu 0 4 1327 570 1325 1326
		f 4 1901 -1903 -1895 -1904
		mu 0 4 1328 572 570 1327
		f 4 1905 -1907 -1902 -1908
		mu 0 4 1329 573 572 1328
		f 4 -1911 -1912 -1906 -1913
		mu 0 4 1330 1331 573 1329
		f 4 616 -648 645 505
		mu 0 4 575 576 577 578
		f 4 592 -650 -617 604
		mu 0 4 579 580 576 575
		f 4 572 -652 -593 582
		mu 0 4 581 582 580 579
		f 4 507 -654 -573 560
		mu 0 4 583 584 582 581
		f 4 -656 -508 497 -655
		mu 0 4 585 584 583 586
		f 4 -658 654 517 -657
		mu 0 4 587 585 586 588
		f 4 -660 656 528 -659
		mu 0 4 589 587 588 590
		f 4 508 -662 658 539
		mu 0 4 591 592 589 590
		f 4 -664 -509 -557 -663
		mu 0 4 593 592 591 594
		f 4 -666 662 -581 -665
		mu 0 4 595 593 594 596
		f 4 -668 664 -601 -667
		mu 0 4 597 595 596 598
		f 4 -645 -669 666 -507
		mu 0 4 599 600 597 598
		f 4 668 -671 -672 669
		mu 0 4 597 600 447 446
		f 4 1913 -1882 1914 1896
		mu 0 4 570 450 1322 1325
		f 4 1915 -1893 -1914 1902
		mu 0 4 572 485 450 570
		f 4 1916 -1891 -1916 1906
		mu 0 4 573 465 485 572
		f 4 -1918 -1888 -1917 1911
		mu 0 4 1331 1323 465 573
		f 4 646 -675 672 647
		mu 0 4 576 454 457 577
		f 4 648 -677 -647 649
		mu 0 4 580 533 454 576
		f 4 650 -679 -649 651
		mu 0 4 582 519 533 580
		f 4 652 -681 -651 653
		mu 0 4 584 480 519 582
		f 4 -683 -653 655 -682
		mu 0 4 481 480 584 585
		f 4 -685 681 657 -684
		mu 0 4 493 481 585 587
		f 4 -687 683 659 -686
		mu 0 4 445 493 587 589
		f 4 660 -689 685 661
		mu 0 4 592 442 445 589
		f 4 -691 -661 663 -690
		mu 0 4 507 442 592 593
		f 4 -693 689 665 -692
		mu 0 4 528 507 593 595
		f 4 -694 691 667 -670
		mu 0 4 446 528 595 597
		f 4 808 -514 509 809
		mu 0 4 601 602 603 604
		f 4 807 -510 -600 611
		mu 0 4 605 606 607 608
		f 4 -580 589 805 -612
		mu 0 4 608 609 610 605
		f 4 -556 567 834 -590
		mu 0 4 609 611 612 610
		f 4 -513 -831 833 -568
		mu 0 4 611 613 614 612
		f 4 831 830 -545 549
		mu 0 4 615 614 613 616
		f 4 -534 538 829 -550
		mu 0 4 616 617 618 615
		f 4 -523 527 827 -539
		mu 0 4 617 619 620 618
		f 4 -512 -823 825 -528
		mu 0 4 619 621 622 620
		f 4 823 822 -562 -821
		mu 0 4 623 622 621 624
		f 4 821 820 -584 -819
		mu 0 4 625 623 624 626
		f 4 819 818 -606 -817
		mu 0 4 627 625 626 628
		f 4 817 816 -515 510
		mu 0 4 629 627 628 630
		f 4 815 -511 -520 -813
		mu 0 4 631 632 633 634
		f 4 813 812 -531 -811
		mu 0 4 635 631 634 636
		f 4 811 810 -542 -809
		mu 0 4 601 635 636 602
		f 4 -721 719 -544 548
		mu 0 4 637 554 503 501
		f 4 -533 537 -722 -549
		mu 0 4 501 499 638 637
		f 4 -522 526 -723 -538
		mu 0 4 499 495 639 638
		f 4 -499 -724 -725 -527
		mu 0 4 495 494 558 639
		f 4 -727 723 501 -726
		mu 0 4 559 558 494 640
		f 4 -729 725 550 -728
		mu 0 4 561 559 640 641
		f 4 -731 727 574 -730
		mu 0 4 563 561 641 642
		f 4 -733 729 594 503
		mu 0 4 565 563 642 643
		f 4 -735 -504 499 -734
		mu 0 4 569 568 473 472
		f 4 -737 733 520 -736
		mu 0 4 541 569 472 489
		f 4 -739 735 531 -738
		mu 0 4 542 541 489 422
		f 4 -741 737 542 504
		mu 0 4 545 542 422 425
		f 4 -743 -505 -599 610
		mu 0 4 549 548 644 645
		f 4 -579 588 -745 -611
		mu 0 4 645 646 550 549
		f 4 -555 566 -747 -589
		mu 0 4 646 647 552 550
		f 4 -503 -720 -748 -567
		mu 0 4 647 503 554 552
		f 4 -751 -1825 1833 -750
		mu 0 4 553 555 1308 1310
		f 4 -625 -1828 1834 1826
		mu 0 4 436 435 1314 1311
		f 4 -623 619 1835 1827
		mu 0 4 428 427 1307 1313
		f 4 618 1836 -620 -621
		mu 0 4 486 1306 1307 427
		f 4 -644 641 1815 -619
		mu 0 4 486 468 1300 1306
		f 4 -643 -1809 1816 -642
		mu 0 4 468 467 1302 1300
		f 4 -641 638 1817 1808
		mu 0 4 440 439 1299 1301
		f 4 -638 634 1818 -637
		mu 0 4 520 475 1297 1298
		f 4 516 -775 772 544
		mu 0 4 613 418 421 616
		f 4 -777 -517 512 -776
		mu 0 4 505 418 613 611
		f 4 -779 775 555 -778
		mu 0 4 648 505 611 609
		f 4 -781 777 579 -780
		mu 0 4 437 648 609 608
		f 4 -782 -783 779 599
		mu 0 4 607 434 437 608
		f 4 546 -785 781 513
		mu 0 4 602 426 429 603
		f 4 535 -787 -547 541
		mu 0 4 636 487 426 602
		f 4 524 -789 -536 530
		mu 0 4 634 469 487 636
		f 4 -790 -791 -525 519
		mu 0 4 633 466 469 634
		f 4 617 -793 789 514
		mu 0 4 628 438 441 630
		f 4 593 -794 -618 605
		mu 0 4 626 649 438 628
		f 4 573 -796 -594 583
		mu 0 4 624 521 649 626
		f 4 515 -798 -574 561
		mu 0 4 621 476 521 624
		f 4 -800 -516 511 -799
		mu 0 4 477 476 621 619
		f 4 -802 798 522 -801
		mu 0 4 491 477 619 617
		f 4 -803 800 533 -773
		mu 0 4 421 491 617 616
		f 4 -806 803 -699 -805
		mu 0 4 605 610 527 449
		f 4 -697 -807 -808 804
		mu 0 4 449 448 606 605
		f 4 1919 -1922 1922 -1879
		mu 0 4 451 1332 1333 1321
		f 4 -1892 1924 -1926 -1920
		mu 0 4 451 484 1334 1332
		f 4 -1889 1927 -1929 -1925
		mu 0 4 484 464 1335 1334
		f 4 -1886 -1931 -1932 -1928
		mu 0 4 464 1324 1336 1335
		f 4 -719 715 -818 814
		mu 0 4 456 455 627 629
		f 4 -717 713 -820 -716
		mu 0 4 455 532 625 627
		f 4 -715 711 -822 -714
		mu 0 4 532 518 623 625
		f 4 -713 709 -824 -712
		mu 0 4 518 479 622 623
		f 4 -826 -710 -711 -825
		mu 0 4 620 622 479 478
		f 4 -828 824 -709 -827
		mu 0 4 618 620 478 492
		f 4 -830 826 -707 -829
		mu 0 4 615 618 492 444
		f 4 -705 701 -832 828
		mu 0 4 444 443 614 615
		f 4 -834 -702 -703 -833
		mu 0 4 612 614 443 506
		f 4 -835 832 -701 -804
		mu 0 4 610 612 506 527
		f 4 850 -837 -614 -843
		mu 0 4 650 537 482 431
		f 4 -842 849 842 -613
		mu 0 4 430 536 650 431
		f 4 844 -839 558 -840
		mu 0 4 538 531 513 539
		f 4 -841 847 -591 580
		mu 0 4 510 530 535 534
		f 4 591 -856 851 -582
		mu 0 4 539 651 652 482
		f 4 -853 -857 -592 -559
		mu 0 4 513 653 651 539
		f 4 570 559 -858 852
		mu 0 4 513 515 654 653
		f 4 837 -859 -560 571
		mu 0 4 516 655 654 515
		f 4 -854 -860 -838 -583
		mu 0 4 656 657 655 516
		f 4 835 -861 853 -605
		mu 0 4 461 658 657 656
		f 4 -616 -855 -862 -836
		mu 0 4 461 460 659 658
		f 4 -852 -863 854 -615
		mu 0 4 482 652 659 460
		f 4 625 864 1532 -864
		mu 0 4 504 505 1122 1124
		f 4 778 865 1530 -865
		mu 0 4 505 648 1120 1122
		f 4 780 867 1529 -866
		mu 0 4 682 683 1118 1121
		f 4 -624 866 1528 -868
		mu 0 4 684 685 1116 1119
		f 4 -752 749 1837 -869
		mu 0 4 687 688 1315 1317
		f 4 -754 868 1838 -753
		mu 0 4 691 692 1316 1318
		f 4 -1827 1830 1527 -867
		mu 0 4 693 1312 1114 1117
		f 4 794 874 1537 -874
		mu 0 4 696 697 1126 1129
		f 4 795 873 1538 -876
		mu 0 4 698 699 1128 1131
		f 4 -792 877 1541 -877
		mu 0 4 700 701 1132 1135
		f 4 793 875 1539 -878
		mu 0 4 702 703 1130 1133
		f 4 -768 -1807 1819 -879
		mu 0 4 560 562 1304 1303
		f 4 636 1811 1536 -875
		mu 0 4 520 1298 1125 1127
		f 4 -770 878 1820 1805
		mu 0 4 556 560 1303 1298
		f 4 482 884 1581 -884
		mu 0 4 410 411 1168 1171
		f 4 460 885 1594 -885
		mu 0 4 411 408 1181 1169
		f 4 480 886 1593 -886
		mu 0 4 408 409 1179 1182
		f 4 -489 887 1591 -887
		mu 0 4 407 406 1177 1180
		f 3 1784 1589 -888
		mu 0 3 406 1175 1178
		f 3 1779 883 1583
		mu 0 3 1172 410 1170
		f 3 1786 -890 1785
		mu 0 3 373 1190 1212
		f 4 439 891 1601 -891
		mu 0 4 373 372 1185 1188
		f 4 -443 892 1599 -892
		mu 0 4 375 374 1184 1186
		f 4 -453 893 1597 -893
		mu 0 4 374 377 1183 1184
		f 4 -446 894 1610 -894
		mu 0 4 377 376 1195 1183
		f 4 1607 -1639 -1640 1636
		mu 0 4 1191 1194 1215 1214
		f 4 889 1605 -1637 -1638
		mu 0 4 1213 1189 1192 1214
		f 4 748 896 -898 -896
		mu 0 4 555 554 670 671
		f 4 720 898 -900 -897
		mu 0 4 554 637 672 670
		f 4 721 900 -902 -899
		mu 0 4 637 638 673 672
		f 4 722 902 -904 -901
		mu 0 4 638 639 674 673
		f 4 724 904 -906 -903
		mu 0 4 639 558 675 674
		f 4 -771 906 907 -905
		mu 0 4 558 557 676 675
		f 4 -630 626 1839 -909
		mu 0 4 420 419 1308 1319
		f 4 -1805 1812 911 -907
		mu 0 4 557 1297 679 676
		f 4 -636 912 1821 -635
		mu 0 4 475 474 1305 1297
		f 4 -634 914 1822 -913
		mu 0 4 474 490 1320 1305
		f 4 -632 908 1840 -915
		mu 0 4 490 420 1319 1320
		f 4 374 919 897 -919
		mu 0 4 320 323 671 670
		f 4 403 917 910 -920
		mu 0 4 323 322 677 671
		f 4 -406 922 -912 -922
		mu 0 4 328 324 676 679
		f 4 -374 920 -908 -923
		mu 0 4 324 327 675 676
		f 4 905 -921 379 950
		mu 0 4 674 675 327 338
		f 4 952 -398 924 -917
		mu 0 4 678 331 341 681
		f 4 901 -924 398 949
		mu 0 4 672 673 342 332
		f 4 951 -379 921 -914
		mu 0 4 680 335 328 679;
	setAttr ".fc[500:999]"
		f 4 -251 927 -851 -927
		mu 0 4 270 273 537 650
		f 4 -355 928 -844 -928
		mu 0 4 273 272 538 537
		f 4 -252 929 -845 -929
		mu 0 4 272 281 531 538
		f 4 247 925 -846 -930
		mu 0 4 281 268 529 531
		f 4 -112 932 857 -932
		mu 0 4 103 108 653 654
		f 4 94 933 856 -933
		mu 0 4 108 140 651 653
		f 4 155 934 855 -934
		mu 0 4 140 107 652 651
		f 4 122 930 862 -935
		mu 0 4 107 106 659 652
		f 4 286 937 -847 -937
		mu 0 4 263 264 530 529
		f 4 243 938 -848 -938
		mu 0 4 264 265 535 530
		f 4 340 939 -849 -939
		mu 0 4 265 266 536 535
		f 4 -296 935 -850 -940
		mu 0 4 266 267 650 536
		f 4 86 942 861 -942
		mu 0 4 102 101 658 659
		f 4 -170 943 860 -943
		mu 0 4 101 158 657 658
		f 4 -85 944 859 -944
		mu 0 4 158 100 655 657
		f 4 -83 940 858 -945
		mu 0 4 100 99 654 655
		f 3 948 -926 268
		mu 0 3 274 529 268
		f 3 -245 946 -936
		mu 0 3 267 271 650
		f 3 947 -941 -125
		mu 0 3 104 654 99
		f 3 945 -931 91
		mu 0 3 110 659 106
		f 3 134 941 -946
		mu 0 3 110 102 659
		f 3 -947 -278 926
		mu 0 3 650 271 270
		f 3 -90 931 -948
		mu 0 3 104 103 654
		f 3 936 -949 241
		mu 0 3 263 529 274
		f 4 -950 391 918 899
		mu 0 4 672 332 320 670
		f 4 -951 384 923 903
		mu 0 4 674 338 342 673
		f 4 -916 -925 -384 -952
		mu 0 4 680 681 341 335
		f 4 -910 -918 -391 -953
		mu 0 4 678 677 322 331
		f 4 956 955 -955 -954
		mu 0 4 754 755 756 757
		f 4 -961 959 -959 -958
		mu 0 4 757 758 759 760
		f 4 958 963 -963 -962
		mu 0 4 760 759 761 762
		f 4 962 966 -966 -965
		mu 0 4 762 761 763 764
		f 4 965 969 -969 -968
		mu 0 4 764 763 765 766
		f 4 968 972 -972 -971
		mu 0 4 766 765 767 768
		f 4 971 975 -975 -974
		mu 0 4 768 767 769 770
		f 4 974 977 -957 -977
		mu 0 4 770 769 771 772
		f 4 -956 980 979 -979
		mu 0 4 756 755 773 774
		f 4 -960 -984 982 -982
		mu 0 4 759 758 775 776
		f 4 -964 981 985 -985
		mu 0 4 761 759 776 777
		f 4 -967 984 987 -987
		mu 0 4 763 761 777 778
		f 4 -970 986 989 -989
		mu 0 4 765 763 778 779
		f 4 -973 988 991 -991
		mu 0 4 767 765 779 780
		f 4 -976 990 993 -993
		mu 0 4 769 767 780 781
		f 4 -978 992 994 -981
		mu 0 4 771 769 781 782
		f 4 -980 997 996 -996
		mu 0 4 774 773 783 784
		f 4 -983 -1001 999 -999
		mu 0 4 776 775 785 786
		f 4 -986 998 1002 -1002
		mu 0 4 777 776 786 787
		f 4 -988 1001 1004 -1004
		mu 0 4 778 777 787 788
		f 4 -990 1003 1006 -1006
		mu 0 4 779 778 788 789
		f 4 -992 1005 1008 -1008
		mu 0 4 780 779 789 790
		f 4 -994 1007 1010 -1010
		mu 0 4 781 780 790 791
		f 4 -995 1009 1011 -998
		mu 0 4 782 781 791 792
		f 3 1013 -1013 -997
		mu 0 3 783 793 784
		f 3 -1016 -1000 -1015
		mu 0 3 794 786 785
		f 4 1015 1017 -1017 -1003
		mu 0 4 786 794 795 787
		f 4 1016 1019 -1019 -1005
		mu 0 4 787 795 796 788
		f 4 1018 1021 -1021 -1007
		mu 0 4 788 796 797 789
		f 4 1020 1023 -1023 -1009
		mu 0 4 789 797 798 790
		f 4 1022 1025 -1025 -1011
		mu 0 4 790 798 799 791
		f 4 1024 1026 -1014 -1012
		mu 0 4 791 799 800 792
		f 4 1030 1029 -1029 -1028
		mu 0 4 801 802 803 804
		f 4 1034 1033 -1033 1031
		mu 0 4 802 805 806 807
		f 4 1037 1036 -1036 -1034
		mu 0 4 805 808 809 806
		f 4 1040 1039 -1039 -1037
		mu 0 4 808 810 811 809
		f 4 1043 1042 -1042 -1040
		mu 0 4 810 812 813 811
		f 4 1046 1045 -1045 -1043
		mu 0 4 812 814 815 813
		f 4 1049 1048 -1048 -1046
		mu 0 4 814 816 817 815
		f 4 1051 1027 -1051 -1049
		mu 0 4 816 818 819 817
		f 4 1054 -1054 -1053 1028
		mu 0 4 803 820 821 804
		f 4 -1058 1056 1032 1055
		mu 0 4 822 823 807 806
		f 4 1059 -1059 -1056 1035
		mu 0 4 809 824 822 806
		f 4 1061 -1061 -1060 1038
		mu 0 4 811 825 824 809
		f 4 1063 -1063 -1062 1041
		mu 0 4 813 826 825 811
		f 4 1065 -1065 -1064 1044
		mu 0 4 815 827 826 813
		f 4 1067 -1067 -1066 1047
		mu 0 4 817 828 827 815
		f 4 1052 -1069 -1068 1050
		mu 0 4 819 829 828 817
		f 4 1071 -1071 -1070 1053
		mu 0 4 820 830 831 821
		f 4 -1075 1073 1057 1072
		mu 0 4 832 833 823 822
		f 4 1076 -1076 -1073 1058
		mu 0 4 824 834 832 822
		f 4 1078 -1078 -1077 1060
		mu 0 4 825 835 834 824
		f 4 1080 -1080 -1079 1062
		mu 0 4 826 836 835 825
		f 4 1082 -1082 -1081 1064
		mu 0 4 827 837 836 826
		f 4 1084 -1084 -1083 1066
		mu 0 4 828 838 837 827
		f 4 1069 -1086 -1085 1068
		mu 0 4 829 839 838 828
		f 3 1070 1087 -1087
		mu 0 3 831 830 840
		f 3 1089 1074 1088
		mu 0 3 841 833 832
		f 4 1075 1091 -1091 -1089
		mu 0 4 832 834 842 841
		f 4 1077 1093 -1093 -1092
		mu 0 4 834 835 843 842
		f 4 1079 1095 -1095 -1094
		mu 0 4 835 836 844 843
		f 4 1081 1097 -1097 -1096
		mu 0 4 836 837 845 844
		f 4 1083 1099 -1099 -1098
		mu 0 4 837 838 846 845
		f 4 1085 1086 -1101 -1100
		mu 0 4 838 839 847 846
		f 4 1102 954 -1102 -1030
		mu 0 4 848 757 756 849
		f 4 1103 960 -1103 -1032
		mu 0 4 850 758 757 848
		f 4 978 -1105 -1055 1101
		mu 0 4 756 774 851 849
		f 4 -1104 -1057 1105 983
		mu 0 4 758 850 852 775
		f 4 995 -1107 -1072 1104
		mu 0 4 774 784 853 851
		f 4 -1106 -1074 1107 1000
		mu 0 4 775 852 854 785
		f 4 1106 1012 -1109 -1088
		mu 0 4 853 784 793 855
		f 4 1109 1014 -1108 -1090
		mu 0 4 856 794 785 854
		f 4 1110 -1018 -1110 1090
		mu 0 4 857 795 794 856
		f 4 1111 -1020 -1111 1092
		mu 0 4 858 796 795 857
		f 4 1112 -1022 -1112 1094
		mu 0 4 859 797 796 858
		f 4 1113 -1024 -1113 1096
		mu 0 4 860 798 797 859
		f 4 1114 -1026 -1114 1098
		mu 0 4 861 799 798 860
		f 4 1108 -1027 -1115 1100
		mu 0 4 862 800 799 861
		f 4 -1117 -1116 -1038 -1035
		mu 0 4 802 863 808 805
		f 4 -1119 -1118 976 953
		mu 0 4 757 864 770 772
		f 4 957 961 -1120 1118
		mu 0 4 757 760 762 864
		f 4 -1121 970 973 1117
		mu 0 4 864 766 768 770
		f 4 964 967 1120 1119
		mu 0 4 762 764 766 864
		f 4 -1031 -1052 -1122 1116
		mu 0 4 802 801 816 863
		f 4 -1123 -1044 -1041 1115
		mu 0 4 863 812 810 808
		f 4 -1050 -1047 1122 1121
		mu 0 4 816 814 812 863
		f 4 1198 1200 -1202 -1203
		mu 0 4 865 866 867 868
		f 4 1203 1204 -1207 1207
		mu 0 4 866 869 870 871
		f 4 1208 1209 -1211 -1205
		mu 0 4 869 872 873 870
		f 4 1211 1212 -1214 -1210
		mu 0 4 872 874 875 873
		f 4 1214 1215 -1217 -1213
		mu 0 4 874 876 877 875
		f 4 1217 1218 -1220 -1216
		mu 0 4 876 878 879 877
		f 4 1220 1221 -1223 -1219
		mu 0 4 878 880 881 879
		f 4 1223 1202 -1225 -1222
		mu 0 4 880 882 883 881
		f 4 1226 -1228 -1229 1201
		mu 0 4 867 884 885 868
		f 4 1231 -1233 1230 1206
		mu 0 4 870 886 887 871
		f 4 1233 -1235 -1232 1210
		mu 0 4 873 888 886 870
		f 4 1235 -1237 -1234 1213
		mu 0 4 875 889 888 873
		f 4 1237 -1239 -1236 1216
		mu 0 4 877 890 889 875
		f 4 1239 -1241 -1238 1219
		mu 0 4 879 891 890 877
		f 4 1241 -1243 -1240 1222
		mu 0 4 881 892 891 879
		f 4 1228 -1244 -1242 1224
		mu 0 4 883 893 892 881
		f 4 1245 -1247 -1248 1227
		mu 0 4 884 894 895 885
		f 4 1250 -1252 1249 1232
		mu 0 4 886 896 897 887
		f 4 1252 -1254 -1251 1234
		mu 0 4 888 898 896 886
		f 4 1254 -1256 -1253 1236
		mu 0 4 889 899 898 888
		f 4 1256 -1258 -1255 1238
		mu 0 4 890 900 899 889
		f 4 1258 -1260 -1257 1240
		mu 0 4 891 901 900 890
		f 4 1260 -1262 -1259 1242
		mu 0 4 892 902 901 891
		f 4 1247 -1263 -1261 1243
		mu 0 4 893 903 902 892
		f 3 1246 1264 -1266
		mu 0 3 895 894 904
		f 3 1267 1251 1268
		mu 0 3 905 897 896
		f 4 1253 1270 -1272 -1269
		mu 0 4 896 898 906 905
		f 4 1255 1273 -1275 -1271
		mu 0 4 898 899 907 906
		f 4 1257 1276 -1278 -1274
		mu 0 4 899 900 908 907
		f 4 1259 1279 -1281 -1277
		mu 0 4 900 901 909 908
		f 4 1261 1282 -1284 -1280
		mu 0 4 901 902 910 909
		f 4 1262 1265 -1285 -1283
		mu 0 4 902 903 911 910
		f 4 1158 1131 -1194 -1124
		mu 0 4 912 913 914 915
		f 4 -1193 1188 -1160 -1125
		mu 0 4 915 916 917 918
		f 4 1159 1132 -1161 -1126
		mu 0 4 918 917 919 920
		f 4 1160 1133 -1162 -1127
		mu 0 4 920 919 921 922
		f 4 1161 1134 -1163 -1128
		mu 0 4 922 921 923 924
		f 4 1162 1135 -1164 -1129
		mu 0 4 924 923 925 926
		f 4 1163 1136 -1165 -1130
		mu 0 4 926 925 927 928
		f 4 1164 1137 -1159 -1131
		mu 0 4 928 927 929 930
		f 4 -1132 1166 1138 -1195
		mu 0 4 914 913 931 932
		f 4 -1166 -1189 -1192 1187
		mu 0 4 933 917 916 934
		f 4 -1133 1165 1139 -1168
		mu 0 4 919 917 933 935
		f 4 -1134 1167 1140 -1169
		mu 0 4 921 919 935 936
		f 4 -1135 1168 1141 -1170
		mu 0 4 923 921 936 937
		f 4 -1136 1169 1142 -1171
		mu 0 4 925 923 937 938
		f 4 -1137 1170 1143 -1172
		mu 0 4 927 925 938 939
		f 4 -1138 1171 1144 -1167
		mu 0 4 929 927 939 940
		f 4 -1139 1173 1145 -1196
		mu 0 4 932 931 941 942
		f 4 -1173 -1188 -1191 1186
		mu 0 4 943 933 934 944
		f 4 -1140 1172 1146 -1175
		mu 0 4 935 933 943 945
		f 4 -1141 1174 1147 -1176
		mu 0 4 936 935 945 946
		f 4 -1142 1175 1148 -1177
		mu 0 4 937 936 946 947
		f 4 -1143 1176 1149 -1178
		mu 0 4 938 937 947 948
		f 4 -1144 1177 1150 -1179
		mu 0 4 939 938 948 949
		f 4 -1145 1178 1151 -1174
		mu 0 4 940 939 949 950
		f 3 1179 -1197 -1146
		mu 0 3 941 951 942
		f 3 -1181 -1187 -1190
		mu 0 3 952 943 944
		f 4 1180 1152 -1182 -1147
		mu 0 4 943 952 953 945
		f 4 1181 1153 -1183 -1148
		mu 0 4 945 953 954 946
		f 4 1182 1154 -1184 -1149
		mu 0 4 946 954 955 947
		f 4 1183 1155 -1185 -1150
		mu 0 4 947 955 956 948
		f 4 1184 1156 -1186 -1151
		mu 0 4 948 956 957 949
		f 4 1185 1157 -1180 -1152
		mu 0 4 949 957 958 950
		f 4 1193 1199 -1201 -1198
		mu 0 4 959 960 867 866
		f 4 1192 1197 -1208 -1206
		mu 0 4 961 959 866 871
		f 4 -1200 1194 1225 -1227
		mu 0 4 867 960 962 884
		f 4 -1231 -1230 1191 1205
		mu 0 4 871 887 963 961
		f 4 -1226 1195 1244 -1246
		mu 0 4 884 962 964 894
		f 4 -1250 -1249 1190 1229
		mu 0 4 887 897 965 963
		f 4 1196 1263 -1265 -1245
		mu 0 4 964 966 904 894
		f 4 1189 1248 -1268 -1267
		mu 0 4 967 965 897 905
		f 4 -1153 1266 1271 -1270
		mu 0 4 968 967 905 906
		f 4 -1154 1269 1274 -1273
		mu 0 4 969 968 906 907
		f 4 -1155 1272 1277 -1276
		mu 0 4 970 969 907 908
		f 4 -1156 1275 1280 -1279
		mu 0 4 971 970 908 909
		f 4 -1157 1278 1283 -1282
		mu 0 4 972 971 909 910
		f 4 -1158 1281 1284 -1264
		mu 0 4 973 972 910 911
		f 4 1124 1125 1291 1290
		mu 0 4 915 918 920 974
		f 4 -1199 -1224 1287 1286
		mu 0 4 866 882 880 975
		f 4 -1287 1288 -1209 -1204
		mu 0 4 866 975 872 869
		f 4 -1288 -1221 -1218 1285
		mu 0 4 975 880 878 876
		f 4 -1289 -1286 -1215 -1212
		mu 0 4 872 975 876 874
		f 4 -1291 1292 1130 1123
		mu 0 4 915 974 928 912
		f 4 -1292 1126 1127 1289
		mu 0 4 974 920 922 924
		f 4 -1293 -1290 1128 1129
		mu 0 4 928 974 924 926
		f 4 1298 1306 -1294 -1295
		mu 0 4 976 977 978 979
		f 4 1300 1425 1421 -1299
		mu 0 4 980 981 982 983
		f 4 1301 1296 1308 -1300
		mu 0 4 984 985 986 987
		f 4 -1307 1304 1319 -1303
		mu 0 4 978 977 988 989
		f 4 -1422 1426 1422 -1305
		mu 0 4 983 982 990 991
		f 4 -1309 1303 1321 -1306
		mu 0 4 987 986 992 993
		f 4 -1315 1311 -1302 -1313
		mu 0 4 994 995 985 984
		f 4 -1320 1317 1328 -1316
		mu 0 4 989 988 996 997
		f 4 -1318 -1423 1453 1452
		mu 0 4 996 991 990 998
		f 4 -1322 1316 1330 -1319
		mu 0 4 993 992 999 1000
		f 4 1331 1429 -1323 1315
		mu 0 4 997 1001 1002 989
		f 4 -1327 1323 1314 -1325
		mu 0 4 1003 1004 995 994
		f 4 1433 1432 -1326 -1414
		mu 0 4 1005 1006 1007 1008
		f 4 -1335 1332 1326 -1334
		mu 0 4 1009 1010 1004 1003
		f 4 -1421 1424 -1301 -1337
		mu 0 4 1011 1012 981 980
		f 4 -1339 1336 1294 1295
		mu 0 4 1013 1014 976 979
		f 4 -1420 1423 1420 -1340
		mu 0 4 1015 1016 1012 1011
		f 4 -1342 1339 1338 1310
		mu 0 4 1008 1017 1014 1013
		f 4 1419 -1343 -1471 1472
		mu 0 4 1016 1015 1018 1019
		f 4 -1345 1342 1341 1325
		mu 0 4 1007 1018 1017 1008
		f 4 -1453 1455 1454 -1347
		mu 0 4 996 998 1020 1021
		f 4 -1331 1348 1349 -1346
		mu 0 4 1000 999 1022 1023
		f 4 1450 -1332 1350 1351
		mu 0 4 1024 1001 997 1025
		f 4 -1329 1346 1352 -1351
		mu 0 4 997 996 1021 1025
		f 4 -1433 1435 1434 -1355
		mu 0 4 1007 1006 1026 1027
		f 4 1334 1356 -1358 -1354
		mu 0 4 1010 1009 1028 1029
		f 4 1470 1358 -1469 1471
		mu 0 4 1019 1018 1030 1031
		f 4 1344 1354 -1361 -1359
		mu 0 4 1018 1007 1027 1030
		f 4 -1455 1457 1456 -1363
		mu 0 4 1021 1020 1032 1033
		f 4 -1350 1364 1365 -1362
		mu 0 4 1023 1022 1034 1035
		f 4 -1352 1366 1367 1449
		mu 0 4 1024 1025 1036 1037
		f 4 -1353 1362 1368 -1367
		mu 0 4 1025 1021 1033 1036
		f 4 -1435 1437 1436 -1371
		mu 0 4 1027 1026 1038 1039
		f 4 1357 1372 -1374 -1370
		mu 0 4 1029 1028 1040 1041
		f 4 1468 1374 -1467 1469
		mu 0 4 1031 1030 1042 1043
		f 4 1360 1370 -1377 -1375
		mu 0 4 1030 1027 1039 1042
		f 4 -1457 1459 1458 -1379
		mu 0 4 1033 1032 1044 1045
		f 4 -1366 1380 1381 -1378
		mu 0 4 1035 1034 1046 1047
		f 4 -1368 1382 1383 1447
		mu 0 4 1037 1036 1048 1049
		f 4 -1369 1378 1384 -1383
		mu 0 4 1036 1033 1045 1048
		f 4 -1437 1439 1438 -1387
		mu 0 4 1039 1038 1050 1051
		f 4 1373 1388 -1390 -1386
		mu 0 4 1041 1040 1052 1053
		f 4 1466 1390 -1465 1467
		mu 0 4 1043 1042 1054 1055
		f 4 1376 1386 -1393 -1391
		mu 0 4 1042 1039 1051 1054
		f 4 -1459 1461 1460 -1395
		mu 0 4 1045 1044 1056 1057
		f 4 -1382 1396 1397 -1394
		mu 0 4 1047 1046 1058 1059
		f 4 -1384 1398 1399 1445
		mu 0 4 1049 1048 1060 1061
		f 4 -1385 1394 1400 -1399
		mu 0 4 1048 1045 1057 1060
		f 4 -1439 1441 1440 -1403
		mu 0 4 1051 1050 1062 1063
		f 4 1389 1404 -1406 -1402
		mu 0 4 1053 1052 1064 1065
		f 4 1464 1406 -1463 1465
		mu 0 4 1055 1054 1066 1067
		f 4 1392 1402 -1409 -1407
		mu 0 4 1054 1051 1063 1066
		f 4 -1461 1463 1462 -1410
		mu 0 4 1057 1056 1067 1066
		f 4 -1398 1411 1405 -1411
		mu 0 4 1059 1058 1065 1064
		f 4 -1400 1412 -1441 1443
		mu 0 4 1061 1060 1063 1062
		f 4 -1401 1409 1408 -1413
		mu 0 4 1060 1057 1066 1063
		f 4 -1415 -1416 1413 -1311
		mu 0 4 1013 1068 1005 1008
		f 4 1297 -1417 1414 -1296
		mu 0 4 979 1069 1068 1013
		f 4 1293 1309 -1418 -1298
		mu 0 4 979 978 1070 1069
		f 4 -1419 -1310 1302 1322
		mu 0 4 1002 1070 978 989
		f 4 -1429 -1430 1427 -1317
		mu 0 4 992 1002 1001 999
		f 4 -1431 1418 1428 -1304
		mu 0 4 986 1070 1002 992
		f 4 1417 1430 -1297 -1432
		mu 0 4 1069 1070 986 985
		f 4 1416 1431 -1312 1313
		mu 0 4 1068 1069 985 995
		f 4 1415 -1314 -1324 1327
		mu 0 4 1005 1068 995 1004
		f 4 -1434 -1328 -1333 1335
		mu 0 4 1006 1005 1004 1010
		f 4 -1436 -1336 1353 1355
		mu 0 4 1026 1006 1010 1029
		f 4 -1438 -1356 1369 1371
		mu 0 4 1038 1026 1029 1041
		f 4 -1440 -1372 1385 1387
		mu 0 4 1050 1038 1041 1053
		f 4 -1442 -1388 1401 1403
		mu 0 4 1062 1050 1053 1065
		f 4 -1443 -1444 -1404 -1412
		mu 0 4 1058 1061 1062 1065
		f 4 -1445 -1446 1442 -1397
		mu 0 4 1046 1049 1061 1058
		f 4 -1447 -1448 1444 -1381
		mu 0 4 1034 1037 1049 1046
		f 4 -1449 -1450 1446 -1365
		mu 0 4 1022 1024 1037 1034
		f 4 -1428 -1451 1448 -1349
		mu 0 4 999 1001 1024 1022
		f 4 -1426 1451 1299 1307
		mu 0 4 982 981 984 987
		f 4 -1427 -1308 1305 1320
		mu 0 4 990 982 987 993
		f 4 -1454 -1321 1318 1329
		mu 0 4 998 990 993 1000
		f 4 -1456 -1330 1345 1347
		mu 0 4 1020 998 1000 1023
		f 4 -1458 -1348 1361 1363
		mu 0 4 1032 1020 1023 1035
		f 4 -1460 -1364 1377 1379
		mu 0 4 1044 1032 1035 1047
		f 4 -1462 -1380 1393 1395
		mu 0 4 1056 1044 1047 1059
		f 4 -1464 -1396 1410 1407
		mu 0 4 1067 1056 1059 1064
		f 4 1391 -1466 -1408 -1405
		mu 0 4 1052 1055 1067 1064
		f 4 1375 -1468 -1392 -1389
		mu 0 4 1040 1043 1055 1052
		f 4 1359 -1470 -1376 -1373
		mu 0 4 1028 1031 1043 1040
		f 4 1343 -1472 -1360 -1357
		mu 0 4 1009 1019 1031 1028
		f 4 -1473 -1344 1333 1340
		mu 0 4 1016 1019 1009 1003
		f 4 -1424 -1341 1324 1337
		mu 0 4 1012 1016 1003 994
		f 4 -1425 -1338 1312 -1452
		mu 0 4 981 1012 994 984
		f 4 1505 1513 1504 -1515
		mu 0 4 1071 1072 1073 1074
		f 4 -1481 1483 1515 1493
		mu 0 4 1075 1076 1077 1078
		f 4 1485 1480 1503 1488
		mu 0 4 1079 1076 1075 1080
		f 4 1496 1511 1479 1501
		mu 0 4 1081 1082 1083 1084
		f 4 1494 -1504 -1494 1499
		mu 0 4 1085 1086 1087 1088
		f 4 1490 1506 1491 1477
		mu 0 4 1089 1090 1091 1092
		f 4 -1479 1516 -1497 1502
		mu 0 4 1093 1094 1082 1081
		f 4 -1478 1473 -1486 1489
		mu 0 4 1095 1096 1076 1079
		f 4 -1474 -1492 1520 -1484
		mu 0 4 1076 1096 1097 1077
		f 4 -1485 1518 -1506 -1520
		mu 0 4 1098 1099 1072 1071
		f 4 -1475 1517 -1510 -1519
		mu 0 4 1099 1100 1101 1072
		f 4 1509 1512 1508 -1514
		mu 0 4 1072 1101 1102 1073
		f 4 -1480 -1508 -1495 1500
		mu 0 4 1103 1104 1086 1085
		f 4 1482 -1489 1507 -1512
		mu 0 4 1082 1079 1080 1083
		f 4 -1487 -1490 -1483 -1517
		mu 0 4 1094 1095 1079 1082
		f 4 1478 1510 -1491 1486
		mu 0 4 1105 1106 1090 1089
		f 4 -1476 1519 -1493 -1521
		mu 0 4 1097 1098 1071 1077
		f 4 1492 1514 1476 -1516
		mu 0 4 1077 1071 1074 1078
		f 4 1487 -1500 -1477 -1505
		mu 0 4 1073 1085 1088 1074
		f 4 -1496 -1501 -1488 -1509
		mu 0 4 1102 1103 1085 1073
		f 4 1481 -1502 1495 -1513
		mu 0 4 1107 1081 1084 1108
		f 4 -1498 -1503 -1482 -1518
		mu 0 4 1109 1093 1081 1107
		f 4 1497 1474 -1499 -1511
		mu 0 4 1106 1100 1099 1090
		f 4 1498 1484 1475 -1507
		mu 0 4 1090 1099 1098 1091
		f 4 -1524 1521 869 -1523
		mu 0 4 1113 1110 717 689
		f 4 -1526 1522 871 -1525
		mu 0 4 1115 1112 663 664
		f 4 -1528 1524 872 -1527
		mu 0 4 1117 1114 694 695
		f 3 -1529 1526 1776
		mu 0 3 1119 1116 686
		f 3 -1533 1771 -1532
		mu 0 3 1124 1122 660
		f 4 -1534 1531 -871 -1522
		mu 0 4 1111 1123 662 716
		f 4 -1537 1534 -882 -1536
		mu 0 4 1127 1125 669 705
		f 3 1778 -1571 1777
		mu 0 3 715 1132 1161
		f 4 -1544 1540 880 -1543
		mu 0 4 1137 1134 704 712
		f 4 -1546 1542 879 -1545
		mu 0 4 1138 1136 713 668
		f 4 -1547 1544 882 -1535
		mu 0 4 1125 1138 668 669
		f 4 -1550 1547 870 -1549
		mu 0 4 1142 1139 661 719
		f 3 -1552 1548 1772
		mu 0 3 1143 1141 660
		f 4 -1553 -1554 1550 -1531
		mu 0 4 1120 1145 1143 1122
		f 4 -1555 -1556 1552 -1530
		mu 0 4 1118 1147 1144 1121
		f 3 -1558 1775 -1557
		mu 0 3 1149 1146 709
		f 4 -1560 1556 -873 -1559
		mu 0 4 1151 1148 707 708
		f 4 -1562 1558 -872 -1561
		mu 0 4 1153 1150 664 663
		f 4 -1563 1560 -870 -1548
		mu 0 4 1140 1152 706 718
		f 4 -1566 1563 -883 -1565
		mu 0 4 1155 1154 669 668
		f 4 -1568 1564 -880 -1567
		mu 0 4 1157 1155 668 714
		f 4 -1570 1566 -881 -1569
		mu 0 4 1159 1156 667 710
		f 4 -1573 -1574 1570 -1540
		mu 0 4 1130 1163 1160 1133
		f 4 -1575 -1576 1572 -1539
		mu 0 4 1128 1165 1162 1131
		f 3 1774 1574 1773
		mu 0 3 665 1164 1129
		f 4 -1579 1576 881 -1564
		mu 0 4 1154 1166 711 669
		f 4 -1582 1579 1549 -1581
		mu 0 4 1171 1168 1139 1142
		f 4 -1584 1580 1551 -1583
		mu 0 4 1172 1170 1141 1143
		f 4 -1586 1582 1553 -1585
		mu 0 4 1174 1172 1143 1145
		f 4 -1588 1584 1555 -1587
		mu 0 4 1176 1173 1144 1147
		f 4 -1590 1586 1557 -1589
		mu 0 4 1178 1175 1146 1149
		f 4 -1592 1588 1559 -1591
		mu 0 4 1180 1177 1148 1151
		f 4 -1594 1590 1561 -1593
		mu 0 4 1182 1179 1150 1153
		f 4 -1595 1592 1562 -1580
		mu 0 4 1169 1181 1152 1140
		f 4 -1598 1595 1565 -1597
		mu 0 4 1184 1183 1154 1155
		f 4 -1600 1596 1567 -1599
		mu 0 4 1186 1184 1155 1157
		f 4 -1602 1598 1569 -1601
		mu 0 4 1188 1185 1156 1159
		f 4 -1604 1600 1571 -1603
		mu 0 4 1190 1187 1158 1161
		f 4 -1606 1602 1573 -1605
		mu 0 4 1192 1189 1160 1163
		f 4 -1608 1604 1575 -1607
		mu 0 4 1194 1191 1162 1165
		f 4 -1610 1606 1577 -1609
		mu 0 4 1196 1193 1164 1167
		f 4 -1611 1608 1578 -1596
		mu 0 4 1183 1195 1166 1154
		f 4 489 -1614 1611 -483
		mu 0 4 410 1198 1197 411
		f 3 -1616 -490 1780
		mu 0 3 1199 1198 410
		f 4 -1617 -1618 1614 1585
		mu 0 4 1174 1200 1199 1172
		f 4 -1620 1616 1587 -889
		mu 0 4 1201 1200 1173 1176
		f 3 1783 -1621 -1622
		mu 0 3 1202 406 1203
		f 4 -1624 1620 488 461
		mu 0 4 1204 1203 406 407
		f 4 481 -1626 -462 -481
		mu 0 4 408 1206 1205 409
		f 4 -1627 -482 -461 -1612
		mu 0 4 1197 1206 408 411
		f 4 1627 452 441 -1630
		mu 0 4 1207 377 374 1208
		f 4 442 440 -1632 -442
		mu 0 4 374 375 1209 1208
		f 4 -1634 -441 -440 -1633
		mu 0 4 1211 1210 372 373
		f 3 1782 1638 1781
		mu 0 3 376 1215 1193
		f 4 445 -1628 -1643 -444
		mu 0 4 376 377 1207 1216
		f 4 1612 2110 2109 1613
		mu 0 4 1198 1453 1454 1197
		f 4 2108 -1613 1615 -2106
		mu 0 4 1452 1453 1198 1199
		f 4 -2104 2106 2105 1617
		mu 0 4 1200 1451 1452 1199
		f 4 2104 2103 1619 1618
		mu 0 4 1449 1451 1200 1201
		f 4 1621 -2100 2102 -1619
		mu 0 4 1202 1203 1448 1450
		f 4 2100 2099 1623 1622
		mu 0 4 1446 1448 1203 1204
		f 4 1624 2098 -1623 1625
		mu 0 4 1206 1445 1447 1205
		f 4 2111 -1625 1626 -2110
		mu 0 4 1454 1445 1206 1197
		f 4 2113 1629 1628 2114
		mu 0 4 1456 1207 1208 1455
		f 4 1631 1630 2127 -1629
		mu 0 4 1208 1209 1463 1455
		f 4 2126 -1631 1633 -2124
		mu 0 4 1462 1464 1210 1211
		f 4 1634 2124 2123 1635
		mu 0 4 1212 1460 1462 1211
		f 4 2122 -1635 1637 -2120
		mu 0 4 1459 1461 1213 1214
		f 4 1639 -2118 2120 2119
		mu 0 4 1214 1215 1458 1459
		f 4 2118 2117 1641 1640
		mu 0 4 1457 1458 1215 1216
		f 4 1642 -2114 2116 -1641
		mu 0 4 1216 1207 1456 1457
		f 4 490 -1678 1675 471
		mu 0 4 400 1238 1237 401
		f 3 -1680 -491 1788
		mu 0 3 1239 1238 400
		f 4 -1681 -1682 1678 1649
		mu 0 4 1220 1240 1239 1219
		f 4 -1684 1680 1651 1650
		mu 0 4 1241 1240 1220 1221
		f 3 1791 -1685 -1686
		mu 0 3 1242 402 1243
		f 4 -1688 1684 487 468
		mu 0 4 1244 1243 402 403
		f 4 -1690 -469 470 474
		mu 0 4 1246 1245 404 405
		f 4 -1691 -475 472 -1676
		mu 0 4 1237 1246 405 401
		f 4 1691 -448 437 -1694
		mu 0 4 1247 367 370 1248
		f 4 -1696 -438 -437 435
		mu 0 4 1249 1248 370 371
		f 4 -1698 -436 -435 -1697
		mu 0 4 1251 1250 368 369
		f 4 -433 -1692 -1707 -431
		mu 0 4 366 367 1247 1256
		f 4 1676 2142 2141 1677
		mu 0 4 1238 1473 1474 1237
		f 4 2140 -1677 1679 -2138
		mu 0 4 1472 1473 1238 1239
		f 4 -2136 2138 2137 1681
		mu 0 4 1240 1471 1472 1239
		f 4 2136 2135 1683 1682
		mu 0 4 1469 1471 1240 1241
		f 4 1685 -2132 2134 -1683
		mu 0 4 1242 1243 1468 1470
		f 4 2132 2131 1687 1686
		mu 0 4 1466 1468 1243 1244
		f 4 2130 -1687 1689 1688
		mu 0 4 1465 1467 1245 1246
		f 4 2143 -1689 1690 -2142
		mu 0 4 1474 1465 1246 1237
		f 4 2145 1693 1692 2146
		mu 0 4 1476 1247 1248 1475
		f 4 2159 -1693 1695 1694
		mu 0 4 1483 1475 1248 1249
		f 4 2158 -1695 1697 -2156
		mu 0 4 1482 1484 1250 1251
		f 4 1698 2156 2155 1699
		mu 0 4 1252 1480 1482 1251
		f 4 2154 -1699 1701 -2152
		mu 0 4 1479 1481 1253 1254
		f 4 1703 -2150 2152 2151
		mu 0 4 1254 1255 1478 1479
		f 4 2150 2149 1705 1704
		mu 0 4 1477 1478 1255 1256
		f 4 1706 -2146 2148 -1705
		mu 0 4 1256 1247 1476 1477
		f 4 491 -1742 1739 465
		mu 0 4 384 1278 1277 387
		f 3 -1744 -492 1796
		mu 0 3 1279 1278 384
		f 4 -1745 -1746 1742 1713
		mu 0 4 1260 1280 1279 1259
		f 4 -1748 1744 1715 1714
		mu 0 4 1281 1280 1260 1261
		f 3 1799 -1749 -1750
		mu 0 3 1282 389 1283
		f 4 -1752 1748 486 466
		mu 0 4 1284 1283 389 390
		f 4 -1754 -467 467 476
		mu 0 4 1286 1285 396 397
		f 4 -1755 -477 473 -1740
		mu 0 4 1277 1286 397 387
		f 4 1755 -447 427 -1758
		mu 0 4 1287 351 361 1288
		f 4 -1760 -428 -427 421
		mu 0 4 1289 1288 361 362
		f 4 -1762 -422 -421 -1761
		mu 0 4 1291 1290 356 357
		f 4 -419 -1756 -1771 -416
		mu 0 4 350 351 1287 1296
		f 3 -1551 -1773 -1772
		mu 0 3 1122 1143 660
		f 3 -1538 1535 -1774
		mu 0 3 1129 1126 665
		f 3 -1578 -1775 -1577
		mu 0 3 1167 1164 665
		f 3 -1777 -1776 1554
		mu 0 3 1119 709 1146
		f 3 -1572 1568 -1778
		mu 0 3 1161 1158 666
		f 3 -1542 -1779 -1541
		mu 0 3 1135 1132 715
		f 3 -1780 -1615 -1781
		mu 0 3 410 1172 1199
		f 3 -1782 1609 -895
		mu 0 3 376 1193 1196
		f 3 -1642 -1783 443
		mu 0 3 1216 1215 376
		f 3 -1784 888 -1785
		mu 0 3 406 1202 1175
		f 3 -1786 -1636 1632
		mu 0 3 373 1212 1211
		f 3 -1787 890 1603
		mu 0 3 1190 373 1187
		f 3 -1679 -1789 -1788
		mu 0 3 1219 1239 400
		f 3 -1790 1673 1672
		mu 0 3 366 1235 1236
		f 3 -1706 -1791 430
		mu 0 3 1256 1255 366
		f 3 -1792 -1651 -1793
		mu 0 3 402 1242 1222
		f 3 -1794 -1700 1696
		mu 0 3 369 1252 1251
		f 3 -1795 438 1667
		mu 0 3 1232 369 1231
		f 3 -1743 -1797 -1796
		mu 0 3 1259 1279 384
		f 3 -1798 1737 1736
		mu 0 3 350 1275 1276
		f 3 -1770 -1799 415
		mu 0 3 1296 1295 350
		f 3 -1800 -1715 -1801
		mu 0 3 389 1282 1262
		f 3 -1802 -1764 1760
		mu 0 3 357 1292 1291
		f 3 -1803 433 1731
		mu 0 3 1272 357 1271
		f 4 -1816 1807 -762 -1804
		mu 0 4 1306 1300 566 540
		f 4 -1817 -763 -764 -1808
		mu 0 4 1300 1302 567 566
		f 4 -1818 1806 -766 762
		mu 0 4 1301 1299 562 564
		f 4 -1819 1804 -772 -1806
		mu 0 4 1298 1297 557 556
		f 4 -1820 1810 1545 -1810
		mu 0 4 1303 1304 1136 1138
		f 4 -639 876 1543 -1811
		mu 0 4 1299 439 1134 1137
		f 4 -1821 1809 1546 -1812
		mu 0 4 1298 1303 1138 1125
		f 4 -1822 1813 913 -1813
		mu 0 4 1297 1305 680 679
		f 4 -1823 1814 915 -1814
		mu 0 4 1305 1320 681 680
		f 4 -1834 -627 -628 -1826
		mu 0 4 1310 1308 419 504
		f 4 -1835 -755 -756 752
		mu 0 4 1311 1314 547 546
		f 4 -1836 1823 -758 754
		mu 0 4 1313 1307 543 544
		f 4 -1837 1803 -760 -1824
		mu 0 4 1307 1306 540 543
		f 4 -1838 1828 1523 -1830
		mu 0 4 1317 1315 1110 1113
		f 4 1825 863 1533 -1829
		mu 0 4 1309 690 1123 1111
		f 4 -1839 1829 1525 -1831
		mu 0 4 1318 1316 1112 1115
		f 4 -1840 1831 909 -1833
		mu 0 4 1319 1308 677 678
		f 4 1824 895 -911 -1832
		mu 0 4 1308 555 671 677
		f 4 -1841 1832 916 -1815
		mu 0 4 1320 1319 678 681
		f 4 694 1879 -1881 -1878
		mu 0 4 452 453 1322 1321
		f 4 -718 1882 1884 -1884
		mu 0 4 462 463 1324 1323
		f 4 644 1897 -1899 -1896
		mu 0 4 571 433 1326 1325
		f 4 -541 1893 1899 -1898
		mu 0 4 433 432 1327 1326
		f 4 -530 1900 1903 -1894
		mu 0 4 432 483 1328 1327
		f 4 -519 1904 1907 -1901
		mu 0 4 483 459 1329 1328
		f 4 -646 1908 1910 -1910
		mu 0 4 458 574 1331 1330
		f 4 -501 1909 1912 -1905
		mu 0 4 459 458 1330 1329
		f 4 670 1895 -1915 -1880
		mu 0 4 453 571 1325 1322
		f 4 -673 1883 1917 -1909
		mu 0 4 574 462 1323 1331
		f 4 -810 1920 1921 -1919
		mu 0 4 601 604 1333 1332
		f 4 806 1877 -1923 -1921
		mu 0 4 604 452 1321 1333
		f 4 -812 1918 1925 -1924
		mu 0 4 635 601 1332 1334
		f 4 -814 1923 1928 -1927
		mu 0 4 631 635 1334 1335
		f 4 -815 1929 1930 -1883
		mu 0 4 463 632 1336 1324
		f 4 -816 1926 1931 -1930
		mu 0 4 632 631 1335 1336
		f 4 297 -1951 1932 -288
		mu 0 4 243 1338 1337 246
		f 4 -1952 -298 -226 -1935
		mu 0 4 1340 1338 243 260
		f 4 265 -1953 1934 -257
		mu 0 4 259 1341 1339 260
		f 4 -1954 -266 -237 -1937
		mu 0 4 1342 1341 259 252
		f 4 279 -1955 1936 -270
		mu 0 4 251 1343 1342 252
		f 4 -1956 -280 -232 -1939
		mu 0 4 1344 1343 251 280
		f 4 -368 -1940 1938 235
		mu 0 4 257 256 1344 280
		f 4 -367 351 -1957 1939
		mu 0 4 177 176 1346 1345
		f 4 -366 350 -1958 -352
		mu 0 4 176 307 1347 1346
		f 4 -365 -1943 -1959 -351
		mu 0 4 287 180 1349 1348
		f 4 -1960 1942 -364 -1944
		mu 0 4 1350 1349 180 179
		f 4 -1961 1943 -363 -1945
		mu 0 4 1351 1350 179 192
		f 4 -1962 1944 -362 -1946
		mu 0 4 1352 1351 192 191
		f 4 -1963 1945 -361 -1947
		mu 0 4 1353 1352 191 168
		f 4 -1964 1946 -360 344
		mu 0 4 1354 1353 168 167
		f 4 -1965 -345 -359 -1949
		mu 0 4 1356 1355 304 172;
	setAttr ".fc[1000:1097]"
		f 4 -1966 1948 -358 -1950
		mu 0 4 1357 1356 172 171
		f 4 1949 -357 -228 -1933
		mu 0 4 1337 248 247 246
		f 4 -1985 -60 -46 -1968
		mu 0 4 1359 1358 84 85
		f 4 75 -1986 1967 -126
		mu 0 4 44 1360 1359 85
		f 4 -1987 -76 -58 -1970
		mu 0 4 1362 1361 746 81
		f 4 66 -1988 1969 -107
		mu 0 4 65 1363 1362 81
		f 4 -1989 -67 -52 -1972
		mu 0 4 1364 1363 65 68
		f 4 71 -1990 1971 -113
		mu 0 4 18 1365 1364 68
		f 4 -1991 -72 -16 -1975
		mu 0 4 1367 1366 18 19
		f 4 -1992 1974 -136 -1976
		mu 0 4 1369 1367 19 117
		f 4 -1993 1975 115 17
		mu 0 4 1370 1368 120 20
		f 4 20 19 -1994 -18
		mu 0 4 20 21 1371 1370
		f 4 101 29 -1995 -20
		mu 0 4 21 32 1372 1371
		f 4 32 31 -1996 -30
		mu 0 4 32 33 1373 1372
		f 4 128 8 -1997 -32
		mu 0 4 33 8 1374 1373
		f 4 11 -1982 -1998 -9
		mu 0 4 8 9 1376 1374
		f 4 147 12 -1999 1981
		mu 0 4 137 12 1377 1375
		f 4 13 59 -2000 -13
		mu 0 4 12 13 1378 1377
		f 4 -2003 2000 -315 331
		mu 0 4 1381 1379 720 211
		f 4 -2004 -2005 -332 -211
		mu 0 4 210 1383 1381 211
		f 4 -2007 2003 -291 1844
		mu 0 4 1384 1382 728 207
		f 4 -2009 -1845 -210 -2008
		mu 0 4 1386 1384 207 291
		f 4 -2011 2007 -313 -2010
		mu 0 4 1387 1385 735 205
		f 4 -2013 2009 -209 -2012
		mu 0 4 1389 1387 205 206
		f 4 -2015 2011 211 -2014
		mu 0 4 1390 1388 736 217
		f 4 -2016 2013 289 -2001
		mu 0 4 1380 1390 217 214
		f 4 -2019 2016 -4 -2018
		mu 0 4 1393 1391 53 57
		f 4 -2021 2017 -127 -2020
		mu 0 4 1395 1393 57 45
		f 4 -2023 2019 42 -2022
		mu 0 4 1396 1394 753 46
		f 4 -2025 2021 144 -2024
		mu 0 4 1398 1396 46 124
		f 4 -2027 2023 129 1845
		mu 0 4 1399 1397 745 48
		f 4 -2028 -2029 -1846 43
		mu 0 4 49 1401 1399 48
		f 4 -2031 2027 146 44
		mu 0 4 1402 1400 737 52
		f 4 -2032 -45 2 -2017
		mu 0 4 1392 1402 52 752
		f 4 -2035 2032 220 328
		mu 0 4 1405 1403 239 238
		f 4 -2037 -329 310 -2036
		mu 0 4 1407 1405 238 299
		f 4 -2039 2035 -260 267
		mu 0 4 1408 1406 237 234
		f 4 -2041 -268 -219 -2040
		mu 0 4 1410 1408 234 279
		f 4 -2043 2039 -309 -2042
		mu 0 4 1411 1409 295 232
		f 4 -2045 2041 -218 -2044
		mu 0 4 1413 1411 232 233
		f 4 -2047 2043 221 -2046
		mu 0 4 1414 1412 276 241
		f 4 -2033 -2048 2045 258
		mu 0 4 242 1404 1414 241
		f 4 -2051 2048 -41 -2050
		mu 0 4 1417 1415 79 80
		f 4 -2053 2049 -108 -2052
		mu 0 4 1419 1417 80 111
		f 4 -2055 2051 53 -2054
		mu 0 4 1420 1418 71 72
		f 4 -2057 2053 140 -2056
		mu 0 4 1422 1420 72 128
		f 4 -2059 2055 109 54
		mu 0 4 1423 1421 114 73
		f 4 -2061 -55 55 -2060
		mu 0 4 1425 1423 73 74
		f 4 -2063 2059 -143 56
		mu 0 4 1426 1424 132 77
		f 4 -2049 -2064 -57 -40
		mu 0 4 78 1416 1426 77
		f 4 -2067 2064 214 325
		mu 0 4 1428 1427 225 222
		f 4 -2069 -326 306 -2068
		mu 0 4 1430 1428 222 221
		f 4 -2071 2067 -273 281
		mu 0 4 1431 1429 734 218
		f 4 -2073 -282 -213 -2072
		mu 0 4 1432 1431 218 285
		f 4 -2075 2071 216 -2074
		mu 0 4 1433 1432 285 230
		f 4 -2077 2073 304 -2076
		mu 0 4 1434 1433 230 231
		f 4 -2079 2075 215 -2078
		mu 0 4 1435 1434 231 227
		f 4 -2065 -2080 2077 271
		mu 0 4 225 1427 1435 227
		f 4 -2083 2080 -29 -2082
		mu 0 4 1437 1436 64 67
		f 4 -2085 2081 -114 -2084
		mu 0 4 1438 1437 67 69
		f 4 -2087 2083 -53 -2086
		mu 0 4 1439 1438 69 70
		f 4 -2089 2085 -137 -2088
		mu 0 4 1440 1439 70 118
		f 4 -2091 2087 116 46
		mu 0 4 1441 1440 118 59
		f 4 -2093 -47 47 -2092
		mu 0 4 1443 1441 59 60
		f 4 -2095 2091 -139 48
		mu 0 4 1444 1442 751 63
		f 4 -2081 -2096 -49 -28
		mu 0 4 64 1436 1444 63
		f 4 2096 -1658 -2098 -2099
		mu 0 4 1445 1226 1225 1447
		f 4 -1656 1652 -2101 2097
		mu 0 4 1224 1223 1448 1446
		f 4 -2103 -1653 -1654 -2102
		mu 0 4 1450 1448 1223 1222
		f 4 -1652 1648 -2105 2101
		mu 0 4 1221 1220 1451 1449
		f 4 -2107 -1649 -1650 1646
		mu 0 4 1452 1451 1220 1219
		f 4 -1648 -2108 -2109 -1647
		mu 0 4 1219 1218 1453 1452
		f 4 -2111 2107 -1646 1643
		mu 0 4 1454 1453 1218 1217
		f 4 -1659 -2097 -2112 -1644
		mu 0 4 1217 1226 1445 1454
		f 4 1659 -2115 2112 -1662
		mu 0 4 1227 1456 1455 1228
		f 4 -2117 -1660 -1675 -2116
		mu 0 4 1457 1456 1227 1236
		f 4 -1674 1670 -2119 2115
		mu 0 4 1236 1235 1458 1457
		f 4 -2121 -1671 -1672 1668
		mu 0 4 1459 1458 1235 1234
		f 4 -1670 -2122 -2123 -1669
		mu 0 4 1234 1233 1461 1459
		f 4 -2125 2121 -1668 1664
		mu 0 4 1462 1460 1232 1231
		f 4 -1666 -2126 -2127 -1665
		mu 0 4 1231 1230 1464 1462
		f 4 -2128 2125 -1664 -2113
		mu 0 4 1455 1463 1229 1228
		f 4 -1722 -2130 -2131 2128
		mu 0 4 1266 1265 1467 1465
		f 4 -1720 1716 -2133 2129
		mu 0 4 1264 1263 1468 1466
		f 4 -2135 -1717 -1718 -2134
		mu 0 4 1470 1468 1263 1262
		f 4 -1716 1712 -2137 2133
		mu 0 4 1261 1260 1471 1469
		f 4 -2139 -1713 -1714 1710
		mu 0 4 1472 1471 1260 1259
		f 4 -1712 -2140 -2141 -1711
		mu 0 4 1259 1258 1473 1472
		f 4 -2143 2139 -1710 1707
		mu 0 4 1474 1473 1258 1257
		f 4 -1723 -2129 -2144 -1708
		mu 0 4 1257 1266 1465 1474
		f 4 1723 -2147 2144 -1726
		mu 0 4 1267 1476 1475 1268
		f 4 -2149 -1724 -1739 -2148
		mu 0 4 1477 1476 1267 1276
		f 4 -1738 1734 -2151 2147
		mu 0 4 1276 1275 1478 1477
		f 4 -2153 -1735 -1736 1732
		mu 0 4 1479 1478 1275 1274
		f 4 -1734 -2154 -2155 -1733
		mu 0 4 1274 1273 1481 1479
		f 4 -2157 2153 -1732 1728
		mu 0 4 1482 1480 1272 1271
		f 4 -1730 -2158 -2159 -1729
		mu 0 4 1271 1270 1484 1482
		f 4 -1728 -2145 -2160 2157
		mu 0 4 1269 1268 1475 1483;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "bodyShapeDeformed" -p "heropengin_model_3:body";
	rename -uid "883306BD-47CE-A327-7153-109E6B405A06";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.51157307624816895 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "heropengin_model_3:mask2" -p "heropengin_model_3:model";
	rename -uid "45D1C33D-48D8-6DFF-EC5A-4CAC00EA7229";
	setAttr ".t" -type "double3" 0.84666508071737212 -0.029266720765193099 0.66007583074723186 ;
	setAttr ".rp" -type "double3" 1.9073486328125e-06 68.67262077331543 16.365653038024902 ;
	setAttr ".sp" -type "double3" 1.9073486328125e-06 68.67262077331543 16.365653038024902 ;
createNode mesh -n "heropengin_model_3:maskShape2" -p "heropengin_model_3:mask2";
	rename -uid "51F78127-401E-37BA-B765-3A901C802333";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:219]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 668 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.5 0.5 0.55527806 0.25 0.625
		 0.25 0.625 0.5 0.625 0.125 0.875 0.125 0.875 0.25 0.625 0.25 0.125 0.125 0.375 0.125
		 0.375 0.25 0.125 0.25 0.375 0.25 0.375 0.5 0.625 0 0.875 0 0.875 0.125 0.625 0.125
		 0.125 0 0.375 0 0.375 0.125 0.125 0.125 0.875 0.13483366 0.875 0.25 0.875 0.125 0.875
		 0.25 0.625 0.25 0.625 0.25 0.875 0.25 0.64737892 0.013025044 0.625 0.125 0.625 0.25
		 0.375 0.13019924 0.375 0.25345808 0.375 0.25 0.375 0.125 0.16221347 0.13263956 0.125
		 0.25 0.375 0.25 0.16221347 0.13263956 0.125 0.125 0.125 0.25 0.64737892 0.013025044
		 0.875 0 0.625 0 0.875 0 0.875 0.125 0.875 0.125 0.875 0 0.64737892 0.013025044 0.625
		 0 0.625 0.125 0.11808326 0 0.36460117 0 0.375 0 0.125 0 0.375 0.10932325 0.375 0.125
		 0.375 0 0.16221347 0.13263956 0.125 0 0.125 0.125 0.875 0.25 0.625 0.25 0.625 0.25
		 0.875 0.25 0.875 0.125 0.875 0.25 0.875 0.25 0.875 0.125 0.125 0.25 0.375 0.25 0.375
		 0.25 0.375 0.125 0.125 0.125 0.125 0.25 0.625 0.25 0.625 0.125 0.625 0.125 0.625
		 0.25 0.875 0 0.625 0 0.375 0.125 0.375 0 0.375 0 0.125 0 0.125 0 0.125 0.125 0.625
		 0 0.625 0.125 0.875 0.125 0.875 0 0.875 0.25 0.625 0.25 0.625 0.25 0.875 0.25 0.875
		 0.125 0.875 0.25 0.875 0.25 0.875 0.125 0.125 0.25 0.375 0.25 0.375 0.25 0.375 0.125
		 0.125 0.125 0.125 0.25 0.625 0.25 0.625 0.125 0.625 0.125 0.625 0.25 0.875 0 0.625
		 0 0.375 0.125 0.375 0 0.375 0 0.125 0 0.125 0 0.125 0.125 0.625 0 0.625 0.125 0.875
		 0.125 0.875 0 0.875 0.25 0.625 0.25 0.875 0.25 0.875 0.125 0.125 0.25 0.375 0.25
		 0.375 0.25 0.375 0.125 0.125 0.069721945 0.125 0.25 0.625 0.125 0.625 0.25 0.875
		 0 0.625 0 0.375 0.07940869 0.375 0 0.125 0 0.125 0.069721945 0.625 0 0.625 0.125
		 0.875 0 0.875 0.125 0.875 0.125 0.875 0 0.43168506 0.073692873 0.51137823 0.11582954
		 0.625 0.25 0.55526769 0.25 0.23970102 0.26887041 0.33187231 0.43703863 0.5 0.5 0.625
		 0.5 0.33187231 0.43703863 0.23970102 0.26887041 0.43336558 0.65388972 0.875 0.125
		 0.875 0.25 0.875 0.25 0.875 0.125 0.625 0.25 0.625 0.125 0.625 0.125 0.625 0.25 0.375
		 0.079400904 0.375 0.25 0.375 0.25 0.375 0.125 0.125 0.25 0.125 0.069732383 0.125
		 0.125 0.125 0.25 0.15854466 0.26886994 0.35811797 0.041390829 0.375 0.25 0.15854466
		 0.26886994 0.375 0.5 0.875 0 0.875 0.125 0.875 0.125 0.875 0 0.625 0 0.625 0 0.375
		 0 0.375 0.079400904 0.375 0.125 0.375 0 0.125 0 0.125 0 0.51137823 0.11582954 0.625
		 0.25 0.625 0.25 0.625 0.25 0.875 0.25 0.875 0.25 0.875 0.25 0.875 0.25 0.35811797
		 0.041390829 0.375 0.25 0.375 0.25 0.36578161 0.13608953 0.375 0.125 0.35811797 0.041390829
		 0.3585929 0.043743003 0.375 0.125 0.875 0.125 0.875 0.125 0.875 0.125 0.875 0.125
		 0.875 0 0.875 0 0.875 0 0.875 0 0.35811797 0.041390829 0.375 0 0.375 0 0.35859305
		 0.040226024 0.125 0 0.125 0 0.125 0 0.125 0 0.625 0.25 0.625 0.25 0.625 0.25 0.625
		 0.25 0.875 0.25 0.875 0.25 0.875 0.25 0.875 0.25 0.375 0.25 0.375 0.25 0.375 0.125
		 0.375 0.125 0.375 0 0.375 0 0.125 0 0.125 0 0.875 0.125 0.875 0.125 0.875 0 0.875
		 0 0.625 0.25 0.625 0.25 0.625 0.25 0.625 0.25 0.875 0.25 0.875 0.25 0.875 0.25 0.875
		 0.25;
	setAttr ".uvst[0].uvsp[250:499]" 0.375 0.25 0.375 0.25 0.375 0.125 0.375 0.125
		 0.375 0 0.375 0 0.125 0 0.125 0 0.875 0.125 0.875 0.125 0.875 0 0.875 0 0.375 0.25
		 0.375 0.25 0.375 0.079400904 0.375 0.125 0.875 0.125 0.875 0.125 0.875 0 0.875 0
		 0.375 0.10932325 0.375 0.10932325 0.35811797 0.041390829 0.35811797 0.041390829 0.625
		 0.6249485 0.625 0.75 0.23970102 0.26887041 0.23970102 0.26887041 0.375 0.75 0.375
		 0.62496644 0.15854466 0.26886994 0.15854466 0.26886994 0.625 0.25 0.55527806 0.25
		 0.55526769 0.25 0.625 0.25 0.5 0.5 0.625 0.5 0.625 0.5 0.5 0.5 0.5 1 0.625 1 0.625
		 1 0.5 1 0.875 0.125 0.875 0.25 0.875 0.25 0.875 0.125 0.875 0.25 0.875 0.125 0.875
		 0.125 0.875 0.25 0.625 0.25 0.625 0.125 0.625 0.125 0.625 0.25 0.625 0.125 0.625
		 0.25 0.625 0.25 0.625 0.125 0.375 0.07940869 0.375 0.25 0.375 0.25 0.375 0.079400904
		 0.375 0.25 0.375 0.125 0.375 0.125 0.375 0.25 0.125 0.25 0.125 0.069721945 0.125
		 0.069732383 0.125 0.25 0.125 0.099100806 0.125 0.25 0.125 0.25 0.125 0.084720738
		 0.5 0.75 0.32940871 0.75 0.32940087 0.75 0.5 0.75 0.375 1 0.5 1 0.5 1 0.375 1 0.55527806
		 0.25 0.375 0.25 0.375 0.25 0.55526769 0.25 0.375 0.5 0.52589786 0.5 0.54027808 0.5
		 0.375 0.5 0.875 0 0.875 0.125 0.875 0.125 0.875 0 0.875 0.125 0.875 0 0.875 0 0.875
		 0.125 0.625 0.125 0.625 0 0.625 0 0.625 0.125 0.625 0 0.625 0.125 0.625 0.125 0.625
		 0 0.375 0 0.375 0.07940869 0.375 0.079400904 0.375 0 0.375 0.125 0.375 0 0.375 0
		 0.375 0.125 0.125 0.069721945 0.125 0 0.125 0 0.125 0.069732383 0.125 0 0.125 0.125
		 0.125 0.125 0.125 0 0.64737892 0.013025044 0.625 0.25 0.625 0.25 0.51137823 0.11582954
		 0.625 0.25 0.625 0.25 0.625 0.25 0.625 0.25 0.875 0.25 0.875 0.13483366 0.875 0.25
		 0.875 0.25 0.875 0.25 0.875 0.25 0.875 0.25 0.875 0.25 0.16221347 0.13263956 0.375
		 0.25 0.375 0.25 0.35811797 0.041390829 0.375 0.25 0.375 0.25 0.375 0.25 0.375 0.25
		 0.375 0.125 0.375 0.10932325 0.35811797 0.041390829 0.375 0.125 0.375 0.125 0.375
		 0.125 0.375 0.125 0.375 0.125 0.875 0.13483366 0.875 0.125 0.875 0.125 0.875 0.125
		 0.875 0.125 0.875 0.125 0.875 0.125 0.875 0.125 0.875 0 0.64737892 0.013025044 0.875
		 0 0.875 0 0.875 0 0.875 0 0.875 0 0.875 0 0.375 0.10932325 0.375 0 0.375 0 0.35811797
		 0.041390829 0.375 0 0.375 0 0.375 0 0.375 0 0.125 0 0.15448919 0.12157107 0.125 0
		 0.125 0 0.125 0 0.125 0 0.125 0 0.125 0 0.375 0.25 0.375 0.25 0.375 0.25 0.375 0.25
		 0.375 0.125 0.375 0.125 0.375 0.125 0.375 0.125 0.375 0.125 0.375 0.125 0.375 0.125
		 0.375 0.125 0.375 0 0.375 0 0.375 0 0.375 0 0.375 0 0.375 0 0.375 0 0.375 0 0.125
		 0 0.125 0 0.125 0 0.125 0 0.875 0.125 0.875 0.125 0.875 0.125 0.875 0.125 0.875 0.125
		 0.875 0.125 0.875 0.125 0.875 0.125 0.875 0 0.875 0 0.875 0 0.875 0 0.875 0 0.875
		 0 0.875 0 0.875 0 0.625 0.25 0.625 0.25 0.625 0.25 0.625 0.25 0.625 0.25 0.625 0.25
		 0.625 0.25 0.625 0.25 0.875 0.25 0.875 0.25 0.875 0.25 0.875 0.25 0.875 0.25 0.875
		 0.25 0.875 0.25 0.875 0.25 0.375 0.25 0.375 0.25 0.375 0.25 0.375 0.25 0.375 0.25
		 0.375 0.25;
	setAttr ".uvst[0].uvsp[500:667]" 0.375 0.25 0.375 0.25 0.375 0.125 0.375 0.125
		 0.375 0.125 0.375 0.125 0.375 0.125 0.375 0.125 0.375 0.125 0.375 0.125 0.375 0 0.375
		 0 0.375 0 0.375 0 0.375 0 0.375 0 0.375 0 0.375 0 0.125 0 0.125 0 0.125 0 0.125 0
		 0.125 0 0.125 0 0.125 0 0.125 0 0.875 0.125 0.875 0.125 0.875 0.125 0.875 0.125 0.875
		 0.125 0.875 0.125 0.875 0.125 0.875 0.125 0.875 0 0.875 0 0.875 0 0.875 0 0.875 0
		 0.875 0 0.875 0 0.875 0 0.625 0.25 0.625 0.25 0.625 0.25 0.625 0.25 0.625 0.25 0.625
		 0.25 0.625 0.25 0.625 0.25 0.875 0.25 0.875 0.25 0.875 0.25 0.875 0.25 0.875 0.25
		 0.875 0.25 0.875 0.25 0.875 0.25 0.375 0.25 0.375 0.25 0.375 0.25 0.375 0.25 0.375
		 0.25 0.375 0.25 0.375 0.25 0.375 0.25 0.375 0.07940869 0.375 0.125 0.375 0.125 0.375
		 0.079400904 0.375 0.125 0.375 0.125 0.375 0.125 0.375 0.125 0.375 0 0.375 0 0.375
		 0 0.375 0 0.375 0 0.375 0 0.375 0 0.375 0 0.125 0 0.125 0 0.125 0 0.125 0 0.125 0
		 0.125 0 0.125 0 0.125 0 0.875 0.125 0.875 0.125 0.875 0.125 0.875 0.125 0.875 0.125
		 0.875 0.125 0.875 0.125 0.875 0.125 0.875 0 0.875 0 0.875 0 0.875 0 0.875 0 0.875
		 0 0.875 0 0.875 0 0.55527806 0.25 0.625 0.25 0.625 0.25 0.55527806 0.25 0.625 0.5
		 0.5 0.5 0.5 0.5 0.625 0.5 0.375 0.25 0.55527806 0.25 0.375 0.25 0.5 0.5 0.375 0.5
		 0.375 0.5 0.625 0.25 0.625 0.25 0.625 0.25 0.875 0.25 0.875 0.25 0.875 0.25 0.875
		 0.25 0.875 0.125 0.875 0.125 0.875 0.125 0.875 0.125 0.875 0 0.875 0 0.875 0 0.875
		 0 0.625 0.25 0.625 0.25 0.625 0.25 0.625 0.25 0.875 0.25 0.875 0.25 0.875 0.25 0.875
		 0.25 0.875 0.125 0.875 0.125 0.875 0.125 0.875 0 0.875 0 0.875 0 0.625 0.25 0.625
		 0.25 0.625 0.25 0.875 0.25 0.875 0.25 0.875 0.25 0.875 0.125 0.875 0.125 0.875 0
		 0.875 0 0.625 0.25 0.625 0.25 0.625 0.25 0.875 0.25 0.875 0.25 0.875 0.25 0.875 0.25
		 0.875 0.25 0.625 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 217 ".vt";
	setAttr ".vt[0:165]"  -1.29565811 62.43297958 20.13358307 1.29565811 62.43297958 20.13358307
		 -0.87760544 62.26781082 19.17245674 0.87760544 62.26781082 19.17245674 12.16030502 64.77918243 16.30732155
		 12.16030502 64.61895752 15.11315441 12.83300018 69.19400024 14.14037514 12.83300018 68.85498047 15.16914749
		 10.26049805 60.59718704 16.46036911 10.26049805 61.53208542 17.83709908 -12.16030502 64.61895752 15.11315441
		 -12.16030693 64.77918243 16.30732155 -12.83300209 68.85498047 15.16914749 -12.83300209 69.19400024 14.14037514
		 -10.26049614 60.59718704 16.46036911 -10.26049805 61.53208542 17.83709908 3.98043442 64.26618195 19.58178902
		 3.98043442 64.60520172 18.55301666 3.60602188 62.1023407 19.0033798218 3.23020172 60.40084076 19.19861984
		 3.23020172 61.27700806 20.13765335 3.60602188 62.23194122 19.96927834 -3.98043442 64.26618195 19.58178902
		 -3.60602188 62.23194122 19.96927834 -3.23020172 61.27700806 20.13765335 -3.23020172 60.40084076 19.19861984
		 -3.60602188 62.1023407 19.0033798218 -3.98043442 64.60520172 18.55301666 6.50638199 65.6556778 18.73529816
		 6.50638199 65.99469757 17.70652771 5.84445953 62.29217529 18.6307869 4.94132996 59.53879547 19.00021743774
		 5.3881073 60.30195999 20.0099906921 5.84445953 62.421772 19.59668541 -6.50638199 65.6556778 18.73529816
		 -5.84445953 62.421772 19.59668541 -5.3881073 60.30195999 20.0099906921 -4.94132996 59.53879547 19.00021743774
		 -5.84445953 62.29217529 18.6307869 -6.50638199 65.99469757 17.70652771 9.17929459 67.081512451 17.53380203
		 9.17929459 67.42053223 16.50502777 8.53084564 63.26586914 17.80185318 7.65733337 59.4799881 18.60430717
		 7.65733337 60.36215973 19.58805847 8.53084564 63.39546585 18.76774979 -9.17929459 67.081512451 17.53380203
		 -8.53084564 63.39546585 18.76774979 -7.65733337 60.36215973 19.58805847 -7.65733337 59.4799881 18.60430717
		 -8.53084564 63.26586914 17.80185318 -9.17929459 67.42053223 16.50502777 0 62.5909462 19.1291008
		 0 62.80345154 20.083875656 1.18177414 64.45087433 19.86283493 0.95108032 64.31203461 18.89817619
		 0 60.82210541 20.34972 0 60.4095726 19.42178154 13.49739838 64.93243408 15.36477184
		 13.72364426 64.8205719 14.39649296 14.79725266 72.11427307 12.58201313 14.5326004 71.96127319 13.58582687
		 -13.72364426 64.82057953 14.396492 -13.49739838 64.93242645 15.3647728 -14.53260422 71.96128845 13.58582592
		 -14.79724884 72.11425781 12.58201408 -1.18177414 64.45087433 19.86283493 -0.95108414 64.31203461 18.89817619
		 11.2592659 59.52701187 16.60395813 11.12117004 59.83527374 17.54588318 -11.2592659 59.52701187 16.60395813
		 -11.12117004 59.83527374 17.54588318 3.83924866 66.34686279 19.1529541 3.70720291 66.26676178 18.1804142
		 2.30169678 59.14855194 19.366642 2.46897507 59.51505661 20.30075645 -3.71073532 66.26802826 18.18024445
		 -3.83584213 66.34563446 19.15311813 -2.46898651 59.51505661 20.30075645 -2.30168533 59.14855194 19.366642
		 6.6699791 67.89177704 18.091617584 6.64295197 67.86847687 17.11145592 4.93504333 57.99068451 19.20793152
		 5.0071868896 58.39934921 20.13638878 -5.0071868896 58.39934921 20.13638878 -4.93504715 57.99068451 19.20793152
		 -6.65951157 67.87443542 17.11065674 -6.65401077 67.8860321 18.092388153 11.00091171265 70.17919159 15.76956177
		 11.13454437 70.24636841 14.77726269 7.95837021 57.94459915 18.81031609 7.93835831 58.34870911 19.73938179
		 -7.93834686 58.34870911 19.73938179 -7.95837784 57.94459915 18.81031609 -11.10624313 70.25154114 14.81584167
		 -10.97362137 70.16936493 15.77088165 0 61.44752884 20.76077271 1.29566193 62.49821854 20.61979866
		 -1.29565811 62.49821854 20.61979866 1.1997757 64.31393433 20.35160828 0 62.58959961 20.54362679
		 12.16030502 64.84442139 16.79353714 12.83300018 68.92021942 15.65536308 13.076236725 64.96694946 15.85510826
		 14.039951324 71.50279999 14.1423111 -12.16030693 64.84442139 16.79353714 -12.83300209 68.92021942 15.65536308
		 -14.039955139 71.50280762 14.14230919 -13.076236725 64.96694946 15.85510826 -1.19977188 64.31393433 20.35160828
		 10.26049805 61.59732056 18.32331467 10.86410522 60.2354126 17.98716354 -10.26049423 61.59732056 18.32331467
		 -10.86410522 60.2354126 17.98716354 3.98043442 64.3314209 20.068006516 3.92189026 66.24894714 19.65319443
		 3.23020172 61.34224701 20.62386894 2.78039169 60.023616791 20.72748947 -3.98043442 64.3314209 20.068006516
		 -3.91872025 66.24781036 19.65334702 -3.23020172 61.34224701 20.62386894 -2.78040314 60.023616791 20.72748947
		 6.50638199 65.72091675 19.22151566 6.72029877 67.75036621 18.60555649 5.3881073 60.36719513 20.49620438
		 5.14147949 58.9864006 20.55258751 -5.3881073 60.36719513 20.49620438 -5.14147568 58.9864006 20.55258751
		 -6.50638199 65.72091675 19.22151566 -6.70543289 67.74501801 18.60627556 9.17929459 67.1467514 18.020017624
		 9.53108215 69.25190735 17.11116791 7.65733337 60.42739868 20.07427597 7.9010849 58.92726898 20.15672302
		 -7.65733337 60.42739868 20.07427597 -7.90107727 58.92726898 20.15672302 -9.17929459 67.1467514 18.020017624
		 -9.49624252 69.23935699 17.1128521 0.87760544 62.20257568 18.68624115 0 61.77745056 18.74328041
		 -0.87760544 62.20257568 18.68624115 0 62.52220917 18.64335442 0.94148636 64.24636078 18.41201973
		 0 60.33875275 18.93631554 12.83300018 69.12876129 13.65415859 12.16030502 64.55371857 14.62693977
		 14.80825806 72.06073761 12.094227791 13.73305511 64.75602722 13.91018581 -12.83300209 69.12876129 13.65415859
		 -12.16030502 64.55371857 14.62693977 -13.73305321 64.75602722 13.91018486 -14.80825424 72.060722351 12.094228745
		 -0.94149017 64.24636078 18.41201973 10.26049805 60.53194809 15.97415352 11.26501083 59.4542923 16.11874771
		 -10.26049614 60.53194809 15.97415352 -11.26501083 59.4542923 16.11874771 3.98043442 64.53996277 18.066802979
		 3.70170975 66.20358276 17.69392204 3.23020172 60.33560181 18.71240616 2.29473877 59.073413849 18.88175774
		 -3.98043442 64.53996277 18.066802979 -3.70524597 66.20485687 17.69375229 -3.23020172 60.33560181 18.71240616
		 -2.29472733 59.073413849 18.88175774 6.50638199 65.92946625 17.22031212;
	setAttr ".vt[166:216]" 6.64182663 67.80784607 16.62462234 4.94132996 59.47355652 18.51400185
		 4.93204498 57.91378784 18.72328186 -4.94132996 59.47355652 18.51400185 -4.93204498 57.91378784 18.72328186
		 -6.50638199 65.92946625 17.22031212 -6.65840912 67.81381226 16.62382126 9.17929459 67.35529327 16.01881218
		 9.77777481 69.49476624 15.10535812 7.65733337 59.41475296 18.11809158 7.95920563 57.86789322 18.32563972
		 -7.65733337 59.41475296 18.11809158 -7.95921326 57.86789322 18.32563972 -9.17929459 67.35529327 16.01881218
		 -9.81664467 69.5087738 15.10347939 0 66.56591797 18.38681221 0 66.69551849 19.35271072
		 2.074157715 67.36981201 18.84353638 2.0741539 67.24021149 17.87763786 -2.0741539 67.36981201 18.84353638
		 -2.074157715 67.24021149 17.87763786 4.086826324 70.16213226 17.77729034 4.08682251 70.031265259 16.81156349
		 -4.090354919 70.032539368 16.81139374 -4.083293915 70.16086578 17.7774601 6.83086014 76.049949646 15.87708282
		 6.83086395 75.91439056 14.91198158 -6.84741974 75.92034912 14.9111824 -6.81430054 76.043991089 15.877882
		 12.032951355 79.47734833 12.93643188 12.032951355 79.33376312 11.97240925 -12.0717659 79.3477478 11.97053337
		 -11.99414063 79.46336365 12.93830872 6.71428299 71.11332703 17.42056847 3.84771347 67.95887756 18.72770882
		 0.94933319 65.8547287 19.67447662 0 64.45384216 19.8624382 -0.94932938 65.8547287 19.67447662
		 -3.84418106 67.95761108 18.72788048 -6.69772339 71.10736847 17.42136765 -11.76987648 75.076934814 14.40812111
		 -11.84750175 74.96131897 13.44034576 -6.73084641 70.9837265 16.45466805 -3.85123825 67.82928467 17.76181221
		 -0.94933319 65.72512817 18.7085762 0 64.32424164 18.89653778 0.94932938 65.72512817 18.7085762
		 3.84770966 67.82801819 17.76198196 6.7142868 70.97776794 16.45546722 11.80868912 74.94733429 13.44222164
		 11.80868912 75.090919495 14.40624428;
	setAttr -s 435 ".ed";
	setAttr ".ed[0:165]"  1 21 0 3 18 0 3 17 0 6 5 0 1 16 0 4 7 0 3 19 0 1 20 0
		 5 8 0 9 4 0 2 26 0 0 23 0 0 22 0 11 12 0 2 27 0 13 10 0 2 25 0 0 24 0 15 11 0 10 14 0
		 16 28 0 17 29 0 18 30 0 17 18 1 19 31 0 18 19 1 20 32 0 21 33 0 20 21 1 21 16 1 22 34 0
		 23 35 0 22 23 1 24 36 0 23 24 1 25 37 0 26 38 0 25 26 1 27 39 0 26 27 1 28 40 0 29 41 0
		 30 42 0 29 30 1 31 43 0 30 31 1 32 44 0 33 45 0 32 33 1 33 28 1 34 46 0 35 47 0 34 35 1
		 36 48 0 35 36 1 37 49 0 38 50 0 37 38 1 39 51 0 38 39 1 40 7 0 41 6 0 42 5 0 41 42 1
		 43 8 0 42 43 1 44 9 0 45 4 0 44 45 1 45 40 1 46 12 0 47 11 0 46 47 1 48 15 0 47 48 1
		 49 14 0 50 10 0 49 50 1 51 13 0 50 51 1 53 54 0 52 55 0 56 57 1 58 59 1 60 59 1 61 60 0
		 58 61 1 62 63 1 63 64 1 64 65 0 65 62 1 66 53 0 67 52 0 68 69 0 59 68 1 69 58 1 70 71 0
		 71 63 1 62 70 1 54 72 0 55 73 0 57 74 1 74 75 1 56 75 1 67 76 0 66 77 0 56 78 1 78 79 1
		 57 79 1 72 80 0 73 81 0 74 82 1 82 83 1 75 83 1 78 84 1 84 85 1 79 85 1 76 86 0 77 87 0
		 80 88 0 88 89 0 81 89 0 82 90 1 90 91 1 83 91 1 84 92 1 92 93 1 85 93 1 86 94 0 94 95 0
		 87 95 0 88 61 1 89 60 1 90 68 1 91 69 1 92 71 1 93 70 1 94 65 1 95 64 1 1 97 1 96 97 1
		 0 98 1 98 96 1 54 99 0 97 99 1 53 100 0 100 99 0 96 100 1 56 96 0 4 101 1 7 102 0
		 101 102 0 58 103 1 101 103 1 61 104 0 103 104 0 102 104 1 11 105 1 12 106 0 105 106 0
		 64 107 0 106 107 1 63 108 1 108 107 0 105 108 1 66 109 0;
	setAttr ".ed[166:331]" 109 100 0 98 109 1 9 110 1 110 101 0 69 111 1 110 111 1
		 111 103 0 15 112 1 112 105 0 71 113 1 113 108 0 112 113 1 16 114 1 97 114 0 72 115 1
		 114 115 1 99 115 0 20 116 0 97 116 0 75 117 0 96 117 0 116 117 1 22 118 1 98 118 0
		 77 119 1 109 119 0 118 119 1 24 120 0 98 120 0 78 121 0 120 121 1 96 121 0 28 122 1
		 114 122 0 80 123 1 122 123 1 115 123 0 32 124 1 116 124 0 83 125 1 117 125 0 124 125 1
		 36 126 1 120 126 0 84 127 1 126 127 1 121 127 0 34 128 1 118 128 0 87 129 1 119 129 0
		 128 129 1 40 130 1 122 130 0 88 131 1 130 131 1 123 131 0 44 132 1 124 132 0 91 133 1
		 125 133 0 132 133 1 48 134 1 126 134 0 92 135 1 134 135 1 127 135 0 46 136 1 128 136 0
		 95 137 1 129 137 0 136 137 1 130 102 0 131 104 0 132 110 0 133 111 0 134 112 0 135 113 0
		 136 106 0 137 107 0 3 138 1 138 139 1 2 140 0 139 140 1 52 141 0 139 141 1 55 142 0
		 141 142 0 138 142 1 57 143 1 138 143 1 139 143 1 6 144 0 5 145 1 144 145 0 60 146 0
		 144 146 1 59 147 1 146 147 0 145 147 1 13 148 0 10 149 1 148 149 0 62 150 1 149 150 1
		 65 151 0 151 150 0 148 151 1 140 143 1 67 152 0 140 152 1 152 141 0 8 153 1 145 153 0
		 68 154 1 147 154 0 153 154 1 14 155 1 149 155 0 70 156 1 155 156 1 150 156 0 17 157 1
		 138 157 0 73 158 1 142 158 0 157 158 1 19 159 0 138 159 0 74 160 0 159 160 1 143 160 0
		 27 161 1 140 161 0 76 162 1 161 162 1 152 162 0 25 163 0 140 163 0 79 164 0 143 164 0
		 163 164 1 29 165 1 157 165 0 81 166 1 158 166 0 165 166 1 31 167 1 159 167 0 82 168 1
		 167 168 1 160 168 0 37 169 1 163 169 0 85 170 1 164 170 0 169 170 1 39 171 1 161 171 0
		 86 172 1 171 172 1 162 172 0 41 173 1 165 173 0 89 174 1 166 174 0;
	setAttr ".ed[332:434]" 173 174 1 43 175 1 167 175 0 90 176 1 175 176 1 168 176 0
		 49 177 1 169 177 0 93 178 1 170 178 0 177 178 1 51 179 1 171 179 0 94 180 1 179 180 1
		 172 180 0 173 144 0 174 146 0 175 153 0 176 154 0 177 155 0 178 156 0 179 148 0 180 151 0
		 52 211 0 53 202 0 181 182 1 54 201 0 182 183 0 55 212 0 183 184 0 181 184 0 66 203 0
		 185 182 0 67 210 0 186 181 0 185 186 0 72 200 0 183 187 0 73 213 0 187 188 1 184 188 0
		 76 209 0 186 189 0 77 204 0 189 190 1 185 190 0 80 199 0 187 191 0 81 214 0 191 192 1
		 188 192 0 86 208 0 189 193 0 87 205 0 193 194 1 190 194 0 88 216 0 191 195 0 89 215 0
		 195 196 0 192 196 0 94 207 0 193 197 0 95 206 0 197 198 0 194 198 0 199 191 0 200 187 0
		 199 200 1 201 183 0 200 201 1 202 182 0 201 202 1 203 185 0 202 203 1 204 190 0 203 204 1
		 205 194 0 204 205 1 206 198 0 205 206 1 207 197 0 206 207 1 208 193 0 207 208 1 209 189 0
		 208 209 1 210 186 0 209 210 1 211 181 0 210 211 1 212 184 0 211 212 1 213 188 0 212 213 1
		 214 192 0 213 214 1 215 196 0 214 215 1 216 195 0 215 216 1 216 199 1;
	setAttr -s 220 -ch 870 ".fc[0:219]" -type "polyFaces" 
		f 4 358 360 362 -364
		mu 0 4 0 1 2 3
		f 4 83 -85 -86 -87
		mu 0 4 4 5 6 7
		f 4 87 88 89 90
		mu 0 4 8 9 10 11
		f 4 365 -359 -368 -369
		mu 0 4 12 1 0 13
		f 4 -94 -95 -84 -96
		mu 0 4 14 15 16 17
		f 4 96 97 -88 98
		mu 0 4 18 19 20 21
		f 3 2 23 -2
		mu 0 3 22 23 24
		f 4 -363 370 372 -374
		mu 0 4 25 26 27 28
		f 3 0 29 -5
		mu 0 3 29 30 31
		f 4 82 101 102 -104
		mu 0 4 32 33 34 35
		f 3 1 25 -7
		mu 0 3 36 37 38
		f 3 7 28 -1
		mu 0 3 39 40 41
		f 3 12 32 -12
		mu 0 3 42 43 44
		f 4 368 375 377 -379
		mu 0 4 45 46 47 48
		f 3 10 39 -15
		mu 0 3 49 50 51
		f 4 -83 106 107 -109
		mu 0 4 52 53 54 55
		f 3 11 34 -18
		mu 0 3 56 57 58
		f 3 16 37 -11
		mu 0 3 59 60 61
		f 4 -373 380 382 -384
		mu 0 4 62 63 64 65
		f 4 -24 21 43 -23
		mu 0 4 66 67 68 69
		f 4 -26 22 45 -25
		mu 0 4 38 37 70 71
		f 4 -103 111 112 -114
		mu 0 4 35 34 72 73
		f 4 -29 26 48 -28
		mu 0 4 41 40 74 75
		f 4 -30 27 49 -21
		mu 0 4 76 77 78 79
		f 4 -33 30 52 -32
		mu 0 4 44 43 80 81
		f 4 -35 31 54 -34
		mu 0 4 58 57 82 83
		f 4 -108 114 115 -117
		mu 0 4 55 54 84 85
		f 4 -38 35 57 -37
		mu 0 4 61 60 86 87
		f 4 -40 36 59 -39
		mu 0 4 51 50 88 89
		f 4 -378 385 387 -389
		mu 0 4 48 47 90 91
		f 4 -383 390 392 -394
		mu 0 4 92 93 94 95
		f 4 -44 41 63 -43
		mu 0 4 96 97 98 99
		f 4 -46 42 65 -45
		mu 0 4 71 70 100 101
		f 4 -113 122 123 -125
		mu 0 4 73 72 102 103
		f 4 -49 46 68 -48
		mu 0 4 75 74 104 105
		f 4 -50 47 69 -41
		mu 0 4 106 107 108 109
		f 4 -53 50 72 -52
		mu 0 4 81 80 110 111
		f 4 -55 51 74 -54
		mu 0 4 83 82 112 113
		f 4 -116 125 126 -128
		mu 0 4 85 84 114 115
		f 4 -58 55 77 -57
		mu 0 4 87 86 116 117
		f 4 -60 56 79 -59
		mu 0 4 89 88 118 119
		f 4 -388 395 397 -399
		mu 0 4 91 90 120 121
		f 4 -121 131 85 -133
		mu 0 4 122 123 7 6
		f 4 -64 61 3 -63
		mu 0 4 99 98 124 125
		f 4 -66 62 8 -65
		mu 0 4 101 100 126 127
		f 4 -124 133 93 -135
		mu 0 4 103 102 128 129
		f 4 -69 66 9 -68
		mu 0 4 105 104 130 131
		f 4 -70 67 5 -61
		mu 0 4 109 108 132 133
		f 4 -73 70 -14 -72
		mu 0 4 111 110 134 135
		f 4 -75 71 -19 -74
		mu 0 4 113 112 136 137
		f 4 -127 135 -97 -137
		mu 0 4 115 114 19 18
		f 4 -78 75 -20 -77
		mu 0 4 117 116 138 139
		f 4 -80 76 -16 -79
		mu 0 4 119 118 140 141
		f 4 -130 137 -90 -139
		mu 0 4 142 143 144 145
		f 4 140 144 -147 -148
		mu 0 4 146 147 148 149
		f 4 247 251 253 -255
		mu 0 4 150 151 152 153
		f 3 -248 256 -258
		mu 0 3 154 155 156
		f 4 -261 262 264 -266
		mu 0 4 157 158 159 160
		f 4 -152 153 155 -157
		mu 0 4 161 162 163 164
		f 4 159 161 -164 -165
		mu 0 4 165 166 167 168
		f 4 268 270 -273 -274
		mu 0 4 169 170 171 172
		f 3 -250 257 -275
		mu 0 3 173 154 156
		f 4 142 147 -167 -168
		mu 0 4 174 146 149 175
		f 4 249 276 277 -252
		mu 0 4 151 176 177 152
		f 4 -280 265 281 -283
		mu 0 4 178 179 180 181
		f 4 -170 171 172 -154
		mu 0 4 162 182 183 163
		f 4 174 164 -177 -178
		mu 0 4 184 185 186 187
		f 4 284 286 -288 -271
		mu 0 4 170 188 189 171
		f 4 179 181 -183 -145
		mu 0 4 190 191 192 193
		f 4 -290 254 291 -293
		mu 0 4 194 195 196 197
		f 4 294 296 -298 -257
		mu 0 4 198 199 200 201
		f 4 -185 -141 186 -188
		mu 0 4 202 203 204 205
		f 4 299 301 -303 -277
		mu 0 4 206 207 208 209
		f 4 -190 167 191 -193
		mu 0 4 210 211 212 213
		f 4 194 196 -198 -143
		mu 0 4 214 215 216 217
		f 4 -305 274 306 -308
		mu 0 4 218 219 220 221
		f 4 199 201 -203 -182
		mu 0 4 222 223 224 225
		f 4 -310 292 311 -313
		mu 0 4 226 227 228 229
		f 4 314 316 -318 -297
		mu 0 4 199 230 231 200
		f 4 -205 187 206 -208
		mu 0 4 232 202 205 233
		f 4 209 211 -213 -197
		mu 0 4 215 234 235 216
		f 4 -320 307 321 -323
		mu 0 4 236 218 221 237
		f 4 324 326 -328 -302
		mu 0 4 207 238 239 208
		f 4 -215 192 216 -218
		mu 0 4 240 210 213 241
		f 4 219 221 -223 -202
		mu 0 4 242 243 244 245
		f 4 -330 312 331 -333
		mu 0 4 246 247 248 249
		f 4 334 336 -338 -317
		mu 0 4 230 250 251 231
		f 4 -225 207 226 -228
		mu 0 4 252 232 233 253
		f 4 229 231 -233 -212
		mu 0 4 234 254 255 235
		f 4 -340 322 341 -343
		mu 0 4 256 236 237 257
		f 4 344 346 -348 -327
		mu 0 4 238 258 259 239
		f 4 -235 217 236 -238
		mu 0 4 260 240 241 261
		f 4 238 156 -240 -222
		mu 0 4 243 161 164 244
		f 4 -349 332 349 -263
		mu 0 4 158 246 249 159
		f 4 350 282 -352 -337
		mu 0 4 250 262 263 251
		f 4 -241 227 241 -172
		mu 0 4 264 252 253 265
		f 4 242 177 -244 -232
		mu 0 4 254 184 187 255
		f 4 -353 342 353 -287
		mu 0 4 188 256 257 189
		f 4 354 273 -356 -347
		mu 0 4 258 266 267 259
		f 4 -245 237 245 -162
		mu 0 4 268 260 261 269
		f 4 -81 145 146 -144
		mu 0 4 270 271 272 273
		f 4 -6 149 151 -151
		mu 0 4 274 275 276 277
		f 4 86 154 -156 -153
		mu 0 4 278 279 280 281
		f 4 13 158 -160 -158
		mu 0 4 282 283 284 285
		f 4 -89 162 163 -161
		mu 0 4 286 287 288 289
		f 4 -92 165 166 -146
		mu 0 4 290 291 292 293
		f 4 -10 168 169 -150
		mu 0 4 294 295 296 297
		f 4 95 152 -173 -171
		mu 0 4 298 299 300 301
		f 4 18 157 -175 -174
		mu 0 4 302 303 304 305
		f 4 -98 175 176 -163
		mu 0 4 306 307 308 309
		f 4 4 178 -180 -140
		mu 0 4 310 311 312 313
		f 4 -100 143 182 -181
		mu 0 4 314 315 316 317
		f 4 -8 139 184 -184
		mu 0 4 318 319 320 321
		f 4 103 185 -187 -149
		mu 0 4 322 323 324 325
		f 4 -13 141 189 -189
		mu 0 4 326 327 328 329
		f 4 105 190 -192 -166
		mu 0 4 330 331 332 333
		f 4 17 193 -195 -142
		mu 0 4 334 335 336 337
		f 4 -107 148 197 -196
		mu 0 4 338 339 340 341
		f 4 20 198 -200 -179
		mu 0 4 342 343 344 345
		f 4 -110 180 202 -201
		mu 0 4 346 347 348 349
		f 4 -27 183 204 -204
		mu 0 4 350 351 352 353
		f 4 113 205 -207 -186
		mu 0 4 354 355 356 357
		f 4 33 208 -210 -194
		mu 0 4 358 359 360 361
		f 4 -115 195 212 -211
		mu 0 4 362 363 364 365
		f 4 -31 188 214 -214
		mu 0 4 366 367 368 369
		f 4 118 215 -217 -191
		mu 0 4 370 371 372 373
		f 4 40 218 -220 -199
		mu 0 4 374 375 376 377
		f 4 -120 200 222 -221
		mu 0 4 378 379 380 381
		f 4 -47 203 224 -224
		mu 0 4 382 383 384 385
		f 4 124 225 -227 -206
		mu 0 4 386 387 388 389
		f 4 53 228 -230 -209
		mu 0 4 390 391 392 393
		f 4 -126 210 232 -231
		mu 0 4 394 395 396 397
		f 4 -51 213 234 -234
		mu 0 4 398 399 400 401
		f 4 130 235 -237 -216
		mu 0 4 402 403 404 405
		f 4 60 150 -239 -219
		mu 0 4 406 407 408 409
		f 4 -132 220 239 -155
		mu 0 4 410 411 412 413
		f 4 -67 223 240 -169
		mu 0 4 414 415 416 417
		f 4 134 170 -242 -226
		mu 0 4 418 419 420 421
		f 4 73 173 -243 -229
		mu 0 4 422 423 424 425
		f 4 -136 230 243 -176
		mu 0 4 426 427 428 429
		f 4 -71 233 244 -159
		mu 0 4 430 431 432 433
		f 4 138 160 -246 -236
		mu 0 4 434 435 436 437
		f 4 81 252 -254 -251
		mu 0 4 438 439 440 441
		f 4 -4 258 260 -260
		mu 0 4 442 443 444 445
		f 4 84 263 -265 -262
		mu 0 4 446 447 448 449
		f 4 15 267 -269 -267
		mu 0 4 450 451 452 453
		f 4 -91 271 272 -270
		mu 0 4 454 455 456 457
		f 4 92 250 -278 -276
		mu 0 4 458 459 460 461
		f 4 -9 259 279 -279
		mu 0 4 462 463 464 465
		f 4 94 280 -282 -264
		mu 0 4 466 467 468 469
		f 4 19 283 -285 -268
		mu 0 4 470 471 472 473
		f 4 -99 269 287 -286
		mu 0 4 474 475 476 477
		f 4 -3 246 289 -289
		mu 0 4 478 479 480 481
		f 4 100 290 -292 -253
		mu 0 4 482 483 484 485
		f 4 6 293 -295 -247
		mu 0 4 486 487 488 489
		f 4 -102 255 297 -296
		mu 0 4 490 491 492 493
		f 4 14 298 -300 -249
		mu 0 4 494 495 496 497
		f 4 -105 275 302 -301
		mu 0 4 498 499 500 501
		f 4 -17 248 304 -304
		mu 0 4 502 503 504 505
		f 4 108 305 -307 -256
		mu 0 4 506 507 508 509
		f 4 -22 288 309 -309
		mu 0 4 510 511 512 513
		f 4 110 310 -312 -291
		mu 0 4 514 515 516 517
		f 4 24 313 -315 -294
		mu 0 4 518 519 520 521
		f 4 -112 295 317 -316
		mu 0 4 522 523 524 525
		f 4 -36 303 319 -319
		mu 0 4 526 527 528 529
		f 4 116 320 -322 -306
		mu 0 4 530 531 532 533
		f 4 38 323 -325 -299
		mu 0 4 534 535 536 537
		f 4 -118 300 327 -326
		mu 0 4 538 539 540 541
		f 4 -42 308 329 -329
		mu 0 4 542 543 544 545
		f 4 121 330 -332 -311
		mu 0 4 546 547 548 549
		f 4 44 333 -335 -314
		mu 0 4 550 551 552 553
		f 4 -123 315 337 -336
		mu 0 4 554 555 556 557
		f 4 -56 318 339 -339
		mu 0 4 558 559 560 561
		f 4 127 340 -342 -321
		mu 0 4 562 563 564 565
		f 4 58 343 -345 -324
		mu 0 4 566 567 568 569
		f 4 -129 325 347 -346
		mu 0 4 570 571 572 573
		f 4 -62 328 348 -259
		mu 0 4 574 575 576 577
		f 4 132 261 -350 -331
		mu 0 4 578 579 580 581
		f 4 64 278 -351 -334
		mu 0 4 582 583 584 585
		f 4 -134 335 351 -281
		mu 0 4 586 587 588 589
		f 4 -76 338 352 -284
		mu 0 4 590 591 592 593
		f 4 136 285 -354 -341
		mu 0 4 594 595 596 597
		f 4 78 266 -355 -344
		mu 0 4 598 599 600 601
		f 4 -138 345 355 -272
		mu 0 4 602 603 604 605
		f 4 80 359 405 -358
		mu 0 4 606 607 608 609
		f 4 -82 356 425 -362
		mu 0 4 610 611 612 613
		f 4 91 357 407 -365
		mu 0 4 614 615 609 616
		f 4 -93 366 423 -357
		mu 0 4 617 618 619 612
		f 4 99 369 403 -360
		mu 0 4 620 621 622 608
		f 4 -101 361 427 -372
		mu 0 4 623 624 625 626
		f 4 104 374 421 -367
		mu 0 4 627 628 629 630
		f 4 -106 364 409 -377
		mu 0 4 631 632 633 634
		f 4 109 379 401 -370
		mu 0 4 635 636 637 638
		f 4 -111 371 429 -382
		mu 0 4 639 640 641 642
		f 4 117 384 419 -375
		mu 0 4 643 644 645 629
		f 4 -119 376 411 -387
		mu 0 4 646 647 634 648
		f 4 119 389 434 -380
		mu 0 4 649 123 650 651
		f 4 120 391 433 -390
		mu 0 4 123 122 652 650
		f 4 -122 381 431 -392
		mu 0 4 122 653 654 652
		f 4 128 394 417 -385
		mu 0 4 655 143 656 645
		f 4 129 396 415 -395
		mu 0 4 143 142 657 656
		f 4 -131 386 413 -397
		mu 0 4 142 658 648 657
		f 4 -402 399 -381 -401
		mu 0 4 638 637 659 660
		f 4 -404 400 -371 -403
		mu 0 4 608 622 661 2
		f 4 -406 402 -361 -405
		mu 0 4 609 608 2 1
		f 4 -408 404 -366 -407
		mu 0 4 616 609 1 12
		f 4 -410 406 378 -409
		mu 0 4 634 633 45 48
		f 4 -412 408 388 -411
		mu 0 4 648 634 48 91
		f 4 -414 410 398 -413
		mu 0 4 657 648 91 121
		f 4 -416 412 -398 -415
		mu 0 4 656 657 121 120
		f 4 -418 414 -396 -417
		mu 0 4 645 656 120 90
		f 4 -420 416 -386 -419
		mu 0 4 629 645 90 47
		f 4 -422 418 -376 -421
		mu 0 4 630 629 47 46
		f 4 -424 420 367 -423
		mu 0 4 612 619 13 0
		f 4 -426 422 363 -425
		mu 0 4 613 612 0 3
		f 4 -428 424 373 -427
		mu 0 4 626 625 662 663
		f 4 -430 426 383 -429
		mu 0 4 642 641 664 665
		f 4 -432 428 393 -431
		mu 0 4 652 654 666 95
		f 4 -434 430 -393 -433
		mu 0 4 650 652 95 94
		f 4 -435 432 -391 -400
		mu 0 4 651 650 94 667;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "3C5157EC-4F28-0E18-935F-5183DDE7A6F7";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "5D6EEC53-4BFB-BC33-5264-EFA471908E07";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "B3314568-4EB8-319A-DCB6-DF9EB0EE2E64";
createNode displayLayerManager -n "layerManager";
	rename -uid "3ECA4974-44D0-8696-679D-B8A1A2C0E2AE";
	setAttr ".cdl" 1;
	setAttr -s 4 ".dli[1:3]"  1 2 3;
	setAttr -s 4 ".dli";
createNode displayLayer -n "defaultLayer";
	rename -uid "D953AFCD-46FB-3425-47D9-9A9DDBA2FE4C";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "FF8C00D9-4ECA-1EC0-4587-AB96FE204C65";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "7FCDB259-4380-DC67-31DD-B5A71A594946";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "B7BDAD3F-46EB-4549-6541-41B84C9FF8AE";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 0\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 0\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 1\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 0\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
		+ "            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 0\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n"
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1300\n            -height 718\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n"
		+ "            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n"
		+ "            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n"
		+ "            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n"
		+ "                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n"
		+ "                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -autoFitTime 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n"
		+ "                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 2.5\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 1\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 0\n                -outliner \"graphEditor1OutlineEd\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n"
		+ "                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n"
		+ "                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n"
		+ "                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n"
		+ "\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n"
		+ "                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n"
		+ "                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1300\\n    -height 718\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1300\\n    -height 718\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "829C6AC2-4B05-1608-989A-52A4ED77A346";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 300 -ast 1 -aet 500 ";
	setAttr ".st" 6;
createNode skinCluster -n "skinCluster2";
	rename -uid "14F659F7-4091-722C-6AD3-FABC85B4FA00";
	setAttr -s 259 ".wl";
	setAttr ".wl[0:258].w"
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1
		1 0 1;
	setAttr ".pm[0]" -type "matrix" 0.99999999999999978 2.5153490298266114e-17 0 0 -2.5153490298266114e-17 0.99999999999999978 0 0
		 0 0 1 0 -3.4112664890297074e-07 -62.803451538085923 -19.737402467505301 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".dpf[0]"  4;
	setAttr ".mmi" yes;
	setAttr ".mi" 3;
	setAttr ".ucm" yes;
createNode tweak -n "tweak2";
	rename -uid "0A2E86F8-4DCD-46DC-00DF-06B9A6693BE5";
createNode objectSet -n "skinCluster2Set";
	rename -uid "D2C28490-43EC-0DFE-540B-D4922602E24D";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster2GroupId";
	rename -uid "7AC40747-45C6-5DB9-35D4-21BF95EA54B3";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster2GroupParts";
	rename -uid "D20CFD76-4B36-BAC7-2F2E-A081640E5CFE";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet2";
	rename -uid "8D6B1EB1-4A10-EDCA-ECCE-CD885856D228";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId5";
	rename -uid "8FB31EDE-4657-D0A4-EA69-2588EB5C239D";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts5";
	rename -uid "391C59E2-4132-BE05-4AD1-868BADF452D5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose2";
	rename -uid "F7B5FEF5-4A3C-6909-B3ED-8EAFCA088DD8";
	setAttr -s 37 ".wm";
	setAttr ".wm[0]" -type "matrix" 0.99996972440860898 0.0077814051539935609 0 0 -0.0077814051539935609 0.99996972440860898 0 0
		 0 0 1 0 -7.9734181781532243e-06 12.504307796797764 0.50992584228515625 1;
	setAttr ".wm[1]" -type "matrix" 3.6579064516956139e-10 1.0000000000000002 0 0 -1.0000000000000002 3.6579064516956139e-10 0 0
		 0 0 1 0 -8.0275112850636265e-06 24.460819244384766 0.50992584228515625 1;
	setAttr ".wm[2]" -type "matrix" 3.6579064516956139e-10 1.0000000000000002 0 0 -1.0000000000000002 3.6579064516956139e-10 0 0
		 0 0 1 0 -8.0216232092705951e-06 40.557662963867188 0.50992584228515603 1;
	setAttr ".wm[3]" -type "matrix" 3.6579064516956139e-10 1.0000000000000002 0 0 -1.0000000000000002 3.6579064516956139e-10 0 0
		 0 0 1 0 -8.0216213953754154e-06 46.483955383300781 0.50992584228515614 1;
	setAttr ".wm[4]" -type "matrix" 3.6579064516956139e-10 1.0000000000000002 0 0 -1.0000000000000002 3.6579064516956139e-10 0 0
		 0 0 1 0 -6.135593978685243e-06 57.202911376953331 0.50992584228515614 1;
	setAttr ".wm[5]" -type "matrix" 1.0000000000000002 -2.5153490298266126e-17 0 0 2.5153490298266126e-17 1.0000000000000002 0 0
		 0 0 1 0 3.4112665048269687e-07 62.803451538085938 19.737402467505301 1;
	setAttr -s 68 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 8.6736173798840335e-19 0 -7.9734181781532243e-06
		 12.504307796797764 0.50992584228515625 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.0038907320256614825 0.99999243107350788 1
		 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 2.2204460492503131e-16 0 0.093038405710567304
		 11.956149457552874 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.70435026601834505 0.709852592275246 1
		 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 16.096843719482422 -9.4368787686548855e-16
		 -2.2204460492503131e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 5.9262924194335955 2.1659684323882548e-09
		 1.2224756590696843e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 0 0 0 10.71895599365255 -1.8821065228617094e-06
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 0 0 0 0 5.6005401611326064 -6.4746720039690999e-06
		 19.227476625220145 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.70710678105722102 0.70710678131587401 1
		 1 1 yes;
	setAttr ".xm[37]" -type "matrix" "xform" 1 1 1 0 0 8.6736173798840335e-19 0 -7.9734181781532243e-06
		 12.504307796797764 0.50992584228515625 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.0038907320256614825 0.99999243107350788 1
		 1 1 yes;
	setAttr ".xm[38]" -type "matrix" "xform" 1 1 1 0 0 -1.1102230246251565e-16 0 8.4082758827539923
		 6.0396132539608516e-14 2.2204460492503131e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 -0.70985259214641361 0.70435026614818386 1 1 1 yes;
	setAttr ".xm[39]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.1804757060348656 -1.7763568394002505e-15
		 2.2204460492503131e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[40]" -type "matrix" "xform" 1 1 1 8.4004441942304699e-29 1.2989609388114332e-14
		 1.2934098236883074e-14 0 8.3497025966644287 -1.7053025658242404e-13 -9.3258734068513149e-15 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.49999999999999623 -0.50000000000000389 0.49999999999998973 0.50000000000001033 1
		 1 1 yes;
	setAttr ".xm[41]" -type "matrix" "xform" 1 1 1 0 0 0 0 10.324039459228523 1.34781075189494e-13
		 -1.3322676295501878e-13 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[42]" -type "matrix" "xform" 1 1 1 0 0 2.2204460492503131e-16 0 0.09303840571056729
		 11.956149457552874 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.70435026601834505 0.709852592275246 1
		 1 1 yes;
	setAttr ".xm[43]" -type "matrix" "xform" 1 1 1 0 0 0 0 16.096843719482422 -9.4368787686548855e-16
		 -2.2204460492503131e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[44]" -type "matrix" "xform" 1 1 1 0 0 0 0 5.9262924194335955 2.1659684323882548e-09
		 1.2224756590696843e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[45]" -type "matrix" "xform" 1 1 1 0 0 0 0 10.71895599365255 -1.8821065228755872e-06
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[46]" -type "matrix" "xform" 1 1 1 0 0 0 0 6.4659767150878968 -8.0216214107108825e-06
		 -16.951438903808594 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.074822659005514255 0.080238078616057293 -0.72694140739783975 0.6778787580753628 1
		 1 1 yes;
	setAttr ".xm[47]" -type "matrix" "xform" 1 1 1 -1.3877787807814448e-17 -1.1622647289044605e-16
		 -1.0668549377257361e-16 0 1.8089267114003995 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 1 0.023950882972847667 0.13317241894986109 0.24298439215233 0.96054674389444805 1
		 1 1 yes;
	setAttr ".xm[48]" -type "matrix" "xform" 1 1 1 0 0 0 0 5.4201197503717822 9.3074176109371696e-15
		 7.7715611723760928e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.0001332550304013518 -0.00029006225447488382 0.00493127362734501 0.99998779024915974 1
		 1 1 yes;
	setAttr ".xm[49]" -type "matrix" "xform" 1 1 1 0 0 0 0 10.754679572912005 1.3133830291129691e-14
		 5.026876408184226e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.0068552250903130907 -0.013676678738378217 0.029051404458282998 0.9994608397764515 1
		 1 1 yes;
	setAttr ".xm[50]" -type "matrix" "xform" 1 1 1 0 0 0 0 10.881501488361081 3.5948709493688519e-15
		 7.7057812843728719e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.0050044198591462207 -0.0085030170139652663 0.03825022822645948 0.99921948265841831 1
		 1 1 yes;
	setAttr ".xm[51]" -type "matrix" "xform" 1 1 1 2.7755575615628877e-17 2.2898349882893849e-16
		 -2.7755575615628904e-16 0 -1.6200598382762319 -0.23983817945250507 -0.76820034080629185 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.16593906909951456 0.92263754766534989 0.085380118741131883 0.33751209801754634 1
		 1 1 yes;
	setAttr ".xm[52]" -type "matrix" "xform" 1 1 1 0 0 0 0 5.4201424080553409 1.7763568394002505e-15
		 1.3322676295501878e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.00013445930616541075 0.00029268192792318917 0.0049252621567105461 0.99998781895114697 1
		 1 1 yes;
	setAttr ".xm[53]" -type "matrix" "xform" 1 1 1 0 0 0 0 10.754647667701633 2.2648549702353193e-14
		 2.6645352591003757e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.0068522199860155822 0.013670656397401813 0.029055966339947087 0.99946081016465038 1
		 1 1 yes;
	setAttr ".xm[54]" -type "matrix" "xform" 1 1 1 0 0 0 0 10.881509092952124 1.5987211554602254e-14
		 -1.1546319456101628e-14 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.0050091838383631588 0.0085110405814671705 0.038248517646173513 0.99921945595718076 1
		 1 1 yes;
	setAttr ".xm[55]" -type "matrix" "xform" 1 1 1 1.5282913823355672e-15 -1.1155788142504588e-28
		 1.4599032974269704e-13 0 5.8109970156787085 -17.500027092983792 0.70430123805999778 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.0037002456321297288 -0.0037002456334827034 -0.70709709941382137 0.70709709967236756 1
		 1 1 yes;
	setAttr ".xm[56]" -type "matrix" "xform" 1 1 1 0 1.3877787807814457e-17 0 0 1.9413638000040585
		 -7.1054273576010019e-15 2.2204460492503131e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0.040554486921579758 0 0.99917732840098383 1 1 1 yes;
	setAttr ".xm[57]" -type "matrix" "xform" 1 1 1 0 -2.6020852139652109e-17 0 0 11.838567752833825
		 2.4584778657299466e-12 -0.22819404691482978 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0.0039334311743519567 0 0.99999226402967567 1 1 1 yes;
	setAttr ".xm[58]" -type "matrix" "xform" 1 1 1 0 1.9081958235744878e-17 0 0 12.024868606302546
		 2.1458390619955026e-12 -0.35837625387256417 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 -0.0076975468974389031 0 0.99997037344701456 1 1 1 yes;
	setAttr ".xm[59]" -type "matrix" "xform" 1 1 1 1.5282913823355672e-15 -1.1155788142504588e-28
		 1.4599032974269704e-13 0 5.8110370297314944 17.499991980502411 0.70430415771484389 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.0037002456321297288 -0.0037002456334827034 -0.70709709941382137 0.70709709967236756 1
		 1 1 yes;
	setAttr ".xm[60]" -type "matrix" "xform" 1 1 1 0 1.0408340855860843e-16 0 0 -1.9409811212836345
		 -2.9842794901924208e-13 0.040626012855431437 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0.99954704138381034 0 0.030095050438092161 1 1 1 yes;
	setAttr ".xm[61]" -type "matrix" "xform" 1 1 1 0 -5.7245874707234634e-17 0 0 11.838538315525241
		 -2.2097879082139116e-12 0.22819414332658913 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 -0.0039335856376563807 0 0.99999226342208825 1 1 1 yes;
	setAttr ".xm[62]" -type "matrix" "xform" 1 1 1 0 -6.4184768611141862e-17 0 0 12.024866760212349
		 -2.1174173525650986e-12 0.35837508610491664 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0.0076976749200483143 0 0.9999703724615171 1 1 1 yes;
	setAttr ".xm[63]" -type "matrix" "xform" 1 1 1 0 0 -2.2204460492503126e-16 0 -8.4072586255155048
		 0.13081644934714198 1.5771484385140866e-07 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 -0.70985259214642349 0.70435026614817375 1 1 1 yes;
	setAttr ".xm[64]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.1804399999999955 -3.5527136788005009e-15
		 -1.1102230246251565e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[65]" -type "matrix" "xform" 1 1 1 -4.4408920985006252e-16 0 0 0 8.3497000000000003
		 -2.3447910280083306e-13 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.50000000000000011 -0.49999999999999989 0.50000000000000011 0.49999999999999989 1
		 1 1 yes;
	setAttr ".xm[66]" -type "matrix" "xform" 1 1 1 0 0 0 0 10.324073999999996 1.3322676295501878e-15
		 3.5527136788005009e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[67]" -type "matrix" "xform" 1 1 1 -9.714451465470121e-17 -1.2143064331837657e-17
		 -1.3877787807814457e-16 0 0.0023874543649730073 0.14628993190814121 -20.644693374633782 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.0829465923579637 0.70226210409011425 -0.088399437669557435 0.70152215887656277 1
		 1 1 yes;
	setAttr ".xm[99]" -type "matrix" "xform" 1 1 1 0 0 8.6736173798840335e-19 0 -7.9734181781532243e-06
		 12.504307796797764 0.50992584228515625 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.0038907320256614825 0.99999243107350788 1
		 1 1 yes;
	setAttr ".xm[100]" -type "matrix" "xform" 1 1 1 0 0 -1.1102230246251565e-16 0 8.4082758827539923
		 6.0396132539608516e-14 2.2204460492503131e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 -0.70985259214641361 0.70435026614818386 1 1 1 yes;
	setAttr ".xm[101]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.1804757060348656 -1.7763568394002505e-15
		 2.2204460492503131e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[102]" -type "matrix" "xform" 1 1 1 8.4004441942304699e-29 1.2989609388114332e-14
		 1.2934098236883074e-14 0 8.3497025966644287 -1.7053025658242404e-13 -9.3258734068513149e-15 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.49999999999999623 -0.50000000000000389 0.49999999999998973 0.50000000000001033 1
		 1 1 yes;
	setAttr ".xm[103]" -type "matrix" "xform" 1 1 1 0 0 0 0 6.6697697639465439 1.34781075189494e-13
		 -1.3322676295501878e-13 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[104]" -type "matrix" "xform" 1 1 1 0 0 2.2204460492503131e-16 0 0.09303840571056729
		 11.956149457552874 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.70435026601834505 0.709852592275246 1
		 1 1 yes;
	setAttr ".xm[105]" -type "matrix" "xform" 1 1 1 0 0 0 0 16.096843719482422 -9.4368787686548855e-16
		 -2.2204460492503131e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[106]" -type "matrix" "xform" 1 1 1 0 0 0 0 5.9262924194335955 2.1659684323882548e-09
		 1.2224756590696843e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[107]" -type "matrix" "xform" 1 1 1 0 0 0 0 10.71895599365255 -1.8821065228755872e-06
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[108]" -type "matrix" "xform" 1 1 1 0 0 0 0 6.4659767150878968 -8.0216214107108825e-06
		 -16.951438903808594 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.074822659005514255 0.080238078616057293 -0.72694140739783975 0.6778787580753628 1
		 1 1 yes;
	setAttr ".xm[109]" -type "matrix" "xform" 1 1 1 -1.3877787807814448e-17 -1.1622647289044605e-16
		 -1.0668549377257361e-16 0 1.8089267114003995 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 1 0.023950882972847667 0.13317241894986109 0.24298439215233 0.96054674389444805 1
		 1 1 yes;
	setAttr ".xm[110]" -type "matrix" "xform" 1 1 1 0 0 0 0 5.4201197503717822 9.3074176109371696e-15
		 7.7715611723760928e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.0001332550304013518 -0.00029006225447488382 0.00493127362734501 0.99998779024915974 1
		 1 1 yes;
	setAttr ".xm[111]" -type "matrix" "xform" 1 1 1 0 0 0 0 10.754679572912005 1.3133830291129691e-14
		 5.026876408184226e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.0068552250903130907 -0.013676678738378217 0.029051404458282998 0.9994608397764515 1
		 1 1 yes;
	setAttr ".xm[112]" -type "matrix" "xform" 1 1 1 0 0 0 0 10.881501488361081 3.5948709493688519e-15
		 7.7057812843728719e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.0050044198591462207 -0.0085030170139652663 0.03825022822645948 0.99921948265841831 1
		 1 1 yes;
	setAttr ".xm[113]" -type "matrix" "xform" 1 1 1 2.7755575615628877e-17 2.2898349882893849e-16
		 -2.7755575615628904e-16 0 -1.6200598382762319 -0.23983817945250507 -0.76820034080629185 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.16593906909951456 0.92263754766534989 0.085380118741131883 0.33751209801754634 1
		 1 1 yes;
	setAttr ".xm[114]" -type "matrix" "xform" 1 1 1 0 0 0 0 5.4201424080553409 1.7763568394002505e-15
		 1.3322676295501878e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.00013445930616541075 0.00029268192792318917 0.0049252621567105461 0.99998781895114697 1
		 1 1 yes;
	setAttr ".xm[115]" -type "matrix" "xform" 1 1 1 0 0 0 0 10.754647667701633 2.2648549702353193e-14
		 2.6645352591003757e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.0068522199860155822 0.013670656397401813 0.029055966339947087 0.99946081016465038 1
		 1 1 yes;
	setAttr ".xm[116]" -type "matrix" "xform" 1 1 1 0 0 0 0 10.881509092952124 1.5987211554602254e-14
		 -1.1546319456101628e-14 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.0050091838383631588 0.0085110405814671705 0.038248517646173513 0.99921945595718076 1
		 1 1 yes;
	setAttr ".xm[117]" -type "matrix" "xform" 1 1 1 1.5282913823355672e-15 -1.1155788142504588e-28
		 1.4599032974269704e-13 0 5.8109970156787085 -17.500027092983792 0.70430123805999778 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.0037002456321297288 -0.0037002456334827034 -0.70709709941382137 0.70709709967236756 1
		 1 1 yes;
	setAttr ".xm[118]" -type "matrix" "xform" 1 1 1 0 1.3877787807814457e-17 0 0 1.9413638000040585
		 -7.1054273576010019e-15 2.2204460492503131e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0.040554486921579758 0 0.99917732840098383 1 1 1 yes;
	setAttr ".xm[119]" -type "matrix" "xform" 1 1 1 0 -2.6020852139652109e-17 0 0 11.838567752833832
		 2.4584778657299466e-12 -0.2281940469148287 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0.0039334311743519567 0 0.99999226402967567 1 1 1 yes;
	setAttr ".xm[120]" -type "matrix" "xform" 1 1 1 0 1.9081958235744878e-17 0 0 12.024868606302554
		 2.1387336346379016e-12 -0.35837625387256367 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 -0.0076975468974389031 0 0.99997037344701456 1 1 1 yes;
	setAttr ".xm[121]" -type "matrix" "xform" 1 1 1 1.5282913823355672e-15 -1.1155788142504588e-28
		 1.4599032974269704e-13 0 5.8110370297314944 17.499991980502411 0.70430415771484389 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.0037002456321297288 -0.0037002456334827034 -0.70709709941382137 0.70709709967236756 1
		 1 1 yes;
	setAttr ".xm[122]" -type "matrix" "xform" 1 1 1 0 1.0408340855860843e-16 0 0 -1.9409811212836345
		 -2.9842794901924208e-13 0.040626012855431437 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0.99954704138381034 0 0.030095050438092161 1 1 1 yes;
	setAttr ".xm[123]" -type "matrix" "xform" 1 1 1 0 -5.7245874707234634e-17 0 0 11.838538315525231
		 -2.2168933355715126e-12 0.22819414332658994 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 -0.0039335856376563807 0 0.99999226342208825 1 1 1 yes;
	setAttr ".xm[124]" -type "matrix" "xform" 1 1 1 0 -6.4184768611141862e-17 0 0 12.024866760212362
		 -2.1103119252074976e-12 0.3583750861049162 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0.0076976749200483143 0 0.9999703724615171 1 1 1 yes;
	setAttr ".xm[125]" -type "matrix" "xform" 1 1 1 0 0 -2.2204460492503126e-16 0 -8.4072586255155048
		 0.13081644934714198 1.5771484385140866e-07 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 -0.70985259214642349 0.70435026614817375 1 1 1 yes;
	setAttr ".xm[126]" -type "matrix" "xform" 1 1 1 0 0 0 0 3.1804399999999955 -3.5527136788005009e-15
		 -1.1102230246251565e-16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[127]" -type "matrix" "xform" 1 1 1 -4.4408920985006252e-16 0 0 0 8.3497000000000003
		 -2.3447910280083306e-13 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.50000000000000011 -0.49999999999999989 0.50000000000000011 0.49999999999999989 1
		 1 1 yes;
	setAttr ".xm[128]" -type "matrix" "xform" 1 1 1 0 0 0 0 6.6697696062316894 1.3322676295501878e-15
		 3.5527136788005009e-15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[129]" -type "matrix" "xform" 1 1 1 -9.714451465470121e-17 -1.2143064331837657e-17
		 -1.3877787807814457e-16 0 0.0023874543649730073 0.14628993190814121 -20.644693374633782 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.0829465923579637 0.70226210409011425 -0.088399437669557435 0.70152215887656277 1
		 1 1 yes;
	setAttr -s 40 ".m";
	setAttr -s 68 ".p";
	setAttr -s 5 ".g[0:4]" yes yes yes yes yes;
	setAttr ".bp" yes;
createNode groupId -n "groupId6";
	rename -uid "26C24C56-4EAF-011B-73B0-7393F02E2D6C";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts6";
	rename -uid "103F3144-44F1-7822-C67A-C2B9D92D96A0";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:257]";
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "D84590B4-48F5-51FF-3390-539062013A6E";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -822.16572464884791 -252.10588427645058 ;
	setAttr ".tgi[0].vh" -type "double2" 522.08899966947172 421.32911866512006 ;
	setAttr -s 13 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 364.28570556640625;
	setAttr ".tgi[0].ni[0].y" -354.28570556640625;
	setAttr ".tgi[0].ni[0].nvs" 18304;
	setAttr ".tgi[0].ni[1].x" 57.142856597900391;
	setAttr ".tgi[0].ni[1].y" 431.42855834960938;
	setAttr ".tgi[0].ni[1].nvs" 18304;
	setAttr ".tgi[0].ni[2].x" 364.28570556640625;
	setAttr ".tgi[0].ni[2].y" -202.85714721679688;
	setAttr ".tgi[0].ni[2].nvs" 18304;
	setAttr ".tgi[0].ni[3].x" -264.28570556640625;
	setAttr ".tgi[0].ni[3].y" 78.571426391601563;
	setAttr ".tgi[0].ni[3].nvs" 18304;
	setAttr ".tgi[0].ni[4].x" 57.142856597900391;
	setAttr ".tgi[0].ni[4].y" 154.28572082519531;
	setAttr ".tgi[0].ni[4].nvs" 18304;
	setAttr ".tgi[0].ni[5].x" 364.28570556640625;
	setAttr ".tgi[0].ni[5].y" 431.42855834960938;
	setAttr ".tgi[0].ni[5].nvs" 18304;
	setAttr ".tgi[0].ni[6].x" -250;
	setAttr ".tgi[0].ni[6].y" 150;
	setAttr ".tgi[0].ni[6].nvs" 18304;
	setAttr ".tgi[0].ni[7].x" -264.28570556640625;
	setAttr ".tgi[0].ni[7].y" 180;
	setAttr ".tgi[0].ni[7].nvs" 18304;
	setAttr ".tgi[0].ni[8].x" -264.28570556640625;
	setAttr ".tgi[0].ni[8].y" 431.42855834960938;
	setAttr ".tgi[0].ni[8].nvs" 18304;
	setAttr ".tgi[0].ni[9].x" 364.28570556640625;
	setAttr ".tgi[0].ni[9].y" 301.42855834960938;
	setAttr ".tgi[0].ni[9].nvs" 18304;
	setAttr ".tgi[0].ni[10].x" 364.28570556640625;
	setAttr ".tgi[0].ni[10].y" 200;
	setAttr ".tgi[0].ni[10].nvs" 18304;
	setAttr ".tgi[0].ni[11].x" -643.55059814453125;
	setAttr ".tgi[0].ni[11].y" 466.0233154296875;
	setAttr ".tgi[0].ni[11].nvs" 18306;
	setAttr ".tgi[0].ni[12].x" 56.990131378173828;
	setAttr ".tgi[0].ni[12].y" 42.721565246582031;
	setAttr ".tgi[0].ni[12].nvs" 18306;
createNode displayLayer -n "mask";
	rename -uid "0901C28E-4DF0-3E89-8B59-B79723E2CD69";
	setAttr ".v" no;
	setAttr ".do" 1;
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "A7661BBC-4781-F1BE-C2AA-169AC839DFF7";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -93.815327282566798 -116.36178399408433 ;
	setAttr ".tgi[0].vh" -type "double2" 149.33216595922036 117.55226013725523 ;
createNode skinCluster -n "skinCluster3";
	rename -uid "88832F26-4FA4-A092-556C-768692646B84";
	setAttr -s 1070 ".wl";
	setAttr ".wl[0:173].w"
		3 3 0.011419479946185706 29 0.62350928296656449 30 0.36507123708724976
		3 28 4.0520571720598142e-05 29 0.58582557306383853 30 0.41413390636444092
		3 3 0.00054758112870223355 29 0.54626131732024186 30 0.45319110155105591
		4 27 4.6192915734224582e-12 28 0.0006111955898830488 29 0.58182439778604256 
		30 0.4175644066194551
		3 27 2.445891621497349e-05 28 0.0054138680111060627 29 0.99456167307267895
		3 27 0.0017139095421016802 28 0.0084693832322955132 29 0.98981670722560278
		3 27 0.00012146386807204797 28 3.222210580133833e-05 29 0.99984631402612656
		3 27 0.00086532189761516607 28 0.00017617093958010102 29 0.99895850716280477
		3 27 4.3535546815990901e-11 29 0.59980255419721062 30 0.40019744575925387
		3 27 0.00064093928488495036 28 0.00018457013356965035 29 0.99917449058154539
		3 27 2.3134483645076699e-06 28 0.0091487579133016032 29 0.99084892863833385
		3 28 0.0044231952696975564 29 0.40043925908208844 30 0.59513754564821397
		3 28 0.0015191645013862116 29 0.47806535059337085 30 0.52041548490524292
		3 27 0.018627017368397825 28 2.7731507753151071e-06 29 0.98137020948082687
		3 27 1.4224480847394855e-09 28 0.00165246346324395 29 0.99834753511430796
		3 28 0.0088577255053574194 29 0.46490106958143379 30 0.5262412049132088
		3 28 0.0075533554272980063 29 1.3990762832138561e-10 30 0.9924466444327944
		3 28 0.0064324541017413139 29 0.00060782431149058471 30 0.99295972158676815
		3 28 0.0022989616263657808 29 0.0033212396710598255 30 0.99437979870257442
		3 28 0.003159343534115486 29 0.0014651742530986667 30 0.99537548221278582
		2 29 0.00049955846043303609 30 0.99950044153956696
		3 4 0.0026248339338640829 29 0.00035861725336872041 30 0.99701654881276724
		3 4 0.0099471569499118024 29 0.03111418481263092 30 0.95893865823745728
		3 4 0.00027684315845849744 29 0.0097107057757878437 30 0.99001245106575364
		3 28 0.00028883026517022617 29 0.00059440437855438411 30 0.99911676535627547
		2 28 0.00028588703767250164 30 0.99971411296232748
		3 28 0.000285885713421864 29 1.2683364047916257e-06 30 0.99971284595017329
		3 28 0.00028882960100143985 29 0.00059440243057906628 30 0.99911676796841953
		3 27 2.1948651919956319e-05 28 0.49442380767931388 29 0.50555424366876622
		3 28 0.13839415096628713 29 0.86160577059618526 30 7.8437527584185318e-08
		3 27 0.0092426112156031338 28 0.3604803885523758 29 0.63027700023202093
		3 27 3.5742357340495801e-06 28 0.54671477392386036 29 0.45328165184040553
		3 27 0.0007141622481867671 28 0.41979143305460698 29 0.57949440469720626
		3 28 0.14454139350119885 29 0.85539656766057803 30 6.2038838223088533e-05
		3 27 8.8528567065103219e-10 28 0.49989294419308389 29 0.50010705492163043
		3 27 0.00020947645696119355 28 0.56316261689713665 29 0.43662790664590201
		3 27 0.0018038458656519651 28 0.81055704671091089 29 0.18763910742343709
		3 27 1.2914616490888875e-05 28 0.59502690211494358 29 0.40496018326856548
		4 0 1.4147771983909986e-09 27 7.2571665664435689e-06 28 0.85210623200386137 
		29 0.14788650941479506
		4 0 1.0048979617728293e-09 27 0.00011562011674268874 28 0.87083112741711244 
		29 0.12905325146124694
		3 27 0.00047842885040102221 28 0.69024469191180005 29 0.30927687923779901
		3 27 0.00014922692207619548 28 0.78386907569331488 29 0.21598169738460896
		3 28 0.00013999080172145208 29 0.55200510287770665 30 0.4478549063205719
		2 27 0.0092856735563756239 29 0.99071432644362434
		3 27 0.011766446184066732 28 0.0010785338236019015 29 0.98715501999233135
		3 27 1.6179033082153182e-06 28 0.49874119820032115 29 0.50125718389637064
		2 28 0.17585206598929329 29 0.82414793401070674
		3 28 0.0072240062639221106 29 0.46821756878643189 30 0.524558424949646
		3 28 1.8189767491903345e-05 29 0.0011164755613342146 30 0.99886533467117389
		3 28 1.8035449807824643e-05 29 0.00111647585802859 30 0.99886548869216363
		3 27 2.1200292238029146e-05 28 0.64893126389413158 29 0.35104753581363041
		2 28 0.25676919518037328 29 0.74323080481962678
		3 28 0.013434422410183684 29 0.59895788391763616 30 0.38760769367218018
		3 4 0.012151185446594673 29 0.0048621515509857166 30 0.98298666300241966
		3 4 0.0018654985755820321 29 0.0022188869770616293 30 0.99591561444735632
		3 28 0.0024847525188032224 29 0.60422860206875173 30 0.39328664541244507
		3 27 2.5001198149031922e-05 28 1.2434666132321581e-05 29 0.9999625641357186
		3 27 0.00073692148823129662 28 0.015891645404415504 29 0.9833714331073532
		3 27 2.3503469392949228e-08 28 0.50934034932929884 29 0.49065962716723183
		3 27 0.00058860015509363747 28 0.82180573515060573 29 0.17760566469430059
		2 28 0.78724553128070063 29 0.21275446871929943
		3 28 0.2567560877918505 29 0.7431924902544641 30 5.1421953685348853e-05
		3 28 0.012164570612291771 29 0.52530101661862605 30 0.46253441276908219
		3 28 0.0062308068790630387 29 0.00013096831823758079 30 0.99363822480269925
		3 28 0.013692786360485007 29 0.00018848841136787087 30 0.98611872522814714
		2 29 0.61864027380943298 30 0.38135972619056702
		3 27 0.012806267817210441 28 0.00019486725865593867 29 0.98699886492413369
		3 27 0.0017046227690329036 28 0.0061258045025169849 29 0.99216957272845008
		2 28 0.50671887397766113 29 0.49328112602233887
		3 27 0.0022409781813621521 28 0.82044692690983301 29 0.1773120949088049
		3 3 0.002415844837720762 29 0.56740649132545151 30 0.43017766383682771
		3 4 4.9500372550914662e-11 29 0.00013094690300494724 30 0.99986905304749463
		3 4 0.011156806898625526 29 4.3355745489810301e-09 30 0.98884318876579991
		4 4 0.0035556362171822453 28 1.4478333703436404e-08 29 0.0051956327788914968 
		30 0.99124871652559254
		3 28 0.0023859083028163492 29 0.27498408194409074 30 0.72263000975309288
		4 4 0.00023886779004280161 28 8.6078218223332659e-11 29 6.4307246886670822e-05 
		30 0.9996968248769923
		2 28 5.24755652793265e-11 30 0.99999999994752442
		2 28 0.00022009847335334025 30 0.99977990152664675
		3 28 0.0019295622635377464 29 0.60124674285392399 30 0.39682369488253816
		3 28 0.0034353634540575887 29 0.00013540095506454561 30 0.99642923559087782
		2 28 0.00702271966681145 30 0.99297728033318855
		2 28 0.0049324743449687958 30 0.9950675256550312
		2 29 0.60791817307472229 30 0.39208182692527771
		2 27 1.5659128836654382e-05 29 0.99998434087116339
		1 29 1
		1 29 1
		2 27 0.0015321132248959494 29 0.99846788677510412
		3 27 4.8252465939486238e-05 28 4.4004948990261639e-11 29 0.99995174749005555
		3 27 8.016642896674726e-05 28 3.2779346155719898e-07 29 0.9999195057775716
		3 27 0.02020603832197615 28 1.6236530860908385e-05 29 0.97977772514716299
		3 27 0.00084002671064808965 28 0.84298110974615847 29 0.15617886354319349
		3 27 0.0012576001463457942 28 0.59095231438286244 29 0.40779008547079182
		3 27 0.00075248929437161526 28 0.015237418003380299 29 0.98401009270224804
		3 3 0.00077817589044570923 28 2.7393589447440714e-05 29 0.99919443052010681
		4 3 0.00092087071166335743 28 0.00011954162987802861 29 0.99895957846103123 
		30 9.1974274193714518e-09
		4 27 1.4087444437391978e-09 28 3.8990251826397772e-11 29 0.99999998061690587 
		30 1.7935359438882829e-08
		4 27 0.0021219022567538588 28 5.9671276944965846e-05 29 0.99781843511469648 
		30 -8.6483952387088293e-09
		3 27 0.00021925736737090203 28 0.003229168503578652 29 0.99655157412905049
		3 27 0.0029723575218364808 28 0.00026872697242503324 29 0.99675891550573847
		3 27 0.0051910531200729188 28 0.00077322269206828425 29 0.99403572418785879
		4 27 0.00051019420686493637 28 5.5949959740413074e-05 29 0.99943384696186621 
		30 8.8715284405091027e-09
		2 27 0.00021294284670148045 29 0.99978705715329852
		2 28 0.012672205455601215 29 0.98732779454439878
		3 27 0.00050354465656385697 28 0.4697184305903857 29 0.52977802475305036
		4 0 2.479449842162592e-09 27 1.4431481303965729e-05 28 0.82797235443366013 
		29 0.17201321160558602
		3 3 0.62350928296656449 4 0.36507123708724976 29 0.011419479946185706
		3 2 4.0520571720598142e-05 3 0.58582557306383853 4 0.41413390636444092
		3 3 0.54626131732024186 4 0.45319110155105591 29 0.00054758112870223355
		3 2 0.00061119574133229962 3 0.5818243227618568 4 0.41756448149681091
		3 1 2.4458930779623137e-05 2 0.0054135676473379135 3 0.99456197342188246
		3 1 0.0017139095421016802 2 0.0084693832322955132 3 0.98981670722560278
		4 1 0.00012146386807204797 2 3.222210580133833e-05 3 0.99984631402612656 
		29 1.4359267560930109e-38
		3 1 0.00086532240405394305 2 0.00017617104458622634 3 0.99895850655135987
		2 3 0.59980249404907227 4 0.40019750595092773
		3 1 0.00064093928488495036 2 0.00018457013356965035 3 0.99917449058154539
		3 1 2.3134489863739661e-06 2 0.0091483201831579208 3 0.9908493663678557
		3 2 0.0044231932663999904 3 0.4004392106032289 4 0.59513759613037109
		3 2 0.0015191645013862116 3 0.47806535059337085 4 0.52041548490524292
		3 1 0.018627021809425898 2 2.7731514364859322e-06 3 0.98137020503913763
		2 2 0.0016524597303941846 3 0.99834754026960582
		3 2 0.0088577235343212588 3 0.46490103358008916 4 0.5262412428855896
		2 2 0.0075533575117703658 4 0.99244664248822967
		3 2 0.0064324541017413139 3 0.00060782431149058471 4 0.99295972158676815
		3 2 0.0022989616263657808 3 0.0033212396710598255 4 0.99437979870257442
		3 2 0.003159343534115486 3 0.0014651742530986667 4 0.99537548221278582
		2 3 0.00049955846043303609 4 0.99950044153956696
		3 3 0.00035861725336872041 4 0.99701654881276724 30 0.0026248339338640829
		3 3 0.03111418481263092 4 0.95893865823745728 30 0.0099471569499118024
		3 3 0.0097107147263959682 4 0.99001245912614833 30 0.00027682614745572209
		3 2 0.00028883057200559763 3 0.00059440400218591094 4 0.99911676542580852
		2 2 0.00028588703767250164 4 0.99971411296232748
		3 2 0.000285885713421864 3 1.2683364047916257e-06 4 0.99971284595017329
		3 2 0.00028882960100143985 3 0.00059440243057906628 4 0.99911676796841953
		3 1 2.1948651919956319e-05 2 0.49442380767931388 3 0.50555424366876622
		2 2 0.13839419424022223 3 0.86160580575977774
		3 1 0.0092426128685474396 2 0.36048045095984771 3 0.63027693617160485
		3 1 3.5742357340495801e-06 2 0.54671477392386036 3 0.45328165184040553
		3 1 0.0007141622481867671 2 0.41979143305460698 3 0.57949440469720626
		3 2 0.14454139350119885 3 0.85539656766057803 4 6.2038838223088533e-05
		3 1 8.8375762263837032e-10 2 0.49989294528145961 3 0.50010705383478271
		3 1 0.00020947674056515098 2 0.56316257715002349 3 0.4366279461094113
		3 1 0.0018038458656519651 2 0.81055704671091089 3 0.18763910742343709
		3 1 1.2914616490888875e-05 2 0.59502690211494358 3 0.40496018326856548
		3 1 7.2571847340441309e-06 2 0.85210588323580905 3 0.14788685957945685
		3 1 0.00011562022700672969 2 0.87083100944940128 3 0.12905337032359201
		3 1 0.0004784293136704067 2 0.69024473428726196 3 0.30927683639906761
		3 1 0.00014922692207619548 2 0.78386907569331488 3 0.21598169738460896
		3 2 0.00013999080172145208 3 0.55200510287770665 4 0.4478549063205719
		2 1 0.0092856735563756239 3 0.99071432644362434
		3 1 0.011766446184066732 2 0.0010785338236019015 3 0.98715501999233135
		3 1 1.6179033082153182e-06 2 0.49874119820032115 3 0.50125718389637064
		2 2 0.17585206598929329 3 0.82414793401070674
		3 2 0.0072240062639221106 3 0.46821756878643189 4 0.524558424949646
		3 2 1.8189702966323408e-05 3 0.0011164756858061784 4 0.99886533461122751
		3 2 1.8035449807824643e-05 3 0.00111647585802859 4 0.99886548869216363
		3 1 2.1200294213485904e-05 2 0.64893127674593276 3 0.35104752295985375
		2 2 0.25676919518037328 3 0.74323080481962678
		3 2 0.013434422410183684 3 0.59895788391763616 4 0.38760769367218018
		3 3 0.0048621296445637962 4 0.98298668306965531 30 0.012151187285780907
		3 3 0.0022188869770616293 4 0.99591561444735632 30 0.0018654985755820321
		3 2 0.0024847525188032224 3 0.60422860206875173 4 0.39328664541244507
		3 1 2.5001198149031922e-05 2 1.2434666132321581e-05 3 0.9999625641357186
		3 1 0.00073692166392150889 2 0.015891527757048607 3 0.98337155057902992
		3 1 2.3503469392949228e-08 2 0.50934034932929884 3 0.49065962716723183
		3 1 0.00058859906857833266 2 0.82180574520772598 3 0.17760565572369572
		2 2 0.78724553128070063 3 0.21275446871929943
		3 2 0.2567560877918505 3 0.7431924902544641 4 5.1421953685348853e-05
		3 2 0.012164573476289796 3 0.52530126710178948 4 0.46253415942192078
		3 2 0.006230810540537036 3 0.00013096672773826867 4 0.99363822273172464
		3 2 0.013692786360485007 3 0.00018848841136787087 4 0.98611872522814714
		2 3 0.61864027380943298 4 0.38135972619056702
		3 1 0.012806282320174705 2 0.00019486747934106948 3 0.98699885020048428
		3 1 0.0017046227690329036 2 0.0061258045025169849 3 0.99216957272845008
		2 2 0.50671887397766113 3 0.49328112602233887;
	setAttr ".wl[174:357].w"
		3 1 0.0022409781813621521 2 0.82044692690983301 3 0.1773120949088049
		3 3 0.56740637645554759 4 0.43017777800559998 29 0.0024158455388523809
		2 3 0.0001309451900086665 4 0.99986905480999133
		2 4 0.98884318675845861 30 0.011156813241541386
		3 3 0.0051956336208826654 4 0.99124872952613763 30 0.00355563685297966
		3 2 0.0023858382253217209 3 0.27498437623695854 4 0.72262978553771973
		3 3 6.4307088905479759e-05 4 0.99969682504986357 30 0.00023886786123097169
		1 4 1
		2 2 0.00022009847335334025 4 0.99977990152664675
		3 2 0.0019295448778025538 3 0.6012477392335589 4 0.39682271588863849
		3 2 0.0034353624722510629 3 0.00013540098734665662 4 0.99642923654040227
		2 2 0.0070227221585810184 4 0.99297727784141898
		2 2 0.0049324743449687958 4 0.9950675256550312
		2 3 0.60791817307472229 4 0.39208182692527771
		2 1 1.5659128836654382e-05 3 0.99998434087116339
		1 3 1
		1 3 1
		2 1 0.0015321132248959494 3 0.99846788677510412
		2 1 4.8252324631903321e-05 3 0.9999517476753681
		3 1 8.0166455271591698e-05 2 3.2778768854768714e-07 3 0.99991950575703981
		3 1 0.020206050293322543 2 1.6236521332757547e-05 3 0.97977771318534468
		3 1 1.4431552699534222e-05 2 0.82797152227386972 3 0.1720140461734308
		3 1 0.00050354498671367764 2 0.46971873025343902 3 0.5297777247598473
		2 2 0.012672205455601215 3 0.98732779454439878
		2 1 0.00021294284670148045 3 0.99978705715329852
		3 1 0.00051019445492181252 2 5.5950004025362432e-05 3 0.9994338555410528
		3 1 0.0051910612111135263 2 0.0007732239319011569 3 0.99403571485698528
		3 1 0.0029723556704043023 2 0.0002687265514396131 3 0.99675891777815606
		3 1 0.0002192545777114868 2 0.0032291715033352375 3 0.99655157391895333
		3 1 0.0021219043992459774 2 5.9667533483088837e-05 3 0.99781842806727095
		1 3 1
		3 2 0.0001195413761728939 3 0.99895958752576697 29 0.00092087109806016088
		3 2 2.7393589447440714e-05 3 0.99919443052010681 29 0.00077817589044570923
		3 1 0.00075248929437161526 2 0.015237418003380299 3 0.98401009270224804
		3 1 0.0012576001463457942 2 0.59095231438286244 3 0.40779008547079182
		3 1 0.00084002671064808965 2 0.84298110974615847 3 0.15617886354319349
		3 6 0.0092607760120807479 7 3.0333217961743581e-14 8 0.99073922398788894
		2 6 0.0092608360573649406 8 0.99073916394263506
		2 6 0.014030648958083702 8 0.9859693510419163
		2 6 0.014030694961547852 8 0.98596930503845215
		2 6 0.00022828502514116167 8 0.99977171497485884
		2 6 0.00022828578948974609 8 0.99977171421051025
		3 6 0.00010743695768363656 7 3.0606717639144225e-08 8 0.99989253243559872
		3 6 0.00010743656770110729 7 3.0606828922003326e-08 8 0.99989253282546997
		3 6 0.019649766671857805 7 0.00035216791135528401 8 0.97999806541678691
		3 6 3.201859226855853e-10 7 4.955858189471195e-07 8 0.99999950409399518
		2 6 4.5306647332553232e-06 8 0.99999546933526684
		2 6 1.4364173194295602e-06 8 0.99999856358268058
		3 6 0.01964983344078064 7 0.0003521692127923754 8 0.97999799734642701
		2 7 4.9558720469662576e-07 8 0.99999950441279539
		2 6 4.5299530029296875e-06 8 0.99999547004699707
		2 6 1.430511474609375e-06 8 0.99999856948852539
		3 6 0.0085148805013726889 7 0.0015845602611079812 8 0.9899005592375193
		3 6 1.5516303392359987e-05 7 2.8303538641544475e-06 8 0.99998165334274347
		1 8 1
		1 8 1
		2 6 0.0015821456909179688 8 0.99841785430908203
		2 6 0.0025018453598022461 8 0.99749815464019775
		2 6 0.0024984887959362823 8 0.99750151120406372
		2 6 0.0015821456909179688 8 0.99841785430908203
		2 6 0.011203316522397699 8 0.9887966834776023
		3 6 0.037085966742732422 7 4.3236515628067651e-08 8 0.96291399002075195
		2 6 0.011203348636627197 8 0.9887966513633728
		3 24 7.1337438492799279e-05 25 0.0016011307550660634 26 0.99832753180644107
		3 24 5.0511994008606001e-05 25 8.7037007605315439e-05 26 0.999862450998386
		2 23 0.27581062912940979 24 0.72418937087059021
		5 6 3.7728938941762908e-11 8 1.1104138488957417e-11 23 0.2984320541576585 
		24 0.68865837570250532 25 0.012909570091003011
		3 24 0.0002368673420865412 25 0.0003609963668083164 26 0.99940213629110508
		3 24 8.8270397605229984e-05 25 0.0022575464636732704 26 0.99765418313872156
		3 23 0.0079458631860883176 25 0.54098808986071034 26 0.45106604695320129
		3 24 0.010723125575492234 25 0.56957705652861845 26 0.41969981789588928
		3 24 0.47509680463362064 25 0.52473183228524511 26 0.0001713630811342186
		4 23 4.6998540637926869e-06 24 0.48691990228775595 25 0.5130753978579129 
		26 2.6734359009024455e-13
		3 24 0.49057947096045051 25 0.50941604375839233 26 4.4852811571594923e-06
		3 24 9.8905755897311801e-07 25 0.62672935979849465 26 0.37326965114394639
		3 24 2.7017099626140524e-05 25 0.00042074738577857918 26 0.99955223551459527
		3 24 4.2127921768893918e-05 25 2.5898689859360502e-08 26 0.9999578461795412
		3 6 0.0022883175007024081 23 0.49994704617352986 24 0.49776463632576773
		4 6 6.6838848431127412e-16 23 0.20186129768242553 24 0.79813870137486165 
		25 9.4271214391535889e-10
		4 23 7.1283953719468134e-05 24 0.43008508677277557 25 0.56984362908891917 
		26 1.8458572817651015e-10
		3 24 0.011737957064462545 25 0.41044170461549789 26 0.57782033832003965
		3 24 0.00015146942608722073 25 9.9062973789162711e-06 26 0.99983862427653392
		3 24 5.0082337423119589e-05 25 0.014483486245393451 26 0.98546643141718349
		3 24 0.00033935094112642189 25 0.0009575340988420139 26 0.9987031149600315
		3 24 5.8878776947867742e-08 25 0.48019248319733387 26 0.51980745792388916
		4 23 3.6584558045120756e-11 24 0.43789969698808789 25 0.5619122391772734 
		26 0.00018806379805410024
		5 6 6.1538589184869343e-11 8 2.5151199786913362e-12 23 0.23631723079467659 
		24 0.76311807982989077 25 0.00056468931137894384
		3 20 7.1337625583167881e-05 21 0.0016011158004403114 22 0.99832754657397649
		3 20 5.0502671858875519e-05 21 8.6251398897729814e-05 22 0.99986324592924336
		2 19 0.27581062912940979 20 0.72418937087059021
		3 19 0.29842605995744104 20 0.68866410344561213 21 0.012909836596946696
		3 20 0.00023686766862205232 21 0.00036072527291253209 22 0.99940240705846539
		3 20 8.8264099957423165e-05 21 0.0022564461257728015 22 0.99765528977426987
		3 19 0.0079458631860883176 21 0.54098808986071034 22 0.45106604695320129
		3 20 0.010723125575492234 21 0.56957705652861845 22 0.41969981789588928
		3 20 0.47509521245956421 21 0.52473342333830642 22 0.00017136420212940847
		3 19 4.6998543439258356e-06 20 0.48691990206962865 21 0.51307539807602742
		3 20 0.49057947096045051 21 0.50941604375839233 22 4.4852811571594923e-06
		3 20 9.8906298262591008e-07 21 0.62672835029820817 22 0.3732706606388092
		3 20 2.7017081428086949e-05 21 0.00042074764496646821 22 0.99955223527360548
		2 20 4.2127907545306475e-05 22 0.99995787209245468
		3 6 0.0022883177734911442 19 0.49994707289267609 20 0.49776460933383276
		2 19 0.20186063647270203 20 0.79813936352729797
		3 19 7.1283728175330907e-05 20 0.43008509278297424 21 0.56984362348885043
		3 20 0.011737959863010256 21 0.41044179868572633 22 0.57782024145126343
		3 20 0.00015146942517205422 21 9.9062472145305946e-06 22 0.99983862432761339
		3 20 5.0082314172254028e-05 21 0.014483597129583359 22 0.98546632055624439
		3 20 0.00033935121919512136 21 0.00095737527590245008 22 0.9987032735049024
		3 20 5.8878776947867742e-08 21 0.48019248319733387 22 0.51980745792388916
		3 20 0.43789967894554138 21 0.56191225723398552 22 0.00018806382047305465
		3 19 0.23631683447165924 20 0.76311849502021645 21 0.00056467050812428199
		4 0 0.075695726309433428 5 6.7338666926166121e-10 27 0.18587730406702008 
		28 0.7384269689501598
		3 0 0.075695739844886478 1 0.1858772337436676 2 0.73842702641144586
		1 8 1
		1 8 1
		3 7 9.8575463161216364e-07 8 0.98669846460622745 16 0.013300549639141053
		3 7 9.8575506740342327e-07 8 0.98669845848675442 12 0.013300555758178234
		2 0 0.0027451161560172635 28 0.99725488384398275
		2 0 0.0027451161560172635 2 0.99725488384398275
		3 5 0.3435771252424793 6 0.65609288786567299 24 0.00032998689184767904
		3 5 0.34357711672782898 6 0.65609289638894286 20 0.00032998688322816942
		3 5 0.41745361685752869 6 0.58222913274083676 19 0.00031725040163454516
		3 5 0.41745361685752869 6 0.58222913274083676 23 0.00031725040163454516
		3 0 0.22123678892434062 27 0.30676349665479424 28 0.47199971442086514
		3 27 0.00057311385227012523 28 0.99771228403495982 31 0.0017146021127700806
		3 5 0.40464562177658081 6 0.5953486888285402 7 5.6893948789894628e-06
		3 7 2.5877236325727263e-07 8 0.99917670753600318 16 0.00082303369163354984
		2 6 4.2557716369628906e-05 8 0.99995744228363037
		3 0 0.00077516277015193845 5 0.30959340929985046 6 0.68963142792999754
		3 0 0.46068492422750718 2 0.28542867411920309 28 0.25388640165328979
		3 0 0.14527227792147546 2 0.85155389698032291 31 0.0031738250982016325
		3 5 0.40535292029380798 6 0.59464628082822757 7 7.9887796441737018e-07
		2 8 0.99969124794006348 11 0.00030875205993652344
		1 8 1
		3 0 0.012244414802539199 5 0.29319241642951965 6 0.69456316876794111
		3 0 0.22123688459396362 1 0.30676336071952193 2 0.47199975468651445
		3 1 0.00057311385227012523 2 0.99771228403495982 31 0.0017146021127700806
		3 5 0.40464562177658081 6 0.5953486888285402 7 5.6893948789894628e-06
		3 7 2.587717853113421e-07 8 0.99917671819768028 12 0.00082302303053438663
		2 6 4.2557716369628906e-05 8 0.99995744228363037
		3 0 0.00077516277015193845 5 0.30959340929985046 6 0.68963142792999754
		3 7 1.8910482728904379e-05 8 0.99997815161804082 23 2.9378992302769131e-06
		4 7 4.7684813034957508e-07 8 0.999999523149664 16 4.545470295568019e-13 
		23 1.7511246088158098e-12
		3 6 1.5962022680745175e-07 7 1.3840299706950137e-07 8 0.99999970197677612
		2 7 4.76837158203125e-07 8 0.9999995231628418
		3 7 1.8910484983209859e-05 8 0.99997815161543624 19 2.9378995805018349e-06
		3 5 0.36738580465316772 6 0.63226010656774589 20 0.00035408877908637778
		3 1 5.2195987517825736e-08 2 0.99350112676620483 3 0.0064988210378076486
		3 2 0.99312518200279121 3 0.006447357291813012 4 0.00042746070539578795
		3 2 0.53554420954062665 4 0.0002550126810092479 28 0.46420077777836405
		3 28 0.99312518200279121 29 0.006447357291813012 30 0.00042746070539578795
		3 27 5.2195984406702441e-08 28 0.99350112715356786 29 0.0064988206504477293
		3 5 0.36738580465316772 6 0.63226010656774589 24 0.00035408877908637778
		2 7 5.1115449237410993e-06 8 0.99999488845507623
		3 7 2.5879172799722467e-07 8 0.99999320507139866 16 6.5361368733597732e-06
		3 7 3.7473070212073597e-06 8 0.99999624490737915 10 7.7855996422497494e-09
		3 7 2.5878912477582755e-07 8 0.99999320507049561 12 6.5361403796187034e-06
		2 7 5.1115455330848109e-06 8 0.99999488845446693
		3 5 0.40454022964376024 6 0.59421011613768526 20 0.0012496542185544968
		1 2 1
		3 0 0.18852369635525432 2 0.41122706086215294 28 0.40024924278259277
		1 28 1
		4 5 0.4045402348596524 6 0.59421011092477083 23 4.5921738494259044e-12 
		24 0.0012496542109845497
		3 7 3.329708015585791e-07 8 0.99636262698619049 16 0.0036370400430079499
		3 7 8.2625826516382956e-07 8 0.99992275071415948 16 7.6423027575445179e-05
		3 7 7.1646408254217984e-07 8 0.99953526258468628 10 0.00046402095123117851
		3 7 8.262585347610884e-07 8 0.99992275238037109 12 7.6421361094145164e-05
		3 7 3.3297084125179651e-07 8 0.99636262655258179 12 0.0036370404765769613
		3 5 0.43151813745498657 6 0.56818697120419204 19 0.00029489134082141133
		3 0 0.0048289275728166103 1 0.0022679041590999084 2 0.99290316826808345
		2 2 0.99621110502630472 3 0.0037888949736952782
		3 0 0.0025611493700518051 2 0.51558011770248413 28 0.48185873292746406
		4 0 8.7198120808962393e-10 27 4.3595687545234674e-11 28 0.99621110361707654 
		29 0.0037888954673465729
		3 0 0.0048289275728166103 27 0.0022679041590999084 28 0.99290316826808345
		4 5 0.43151809899237048 6 0.56818700933336042 23 0.00029489130566762411 
		24 3.6860141983082897e-10
		2 6 0.76630708952108983 8 0.23369291047891011
		2 6 0.74623436214029315 8 0.25376563785970679
		3 6 0.78542350080431744 8 0.2145707756280899 19 5.7235675926128342e-06
		3 5 0.00031995774053829957 6 0.87409818171716436 8 0.12558186054229736
		3 5 0.00032520098832321926 6 0.82715806560370253 8 0.17251673340797424
		3 6 0.78074588118141219 8 0.21924644708633423 20 7.6717322535795388e-06
		3 6 0.76840246886501928 7 3.2733855886918209e-09 8 0.23159752786159515
		3 5 0.00028500582893182939 6 0.77468129370491212 8 0.22503370046615601
		2 6 0.76840246886501928 7 3.2733855886918209e-09;
	setAttr ".wl[357:539].w"
		1 8 0.23159752786159515
		4 5 7.7533957558445754e-11 6 0.78074589224693924 8 0.21924643594510229 
		24 7.6717304244960352e-06
		3 5 0.00032520098832321926 6 0.82715806560370253 8 0.17251673340797424
		4 5 0.00031995762611249475 6 0.87409810330440552 8 0.12558183713629723 
		23 1.0193318476887993e-07
		3 6 0.78542350080431744 8 0.2145707756280899 23 5.7235675926128342e-06
		2 6 0.74623436214029315 8 0.25376563785970679
		3 1 0.99610959467877558 2 0.0034645689297101994 31 0.00042583639151416719
		3 27 0.99610959467877558 28 0.0034645689297101994 31 0.00042583639151416719
		3 5 0.01017565659629646 27 0.66757109969816864 28 0.32225324370553482
		3 5 6.0651624652062402e-10 27 0.61132723428272351 28 0.38867276511076021
		3 5 0.0037658512005744834 27 0.57915392523909226 28 0.41708022356033325
		4 0 0.074597501826730639 5 1.3409279812267553e-08 27 0.52845590106082574 
		28 0.39694658370316382
		4 0 0.38782585912195028 5 8.4582042645104954e-08 27 0.3845980242140451 
		28 0.22757603208196198
		3 0 0.75567060993997115 2 0.1295717851630066 28 0.11475760489702225
		3 0 0.38782601511054138 1 0.38459780359692469 2 0.22757618129253387
		3 0 0.074597515165805817 1 0.52845584930118794 2 0.39694663553300624
		3 1 0.57915392523909226 2 0.41708022356033325 5 0.0037658512005744834
		2 1 0.61132723093032837 2 0.38867276906967163
		3 1 0.66757108888840511 2 0.32225325703620911 5 0.010175654075385758
		2 1 0.85945814847946167 5 0.14054185152053833
		3 1 0.53776204586029053 5 0.46209250378236599 31 0.00014545035734346462
		3 5 0.46209250378236599 27 0.53776204586029053 31 0.00014545035734346462
		3 5 0.14054183597967654 27 0.85945812560474166 28 3.8415581826711787e-08
		2 5 0.070305079221725464 27 0.92969492077827454
		2 5 0.099596418440341949 27 0.90040358155965805
		3 0 0.1508230238171766 5 0.12939373801499793 27 0.71978323816782541
		3 0 0.32568005344572443 5 0.20407064878204301 27 0.47024929777223257
		3 0 0.6169475163258954 1 0.0090276887640357018 5 0.3740247949100689
		3 0 0.32568017851329467 1 0.47024911929153779 5 0.20407070219516754
		3 0 0.15082304179668427 1 0.71978321663620004 5 0.12939374156711564
		2 1 0.90040358155965805 5 0.099596418440341949
		2 1 0.92969492077827454 5 0.070305079221725464
		3 0 0.39174368908004098 1 0.31230735778808594 5 0.29594895313187308
		3 0 0.41884595786354323 1 0.27262085676193237 5 0.3085331853745244
		3 0 0.39085582012627185 1 0.26523372530937195 5 0.3439104545643562
		3 0 0.35074345295388182 1 0.28940674662590027 5 0.35984980042021791
		3 0 0.36688456782561424 1 0.24697844684123993 5 0.38613698533314589
		3 0 0.39386808201402324 1 0.16870784759521484 5 0.43742407039076192
		2 0 0.50521913146329045 5 0.49478086853670966
		4 0 0.39386797829110026 5 0.43742414678932162 6 9.7714762584446429e-08 
		27 0.16870777720481556
		4 0 0.36688457052741569 5 0.3861369731400614 6 -5.7490287299176867e-09 
		27 0.24697846208155172
		3 0 0.35074345295388182 5 0.35984980042021791 27 0.28940674662590027
		3 0 0.39085582012627185 5 0.3439104545643562 27 0.26523372530937195
		3 0 0.41884595786354323 5 0.3085331853745244 27 0.27262085676193237
		3 0 0.39174368908004098 5 0.29594895313187308 27 0.31230735778808594
		2 6 3.6478042602539063e-05 8 0.99996352195739746
		3 6 0.00030010916487382494 7 2.2157026684029603e-10 8 0.99969989061355591
		2 6 1.7881393432617188e-07 8 0.99999982118606567
		3 6 0.00030010916487382494 7 2.2157026684029603e-10 8 0.99969989061355591
		2 6 3.6478042602539063e-05 8 0.99996352195739746
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		2 8 0.99985349178314209 11 0.00014650821685791016
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		1 8 1
		3 6 6.9523603467772396e-06 7 2.0019702626963517e-07 8 0.99999284744262695
		2 8 0.9993089830968529 20 0.0006910169031471014
		3 8 0.99863397817931132 19 1.0587867694008678e-05 20 0.0013554339529946446
		2 6 0.00059009954566136003 8 0.99940990045433864
		2 8 0.99991764462174615 12 8.2355378253851086e-05
		3 8 0.99639462490025443 11 1.1579001369002531e-06 12 0.0036042171996086836
		2 8 0.9995503897864042 10 0.00044961021359580676
		3 8 0.99639462490025443 15 1.1579001369002531e-06 16 0.0036042171996086836
		2 8 0.99991764462174615 16 8.2355378253851086e-05
		2 6 0.00059009954566136003 8 0.99940990045433864
		3 8 0.99863397817931132 23 1.0587867694008678e-05 24 0.0013554339529946446
		3 6 4.593189337942005e-08 8 0.99930893724490732 24 0.0006910168231993234
		3 6 6.9523603467772396e-06 7 2.0019702626963517e-07 8 0.99999284744262695
		3 5 0.060122054070234299 6 0.93987768651755266 7 2.5941221299601799e-07
		3 5 0.10484099388122559 6 0.89498223504734742 19 0.00017677107142695465
		3 5 0.092904448509216309 6 0.9063418719388654 20 0.00075367955191831828
		3 5 0.12634959816932678 6 0.87137289296040688 19 0.0022775088702663101
		3 5 0.096574060618877411 6 0.90293982715997889 20 0.00048611222114367788
		3 5 0.11064958572387695 6 0.88588128459884663 20 0.0034691296772763804
		3 5 0.089135043247366569 6 0.91074706043873799 11 0.00011789631389547139
		3 5 0.073536320337021427 6 0.92635642977764676 10 0.00010724988533183932
		3 5 0.089135043247366569 6 0.91074706043873799 15 0.00011789631389547139
		3 5 0.11064958572387695 6 0.88588128459884663 24 0.0034691296772763804
		3 5 0.096574060618877411 6 0.90293982715997889 24 0.00048611222114367788
		3 5 0.12634959816932678 6 0.87137289296040688 23 0.0022775088702663101
		3 5 0.092904448509216309 6 0.9063418719388654 24 0.00075367955191831828
		4 5 0.10484104082789614 6 0.89498218806897001 23 0.00017677103981782389 
		24 6.3316007689185945e-11
		4 0 4.6203301558014062e-11 5 0.060122068939885809 6 0.93987767160171332 
		7 2.5941219753384521e-07
		3 5 0.068939603865146637 6 0.93106037551517085 7 2.0619682516683275e-08
		3 0 0.14648601412773132 5 0.66774826415027799 6 0.18576572172199071
		3 0 0.14493574202060699 5 0.65585944146849662 6 0.19920481651089642
		3 0 0.14402984082698822 5 0.65635330680945037 6 0.19961685236356144
		3 0 0.13717524707317352 5 0.66018457591183022 6 0.20264017701499629
		3 0 0.11011698096990585 5 0.67268216536429071 6 0.21720085366580347
		4 0 0.13717524972621722 5 0.66018457154480981 6 0.20264017214151106 
		31 6.5874619398247807e-09
		3 0 0.14402984082698822 5 0.65635330680945037 6 0.19961685236356144
		4 0 0.14493575817887649 5 0.65585942085785431 6 0.19920480471379989 
		27 1.6249469325657628e-08
		3 0 0.14648601412773132 5 0.66774826415027799 6 0.18576572172199071
		3 0 0.13943973183631897 5 0.64316967791753277 6 0.21739059024614821
		3 0 0.14515048231418426 5 0.6204707093023617 6 0.2343788083834541
		3 0 0.15265124589159029 5 0.62429257865707699 6 0.22305617545133269
		3 0 0.16385519504547119 5 0.6240198616767253 6 0.21212494327780354
		3 0 0.15265125036239624 5 0.62429258093509088 6 0.22305616870251294
		3 0 0.14515048265457153 5 0.62047070794939763 6 0.23437880939603087
		3 0 0.13943973183631897 5 0.64316967791753277 6 0.21739059024614821
		3 1 0.0014339280974103824 2 0.99747721681296986 3 0.0010888550896197557
		3 1 0.0010754143402223176 2 0.99032741751966435 3 0.0085971681401133537
		2 2 0.99822005408350378 3 0.0017799459164962173
		3 1 0.00031481320120348052 2 0.99598146919079167 3 0.0037037176080048084
		3 0 0.00057185836426369686 2 0.99092454719998491 3 0.0085035944357514381
		3 0 0.00050118392244732186 2 0.99618025180972358 3 0.0033185642678290606
		3 0 0.0010537118851639063 2 0.9945291201383375 3 0.0044171679764986038
		2 1 0.0062888960085115278 2 0.99371110399148843
		3 27 0.0014339189850856757 28 0.99747570170052247 29 0.001090379314391798
		3 27 0.0010754121515117346 28 0.99032604744586827 29 0.0085985404026200103
		3 27 6.6122037096984653e-10 28 0.99821978694143287 29 0.0017802123973467386
		3 27 0.00031481245063031939 28 0.99598097152553444 29 0.0037042160238352092
		3 0 0.00057185836426369686 28 0.99092454719998491 29 0.0085035944357514381
		3 0 0.00050118392244732186 28 0.99618025180972358 29 0.0033185642678290606
		3 0 0.0010537118851639063 28 0.9945291201383375 29 0.0044171679764986038
		3 27 0.0062888909260743588 28 0.9937108966010183 29 2.1247290726711335e-07
		3 6 0.45766476968517117 8 0.0097889704629778862 19 0.532546259851851
		3 6 0.18657324915551984 8 0.021519489586353302 19 0.79190726125812683
		3 6 0.31684973574271585 8 0.081842213869094849 19 0.60130805038818924
		3 6 0.24216995072890801 8 0.1026020422577858 19 0.65522800701330619
		3 6 0.15239284373712667 8 0.080607138574123383 19 0.76700001768874992
		3 6 0.45766455145360296 8 0.0097889657952330289 23 0.53254648275116401
		3 6 0.18657324915551984 8 0.021519489586353302 23 0.79190726125812683
		3 6 0.24216995072890801 8 0.1026020422577858 23 0.65522800701330619
		3 6 0.15239284373712667 8 0.080607138574123383 23 0.76700001768874992
		4 6 0.31684552912515423 8 0.081841508471199365 23 0.60131296200848161 
		25 3.9516477652890794e-10
		2 6 0.0032431483268737793 8 0.99675685167312622
		2 6 2.4735927581787109e-05 8 0.99997526407241821
		2 6 3.5762786865234375e-06 8 0.99999642372131348
		2 6 9.2983245849609375e-06 8 0.99999070167541504
		3 6 3.5796866730021155e-06 7 2.142175715115436e-15 8 0.99999642031332481
		2 6 2.473355271703781e-05 8 0.99997526644728296
		3 6 0.0032396796244561358 7 2.0715751871190725e-11 8 0.9967603203548282
		2 6 0.00021469593048095703 8 0.99978530406951904
		2 6 0.00019365550542715937 8 0.99980634449457284
		2 6 0.00021468821145199501 8 0.99978531178854801
		3 5 4.2862671452233262e-08 6 0.00031463804598131972 8 0.99968531909134717
		2 6 0.018941331654787064 8 0.98105866834521294
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		1 15 1
		4 10 4.5943712599271588e-09 15 0.99987631991762527 16 0.00012367527239128849 
		17 2.156121846302936e-10
		4 10 1.9882963515304301e-09 15 0.99998265157022115 16 1.7344781061806258e-05 
		17 1.6604207409802915e-09
		3 10 9.0531293156874005e-08 15 0.99995291233062744 16 4.6997138079401717e-05
		4 10 3.9192156893225664e-10 15 0.99999987061362772 16 1.2371210227327468e-07 
		17 5.2823483737086225e-09
		3 10 1.4582872049000338e-09 15 0.99999910593032837 16 8.9261138442595936e-07
		3 10 1.1271446215487109e-08 15 0.9999784827283662 16 2.1506000187581979e-05
		4 10 1.0146931657409616e-09 15 0.99998748076913913 16 1.2517138106785694e-05 
		17 1.078060923151468e-09
		3 15 0.99241942167282104 16 0.0039632061334046393 17 0.0036173721937743158
		4 15 0.98436670916943358 16 0.0081774453964129617 17 0.0074558439031296615 
		18 1.5310238889224574e-09
		4 15 0.99732484099925256 16 0.0014399394304562803 17 0.0012352183710612104 
		18 1.1992299711950186e-09
		3 15 0.96937110239014146 16 0.014729249925494564 17 0.015899647684363975
		4 15 0.98474431173016086 16 0.006562944925050127 17 0.008692743067492582 
		18 2.7729643056077271e-10
		4 15 0.98219447875051458 16 0.0085891892903998714 17 0.0092163290465597011 
		18 2.9125258506563633e-09
		3 15 0.99999999158522712 17 6.8664235425528088e-09 18 1.5483493359427603e-09
		3 15 0.9843137264251709 17 0.01279994121343263 18 0.0028863323613964723
		3 15 0.96078421962663463 17 0.032911686762690857 18 0.0063040936106744981
		3 15 0.98039215803146362 17 0.013154900215842045 18 0.0064529417526943333
		3 15 0.99215686927291458 17 0.0030713834240203974 18 0.0047717473030649618
		3 15 0.9983391086232416 17 0.00029980431162236537 18 0.0013610870651360346
		3 15 0.99607821626299509 17 0.0015955292660083022 18 0.0023262544709965866
		3 15 0.95686273239463304 17 0.026849230478657924 18 0.0162880371267091
		3 15 0.9333341778399884 17 0.031528583722399764 18 0.03513723843761183
		3 15 0.8941176529794177 17 0.049974778627315308 18 0.055907568393266986
		3 15 0.8908420205116272 17 0.00098641457952420544 18 0.10817156490884859
		3 15 0.99607843160629272 17 5.5831787412479173e-07 18 0.0039210100758331505
		3 15 0.95686274766921997 17 1.8698664965094129e-10 18 0.043137252143793381
		3 15 0.99999999672758833 17 8.5777725002767009e-13 18 3.2715538977204709e-09
		3 15 0.95669353008270264 17 0.00051102030842008206 18 0.042795449608877281
		3 15 0.96470655341309453 17 0.029464547157971168 18 0.0058288994289343041
		3 15 0.95314681529998779 16 0.024376932812628729 17 0.022476251887383475
		2 10 9.6305078670273536e-08 15 0.99997097321373363;
	setAttr ".wl[539:729].w"
		2 16 2.8930804521044781e-05 17 -3.2333337699641654e-10
		3 10 9.0895456152823355e-10 15 0.99998754262924194 16 1.2456461803495112e-05
		4 15 0.99260776943788187 16 0.0038460854071555341 17 0.0035461442944666149 
		18 8.6049598060890394e-10
		3 15 0.98039254971753209 17 0.015998335401301054 18 0.0036091148811668579
		2 10 0.00035887956619262695 15 0.99964112043380737
		3 7 6.650850783747751e-07 10 1.6594960678654593e-06 15 0.99999767541885376
		4 10 1.1678981510836353e-08 15 0.99980270820338046 16 0.00019727900282894974 
		17 1.1148090953976348e-09
		4 7 6.2018171769559896e-12 10 4.5582558242770728e-06 15 0.99903619259939092 
		16 0.00095924913858299048
		1 15 1
		3 10 2.7415315939616377e-08 15 0.99993133544921875 16 6.8637135465310383e-05
		3 10 2.7589953084832316e-07 15 0.99994778633785975 16 5.1937762609396999e-05
		1 15 1
		4 7 4.1764038028902544e-09 15 0.99455387198211553 16 0.0054461238275127638 
		17 1.3967905347102411e-11
		2 7 1.9022365904675098e-09 15 0.99999999809776341
		2 15 0.9997715950012207 16 0.00022840499877929688
		2 7 0.00046932697296142578 15 0.99953067302703857
		3 15 0.99471277055236818 16 0.0052872289079007456 17 5.3973108848521025e-10
		2 7 5.9068033976927836e-05 15 0.99994093196602307
		3 15 0.99999999974609466 16 1.2342151201944207e-10 17 1.3048382917707213e-10
		2 7 0.00016671419143676758 15 0.99983328580856323
		5 7 0.0001040489687992921 10 1.0324342945031626e-11 15 0.99409378803559112 
		16 0.0058021629138705162 17 7.1414793016542187e-11
		4 15 0.9914097195364171 16 0.0044439950120146419 17 0.0041462852356542058 
		18 2.159140519006899e-10
		3 15 0.98593151569366455 16 0.0073254010823132435 17 0.0067430832240222066
		4 15 0.99999921531591029 16 4.0744062697825836e-07 17 3.7692867238237161e-07 
		18 3.1479034919083788e-10
		3 15 0.99916911228380556 16 0.00043165598338729577 17 0.00039923173280714363
		3 15 0.99986164830630031 16 7.3190856165156453e-05 17 6.5160837534533351e-05
		4 15 0.99447375231399349 16 0.002653480199510561 17 0.0028727648674851348 
		18 2.6190108177132761e-09
		4 15 0.97961651354602086 16 0.0088616983027641066 17 0.011521782670591115 
		18 5.4806238535869145e-09
		4 15 0.99787006988793792 16 0.0010353344979661199 17 0.0010945860068645543 
		18 9.6072314096565401e-09
		3 15 0.99928116798400879 16 0.00037956305074547051 17 0.00033926896524574048
		3 15 0.99446368217468262 17 0.0043288389299263545 18 0.0012074788953910284
		3 15 0.95970940589904785 17 0.033994960132833825 18 0.0062956339681183252
		3 15 0.99830836057662964 17 0.0013527132249250024 18 0.00033892619844535881
		3 15 0.99970108270645142 17 0.00025907419292768298 18 3.9843100620900986e-05
		3 15 0.99991726761676492 17 4.8087789351264354e-05 18 3.464459388383717e-05
		3 15 0.98169925489999199 17 0.0073157357989692183 18 0.010985009301038764
		3 15 0.87690887427466113 17 0.019645992767872784 18 0.103445132957466
		3 15 0.89868512494594155 17 0.04758734503551712 18 0.053727530018541331
		3 15 0.97023130295587767 17 0.018043117650923989 18 0.011725579393198337
		3 15 0.99892312288284302 17 0.00051326370530474963 18 0.00056361341185223279
		3 15 0.99996815811083906 17 1.5163127347239181e-05 18 1.6678761813704813e-05
		3 15 0.99795508351147433 17 2.5582441179889303e-05 18 0.0020193340473457829
		3 15 0.9960782516236506 17 6.7945233195817934e-07 18 0.0039210689240174405
		3 15 0.94901965295566981 17 5.7489932088603781e-08 18 0.050980289554398095
		3 15 0.99607832572030097 17 1.0303649176669129e-06 18 0.0039206439147813554
		3 15 0.94769718692456095 17 0.00083559860105121434 18 0.051467214474387832
		1 15 1
		1 15 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		1 11 1
		3 10 4.5943715337730422e-09 11 0.99987632036209106 12 0.00012367504353740178
		3 10 1.9882954026227524e-09 11 0.99998265504837036 12 1.7342963334236049e-05
		3 10 9.0531293156874005e-08 11 0.99995291233062744 12 4.6997138079401717e-05
		3 10 3.9191995592491767e-10 11 0.99999988079071045 12 1.1881736959485634e-07
		3 10 1.4582872049000338e-09 11 0.99999910593032837 12 8.9261138442595936e-07
		3 10 1.1271448902809942e-08 11 0.99997848272323608 12 2.1506005315013207e-05
		3 10 1.0146934681431802e-09 11 0.99998748302459717 12 1.2515960709363889e-05
		3 11 0.99241942167282104 12 0.0039632061334046393 13 0.0036173721937743158
		3 11 0.98436671495437622 12 0.0081774473524702795 13 0.0074558376931535006
		3 11 0.99732488393783569 12 0.0014399207809032654 13 0.0012351952812610415
		3 11 0.96937108039855957 12 0.014729261607503166 13 0.015899657993937263
		3 11 0.98474431037902832 12 0.0065629457074142224 13 0.0086927439135574564
		3 11 0.98219448328018188 12 0.0085891908262668761 13 0.0092163258935512391
		1 11 1
		3 11 0.9843137264251709 13 0.01279994121343263 14 0.0028863323613964723
		3 11 0.96078431606292725 13 0.032911661897531641 14 0.0063040220395411111
		3 11 0.98039215803146362 13 0.013154900215842045 14 0.0064529417526943333
		3 11 0.99215686321258545 13 0.0030713866873679561 14 0.0047717501000465951
		3 11 0.99833911657333374 13 0.000299799755287311 14 0.0013610836713789489
		3 11 0.99607843160629272 13 0.0015954373379337328 14 0.0023261310557735424
		3 11 0.95686274766921997 13 0.026849227230098183 14 0.016288025100681849
		3 11 0.93333333730697632 13 0.031528981188776721 14 0.035137681504246954
		3 11 0.89411765336990356 13 0.049974784467184084 14 0.055907562162912344
		3 11 0.8908420205116272 13 0.00098641457952420544 14 0.10817156490884859
		3 11 0.99607843160629272 13 5.5831787412479173e-07 14 0.0039210100758331505
		3 11 0.95686274766921997 13 1.8698664965094129e-10 14 0.043137252143793381
		1 11 1
		3 11 0.95669353008270264 13 0.00051102030842008206 14 0.042795449608877281
		3 11 0.96470588445663452 13 0.029465106818135293 14 0.0058290087252301824
		3 11 0.95314681529998779 12 0.024376932812628729 13 0.022476251887383475
		3 10 9.6305084410503878e-08 11 0.99997097253799438 12 2.8931156921204727e-05
		3 10 9.0895456152823355e-10 11 0.99998754262924194 12 1.2456461803495112e-05
		3 11 0.99260777235031128 12 0.0038460863241339704 13 0.0035461413255547503
		3 11 0.98039215803146362 13 0.01599866023508453 14 0.0036091817334518482
		2 10 0.00035887956619262695 11 0.99964112043380737
		3 7 6.650850783747751e-07 10 1.6594960678654593e-06 11 0.99999767541885376
		3 10 1.1679091528708561e-08 11 0.99980270862579346 12 0.00019727969511501426
		3 10 4.5582560959703081e-06 11 0.99903619289398193 12 0.00095924884992209614
		1 11 1
		3 10 2.7415315939616377e-08 11 0.99993133544921875 12 6.8637135465310383e-05
		3 10 2.7589956525976318e-07 11 0.99994778633117676 12 5.1937769257982422e-05
		1 11 1
		3 7 4.1764101747498177e-09 11 0.99455386400222778 12 0.0054461318213620416
		1 11 1
		2 11 0.9997715950012207 12 0.00022840499877929688
		2 7 0.00046932697296142578 11 0.99953067302703857
		2 11 0.99471276998519897 12 0.0052872300148010254
		2 7 5.9068202972412109e-05 11 0.99994093179702759
		1 11 1
		2 7 0.00016671419143676758 11 0.99983328580856323
		3 7 0.00010404922637030086 11 0.99409377574920654 12 0.0058021750244231559
		3 11 0.99140971899032593 12 0.004443995806663016 13 0.0041462852030110563
		3 11 0.98593151569366455 12 0.0073254010823132435 13 0.0067430832240222066
		1 11 1
		3 11 0.99916911125183105 12 0.00043165651754940214 13 0.00039923223061954312
		3 11 0.99986165761947632 12 7.318639603669133e-05 13 6.5155984486990311e-05
		3 11 0.99447375535964966 12 0.0026534808321496909 13 0.0028727638082006509
		3 11 0.97961652278900146 12 0.0088616993591609915 13 0.011521777851837544
		3 11 0.99787008762359619 12 0.0010353346830983879 13 0.0010945776933054207
		3 11 0.99928116798400879 12 0.00037956305074547051 13 0.00033926896524574048
		3 11 0.99446368217468262 13 0.0043288389299263545 14 0.0012074788953910284
		3 11 0.95970940589904785 13 0.033994960132833825 14 0.0062956339681183252
		3 11 0.99830836057662964 13 0.0013527132249250024 14 0.00033892619844535881
		3 11 0.99970108270645142 13 0.00025907419292768298 14 3.9843100620900986e-05
		3 11 0.99991726875305176 13 4.8087710100547139e-05 14 3.4643536847695049e-05
		3 11 0.98169934749603271 13 0.0073157249551892203 14 0.010984927548778065
		3 11 0.87690883874893188 13 0.019645998622530067 14 0.10344516262853805
		3 11 0.89868509769439697 13 0.047587370131672274 14 0.053727532173930753
		3 11 0.97023129463195801 13 0.018043122873801311 14 0.011725582494240683
		3 11 0.99892312288284302 13 0.00051326370530474963 14 0.00056361341185223279
		3 11 0.99996817111968994 13 1.5163011565029789e-05 14 1.6665868745028806e-05
		3 11 0.9979550838470459 13 2.5582445654552043e-05 14 0.0020193337072995496
		3 11 0.99607843160629272 13 6.7945544949994784e-07 14 0.0039208889382577753
		3 11 0.94901961088180542 13 5.7489064440779151e-08 14 0.050980331629130141
		3 11 0.99607843160629272 13 1.0279367288285877e-06 14 0.0039205404569784465
		3 11 0.94769704341888428 13 0.00083559950404862111 14 0.051467357077067101
		1 11 1
		1 11 1
		3 5 0.00056044527266926316 6 0.058263080632939869 10 0.94117647409439087
		3 6 0.010134972261926374 7 2.7262044409075227e-05 10 0.98983776569366455
		3 6 0.0058366020368941507 8 2.2653753816298531e-05 10 0.99414074420928955
		3 6 0.029260028302114494 8 0.0001686325674838951 10 0.97057133913040161
		3 6 0.0036873198032045329 7 4.482502940655114e-05 10 0.99626785516738892
		3 6 0.018544077521819729 10 0.9814532995223999 19 2.6229557803687793e-06
		3 6 0.011091611186865025 7 7.329245388204576e-05 10 0.98883509635925293
		3 6 0.024943144359865502 10 0.97503513097763062 19 2.1724662503883774e-05
		3 6 0.0036873198032045329 7 4.482502940655114e-05 10 0.99626785516738892
		3 6 0.018544077521819729 10 0.9814532995223999 23 2.6229557803687793e-06
		3 6 0.024943144359865502 10 0.97503513097763062 23 2.1724662503883774e-05
		3 6 0.00068048502647267007 10 0.99931949377059937 19 2.1202927964744581e-08
		3 6 0.0014609686936513072 10 0.9985390305519104 19 7.5443829239208718e-10
		3 6 0.013106640359007849 10 0.98686528205871582 20 2.8077582276330707e-05
		3 6 0.031556267742210903 10 0.96841579675674438 20 2.7935501044715896e-05
		3 6 0.0014609686936513072 10 0.9985390305519104 23 7.5443829239208718e-10
		3 6 0.031556267742210903 10 0.96841579675674438 24 2.7935501044715896e-05
		3 6 0.00068048502647267007 10 0.99931949377059937 23 2.1202927964744581e-08
		3 6 6.72540140428144e-05 10 0.99993270635604858 19 3.9629908601611711e-08
		1 10 1
		3 6 0.00064504940128426414 10 0.99935412406921387 20 8.2652950186869382e-07
		3 6 0.0012405904913465634 10 0.99875056743621826 19 8.842072435174923e-06
		1 10 1
		3 6 0.0012405904913465634 10 0.99875056743621826 23 8.842072435174923e-06
		3 6 6.72540140428144e-05 10 0.99993270635604858 23 3.9629908601611711e-08
		4 6 0.011064457234372929 7 7.3068292102328991e-05 10 0.98886246492996355 
		24 9.5435611686575211e-09
		3 6 0.013027716227354427 10 0.98694437536091795 24 2.7908411727625773e-05
		4 6 0.000752015112529541 10 0.99924691780283381 23 5.1750475297862406e-11 
		24 1.0670328861466904e-06
		3 6 0.00089680120528299256 10 0.99910259246826172 20 6.0632645528865957e-07
		1 10 1
		3 6 0.00010049250757769908 10 0.99989950656890869 19 9.2351360950625796e-10
		3 6 4.3921523700013248e-05 10 0.99995607137680054 19 7.0994994496454315e-09
		3 6 0.00010049248960823843 10 0.99989950658687832 23 9.2351344436915607e-10
		3 6 4.3921523700013248e-05 10 0.99995607137680054 23 7.0994994496454315e-09
		3 6 0.00089680120528299256 10 0.99910259246826172 24 6.0632645528865957e-07
		3 6 1.2365702418443086e-05 10 0.99998763429616444 15 1.4171454800967106e-12
		2 10 0.99999982118606567 12 1.7881393432617188e-07
		1 10 1
		3 10 0.99961060285568237 11 0.00038634327735970198 13 3.0538669579249765e-06
		1 10 1
		3 10 0.99961060334308982 15 0.00038634279377477201 17 3.0538631354072169e-06
		1 10 1
		2 10 0.99999982118606567 16 1.7881393432617188e-07
		2 10 0.99999999918058602 15 8.1941385674052529e-10
		1 10 1
		1 10 1
		3 10 0.99999046325683594 11 9.5365935379350397e-06 12 1.4962612746027837e-10
		1 10 1
		3 10 0.99999046325683594 15 9.5365935379350397e-06 16 1.4962612746027837e-10
		1 10 1
		1 10 1
		2 10 0.9999999999982192 15 1.7808527254314532e-12
		3 7 4.1082304805747927e-06 10 0.9999958872795105 11 4.4900089271604493e-09
		2 7 2.8014183044433594e-05 10 0.99997198581695557
		2 7 8.9406967163085938e-07 10 0.99999910593032837
		1 10 1
		2 7 8.9406967163085938e-07 10 0.99999910593032837;
	setAttr ".wl[730:907].w"
		1 10 1
		4 7 4.1082304805747927e-06 10 0.9999958872795105 11 5.3525071047659815e-16 
		15 4.490008391909675e-09
		2 7 2.7505167228274527e-05 10 0.99997249483277106
		4 6 0.00098780266753524396 10 0.99901216798497183 23 5.7747690188661784e-13 
		24 2.9346915416001092e-08
		1 10 1
		3 5 4.1022398374715411e-09 6 0.00011187381600357074 10 0.99988812208175659
		1 10 1
		3 6 0.00098779843091739618 10 0.99901217222213745 20 2.9346945152643189e-08
		4 6 8.2405383512962186e-05 10 0.99991752174465098 23 1.1592789790629006e-12 
		24 7.2870676831002671e-08
		4 6 0.00092339088724353554 7 2.8862544348575571e-07 10 0.99907629162243694 
		23 2.8864875982681545e-08
		3 5 1.606770895667964e-06 6 0.00042897718296175391 10 0.99956941604614258
		3 6 0.00089169441523809288 7 2.8909382562783555e-07 10 0.99910801649093628
		1 10 1
		1 10 1
		1 10 1
		2 6 1.9669523396714794e-06 10 0.99999803304766033
		3 6 4.1928741517299033e-11 10 0.99999999995807087 23 3.8531990447901519e-16
		4 10 0.99999999980073107 15 1.9803649929066527e-10 16 6.6203608359564844e-16 
		17 1.2318507987498533e-12
		4 7 5.9997213902769631e-12 10 0.99999999998978517 15 4.2150083378715879e-12 
		16 6.6132143757599058e-17
		1 10 1
		1 10 1
		1 10 1
		2 6 1.9669532775878906e-06 10 0.99999803304672241
		3 6 0.00015377799869361003 10 0.99984622001647949 19 1.9848268977851179e-09
		2 6 0.0012853145599365234 10 0.99871468544006348
		2 10 0.99999994039535522 11 5.9604644775390625e-08
		1 10 1
		1 10 1
		3 7 1.829059608618744e-08 10 0.99999998168941362 15 1.9975753342829172e-11
		2 10 0.99999999989020361 16 1.0979644277098188e-10
		3 10 0.99999994011716697 15 5.9364483147730818e-08 16 5.1834995959785229e-10
		5 6 0.0012828376834760683 10 0.99871716104723651 15 7.9360979428016143e-11 
		16 4.6920713915787123e-13 24 1.1894571245553435e-09
		4 6 0.00015873000610876925 10 0.99984122712734469 23 4.2663397791829005e-08 
		24 2.0314878185544675e-10
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		2 7 0.99999833106994629 10 1.6689300537109375e-06
		2 7 0.99999833106994629 10 1.6689300537109375e-06
		1 7 1
		1 7 1
		1 7 1
		1 7 1
		3 7 0.99981492757797241 10 0.00018506257787994241 11 9.8441476454810828e-09
		3 7 0.99741852298759781 10 0.0025812501880817622 11 2.2682432042667733e-07
		1 7 1
		2 7 0.99999314546585083 10 6.8545341491699219e-06
		1 7 1
		1 7 1
		2 7 0.99999934434890747 15 6.5565109252929688e-07
		1 7 1
		2 7 0.99998241662979126 10 1.7583370208740234e-05
		3 7 0.99791574478149414 10 0.0020841043804258746 11 1.5083807998472756e-07
		2 7 0.99998241662979126 10 1.7583370208740234e-05
		1 7 1
		1 7 1
		2 7 0.99999046325683594 15 9.5367431640625e-06
		1 7 1
		1 7 1
		3 6 0.51386550962873601 8 0.21337592601776123 19 0.27275856435350271
		3 6 0.4107703422120409 8 0.31359142065048218 19 0.27563823713747693
		3 6 0.48376108717301447 8 0.20503489673137665 19 0.31120401609560888
		3 6 0.65970876254376565 8 0.056010369211435318 19 0.28428086824479903
		3 5 0.066800815183780698 6 0.62449492780480576 19 0.30870425701141357
		3 5 0.072247403821116177 6 0.69436858300291948 19 0.23338401317596436
		3 5 0.024053473839986902 6 0.69301770173526944 19 0.28292882442474365
		3 6 0.7132569758941899 8 0.064207330346107483 19 0.22253569375970264
		3 6 0.51386550962873601 8 0.21337592601776123 23 0.27275856435350271
		3 6 0.7132569758941899 8 0.064207330346107483 23 0.22253569375970264
		4 5 0.024053470972589374 6 0.69301767367901368 8 1.166936214325176e-09 
		23 0.2829288541814608
		4 5 0.072247390902273653 6 0.69436845891473487 23 0.23338415013038796 
		24 5.260346588368549e-11
		5 5 0.066800811202141833 6 0.62449490473634883 8 1.6339342493728247e-09 
		23 0.30870428243451914 24 -6.94402372190299e-12
		3 6 0.65970876254376565 8 0.056010369211435318 23 0.28428086824479903
		3 6 0.48376108717301447 8 0.20503489673137665 23 0.31120401609560888
		3 6 0.4107703422120409 8 0.31359142065048218 23 0.27563823713747693
		4 6 7.2660295178742355e-05 8 0.028219073563406513 19 0.97167840233595781 
		21 2.9863805456834319e-05
		3 6 0.031480801069398663 19 0.96833568811416626 20 0.00018351081643507955
		1 19 1
		3 6 3.8117527684187437e-06 19 0.99987894296646118 20 0.00011724528077039961
		3 6 0.00072371076997160071 19 0.99885088799898725 20 0.00042540123104117811
		3 6 0.0097660755183113859 8 0.0028876264113932848 19 0.98734629807029528
		3 6 0.001290162213761429 8 0.025567524135112762 19 0.9731423136511258
		3 8 0.034259885549545288 19 0.91431640631277367 20 0.051423708137681053
		5 6 7.2659988403542088e-05 8 0.028218921673790788 23 0.97167631397562781 
		24 2.2347219690174569e-06 25 2.986964020874519e-05
		3 8 0.034259885549545288 23 0.91431640631277367 24 0.051423708137681053
		3 6 0.001290162213761429 8 0.025567524135112762 23 0.9731423136511258
		3 6 0.0097660755183113859 8 0.0028876264113932848 23 0.98734629807029528
		5 5 3.9418224711384112e-07 6 0.00072761012549144228 8 2.5308071082713346e-08 
		23 0.99884657216367689 24 0.00042539822051353366
		3 6 3.8118814963943274e-06 23 0.99987894278263068 24 0.00011724533587297747
		4 5 1.0420972561687486e-07 6 3.3383579121800833e-06 8 7.1848680801668696e-09 
		23 0.99999655024749412
		3 6 0.031480801069398663 23 0.96833568811416626 24 0.00018351081643507955
		5 6 1.7626069814440399e-05 8 8.920875020556121e-05 19 0.58786126193737964 
		20 0.41092568880469149 21 0.0011062144379089685
		4 6 1.7801713132360151e-06 19 0.60442091744856941 20 0.3955596553833074 
		21 1.7646996809926011e-05
		4 6 2.888558480302622e-10 19 0.48854436331946227 20 0.51104822674568884 
		21 0.00040740964599306515
		4 6 1.6674676672643982e-08 19 0.63392413572999051 20 0.36501703860008733 
		21 0.0010588089952455614
		5 6 4.3018591795409037e-05 8 1.758196297850831e-06 19 0.51336670397179718 
		20 0.47287942102508906 21 0.013709098215020457
		5 6 2.5208427309197273e-05 8 7.4191820862551768e-06 19 0.60893941937264107 
		20 0.39017589194299823 21 0.00085206107496531291
		2 19 0.58573442697525024 20 0.41426557302474976
		3 6 0.005297814030200243 19 0.62203652364738327 20 0.37266566232241644
		5 6 1.7626171503599452e-05 8 8.9260726994154095e-05 23 0.58786197113319327 
		24 0.41092492951922049 25 0.0011062124490885583
		5 6 0.0052977672951368075 8 3.0312186465306088e-07 23 0.62203911057671424 
		24 0.37266281903537851 25 -2.9094289052819977e-11
		4 6 1.1596375159468652e-08 8 2.3226172247530337e-07 23 0.58573793264246321 
		24 0.41426182349943913
		5 6 2.5264648058892568e-05 8 7.4358055974431218e-06 23 0.60894160317783164 
		24 0.39017364021986611 25 0.00085205614864593596
		5 6 4.3027661993632207e-05 8 1.7581906266873533e-06 23 0.51337351543887411 
		24 0.47287282495994837 25 0.013708873748557214
		5 6 1.6684929128622076e-08 8 4.1918666311522264e-13 23 0.63392410698685886 
		24 0.36501706431648329 25 0.0010588120113095424
		4 6 2.888558480302622e-10 23 0.48854436331946227 24 0.51104822674568884 
		25 0.00040740964599306515
		4 6 2.017527214281234e-06 23 0.60442388535023128 24 0.39555645026879505 
		25 1.7646853759281245e-05
		3 19 0.0097583300578299049 20 0.98602446643207109 21 0.0042172035100990586
		3 19 0.00014033804411017826 20 0.99974091855827385 21 0.00011874339761603952
		1 20 1
		3 6 0.0023103428630281719 19 0.0051824974270414078 20 0.99250715970993042
		3 19 0.012766141337953067 20 0.97877839949067369 21 0.0084554591713732162
		1 20 1
		4 19 0.0043076731581940175 20 0.99307278809794042 21 0.0025546863193607302 
		22 6.4852424504838191e-05
		2 6 0.0013584831031039357 20 0.99864151689689606
		3 23 0.0097583300578299049 24 0.98602446643207109 25 0.0042172035100990586
		2 6 0.0013584831031039357 24 0.99864151689689606
		4 23 0.0043148082027346189 24 0.99306540342013372 25 0.0025549375258876639 
		26 6.4850851244007944e-05
		4 23 1.027029313610558e-08 24 0.9999999834842398 25 6.0908468231218576e-09 
		26 1.5462022901734874e-10
		5 6 2.9676956699023784e-10 8 1.2129154679877616e-11 23 0.012769744835681175 
		24 0.97877476473704883 25 0.0084554901183712464
		4 6 0.0023103118791369471 23 0.0051908315853480529 24 0.99249884249933717 
		25 1.4036177788946828e-08
		4 6 1.3085034161984876e-15 23 2.2130830056833702e-06 24 0.99999778507144643 
		25 1.8455465492888065e-09
		3 23 0.00014651810601033478 24 0.99973474213428992 25 0.00011873975969980989
		3 19 7.316105552490626e-07 20 0.77094057234951685 21 0.2290586960399279
		3 19 6.2673279899172485e-05 20 0.69632929563522339 21 0.30360803108487744
		3 19 0.0014231301861612157 20 0.5518079400062561 21 0.4467689298075827
		3 6 0.00041519678451175894 20 0.56538844108581543 21 0.43419636212967283
		3 19 0.00030689351629376434 20 0.58925152904916644 21 0.41044157743453979
		2 20 0.67227154970169067 21 0.32772845029830933
		3 20 0.70737563032589712 21 0.29261654615402222 22 7.8235200807079151e-06
		3 6 0.00012864016197064709 20 0.71681769348480362 21 0.28305366635322571
		3 23 7.3162178801260307e-07 24 0.77094069797746734 25 0.22905857040074465
		3 6 0.0001286398476010496 24 0.71681813463323807 25 0.2830532255191609
		3 24 0.7073759644531451 25 0.29261621198833354 26 7.8235585214808137e-06
		3 23 1.8292279022560379e-10 24 0.67227166522655135 25 0.32772833459052575
		3 23 0.00030689304069450975 24 0.58925190968557872 25 0.41044119727372674
		4 6 0.00041519606682971022 23 5.5057225583376684e-10 24 0.56538886886048778 
		25 0.43419593452211025
		3 23 0.0014231316056596314 24 0.55180834686929059 25 0.44676852152504976
		3 23 6.2673257747105303e-05 24 0.69632932231829525 25 0.30360800442395769
		3 20 0.25528912882539584 21 0.74470937252044678 22 1.4986541573773333e-06
		3 19 0.00016211209687174309 20 0.26133562388030113 21 0.73850226402282715
		3 20 0.30775013306775811 21 0.69143688678741455 22 0.00081298014482731685
		3 20 0.24713979661464691 21 0.7523077644622862 22 0.00055243892306692361
		3 20 0.27608534693717957 21 0.72374850111322009 22 0.00016615194960039421
		3 20 0.21892106533050537 21 0.78022626740284706 22 0.00085266726664756925
		3 20 0.23072566092014313 21 0.76864702193657886 22 0.00062731714327801441
		3 20 0.24045485258102417 21 0.75951897681554459 22 2.6170603431204082e-05
		3 24 0.25528912794120406 25 0.74470937340316801 26 1.4986556279401056e-06
		3 24 0.24045485258102417 25 0.75951897681554459 26 2.6170603431204082e-05
		3 24 0.23072735491112856 25 0.76864533109540134 26 0.00062731399347011108
		3 24 0.21892107799546245 25 0.78022625497966447 26 0.00085266702487311625
		4 23 3.161728641086357e-10 24 0.27608571505284829 25 0.72374813284639561 
		26 0.00016615178458328947
		3 24 0.2471398000652254 25 0.75230776105775676 26 0.00055243887701792794
		4 23 3.2233564301804419e-09 24 0.30775068585295584 25 0.69143633262024129 
		26 0.0008129783034463927
		4 23 0.00016211194942383354 24 0.26133566133451275 25 0.73850222395589138 
		26 2.7601720335991283e-09
		3 20 1.5048130990180653e-05 21 0.78461913968658337 22 0.21536581218242645
		3 20 3.6999812789639408e-05 21 0.72634790814810213 22 0.27361509203910828
		3 20 0.00027990886714620417 21 0.590553874282573 22 0.40916621685028076
		3 20 0.00027571397367864847 21 0.62827767652925104 22 0.37144660949707031
		3 20 5.2923329349141568e-05 21 0.67408985459042015 22 0.32585722208023071
		3 20 0.0053360768073338789 21 0.7609364978558284 22 0.23372742533683777
		3 20 1.0895614650507923e-05 21 0.80301017772671912 22 0.19697892665863037
		2 21 0.81082187592983246 22 0.18917812407016754
		3 24 1.5049151921398135e-05 25 0.78461932225128761 26 0.21536562859679095
		2 25 0.81082187592983246 26 0.18917812407016754
		3 24 1.0895614650507923e-05 25 0.80301017772671912 26 0.19697892665863037
		3 24 0.0053360768073338789 25 0.7609364978558284 26 0.23372742533683777
		3 24 5.2923329349141568e-05 25 0.67408985459042015 26 0.32585722208023071
		3 24 0.00027571394128421379 25 0.62827770091461321 26 0.37144658514410267
		3 24 0.00027990886714620417 25 0.590553874282573 26 0.40916621685028076
		3 24 3.6999780079084508e-05 25 0.72634799497900349 26 0.27361500524091742
		2 21 0.26466554389320385 22 0.73533445610679615
		2 21 0.2061982886754965 22 0.7938017113245035
		2 21 0.015882663134683006 22 0.98411733686531699
		2 21 0.0016024813368342716 22 0.99839751866316573
		2 21 0.067102711532760817 22 0.93289728846723918
		3 20 6.1213168144550765e-06 21 0.19128642976284027 22 0.8087074489203453
		1 21 0.25611131786356445;
	setAttr ".wl[907:1069].w"
		1 22 0.74388868213643555
		3 20 0.0057652038411162287 21 0.29172080755233765 22 0.70251398860654612
		4 23 6.2313205279564507e-08 24 7.9169915712758094e-13 25 0.26466800068985885 
		26 0.73533193699614419
		3 24 0.0057651921595987662 25 0.29172148560869177 26 0.70251332223170937
		2 25 0.25611131786356445 26 0.74388868213643555
		3 24 6.1213168144550765e-06 25 0.19128642976284027 26 0.8087074489203453
		3 24 4.5622831602232496e-14 25 0.067103031619659123 26 0.93289696838029523
		3 24 1.0306041769158465e-11 25 0.0016025101214920548 26 0.99839748986820187
		3 24 7.674579554036493e-10 25 0.015884238776059548 26 0.98411576045648252
		3 24 3.943044877791856e-08 25 0.20619794656522478 26 0.79380201400432648
		3 6 0.35841219350556536 8 0.64153015613555908 23 5.7650358875581967e-05
		3 6 0.48514701608982919 8 0.51363515853881836 23 0.0012178253713524389
		4 6 0.5447435542214607 8 0.45380120307396454 23 0.0014552427044226242 
		24 1.5211380388027246e-13
		3 6 0.38049374604614439 8 0.61948949098587036 15 1.676296798524133e-05
		3 6 0.44807189231683497 8 0.55185824632644653 16 6.9861356718506785e-05
		3 6 0.38530464825775007 8 0.61467498540878296 24 2.0366333466989371e-05
		4 5 3.1809231206742824e-08 6 0.40497907470689609 8 0.59502009680961043 
		24 7.9667426226296821e-07
		2 6 0.37900400161743164 8 0.62099599838256836
		3 6 0.38049374604614439 8 0.61948949098587036 11 1.676296798524133e-05
		3 6 0.35841219350556536 8 0.64153015613555908 19 5.7650358875581967e-05
		3 6 0.48514701608982919 8 0.51363515853881836 19 0.0012178253713524389
		3 6 0.54474356586133743 8 0.45380124449729919 19 0.0014551896413633413
		3 6 0.44807189231683497 8 0.55185824632644653 12 6.9861356718506785e-05
		3 6 0.38530464825775007 8 0.61467498540878296 20 2.0366333466989371e-05
		3 6 0.40495035839626825 8 0.59504884481430054 20 7.9678943121416331e-07
		3 5 0.00015311814386130462 6 0.42725146435659644 8 0.57259541749954224
		2 2 0.33964419364929199 31 0.66035580635070801
		3 0 0.25163128094810921 5 0.20177904648643055 31 0.54658967256546021
		3 0 0.32685206165429415 5 0.26693107852820097 31 0.40621685981750488
		3 1 0.32390238292599483 5 0.24080453865145882 31 0.43529307842254639
		4 0 0.3268521042005606 5 0.26693109755380212 27 2.0476466033869656e-07 
		31 0.40621659348097694
		4 5 0.24080453865145882 27 0.32390238835628771 28 -1.1468603498633829e-09 
		31 0.43529307413911389
		3 0 0.25163128094810921 5 0.20177904648643055 31 0.54658967256546021
		2 28 0.33964419364929199 31 0.66035580635070801
		3 0 0.33808634681043981 5 0.059349616343399303 31 0.60256403684616089
		3 0 0.24175248628734497 1 0.052031357229958497 31 0.70621615648269653
		3 1 0.00031771176265895008 2 0.55319080836368384 31 0.44649147987365723
		3 0 2.2610356531978835e-06 2 1.3748476781009448e-06 31 0.9999963641166687
		3 1 0.47084912252873995 2 0.11439788746385958 31 0.41475299000740051
		3 1 0.41242218122354091 2 0.3104546953690952 31 0.27712312340736389
		3 0 0.077330121376147185 2 0.45329203309811128 31 0.46937784552574158
		2 27 0.0036184787750244141 31 0.99638152122497559
		3 27 0.00031771176265895008 28 0.55319080836368384 31 0.44649147987365723
		3 0 2.2610353836614296e-06 28 1.41533625723131e-06 31 0.99999632362835911
		3 27 0.47084920969022825 28 0.11439786905563422 31 0.41475292125413754
		3 27 0.41242218122354091 28 0.3104546953690952 31 0.27712312340736389
		3 0 0.22835748703883868 5 0.47805336801601667 31 0.29358914494514465
		3 0 0.31473703786677037 5 0.4635044921939977 31 0.22175846993923187
		3 0 0.18773769779593533 5 0.48959363059609345 31 0.32266867160797119
		3 0 0.22835748703883868 5 0.47805336801601667 31 0.29358914494514465
		4 0 0.31473707390052041 5 0.4635044119905814 27 1.4561876905742855e-07 
		31 0.22175836849012909
		3 2 0.0019857868532514493 3 0.89547158181864261 4 0.10254263132810593
		3 2 0.070872546595898908 3 0.77881939573827619 4 0.15030805766582489
		3 2 0.034677600470867931 3 0.7773276362740128 4 0.18799476325511932
		3 2 0.045759230851241006 3 0.75569093227475082 4 0.19854983687400818
		3 2 0.024645296119798151 3 0.76922247073734906 4 0.20613223314285278
		3 2 0.070337343183811199 3 0.77364319268101878 4 0.15601946413516998
		3 2 0.0013337666172239652 3 0.86432694550569322 4 0.13433928787708282
		3 3 0.8616678272272682 4 0.1349642425775528 29 0.0033679301951789623
		3 3 0.89382212590415966 4 0.091390073299407959 29 0.014787800796432398
		3 2 0.003179991128117266 3 0.85970880698952035 4 0.13711120188236237
		3 1 0.0001826013181524979 3 0.85208207119962398 4 0.14773532748222351
		3 2 0.00046913319505584484 3 0.84456759697519412 4 0.15496326982975006
		3 2 0.0024660511907396696 3 0.85452841380273725 4 0.14300553500652313
		3 1 0.00044831357173232792 3 0.85680322625466077 4 0.14274846017360687
		3 1 4.5351243136696154e-05 3 0.88361219360816645 4 0.1163424551486969
		3 1 1.9143077677432523e-05 3 0.89648628726308943 4 0.10349456965923309
		3 28 0.0019857868532514493 29 0.89547158181864261 30 0.10254263132810593
		3 28 0.070872546595898908 29 0.77881939573827619 30 0.15030805766582489
		3 28 0.034677600470867931 29 0.7773276362740128 30 0.18799476325511932
		3 28 0.045759230851260373 29 0.75569093227475792 30 0.19854983687398178
		3 28 0.024645331851619622 29 0.76922249641923124 30 0.20613217172914913
		3 28 0.070337387632628451 29 0.77364318543014043 30 0.15601942693723103
		4 3 -7.6802932179291147e-11 28 0.001333766618036362 29 0.86432694958424472 
		30 0.13433928387452182
		4 3 0.0033679372616269216 28 1.6327851681375929e-12 29 0.86166785575572646 
		30 0.13496420698101383
		4 3 0.01478779110079465 28 2.0849646573835569e-09 29 0.89382210353772484 
		30 0.091390103276515866
		4 27 1.3060664044797269e-10 28 0.0031799888536103672 29 0.85970880153445384 
		30 0.13711120948132915
		4 27 0.00018260117666197076 28 3.6351272676741976e-10 29 0.85208206537695552 
		30 0.14773533308286968
		4 27 1.7716620388056649e-10 28 0.00046913318311067804 29 0.84456760604650372 
		30 0.15496326059321941
		3 28 0.0024660511907396696 29 0.85452841380273725 30 0.14300553500652313
		4 27 0.00044831357910910403 28 6.6697602302268066e-12 29 0.85680324325755675 
		30 0.14274844315666435
		3 27 4.5351243136696154e-05 29 0.88361219360816645 30 0.1163424551486969
		3 27 1.9143077677432523e-05 29 0.89648628726308943 30 0.10349456965923309
		3 2 0.01267946464666434 3 0.0039379168301820755 4 0.98338261852315356
		3 2 0.047080529427147695 3 0.00020139148273389624 4 0.95271807909011841
		3 2 0.05193541926551215 3 0.027120605285879455 4 0.9209439754486084
		2 2 0.012754886113401557 4 0.98724511388659841
		3 2 0.032504547706896494 3 0.013269102200865746 4 0.95422635009223777
		3 2 0.0032544425899497967 3 0.0001538499491289258 4 0.99659170746092129
		3 2 0.13449588652239264 3 0.0061887777270275158 4 0.85931533575057983
		2 2 0.0061583342896056213 4 0.99384166571039445
		3 28 0.01267946464666434 29 0.0039379168301820755 30 0.98338261852315356
		3 28 0.0061583333958367273 29 4.3665595444997152e-10 30 0.99384166616750746
		3 28 0.13449581767676475 29 0.006188774407108434 30 0.85931540791612682
		3 28 0.0032544451523027649 29 0.00015384985742721013 30 0.99659170499027006
		3 28 0.03250454451195986 29 0.013269100679110137 30 0.95422635480893003
		2 28 0.012754886113401557 30 0.98724511388659841
		3 28 0.05193541926551215 29 0.027120605285879455 30 0.9209439754486084
		3 28 0.047080529427147695 29 0.00020139148273389624 30 0.95271807909011841
		3 2 0.1276662304767788 3 0.0094198629489719403 4 0.86291390657424927
		3 2 0.0027024449699957738 3 0.00072982592973858118 4 0.9965677291002657
		3 2 0.029432945414915184 3 0.0017417899798601866 4 0.96882526460522467
		3 2 0.002100822962224197 3 0.00049363012658432126 4 0.99740554691119143
		3 2 0.014038791267124246 3 0.12399859228924172 4 0.86196261644363403
		3 2 0.076254895614204884 3 0.023599990917624943 4 0.90014511346817017
		3 2 0.096661390282820503 3 0.015290080092240534 4 0.88804852962493896
		2 2 0.00028634404322568335 4 0.99971365595677431
		3 28 0.1276662304767788 29 0.0094198629489719403 30 0.86291390657424927
		3 28 0.00028634404352198491 29 7.0858291456588063e-11 30 0.99971365588561978
		3 28 0.096661338583216946 29 0.015290071890002402 30 0.88804858952678067
		3 28 0.076254882030413931 29 0.023599986803905435 30 0.90014513116568062
		3 28 0.014038792329658312 29 0.12399858548308258 30 0.86196262218725916
		3 28 0.002100822962224197 29 0.00049363012658432126 30 0.99740554691119143
		3 28 0.029432945414915184 29 0.0017417899798601866 30 0.96882526460522467
		3 28 0.0027024449699957738 29 0.00072982592973858118 30 0.9965677291002657
		3 2 0.13707996181123144 3 0.0011785549772512253 4 0.86174148321151733
		3 2 0.080968710620877501 3 0.00048687771988177516 4 0.91854441165924072
		3 3 0.0019703016150742769 4 0.99559140001178237 30 0.0024382983731433103
		2 2 0.028117608679638091 4 0.97188239132036192
		3 3 0.00079789431765675545 4 0.88343361031259438 29 0.11576849536974884
		3 3 0.010192176327109337 4 0.96166821131885871 29 0.028139612354031982
		3 3 0.013558062724769115 4 0.98014980407936136 29 0.006292133195869477
		2 4 0.98778946054788141 30 0.012210539452118609
		3 28 0.13707996181123144 29 0.0011785549772512253 30 0.86174148321151733
		3 4 0.01221053918230239 29 3.7090998664654399e-09 30 0.98778945710859778
		4 3 0.006292130195546565 4 5.8224389324753806e-09 29 0.013558056259781015 
		30 0.98014980772223337
		4 3 0.028139610676780384 4 1.6500124183638221e-11 29 0.010192176298411989 
		30 0.96166821300830752
		3 3 0.1157684892394777 29 0.00079789456512282912 30 0.8834336161953994
		2 28 0.028117608679638091 30 0.97188239132036192
		3 4 0.0024382983731433103 29 0.0019703016150742769 30 0.99559140001178237
		3 28 0.080968710620877501 29 0.00048687771988177516 30 0.91854441165924072
		2 20 0.89733580499887466 21 0.10266419500112534
		3 20 0.88780994005685576 21 0.1121494397521019 22 4.0620191042294608e-05
		2 20 0.87092457711696625 21 0.12907542288303375
		2 20 0.83486765623092651 21 0.16513234376907349
		3 19 0.00031851964343897817 20 0.81286665064941532 21 0.18681482970714569
		3 19 0.002590158793357777 20 0.82069796898660285 21 0.17671187222003937
		3 19 0.00079711556308046099 20 0.85541105985768062 21 0.14379182457923889
		3 19 1.0650268460236569e-05 20 0.88187148083124067 21 0.11811786890029907
		2 24 0.89733580499887466 25 0.10266419500112534
		3 23 1.0650268460236569e-05 24 0.88187148083124067 25 0.11811786890029907
		3 23 0.00079711556308046099 24 0.85541105985768062 25 0.14379182457923889
		3 23 0.002590158793357777 24 0.82069796898660285 25 0.17671187222003937
		4 6 3.7146658175814723e-09 23 0.00031852896628534709 24 0.81286695950730448 
		25 0.18681450781174427
		2 24 0.83486765623092651 25 0.16513234376907349
		2 24 0.87092457711696625 25 0.12907542288303375
		4 23 9.7567784793002996e-09 24 0.88781017847473298 25 0.11214919152256068 
		26 4.0620245927733975e-05
		3 20 0.00026266555873266434 21 0.90376741160067209 22 0.095969922840595245
		3 20 7.4177352998832033e-05 21 0.90538185152568995 22 0.094543971121311188
		3 20 4.5604311743141614e-07 21 0.90438053601182189 22 0.09561900794506073
		3 20 0.00055864821833241651 21 0.88204558570224179 22 0.11739576607942581
		3 20 0.00059258232225902505 21 0.84592150857339377 22 0.15348590910434723
		3 20 3.9697597458143719e-06 21 0.8328369199325607 22 0.16715911030769348
		3 20 7.5616771937347949e-06 21 0.86858425355603686 22 0.13140818476676941
		3 20 0.00061935355148404886 21 0.88969806412973318 22 0.10968258231878281
		3 24 0.00026266555873266434 25 0.90376741160067209 26 0.095969922840595245
		3 24 0.00061935353022378773 25 0.8896980649683317 26 0.10968258150144461
		3 24 7.5623826020540424e-06 25 0.86858427202047128 26 0.13140816559692667
		3 24 3.9697597458143719e-06 25 0.8328369199325607 26 0.16715911030769348
		3 24 0.00059258232225902505 25 0.84592150857339377 26 0.15348590910434723
		3 24 0.00055864821833241651 25 0.88204558570224179 26 0.11739576607942581
		3 24 4.5604311743141614e-07 25 0.90438053601182189 26 0.09561900794506073
		3 24 7.4177352998832033e-05 25 0.90538185152568995 26 0.094543971121311188;
	setAttr -s 32 ".pm";
	setAttr ".pm[0]" -type "matrix" 0.99996972440860898 -0.0077814051539935609 0 0 0.0077814051539935609 0.99996972440860898 0 0
		 0 0 1 0 -0.097293111960345791 -12.503929283528679 -0.50992584228515614 1;
	setAttr ".pm[1]" -type "matrix" 2.8257778061924199e-14 1 0 0 -1 2.8257778061924199e-14 0 0
		 0 0 1 0 12.569735998087848 -8.4080133438112394 -0.50992584228515647 1;
	setAttr ".pm[2]" -type "matrix" 2.8257778061924199e-14 1 0 0 -1 2.8257778061924199e-14 0 0
		 0 0 1 0 9.3892602920529828 -8.4080133438112377 -0.50992584228515669 1;
	setAttr ".pm[3]" -type "matrix" 3.3655625778248567e-32 -2.6020852139715223e-18 -1 0
		 -1.2934098236883074e-14 1.0000000000000002 5.2909066017300376e-17 0 1 1.2989609388114338e-14 -1.1102230246214788e-16 0
		 -0.50992584228513393 -1.0395576953887991 8.4080133438110387 1;
	setAttr ".pm[4]" -type "matrix" 3.3655625778248567e-32 -2.6020852139715223e-18 -1 0
		 -1.2934098236883074e-14 1.0000000000000002 5.2909066017300376e-17 0 1 1.2989609388114338e-14 -1.1102230246214788e-16 0
		 -7.1796956062316779 -1.0395576953889338 8.4080133438111719 1;
	setAttr ".pm[5]" -type "matrix" 3.6579064516956124e-10 -0.99999999999999978 0 0 0.99999999999999978 3.6579064516956124e-10 0 0
		 0 0 1 0 -24.460819244384759 -8.0364588239302813e-06 -0.50992584228515625 1;
	setAttr ".pm[6]" -type "matrix" 3.6579064516956124e-10 -0.99999999999999978 0 0 0.99999999999999978 3.6579064516956124e-10 0 0
		 0 0 1 0 -40.557662963867173 -8.0364588229865935e-06 -0.50992584228515603 1;
	setAttr ".pm[7]" -type "matrix" 3.6579064516956124e-10 -0.99999999999999978 0 0 0.99999999999999978 3.6579064516956124e-10 0 0
		 0 0 1 0 -46.483955383300767 -8.0386247914189817e-06 -0.50992584228515614 1;
	setAttr ".pm[8]" -type "matrix" 3.6579064516956124e-10 -0.99999999999999978 0 0 0.99999999999999978 3.6579064516956124e-10 0 0
		 0 0 1 0 -57.202911376953317 -6.1565182685433954e-06 -0.50992584228515614 1;
	setAttr ".pm[9]" -type "matrix" 0.99999999999999978 2.5153490298266114e-17 0 0 -2.5153490298266114e-17 0.99999999999999978 0 0
		 0 0 1 0 -3.4112664890297074e-07 -62.803451538085923 -19.737402467505301 1;
	setAttr ".pm[10]" -type "matrix" 0.97354902406419452 0.068084480545314102 0.21809814591721902 0
		 -0.069763918455211918 0.99756352964699635 -1.2490009027033004e-16 0 -0.21756675625064678 -0.015215381267001678 0.97592684087869586 0
		 0.11686807817005362 -53.071085048635901 16.045713900882546 1;
	setAttr ".pm[11]" -type "matrix" 0.80301491859401308 -0.3641214088923585 0.47178664680307952 0
		 0.41297056448444819 0.91074437295510924 -1.471045507628331e-15 0 -0.42967703381126415 0.19483399784649413 0.88171274227965313 0
		 -30.462465196346294 -44.187627209269209 14.012846999195041 1;
	setAttr ".pm[12]" -type "matrix" 0.79965765161758806 -0.37215038476910156 0.47122365318991916 0
		 0.42193263035165779 0.90662718657920816 -5.4761750689635796e-13 0 -0.4272241749409495 0.19882463547477805 0.88201375764459977 0
		 -36.308523737774742 -43.835364589899918 14.02205752094307 1;
	setAttr ".pm[13]" -type "matrix" 0.78902250033472032 -0.42460625211082259 0.44401917147117181 0
		 0.47388176447845187 0.88058848124125932 -9.9087404947795111e-15 0 -0.39099816784779767 0.21041258843902713 0.89601728519379231 0
		 -49.142201482544543 -41.236334634296441 14.755037481838009 1;
	setAttr ".pm[14]" -type "matrix" 0.7614813674412253 -0.48831831305322482 0.42625268582930226 0
		 0.53981436977953356 0.84178408524961079 -7.7715611723760889e-16 0 -0.35881272722600882 0.23009732496777907 0.90460413873876699 0
		 -62.749950075088904 -36.687620198136564 15.409530598715804 1;
	setAttr ".pm[15]" -type "matrix" -0.80301211155106544 0.36412812410278811 0.47178624178719258 0
		 0.41297807907654061 0.91074096547934535 -8.3266726846886667e-17 0 -0.42967505734513989 0.19483737586801522 -0.88171295899533897 0
		 -30.462821283036973 -44.187342074920714 -14.012872521295833 1;
	setAttr ".pm[16]" -type "matrix" -0.79966171516969131 0.37214860626680796 0.47121816194363636 0
		 0.42192921053356491 0.90662877811071152 3.9099279369736405e-13 0 -0.4272199463863891 0.19882070705826882 -0.88201669136953409 0
		 -36.308299324793168 -43.835546465760878 -14.022166216021624 1;
	setAttr ".pm[17]" -type "matrix" -0.78901739884230648 0.42460895119237624 0.44402565566803748 0
		 0.47388647621862168 0.88058594563909387 2.7478019859472601e-15 0 -0.39100275188445643 0.21041775331519158 -0.89601407193669058 0
		 -49.142503585862826 -41.235988744722412 -14.754824042277981 1;
	setAttr ".pm[18]" -type "matrix" -0.76148452306042247 0.488322414902227 0.42624234919057186 0
		 0.53981599770408095 0.84178304130146664 1.193489751472042e-14 0 -0.35880358103311577 0.23009243899204906 -0.90460900932751154 0
		 -62.749869378421209 -36.687620372986856 -15.409935194499258 1;
	setAttr ".pm[19]" -type "matrix" 0.99994523272902736 1.460891578299958e-13 -0.010465731818217109 0
		 -1.4601148413995893e-13 1 1.5282007307721936e-15 0 0.010465731818217109 5.4134124294892448e-19 0.99994523272902758 0
		 -17.511768420182111 -46.368659973147118 -1.0310100740049024 1;
	setAttr ".pm[20]" -type "matrix" 0.9975042464892212 1.4608915782999583e-13 0.070606502788135087 0
		 -1.4565505259553663e-13 1 -1.0309924908478922e-14 0 -0.0706065027881351 5.4134124294853015e-19 0.99750424648922142 0
		 -19.305589020047467 -46.368659973147103 -2.6041443004886826 1;
	setAttr ".pm[21]" -type "matrix" 0.99691793261421568 1.4608915782999583e-13 0.078451485850795658 0
		 -1.4556943934767128e-13 1 -1.1455445265534631e-14 0 -0.078451485850795671 5.4134124294695233e-19 0.99691793261421591 0
		 -31.124501926521575 -46.368659973149562 -2.6208816316690391 1;
	setAttr ".pm[22]" -type "matrix" 0.99800752559747807 1.4608915782999583e-13 0.063094998619533743 0
		 -1.4572854114983743e-13 1 -9.2130989665343794e-15 0 -0.063094998619533743 5.4134124294695243e-19 0.9980075255974783 0
		 -43.179087590687672 -46.368659973151701 -1.5979683348652405 1;
	setAttr ".pm[23]" -type "matrix" 0.99994523272902736 1.460891578299958e-13 -0.010465731818217109 0
		 -1.4601148413995893e-13 1 1.5282007307721936e-15 0 0.010465731818217109 5.4134124294892448e-19 0.99994523272902758 0
		 17.486333767219115 -46.36869999999746 -1.3973138067554374 1;
	setAttr ".pm[24]" -type "matrix" -0.99750425969394441 1.460891578299958e-13 0.070606316236122804 0
		 1.4565505452368348e-13 1 -1.0309897668250867e-14 0 -0.070606316236122818 5.4134124294853005e-19 -0.99750425969394463 0
		 -19.305613242348493 -46.368699999997162 2.604137484604375 1;
	setAttr ".pm[25]" -type "matrix" -0.99691792305016924 1.460891578299958e-13 0.078451607385294553 0
		 1.4556943795113419e-13 1 -1.145546301193911e-14 0 -0.078451607385294567 5.4134124294853005e-19 -0.99691792305016946 0
		 -31.124495956387364 -46.368699999994952 2.6208842938209336 1;
	setAttr ".pm[26]" -type "matrix" -0.99800753406119436 1.460891578299958e-13 0.063094864744238935 0
		 1.4572854238570489e-13 1 -9.2130794181332825e-15 0 -0.063094864744238949 5.4134124294853015e-19 -0.99800753406119458 0
		 -43.179080243513624 -46.368699999992835 1.5979612285343046 1;
	setAttr ".pm[27]" -type "matrix" 5.8113236445223013e-17 0.99999999999999978 0 0 -0.99999999999999978 5.8113236445223013e-17 0 0
		 0 0 1 0 12.569699999999994 8.408029999999993 -0.5099260000000001 1;
	setAttr ".pm[28]" -type "matrix" 5.8113236445223013e-17 0.99999999999999978 0 0 -0.99999999999999978 5.8113236445223013e-17 0 0
		 0 0 1 0 9.3892599999999984 8.4080299999999966 -0.50992599999999999 1;
	setAttr ".pm[29]" -type "matrix" 0 -5.0220244629528556e-16 -0.99999999999999978 0
		 0 0.99999999999999978 -5.0220244629528556e-16 0 1 0 0 0 -0.50992599999999999 -1.039560000000002 -8.408030000000231 1;
	setAttr ".pm[30]" -type "matrix" 0 -5.0220244629528556e-16 -0.99999999999999978 0
		 0 0.99999999999999978 -5.0220244629528556e-16 0 1 0 0 0 -7.1796956062316895 -1.0395600000000034 -8.4080300000002346 1;
	setAttr ".pm[31]" -type "matrix" -0.00010133486384238777 -2.5112063970282433e-05 0.99999999455031474 0
		 -0.24053689659208871 0.97063999576457105 5.3071696343165432e-16 0 -0.97063999047488869 -0.24053689528123839 -0.0001044000497452662 0
		 -16.500671519058795 -17.122344297413811 -0.0033431381603045126 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 32 ".ma";
	setAttr -s 32 ".dpf[0:31]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4 4 4 4 4 4 4 4 4;
	setAttr -s 32 ".lw";
	setAttr -s 32 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 3;
	setAttr ".ucm" yes;
	setAttr -s 32 ".ifcl";
	setAttr -s 32 ".ifcl";
createNode groupId -n "groupId7";
	rename -uid "CC5DB607-4833-0097-C376-92986080AE72";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts7";
	rename -uid "25219756-49EC-41C7-20EA-8F81E1A901AF";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:1097]";
createNode tweak -n "tweak3";
	rename -uid "835741D3-43AE-F475-ADFB-44A494E9E99C";
createNode objectSet -n "skinCluster3Set";
	rename -uid "4ECB39A9-41BD-D296-F13A-15B0B325AF1C";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster3GroupId";
	rename -uid "62EF4A2A-4B5B-44B6-4440-6FB7784866D5";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster3GroupParts";
	rename -uid "41289E0E-4AB1-562F-7ADA-CEA764E399C4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet3";
	rename -uid "B25E77E7-4C57-B85C-B9CE-34AE8FA4D246";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId9";
	rename -uid "0E5D11A5-4BD4-BCB0-43FB-CBB35C3A9B82";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts9";
	rename -uid "E5EBAADB-49CC-FAAF-6793-E18182D9982A";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode animCurveTU -n "nurbsCircle9_visibility";
	rename -uid "2193EFAB-4936-3773-9C97-F08711CC2BBE";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 60 1 120 1 180 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "nurbsCircle9_translateX";
	rename -uid "A6C24A32-4C8F-F5BE-E1A4-0EB7B3792298";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 60 0 120 0 180 0;
createNode animCurveTL -n "nurbsCircle9_translateY";
	rename -uid "16942C63-4EBB-0900-E8AB-318E56453EE0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 60 0 120 0 180 0;
createNode animCurveTL -n "nurbsCircle9_translateZ";
	rename -uid "FC669ECF-47B6-F03D-DC33-65B81483166D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 60 0 120 0 180 0;
createNode animCurveTA -n "nurbsCircle9_rotateX";
	rename -uid "D0D2ED53-4477-2D12-0B07-B3A413350627";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 60 0 120 8.6417889689766267e-16 180 2.5196539772389402e-15;
createNode animCurveTA -n "nurbsCircle9_rotateY";
	rename -uid "233850CD-4929-9B2D-6FF8-738EB0A64B39";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 60 0 120 -23.05799647514371 180 18.78676962534372;
createNode animCurveTA -n "nurbsCircle9_rotateZ";
	rename -uid "B795F350-4E77-6FD5-6E07-4EAF089B5581";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 60 -29.892517801860691 120 -29.892517801860794
		 180 -29.892517801860773;
createNode animCurveTU -n "nurbsCircle9_scaleX";
	rename -uid "6B35D0B2-4012-827C-3F17-588DD9624E1C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 60 1 120 1 180 1;
createNode animCurveTU -n "nurbsCircle9_scaleY";
	rename -uid "2F0E04B1-473E-E2AF-487F-98AD4456226F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 60 1 120 1 180 1;
createNode animCurveTU -n "nurbsCircle9_scaleZ";
	rename -uid "A94E8522-4523-C85F-2121-9397915D3AB8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 60 1 120 1 180 1;
createNode animCurveTU -n "nurbsCircle10_visibility";
	rename -uid "BF700A32-4933-E2CD-FA8C-EEA65CF07864";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 60 1 120 1 180 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "nurbsCircle10_translateX";
	rename -uid "155FBAFA-47AC-115A-D2CF-EA817C7B9224";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 60 0 120 0 180 0;
createNode animCurveTL -n "nurbsCircle10_translateY";
	rename -uid "F53C61A2-4AB6-37F4-722D-F5A67009C985";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 60 0 120 0 180 0;
createNode animCurveTL -n "nurbsCircle10_translateZ";
	rename -uid "66F08F4E-4A78-4267-48AB-D6B41C3302CA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 60 0 120 0 180 0;
createNode animCurveTA -n "nurbsCircle10_rotateX";
	rename -uid "A7699FCA-48C7-CCA2-E741-3E88AB64EA62";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 60 0 120 8.6417889689766267e-16 180 2.5196539772389402e-15;
createNode animCurveTA -n "nurbsCircle10_rotateY";
	rename -uid "7435E3A8-4988-1B8C-244E-B2BDA8083B91";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 60 0 120 -23.05799647514371 180 18.78676962534372;
createNode animCurveTA -n "nurbsCircle10_rotateZ";
	rename -uid "2AF6F2C7-4AD7-00B6-F872-28AF5C1661F0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 60 -29.892517801860691 120 -29.892517801860794
		 180 -29.892517801860773;
createNode animCurveTU -n "nurbsCircle10_scaleX";
	rename -uid "038C2F27-465B-3C28-6AF8-0AB5272D4DD6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 60 1 120 1 180 1;
createNode animCurveTU -n "nurbsCircle10_scaleY";
	rename -uid "E1061E7A-4E1E-2DD9-F7E6-E395A1F543F6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 60 1 120 1 180 1;
createNode animCurveTU -n "nurbsCircle10_scaleZ";
	rename -uid "B630DF06-4ACC-EC39-B23B-E5AC536C9CB4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 60 1 120 1 180 1;
createNode animCurveTU -n "nurbsCircle11_visibility";
	rename -uid "8299BA58-4ACA-C9EC-7411-46844C7E1BDD";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 60 1 120 1 180 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "nurbsCircle11_translateX";
	rename -uid "7FF82310-41AD-ED1D-0EB7-59B10DC5F5B4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 -3.2319126129150604 60 -3.2319126129150604
		 120 -3.2319126129150604 180 -3.2319126129150604;
createNode animCurveTL -n "nurbsCircle11_translateY";
	rename -uid "0845C2C7-4ADE-BD3A-4671-E9A2033FE0DD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 4.7606363295926712e-13 60 4.7606363295926712e-13
		 120 4.7606363295926712e-13 180 4.7606363295926712e-13;
createNode animCurveTL -n "nurbsCircle11_translateZ";
	rename -uid "A09B93E0-4E42-14A2-D21A-05AE273D79C0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 -1.3322676295501878e-15 60 -1.3322676295501878e-15
		 120 -1.3322676295501878e-15 180 -1.3322676295501878e-15;
createNode animCurveTA -n "nurbsCircle11_rotateX";
	rename -uid "0EF0ED5D-484A-F2D6-D5DB-998DFDE04CE9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 60 0 120 8.6417889689766267e-16 180 2.5196539772389402e-15;
createNode animCurveTA -n "nurbsCircle11_rotateY";
	rename -uid "778F02D7-4FA5-3F6C-731A-7EABBDEEBC33";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 60 0 120 -23.05799647514371 180 18.78676962534372;
createNode animCurveTA -n "nurbsCircle11_rotateZ";
	rename -uid "9FE43E96-4D9F-9278-81AF-D2B53BB61938";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 60 -29.892517801860691 120 -29.892517801860794
		 180 -29.892517801860773;
createNode animCurveTU -n "nurbsCircle11_scaleX";
	rename -uid "D7DA3E45-485D-3AEA-A380-C19F9AFF0440";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 60 1 120 1 180 1;
createNode animCurveTU -n "nurbsCircle11_scaleY";
	rename -uid "ED2707D0-4D7C-DA9D-EF11-659C14E5217D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 60 1 120 1 180 1;
createNode animCurveTU -n "nurbsCircle11_scaleZ";
	rename -uid "F7D713BC-49FB-4D91-EB08-21B437478E48";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 60 1 120 1 180 1;
createNode animCurveTU -n "nurbsCircle12_visibility";
	rename -uid "8F2447DF-42B3-B44D-7326-5595B1AB9592";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 60 1 120 1 180 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "nurbsCircle12_translateX";
	rename -uid "0F815FC7-47F9-6EB3-CC52-608D0E23A7D4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 -2.6339708854445902 60 -2.6339708854445902
		 120 -2.6339708854445902 180 -2.6339708854445902;
createNode animCurveTL -n "nurbsCircle12_translateY";
	rename -uid "BA6186F6-4FE1-D5E1-63F8-2A9E420ED81A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 3.765876499528531e-13 60 3.765876499528531e-13
		 120 3.765876499528531e-13 180 3.765876499528531e-13;
createNode animCurveTL -n "nurbsCircle12_translateZ";
	rename -uid "F26066BA-463E-DB10-C1B5-7C9A2AAB90C5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 -0.11199414730071888 60 -0.11199414730071888
		 120 -0.11199414730071888 180 -0.11199414730071888;
createNode animCurveTA -n "nurbsCircle12_rotateX";
	rename -uid "DEE39023-449C-507C-BAC0-138905CAD482";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 60 0 120 8.6417889689766267e-16 180 2.5196539772389402e-15;
createNode animCurveTA -n "nurbsCircle12_rotateY";
	rename -uid "416A16F8-436F-D9D6-6E0D-1D90028AFC7B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 60 0 120 -23.05799647514371 180 18.78676962534372;
createNode animCurveTA -n "nurbsCircle12_rotateZ";
	rename -uid "A372DED5-4DB0-306D-73D1-1394A5ADA9A9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 60 -29.892517801860691 120 -29.892517801860794
		 180 -29.892517801860773;
createNode animCurveTU -n "nurbsCircle12_scaleX";
	rename -uid "B4DD9C8F-4CAB-81D9-D642-C1860507C321";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 60 1 120 1 180 1;
createNode animCurveTU -n "nurbsCircle12_scaleY";
	rename -uid "50272443-42B6-C896-83AA-B0A9FCCFB9CD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 60 1 120 1 180 1;
createNode animCurveTU -n "nurbsCircle12_scaleZ";
	rename -uid "29CC457E-41AA-30C2-EEE4-FB98359E49FC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 60 1 120 1 180 1;
createNode animCurveTU -n "nurbsCircle13_visibility";
	rename -uid "3FEB2308-4FFB-9D2F-5845-20911B1B0CEB";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 24 1 41 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "nurbsCircle13_translateX";
	rename -uid "6A5B8964-4388-1E60-CC05-EA9BC9E4BDC8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 24 0 41 0;
createNode animCurveTL -n "nurbsCircle13_translateY";
	rename -uid "C9C26270-4804-A47F-DFAE-FB981F18D69D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 24 0 41 0;
createNode animCurveTL -n "nurbsCircle13_translateZ";
	rename -uid "F2EA2869-4171-0F01-8842-C89F3025C5D8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 24 0 41 0;
createNode animCurveTA -n "nurbsCircle13_rotateX";
	rename -uid "CC12D52A-4F01-CE79-8C48-CD80F8324EF7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 24 40.204478113568491 41 -30.333823100108834;
createNode animCurveTA -n "nurbsCircle13_rotateY";
	rename -uid "DC2EA20B-46AC-A735-43B4-1DB3EAD1EE49";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 24 0 41 0;
createNode animCurveTA -n "nurbsCircle13_rotateZ";
	rename -uid "67BC4C2D-4216-CDFB-23BD-62A15D3F4B18";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 24 0 41 0;
createNode animCurveTU -n "nurbsCircle13_scaleX";
	rename -uid "0C7B0B1D-42B6-F46D-17D5-1AB778661F34";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 24 1 41 1;
createNode animCurveTU -n "nurbsCircle13_scaleY";
	rename -uid "D3F0D195-4C13-9CBB-533D-CAA1B0A9481A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 24 1 41 1;
createNode animCurveTU -n "nurbsCircle13_scaleZ";
	rename -uid "6F244A83-40E0-E01B-6C40-7FAA7B851575";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 24 1 41 1;
createNode shapeEditorManager -n "heropengin_model_3:shapeEditorManager";
	rename -uid "F1F88B7B-454E-1563-EF61-9D98350EFDA1";
createNode poseInterpolatorManager -n "heropengin_model_3:poseInterpolatorManager";
	rename -uid "160CE73A-4618-AD60-34BB-1EA9DD4DFD02";
createNode renderLayerManager -n "heropengin_model_3:renderLayerManager";
	rename -uid "EBB75E14-40CF-626E-4E0A-A09AEFD86DC0";
createNode renderLayer -n "heropengin_model_3:defaultRenderLayer";
	rename -uid "30724870-432C-6FA8-8386-95A06E815D77";
	setAttr ".g" yes;
createNode polyCube -n "heropengin_model_3:polyCube1";
	rename -uid "75FA8555-4E2F-FC3E-EA0E-D5B0A8C19280";
	setAttr ".ax" -type "double3" 0 100 0 ;
	setAttr ".w" 100;
	setAttr ".h" 100;
	setAttr ".d" 100;
	setAttr ".cuv" 4;
createNode displayLayer -n "heropengin_model_3:layer1";
	rename -uid "58012524-4B17-3C2E-D924-87AB1E973DB3";
	setAttr ".dt" 1;
	setAttr ".c" 14;
	setAttr ".do" 1;
createNode polySplit -n "heropengin_model_3:polySplit10";
	rename -uid "B697AF17-46A5-2E28-2C7A-AF9C12F51343";
	setAttr -s 5 ".e[0:4]"  0.33333299 0.33333299 0.66666698 0.66666698
		 0.33333299;
	setAttr -s 5 ".d[0:4]"  -2147483644 -2147483643 -2147483639 -2147483640 -2147483644;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "heropengin_model_3:polySplit11";
	rename -uid "55778506-4F44-8A62-25A9-3C98F256213F";
	setAttr -s 5 ".e[0:4]"  0.5 0.5 0.5 0.5 0.5;
	setAttr -s 5 ".d[0:4]"  -2147483636 -2147483635 -2147483639 -2147483640 -2147483636;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode displayLayer -n "heropengin_model_3:heropengin_model_2:layer1";
	rename -uid "2EA7692E-486A-EC1C-06F6-6993C1E4F60B";
	setAttr ".dt" 1;
	setAttr ".c" 14;
	setAttr ".do" 1;
createNode groupId -n "heropengin_model_3:groupId11";
	rename -uid "EE3EBD4F-4879-EBC1-288B-12A9FF0B1617";
	setAttr ".ihi" 0;
createNode nodeGraphEditorInfo -n "heropengin_model_3:MayaNodeEditorSavedTabsInfo";
	rename -uid "281E471F-487A-27DB-D1A7-FA96EA9B6E26";
	setAttr ".def" no;
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -1914.9429768132873 -840.52903662716233 ;
	setAttr ".tgi[0].vh" -type "double2" 202.60155749369071 220.30309875036048 ;
	setAttr -s 12 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" -855.71429443359375;
	setAttr ".tgi[0].ni[0].y" 175.71427917480469;
	setAttr ".tgi[0].ni[0].nvs" 18304;
	setAttr ".tgi[0].ni[1].x" -1162.857177734375;
	setAttr ".tgi[0].ni[1].y" 431.42855834960938;
	setAttr ".tgi[0].ni[1].nvs" 18306;
	setAttr ".tgi[0].ni[2].x" 72.857139587402344;
	setAttr ".tgi[0].ni[2].y" -461.42855834960938;
	setAttr ".tgi[0].ni[2].nvs" 18304;
	setAttr ".tgi[0].ni[3].x" -241.42857360839844;
	setAttr ".tgi[0].ni[3].y" 37.142856597900391;
	setAttr ".tgi[0].ni[3].nvs" 18304;
	setAttr ".tgi[0].ni[4].x" -241.42857360839844;
	setAttr ".tgi[0].ni[4].y" 240;
	setAttr ".tgi[0].ni[4].nvs" 18304;
	setAttr ".tgi[0].ni[5].x" -1377.1580810546875;
	setAttr ".tgi[0].ni[5].y" -247.2139892578125;
	setAttr ".tgi[0].ni[5].nvs" 18306;
	setAttr ".tgi[0].ni[6].x" 72.857139587402344;
	setAttr ".tgi[0].ni[6].y" 341.42855834960938;
	setAttr ".tgi[0].ni[6].nvs" 18304;
	setAttr ".tgi[0].ni[7].x" 72.857139587402344;
	setAttr ".tgi[0].ni[7].y" -331.42855834960938;
	setAttr ".tgi[0].ni[7].nvs" 18304;
	setAttr ".tgi[0].ni[8].x" -855.71429443359375;
	setAttr ".tgi[0].ni[8].y" 74.285713195800781;
	setAttr ".tgi[0].ni[8].nvs" 18304;
	setAttr ".tgi[0].ni[9].x" -265.7427978515625;
	setAttr ".tgi[0].ni[9].y" -170.78413391113281;
	setAttr ".tgi[0].ni[9].nvs" 18306;
	setAttr ".tgi[0].ni[10].x" -241.42857360839844;
	setAttr ".tgi[0].ni[10].y" 138.57142639160156;
	setAttr ".tgi[0].ni[10].nvs" 18304;
	setAttr ".tgi[0].ni[11].x" -548.5714111328125;
	setAttr ".tgi[0].ni[11].y" 151.42857360839844;
	setAttr ".tgi[0].ni[11].nvs" 18306;
createNode groupId -n "heropengin_model_3:groupId12";
	rename -uid "A1CAE441-418F-50DF-D2F2-808DBE731AF7";
	setAttr ".ihi" 0;
createNode groupId -n "heropengin_model_3:groupId14";
	rename -uid "FED82CA0-42A7-A0EE-DEBC-15BB4CCA1355";
	setAttr ".ihi" 0;
createNode groupId -n "heropengin_model_3:groupId15";
	rename -uid "16C267B7-4DAA-F3B2-92C7-50BCAEDEB1F8";
	setAttr ".ihi" 0;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".msaa" yes;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 4 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
	setAttr -s 2 ".r";
select -ne :initialShadingGroup;
	setAttr -s 5 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 4 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".ren" -type "string" "arnold";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "kotuban_parentConstraint1.ctx" "kotuban.tx";
connectAttr "kotuban_parentConstraint1.cty" "kotuban.ty";
connectAttr "kotuban_parentConstraint1.ctz" "kotuban.tz";
connectAttr "kotuban_parentConstraint1.crx" "kotuban.rx";
connectAttr "kotuban_parentConstraint1.cry" "kotuban.ry";
connectAttr "kotuban_parentConstraint1.crz" "kotuban.rz";
connectAttr "kotuban.s" "L_reg01.is";
connectAttr "L_reg01_parentConstraint1.ctx" "L_reg01.tx";
connectAttr "L_reg01_parentConstraint1.cty" "L_reg01.ty";
connectAttr "L_reg01_parentConstraint1.ctz" "L_reg01.tz";
connectAttr "L_reg01_parentConstraint1.crx" "L_reg01.rx";
connectAttr "L_reg01_parentConstraint1.cry" "L_reg01.ry";
connectAttr "L_reg01_parentConstraint1.crz" "L_reg01.rz";
connectAttr "L_reg01.s" "L_reg02.is";
connectAttr "L_reg02_parentConstraint1.ctx" "L_reg02.tx";
connectAttr "L_reg02_parentConstraint1.cty" "L_reg02.ty";
connectAttr "L_reg02_parentConstraint1.ctz" "L_reg02.tz";
connectAttr "L_reg02_parentConstraint1.crx" "L_reg02.rx";
connectAttr "L_reg02_parentConstraint1.cry" "L_reg02.ry";
connectAttr "L_reg02_parentConstraint1.crz" "L_reg02.rz";
connectAttr "L_reg02.s" "L_foot.is";
connectAttr "L_foot_parentConstraint1.ctx" "L_foot.tx";
connectAttr "L_foot_parentConstraint1.cty" "L_foot.ty";
connectAttr "L_foot_parentConstraint1.ctz" "L_foot.tz";
connectAttr "L_foot_parentConstraint1.crx" "L_foot.rx";
connectAttr "L_foot_parentConstraint1.cry" "L_foot.ry";
connectAttr "L_foot_parentConstraint1.crz" "L_foot.rz";
connectAttr "L_foot.s" "L_footfinger.is";
connectAttr "L_footfinger_parentConstraint1.ctx" "L_footfinger.tx";
connectAttr "L_footfinger_parentConstraint1.cty" "L_footfinger.ty";
connectAttr "L_footfinger_parentConstraint1.ctz" "L_footfinger.tz";
connectAttr "L_footfinger_parentConstraint1.crx" "L_footfinger.rx";
connectAttr "L_footfinger_parentConstraint1.cry" "L_footfinger.ry";
connectAttr "L_footfinger_parentConstraint1.crz" "L_footfinger.rz";
connectAttr "L_footfinger.s" "L_footfinger_end.is";
connectAttr "L_footfinger.ro" "L_footfinger_parentConstraint1.cro";
connectAttr "L_footfinger.pim" "L_footfinger_parentConstraint1.cpim";
connectAttr "L_footfinger.rp" "L_footfinger_parentConstraint1.crp";
connectAttr "L_footfinger.rpt" "L_footfinger_parentConstraint1.crt";
connectAttr "L_footfinger.jo" "L_footfinger_parentConstraint1.cjo";
connectAttr "|nurbsCircle5|nurbsCircle1|nurbsCircle2|nurbsCircle3|nurbsCircle4.t" "L_footfinger_parentConstraint1.tg[0].tt"
		;
connectAttr "|nurbsCircle5|nurbsCircle1|nurbsCircle2|nurbsCircle3|nurbsCircle4.rp" "L_footfinger_parentConstraint1.tg[0].trp"
		;
connectAttr "|nurbsCircle5|nurbsCircle1|nurbsCircle2|nurbsCircle3|nurbsCircle4.rpt" "L_footfinger_parentConstraint1.tg[0].trt"
		;
connectAttr "|nurbsCircle5|nurbsCircle1|nurbsCircle2|nurbsCircle3|nurbsCircle4.r" "L_footfinger_parentConstraint1.tg[0].tr"
		;
connectAttr "|nurbsCircle5|nurbsCircle1|nurbsCircle2|nurbsCircle3|nurbsCircle4.ro" "L_footfinger_parentConstraint1.tg[0].tro"
		;
connectAttr "|nurbsCircle5|nurbsCircle1|nurbsCircle2|nurbsCircle3|nurbsCircle4.s" "L_footfinger_parentConstraint1.tg[0].ts"
		;
connectAttr "|nurbsCircle5|nurbsCircle1|nurbsCircle2|nurbsCircle3|nurbsCircle4.pm" "L_footfinger_parentConstraint1.tg[0].tpm"
		;
connectAttr "L_footfinger_parentConstraint1.w0" "L_footfinger_parentConstraint1.tg[0].tw"
		;
connectAttr "L_foot.ro" "L_foot_parentConstraint1.cro";
connectAttr "L_foot.pim" "L_foot_parentConstraint1.cpim";
connectAttr "L_foot.rp" "L_foot_parentConstraint1.crp";
connectAttr "L_foot.rpt" "L_foot_parentConstraint1.crt";
connectAttr "L_foot.jo" "L_foot_parentConstraint1.cjo";
connectAttr "|nurbsCircle5|nurbsCircle1|nurbsCircle2|nurbsCircle3.t" "L_foot_parentConstraint1.tg[0].tt"
		;
connectAttr "|nurbsCircle5|nurbsCircle1|nurbsCircle2|nurbsCircle3.rp" "L_foot_parentConstraint1.tg[0].trp"
		;
connectAttr "|nurbsCircle5|nurbsCircle1|nurbsCircle2|nurbsCircle3.rpt" "L_foot_parentConstraint1.tg[0].trt"
		;
connectAttr "|nurbsCircle5|nurbsCircle1|nurbsCircle2|nurbsCircle3.r" "L_foot_parentConstraint1.tg[0].tr"
		;
connectAttr "|nurbsCircle5|nurbsCircle1|nurbsCircle2|nurbsCircle3.ro" "L_foot_parentConstraint1.tg[0].tro"
		;
connectAttr "|nurbsCircle5|nurbsCircle1|nurbsCircle2|nurbsCircle3.s" "L_foot_parentConstraint1.tg[0].ts"
		;
connectAttr "|nurbsCircle5|nurbsCircle1|nurbsCircle2|nurbsCircle3.pm" "L_foot_parentConstraint1.tg[0].tpm"
		;
connectAttr "L_foot_parentConstraint1.w0" "L_foot_parentConstraint1.tg[0].tw";
connectAttr "L_reg02.ro" "L_reg02_parentConstraint1.cro";
connectAttr "L_reg02.pim" "L_reg02_parentConstraint1.cpim";
connectAttr "L_reg02.rp" "L_reg02_parentConstraint1.crp";
connectAttr "L_reg02.rpt" "L_reg02_parentConstraint1.crt";
connectAttr "L_reg02.jo" "L_reg02_parentConstraint1.cjo";
connectAttr "|nurbsCircle5|nurbsCircle1|nurbsCircle2.t" "L_reg02_parentConstraint1.tg[0].tt"
		;
connectAttr "|nurbsCircle5|nurbsCircle1|nurbsCircle2.rp" "L_reg02_parentConstraint1.tg[0].trp"
		;
connectAttr "|nurbsCircle5|nurbsCircle1|nurbsCircle2.rpt" "L_reg02_parentConstraint1.tg[0].trt"
		;
connectAttr "|nurbsCircle5|nurbsCircle1|nurbsCircle2.r" "L_reg02_parentConstraint1.tg[0].tr"
		;
connectAttr "|nurbsCircle5|nurbsCircle1|nurbsCircle2.ro" "L_reg02_parentConstraint1.tg[0].tro"
		;
connectAttr "|nurbsCircle5|nurbsCircle1|nurbsCircle2.s" "L_reg02_parentConstraint1.tg[0].ts"
		;
connectAttr "|nurbsCircle5|nurbsCircle1|nurbsCircle2.pm" "L_reg02_parentConstraint1.tg[0].tpm"
		;
connectAttr "L_reg02_parentConstraint1.w0" "L_reg02_parentConstraint1.tg[0].tw";
connectAttr "L_reg01.ro" "L_reg01_parentConstraint1.cro";
connectAttr "L_reg01.pim" "L_reg01_parentConstraint1.cpim";
connectAttr "L_reg01.rp" "L_reg01_parentConstraint1.crp";
connectAttr "L_reg01.rpt" "L_reg01_parentConstraint1.crt";
connectAttr "L_reg01.jo" "L_reg01_parentConstraint1.cjo";
connectAttr "nurbsCircle1.t" "L_reg01_parentConstraint1.tg[0].tt";
connectAttr "nurbsCircle1.rp" "L_reg01_parentConstraint1.tg[0].trp";
connectAttr "nurbsCircle1.rpt" "L_reg01_parentConstraint1.tg[0].trt";
connectAttr "nurbsCircle1.r" "L_reg01_parentConstraint1.tg[0].tr";
connectAttr "nurbsCircle1.ro" "L_reg01_parentConstraint1.tg[0].tro";
connectAttr "nurbsCircle1.s" "L_reg01_parentConstraint1.tg[0].ts";
connectAttr "nurbsCircle1.pm" "L_reg01_parentConstraint1.tg[0].tpm";
connectAttr "L_reg01_parentConstraint1.w0" "L_reg01_parentConstraint1.tg[0].tw";
connectAttr "kotuban.s" "born01.is";
connectAttr "born01_parentConstraint1.ctx" "born01.tx";
connectAttr "born01_parentConstraint1.cty" "born01.ty";
connectAttr "born01_parentConstraint1.ctz" "born01.tz";
connectAttr "born01_parentConstraint1.crx" "born01.rx";
connectAttr "born01_parentConstraint1.cry" "born01.ry";
connectAttr "born01_parentConstraint1.crz" "born01.rz";
connectAttr "born01.s" "born02.is";
connectAttr "born02_parentConstraint1.ctx" "born02.tx";
connectAttr "born02_parentConstraint1.cty" "born02.ty";
connectAttr "born02_parentConstraint1.ctz" "born02.tz";
connectAttr "born02_parentConstraint1.crx" "born02.rx";
connectAttr "born02_parentConstraint1.cry" "born02.ry";
connectAttr "born02_parentConstraint1.crz" "born02.rz";
connectAttr "born02.s" "neck.is";
connectAttr "neck.s" "head.is";
connectAttr "head_parentConstraint1.ctx" "head.tx";
connectAttr "head_parentConstraint1.cty" "head.ty";
connectAttr "head_parentConstraint1.ctz" "head.tz";
connectAttr "head_parentConstraint1.crx" "head.rx";
connectAttr "head_parentConstraint1.cry" "head.ry";
connectAttr "head_parentConstraint1.crz" "head.rz";
connectAttr "head.s" "head_end.is";
connectAttr "head.s" "joint1.is";
connectAttr "joint1_parentConstraint1.ctx" "joint1.tx";
connectAttr "joint1_parentConstraint1.cty" "joint1.ty";
connectAttr "joint1_parentConstraint1.ctz" "joint1.tz";
connectAttr "joint1_parentConstraint1.crx" "joint1.rx";
connectAttr "joint1_parentConstraint1.cry" "joint1.ry";
connectAttr "joint1_parentConstraint1.crz" "joint1.rz";
connectAttr "joint1.ro" "joint1_parentConstraint1.cro";
connectAttr "joint1.pim" "joint1_parentConstraint1.cpim";
connectAttr "joint1.rp" "joint1_parentConstraint1.crp";
connectAttr "joint1.rpt" "joint1_parentConstraint1.crt";
connectAttr "joint1.jo" "joint1_parentConstraint1.cjo";
connectAttr "nurbsCircle14.t" "joint1_parentConstraint1.tg[0].tt";
connectAttr "nurbsCircle14.rp" "joint1_parentConstraint1.tg[0].trp";
connectAttr "nurbsCircle14.rpt" "joint1_parentConstraint1.tg[0].trt";
connectAttr "nurbsCircle14.r" "joint1_parentConstraint1.tg[0].tr";
connectAttr "nurbsCircle14.ro" "joint1_parentConstraint1.tg[0].tro";
connectAttr "nurbsCircle14.s" "joint1_parentConstraint1.tg[0].ts";
connectAttr "nurbsCircle14.pm" "joint1_parentConstraint1.tg[0].tpm";
connectAttr "joint1_parentConstraint1.w0" "joint1_parentConstraint1.tg[0].tw";
connectAttr "head.ro" "head_parentConstraint1.cro";
connectAttr "head.pim" "head_parentConstraint1.cpim";
connectAttr "head.rp" "head_parentConstraint1.crp";
connectAttr "head.rpt" "head_parentConstraint1.crt";
connectAttr "head.jo" "head_parentConstraint1.cjo";
connectAttr "nurbsCircle8.t" "head_parentConstraint1.tg[0].tt";
connectAttr "nurbsCircle8.rp" "head_parentConstraint1.tg[0].trp";
connectAttr "nurbsCircle8.rpt" "head_parentConstraint1.tg[0].trt";
connectAttr "nurbsCircle8.r" "head_parentConstraint1.tg[0].tr";
connectAttr "nurbsCircle8.ro" "head_parentConstraint1.tg[0].tro";
connectAttr "nurbsCircle8.s" "head_parentConstraint1.tg[0].ts";
connectAttr "nurbsCircle8.pm" "head_parentConstraint1.tg[0].tpm";
connectAttr "head_parentConstraint1.w0" "head_parentConstraint1.tg[0].tw";
connectAttr "neck.s" "musubime.is";
connectAttr "musubime.s" "L_sukafu01.is";
connectAttr "L_sukafu01_parentConstraint1.ctx" "L_sukafu01.tx";
connectAttr "L_sukafu01_parentConstraint1.cty" "L_sukafu01.ty";
connectAttr "L_sukafu01_parentConstraint1.ctz" "L_sukafu01.tz";
connectAttr "L_sukafu01_parentConstraint1.crx" "L_sukafu01.rx";
connectAttr "L_sukafu01_parentConstraint1.cry" "L_sukafu01.ry";
connectAttr "L_sukafu01_parentConstraint1.crz" "L_sukafu01.rz";
connectAttr "L_sukafu01.s" "L_sukafu02.is";
connectAttr "L_sukafu02.s" "L_sukafu03.is";
connectAttr "L_sukafu03.s" "L_sukafu04.is";
connectAttr "L_sukafu04.s" "L_sukafu_end.is";
connectAttr "L_sukafu01.ro" "L_sukafu01_parentConstraint1.cro";
connectAttr "L_sukafu01.pim" "L_sukafu01_parentConstraint1.cpim";
connectAttr "L_sukafu01.rp" "L_sukafu01_parentConstraint1.crp";
connectAttr "L_sukafu01.rpt" "L_sukafu01_parentConstraint1.crt";
connectAttr "L_sukafu01.jo" "L_sukafu01_parentConstraint1.cjo";
connectAttr "nurbsCircle15.t" "L_sukafu01_parentConstraint1.tg[0].tt";
connectAttr "nurbsCircle15.rp" "L_sukafu01_parentConstraint1.tg[0].trp";
connectAttr "nurbsCircle15.rpt" "L_sukafu01_parentConstraint1.tg[0].trt";
connectAttr "nurbsCircle15.r" "L_sukafu01_parentConstraint1.tg[0].tr";
connectAttr "nurbsCircle15.ro" "L_sukafu01_parentConstraint1.tg[0].tro";
connectAttr "nurbsCircle15.s" "L_sukafu01_parentConstraint1.tg[0].ts";
connectAttr "nurbsCircle15.pm" "L_sukafu01_parentConstraint1.tg[0].tpm";
connectAttr "L_sukafu01_parentConstraint1.w0" "L_sukafu01_parentConstraint1.tg[0].tw"
		;
connectAttr "musubime.s" "R_sukafu01.is";
connectAttr "R_sukafu01_parentConstraint1.ctx" "R_sukafu01.tx";
connectAttr "R_sukafu01_parentConstraint1.cty" "R_sukafu01.ty";
connectAttr "R_sukafu01_parentConstraint1.ctz" "R_sukafu01.tz";
connectAttr "R_sukafu01_parentConstraint1.crx" "R_sukafu01.rx";
connectAttr "R_sukafu01_parentConstraint1.cry" "R_sukafu01.ry";
connectAttr "R_sukafu01_parentConstraint1.crz" "R_sukafu01.rz";
connectAttr "R_sukafu01.s" "R_sukafu02.is";
connectAttr "R_sukafu02.s" "R_sukafu03.is";
connectAttr "R_sukafu03.s" "R_sukafu04.is";
connectAttr "R_sukafu04.s" "R_sukafu_end.is";
connectAttr "R_sukafu01.ro" "R_sukafu01_parentConstraint1.cro";
connectAttr "R_sukafu01.pim" "R_sukafu01_parentConstraint1.cpim";
connectAttr "R_sukafu01.rp" "R_sukafu01_parentConstraint1.crp";
connectAttr "R_sukafu01.rpt" "R_sukafu01_parentConstraint1.crt";
connectAttr "R_sukafu01.jo" "R_sukafu01_parentConstraint1.cjo";
connectAttr "nurbsCircle16.t" "R_sukafu01_parentConstraint1.tg[0].tt";
connectAttr "nurbsCircle16.rp" "R_sukafu01_parentConstraint1.tg[0].trp";
connectAttr "nurbsCircle16.rpt" "R_sukafu01_parentConstraint1.tg[0].trt";
connectAttr "nurbsCircle16.r" "R_sukafu01_parentConstraint1.tg[0].tr";
connectAttr "nurbsCircle16.ro" "R_sukafu01_parentConstraint1.tg[0].tro";
connectAttr "nurbsCircle16.s" "R_sukafu01_parentConstraint1.tg[0].ts";
connectAttr "nurbsCircle16.pm" "R_sukafu01_parentConstraint1.tg[0].tpm";
connectAttr "R_sukafu01_parentConstraint1.w0" "R_sukafu01_parentConstraint1.tg[0].tw"
		;
connectAttr "born02.s" "L_kata.is";
connectAttr "L_kata_parentConstraint1.ctx" "L_kata.tx";
connectAttr "L_kata_parentConstraint1.cty" "L_kata.ty";
connectAttr "L_kata_parentConstraint1.ctz" "L_kata.tz";
connectAttr "L_kata_parentConstraint1.crx" "L_kata.rx";
connectAttr "L_kata_parentConstraint1.cry" "L_kata.ry";
connectAttr "L_kata_parentConstraint1.crz" "L_kata.rz";
connectAttr "L_kata.s" "L_ude01.is";
connectAttr "L_ude01_parentConstraint1.ctx" "L_ude01.tx";
connectAttr "L_ude01_parentConstraint1.cty" "L_ude01.ty";
connectAttr "L_ude01_parentConstraint1.ctz" "L_ude01.tz";
connectAttr "L_ude01_parentConstraint1.crx" "L_ude01.rx";
connectAttr "L_ude01_parentConstraint1.cry" "L_ude01.ry";
connectAttr "L_ude01_parentConstraint1.crz" "L_ude01.rz";
connectAttr "L_ude01.s" "L_ude02.is";
connectAttr "L_ude02_parentConstraint1.ctx" "L_ude02.tx";
connectAttr "L_ude02_parentConstraint1.cty" "L_ude02.ty";
connectAttr "L_ude02_parentConstraint1.ctz" "L_ude02.tz";
connectAttr "L_ude02_parentConstraint1.crx" "L_ude02.rx";
connectAttr "L_ude02_parentConstraint1.cry" "L_ude02.ry";
connectAttr "L_ude02_parentConstraint1.crz" "L_ude02.rz";
connectAttr "L_ude02.s" "L_hand.is";
connectAttr "L_hand_parentConstraint1.ctx" "L_hand.tx";
connectAttr "L_hand_parentConstraint1.cty" "L_hand.ty";
connectAttr "L_hand_parentConstraint1.ctz" "L_hand.tz";
connectAttr "L_hand_parentConstraint1.crx" "L_hand.rx";
connectAttr "L_hand_parentConstraint1.cry" "L_hand.ry";
connectAttr "L_hand_parentConstraint1.crz" "L_hand.rz";
connectAttr "L_hand.s" "L_hand_end.is";
connectAttr "L_hand.ro" "L_hand_parentConstraint1.cro";
connectAttr "L_hand.pim" "L_hand_parentConstraint1.cpim";
connectAttr "L_hand.rp" "L_hand_parentConstraint1.crp";
connectAttr "L_hand.rpt" "L_hand_parentConstraint1.crt";
connectAttr "L_hand.jo" "L_hand_parentConstraint1.cjo";
connectAttr "|nurbsCircle5|nurbsCircle6|nurbsCircle7|nurbsCircle9|nurbsCircle10|nurbsCircle11|nurbsCircle12.t" "L_hand_parentConstraint1.tg[0].tt"
		;
connectAttr "|nurbsCircle5|nurbsCircle6|nurbsCircle7|nurbsCircle9|nurbsCircle10|nurbsCircle11|nurbsCircle12.rp" "L_hand_parentConstraint1.tg[0].trp"
		;
connectAttr "|nurbsCircle5|nurbsCircle6|nurbsCircle7|nurbsCircle9|nurbsCircle10|nurbsCircle11|nurbsCircle12.rpt" "L_hand_parentConstraint1.tg[0].trt"
		;
connectAttr "|nurbsCircle5|nurbsCircle6|nurbsCircle7|nurbsCircle9|nurbsCircle10|nurbsCircle11|nurbsCircle12.r" "L_hand_parentConstraint1.tg[0].tr"
		;
connectAttr "|nurbsCircle5|nurbsCircle6|nurbsCircle7|nurbsCircle9|nurbsCircle10|nurbsCircle11|nurbsCircle12.ro" "L_hand_parentConstraint1.tg[0].tro"
		;
connectAttr "|nurbsCircle5|nurbsCircle6|nurbsCircle7|nurbsCircle9|nurbsCircle10|nurbsCircle11|nurbsCircle12.s" "L_hand_parentConstraint1.tg[0].ts"
		;
connectAttr "|nurbsCircle5|nurbsCircle6|nurbsCircle7|nurbsCircle9|nurbsCircle10|nurbsCircle11|nurbsCircle12.pm" "L_hand_parentConstraint1.tg[0].tpm"
		;
connectAttr "L_hand_parentConstraint1.w0" "L_hand_parentConstraint1.tg[0].tw";
connectAttr "L_ude02.ro" "L_ude02_parentConstraint1.cro";
connectAttr "L_ude02.pim" "L_ude02_parentConstraint1.cpim";
connectAttr "L_ude02.rp" "L_ude02_parentConstraint1.crp";
connectAttr "L_ude02.rpt" "L_ude02_parentConstraint1.crt";
connectAttr "L_ude02.jo" "L_ude02_parentConstraint1.cjo";
connectAttr "|nurbsCircle5|nurbsCircle6|nurbsCircle7|nurbsCircle9|nurbsCircle10|nurbsCircle11.t" "L_ude02_parentConstraint1.tg[0].tt"
		;
connectAttr "|nurbsCircle5|nurbsCircle6|nurbsCircle7|nurbsCircle9|nurbsCircle10|nurbsCircle11.rp" "L_ude02_parentConstraint1.tg[0].trp"
		;
connectAttr "|nurbsCircle5|nurbsCircle6|nurbsCircle7|nurbsCircle9|nurbsCircle10|nurbsCircle11.rpt" "L_ude02_parentConstraint1.tg[0].trt"
		;
connectAttr "|nurbsCircle5|nurbsCircle6|nurbsCircle7|nurbsCircle9|nurbsCircle10|nurbsCircle11.r" "L_ude02_parentConstraint1.tg[0].tr"
		;
connectAttr "|nurbsCircle5|nurbsCircle6|nurbsCircle7|nurbsCircle9|nurbsCircle10|nurbsCircle11.ro" "L_ude02_parentConstraint1.tg[0].tro"
		;
connectAttr "|nurbsCircle5|nurbsCircle6|nurbsCircle7|nurbsCircle9|nurbsCircle10|nurbsCircle11.s" "L_ude02_parentConstraint1.tg[0].ts"
		;
connectAttr "|nurbsCircle5|nurbsCircle6|nurbsCircle7|nurbsCircle9|nurbsCircle10|nurbsCircle11.pm" "L_ude02_parentConstraint1.tg[0].tpm"
		;
connectAttr "L_ude02_parentConstraint1.w0" "L_ude02_parentConstraint1.tg[0].tw";
connectAttr "L_ude01.ro" "L_ude01_parentConstraint1.cro";
connectAttr "L_ude01.pim" "L_ude01_parentConstraint1.cpim";
connectAttr "L_ude01.rp" "L_ude01_parentConstraint1.crp";
connectAttr "L_ude01.rpt" "L_ude01_parentConstraint1.crt";
connectAttr "L_ude01.jo" "L_ude01_parentConstraint1.cjo";
connectAttr "|nurbsCircle5|nurbsCircle6|nurbsCircle7|nurbsCircle9|nurbsCircle10.t" "L_ude01_parentConstraint1.tg[0].tt"
		;
connectAttr "|nurbsCircle5|nurbsCircle6|nurbsCircle7|nurbsCircle9|nurbsCircle10.rp" "L_ude01_parentConstraint1.tg[0].trp"
		;
connectAttr "|nurbsCircle5|nurbsCircle6|nurbsCircle7|nurbsCircle9|nurbsCircle10.rpt" "L_ude01_parentConstraint1.tg[0].trt"
		;
connectAttr "|nurbsCircle5|nurbsCircle6|nurbsCircle7|nurbsCircle9|nurbsCircle10.r" "L_ude01_parentConstraint1.tg[0].tr"
		;
connectAttr "|nurbsCircle5|nurbsCircle6|nurbsCircle7|nurbsCircle9|nurbsCircle10.ro" "L_ude01_parentConstraint1.tg[0].tro"
		;
connectAttr "|nurbsCircle5|nurbsCircle6|nurbsCircle7|nurbsCircle9|nurbsCircle10.s" "L_ude01_parentConstraint1.tg[0].ts"
		;
connectAttr "|nurbsCircle5|nurbsCircle6|nurbsCircle7|nurbsCircle9|nurbsCircle10.pm" "L_ude01_parentConstraint1.tg[0].tpm"
		;
connectAttr "L_ude01_parentConstraint1.w0" "L_ude01_parentConstraint1.tg[0].tw";
connectAttr "L_kata.ro" "L_kata_parentConstraint1.cro";
connectAttr "L_kata.pim" "L_kata_parentConstraint1.cpim";
connectAttr "L_kata.rp" "L_kata_parentConstraint1.crp";
connectAttr "L_kata.rpt" "L_kata_parentConstraint1.crt";
connectAttr "L_kata.jo" "L_kata_parentConstraint1.cjo";
connectAttr "nurbsCircle9.t" "L_kata_parentConstraint1.tg[0].tt";
connectAttr "nurbsCircle9.rp" "L_kata_parentConstraint1.tg[0].trp";
connectAttr "nurbsCircle9.rpt" "L_kata_parentConstraint1.tg[0].trt";
connectAttr "nurbsCircle9.r" "L_kata_parentConstraint1.tg[0].tr";
connectAttr "nurbsCircle9.ro" "L_kata_parentConstraint1.tg[0].tro";
connectAttr "nurbsCircle9.s" "L_kata_parentConstraint1.tg[0].ts";
connectAttr "nurbsCircle9.pm" "L_kata_parentConstraint1.tg[0].tpm";
connectAttr "L_kata_parentConstraint1.w0" "L_kata_parentConstraint1.tg[0].tw";
connectAttr "born02.s" "R_kata.is";
connectAttr "R_kata_parentConstraint1.ctx" "R_kata.tx";
connectAttr "R_kata_parentConstraint1.cty" "R_kata.ty";
connectAttr "R_kata_parentConstraint1.ctz" "R_kata.tz";
connectAttr "R_kata_parentConstraint1.crx" "R_kata.rx";
connectAttr "R_kata_parentConstraint1.cry" "R_kata.ry";
connectAttr "R_kata_parentConstraint1.crz" "R_kata.rz";
connectAttr "R_kata.s" "R_ude01.is";
connectAttr "R_ude01_parentConstraint1.ctx" "R_ude01.tx";
connectAttr "R_ude01_parentConstraint1.cty" "R_ude01.ty";
connectAttr "R_ude01_parentConstraint1.ctz" "R_ude01.tz";
connectAttr "R_ude01_parentConstraint1.crx" "R_ude01.rx";
connectAttr "R_ude01_parentConstraint1.cry" "R_ude01.ry";
connectAttr "R_ude01_parentConstraint1.crz" "R_ude01.rz";
connectAttr "R_ude01.s" "R_ude02.is";
connectAttr "R_ude02_parentConstraint1.ctx" "R_ude02.tx";
connectAttr "R_ude02_parentConstraint1.cty" "R_ude02.ty";
connectAttr "R_ude02_parentConstraint1.ctz" "R_ude02.tz";
connectAttr "R_ude02_parentConstraint1.crx" "R_ude02.rx";
connectAttr "R_ude02_parentConstraint1.cry" "R_ude02.ry";
connectAttr "R_ude02_parentConstraint1.crz" "R_ude02.rz";
connectAttr "R_ude02.s" "R_hand.is";
connectAttr "R_hand_parentConstraint1.ctx" "R_hand.tx";
connectAttr "R_hand_parentConstraint1.cty" "R_hand.ty";
connectAttr "R_hand_parentConstraint1.ctz" "R_hand.tz";
connectAttr "R_hand_parentConstraint1.crx" "R_hand.rx";
connectAttr "R_hand_parentConstraint1.cry" "R_hand.ry";
connectAttr "R_hand_parentConstraint1.crz" "R_hand.rz";
connectAttr "R_hand.s" "R_hand_end.is";
connectAttr "R_hand.ro" "R_hand_parentConstraint1.cro";
connectAttr "R_hand.pim" "R_hand_parentConstraint1.cpim";
connectAttr "R_hand.rp" "R_hand_parentConstraint1.crp";
connectAttr "R_hand.rpt" "R_hand_parentConstraint1.crt";
connectAttr "R_hand.jo" "R_hand_parentConstraint1.cjo";
connectAttr "|nurbsCircle5|nurbsCircle6|nurbsCircle7|nurbsCircle17|nurbsCircle10|nurbsCircle11|nurbsCircle12.t" "R_hand_parentConstraint1.tg[0].tt"
		;
connectAttr "|nurbsCircle5|nurbsCircle6|nurbsCircle7|nurbsCircle17|nurbsCircle10|nurbsCircle11|nurbsCircle12.rp" "R_hand_parentConstraint1.tg[0].trp"
		;
connectAttr "|nurbsCircle5|nurbsCircle6|nurbsCircle7|nurbsCircle17|nurbsCircle10|nurbsCircle11|nurbsCircle12.rpt" "R_hand_parentConstraint1.tg[0].trt"
		;
connectAttr "|nurbsCircle5|nurbsCircle6|nurbsCircle7|nurbsCircle17|nurbsCircle10|nurbsCircle11|nurbsCircle12.r" "R_hand_parentConstraint1.tg[0].tr"
		;
connectAttr "|nurbsCircle5|nurbsCircle6|nurbsCircle7|nurbsCircle17|nurbsCircle10|nurbsCircle11|nurbsCircle12.ro" "R_hand_parentConstraint1.tg[0].tro"
		;
connectAttr "|nurbsCircle5|nurbsCircle6|nurbsCircle7|nurbsCircle17|nurbsCircle10|nurbsCircle11|nurbsCircle12.s" "R_hand_parentConstraint1.tg[0].ts"
		;
connectAttr "|nurbsCircle5|nurbsCircle6|nurbsCircle7|nurbsCircle17|nurbsCircle10|nurbsCircle11|nurbsCircle12.pm" "R_hand_parentConstraint1.tg[0].tpm"
		;
connectAttr "R_hand_parentConstraint1.w0" "R_hand_parentConstraint1.tg[0].tw";
connectAttr "R_ude02.ro" "R_ude02_parentConstraint1.cro";
connectAttr "R_ude02.pim" "R_ude02_parentConstraint1.cpim";
connectAttr "R_ude02.rp" "R_ude02_parentConstraint1.crp";
connectAttr "R_ude02.rpt" "R_ude02_parentConstraint1.crt";
connectAttr "R_ude02.jo" "R_ude02_parentConstraint1.cjo";
connectAttr "|nurbsCircle5|nurbsCircle6|nurbsCircle7|nurbsCircle17|nurbsCircle10|nurbsCircle11.t" "R_ude02_parentConstraint1.tg[0].tt"
		;
connectAttr "|nurbsCircle5|nurbsCircle6|nurbsCircle7|nurbsCircle17|nurbsCircle10|nurbsCircle11.rp" "R_ude02_parentConstraint1.tg[0].trp"
		;
connectAttr "|nurbsCircle5|nurbsCircle6|nurbsCircle7|nurbsCircle17|nurbsCircle10|nurbsCircle11.rpt" "R_ude02_parentConstraint1.tg[0].trt"
		;
connectAttr "|nurbsCircle5|nurbsCircle6|nurbsCircle7|nurbsCircle17|nurbsCircle10|nurbsCircle11.r" "R_ude02_parentConstraint1.tg[0].tr"
		;
connectAttr "|nurbsCircle5|nurbsCircle6|nurbsCircle7|nurbsCircle17|nurbsCircle10|nurbsCircle11.ro" "R_ude02_parentConstraint1.tg[0].tro"
		;
connectAttr "|nurbsCircle5|nurbsCircle6|nurbsCircle7|nurbsCircle17|nurbsCircle10|nurbsCircle11.s" "R_ude02_parentConstraint1.tg[0].ts"
		;
connectAttr "|nurbsCircle5|nurbsCircle6|nurbsCircle7|nurbsCircle17|nurbsCircle10|nurbsCircle11.pm" "R_ude02_parentConstraint1.tg[0].tpm"
		;
connectAttr "R_ude02_parentConstraint1.w0" "R_ude02_parentConstraint1.tg[0].tw";
connectAttr "R_ude01.ro" "R_ude01_parentConstraint1.cro";
connectAttr "R_ude01.pim" "R_ude01_parentConstraint1.cpim";
connectAttr "R_ude01.rp" "R_ude01_parentConstraint1.crp";
connectAttr "R_ude01.rpt" "R_ude01_parentConstraint1.crt";
connectAttr "R_ude01.jo" "R_ude01_parentConstraint1.cjo";
connectAttr "|nurbsCircle5|nurbsCircle6|nurbsCircle7|nurbsCircle17|nurbsCircle10.t" "R_ude01_parentConstraint1.tg[0].tt"
		;
connectAttr "|nurbsCircle5|nurbsCircle6|nurbsCircle7|nurbsCircle17|nurbsCircle10.rp" "R_ude01_parentConstraint1.tg[0].trp"
		;
connectAttr "|nurbsCircle5|nurbsCircle6|nurbsCircle7|nurbsCircle17|nurbsCircle10.rpt" "R_ude01_parentConstraint1.tg[0].trt"
		;
connectAttr "|nurbsCircle5|nurbsCircle6|nurbsCircle7|nurbsCircle17|nurbsCircle10.r" "R_ude01_parentConstraint1.tg[0].tr"
		;
connectAttr "|nurbsCircle5|nurbsCircle6|nurbsCircle7|nurbsCircle17|nurbsCircle10.ro" "R_ude01_parentConstraint1.tg[0].tro"
		;
connectAttr "|nurbsCircle5|nurbsCircle6|nurbsCircle7|nurbsCircle17|nurbsCircle10.s" "R_ude01_parentConstraint1.tg[0].ts"
		;
connectAttr "|nurbsCircle5|nurbsCircle6|nurbsCircle7|nurbsCircle17|nurbsCircle10.pm" "R_ude01_parentConstraint1.tg[0].tpm"
		;
connectAttr "R_ude01_parentConstraint1.w0" "R_ude01_parentConstraint1.tg[0].tw";
connectAttr "R_kata.ro" "R_kata_parentConstraint1.cro";
connectAttr "R_kata.pim" "R_kata_parentConstraint1.cpim";
connectAttr "R_kata.rp" "R_kata_parentConstraint1.crp";
connectAttr "R_kata.rpt" "R_kata_parentConstraint1.crt";
connectAttr "R_kata.jo" "R_kata_parentConstraint1.cjo";
connectAttr "nurbsCircle17.t" "R_kata_parentConstraint1.tg[0].tt";
connectAttr "nurbsCircle17.rp" "R_kata_parentConstraint1.tg[0].trp";
connectAttr "nurbsCircle17.rpt" "R_kata_parentConstraint1.tg[0].trt";
connectAttr "nurbsCircle17.r" "R_kata_parentConstraint1.tg[0].tr";
connectAttr "nurbsCircle17.ro" "R_kata_parentConstraint1.tg[0].tro";
connectAttr "nurbsCircle17.s" "R_kata_parentConstraint1.tg[0].ts";
connectAttr "nurbsCircle17.pm" "R_kata_parentConstraint1.tg[0].tpm";
connectAttr "R_kata_parentConstraint1.w0" "R_kata_parentConstraint1.tg[0].tw";
connectAttr "born02.ro" "born02_parentConstraint1.cro";
connectAttr "born02.pim" "born02_parentConstraint1.cpim";
connectAttr "born02.rp" "born02_parentConstraint1.crp";
connectAttr "born02.rpt" "born02_parentConstraint1.crt";
connectAttr "born02.jo" "born02_parentConstraint1.cjo";
connectAttr "nurbsCircle7.t" "born02_parentConstraint1.tg[0].tt";
connectAttr "nurbsCircle7.rp" "born02_parentConstraint1.tg[0].trp";
connectAttr "nurbsCircle7.rpt" "born02_parentConstraint1.tg[0].trt";
connectAttr "nurbsCircle7.r" "born02_parentConstraint1.tg[0].tr";
connectAttr "nurbsCircle7.ro" "born02_parentConstraint1.tg[0].tro";
connectAttr "nurbsCircle7.s" "born02_parentConstraint1.tg[0].ts";
connectAttr "nurbsCircle7.pm" "born02_parentConstraint1.tg[0].tpm";
connectAttr "born02_parentConstraint1.w0" "born02_parentConstraint1.tg[0].tw";
connectAttr "born01.ro" "born01_parentConstraint1.cro";
connectAttr "born01.pim" "born01_parentConstraint1.cpim";
connectAttr "born01.rp" "born01_parentConstraint1.crp";
connectAttr "born01.rpt" "born01_parentConstraint1.crt";
connectAttr "born01.jo" "born01_parentConstraint1.cjo";
connectAttr "nurbsCircle6.t" "born01_parentConstraint1.tg[0].tt";
connectAttr "nurbsCircle6.rp" "born01_parentConstraint1.tg[0].trp";
connectAttr "nurbsCircle6.rpt" "born01_parentConstraint1.tg[0].trt";
connectAttr "nurbsCircle6.r" "born01_parentConstraint1.tg[0].tr";
connectAttr "nurbsCircle6.ro" "born01_parentConstraint1.tg[0].tro";
connectAttr "nurbsCircle6.s" "born01_parentConstraint1.tg[0].ts";
connectAttr "nurbsCircle6.pm" "born01_parentConstraint1.tg[0].tpm";
connectAttr "born01_parentConstraint1.w0" "born01_parentConstraint1.tg[0].tw";
connectAttr "kotuban.s" "R_reg01.is";
connectAttr "R_reg01_parentConstraint1.ctx" "R_reg01.tx";
connectAttr "R_reg01_parentConstraint1.cty" "R_reg01.ty";
connectAttr "R_reg01_parentConstraint1.ctz" "R_reg01.tz";
connectAttr "R_reg01_parentConstraint1.crx" "R_reg01.rx";
connectAttr "R_reg01_parentConstraint1.cry" "R_reg01.ry";
connectAttr "R_reg01_parentConstraint1.crz" "R_reg01.rz";
connectAttr "R_reg01.s" "R_reg02.is";
connectAttr "R_reg02_parentConstraint1.ctx" "R_reg02.tx";
connectAttr "R_reg02_parentConstraint1.cty" "R_reg02.ty";
connectAttr "R_reg02_parentConstraint1.ctz" "R_reg02.tz";
connectAttr "R_reg02_parentConstraint1.crx" "R_reg02.rx";
connectAttr "R_reg02_parentConstraint1.cry" "R_reg02.ry";
connectAttr "R_reg02_parentConstraint1.crz" "R_reg02.rz";
connectAttr "R_reg02.s" "R_foot.is";
connectAttr "R_foot_parentConstraint1.ctx" "R_foot.tx";
connectAttr "R_foot_parentConstraint1.cty" "R_foot.ty";
connectAttr "R_foot_parentConstraint1.ctz" "R_foot.tz";
connectAttr "R_foot_parentConstraint1.crx" "R_foot.rx";
connectAttr "R_foot_parentConstraint1.cry" "R_foot.ry";
connectAttr "R_foot_parentConstraint1.crz" "R_foot.rz";
connectAttr "R_foot.s" "R_footfinger.is";
connectAttr "R_footfinger_parentConstraint1.ctx" "R_footfinger.tx";
connectAttr "R_footfinger_parentConstraint1.cty" "R_footfinger.ty";
connectAttr "R_footfinger_parentConstraint1.ctz" "R_footfinger.tz";
connectAttr "R_footfinger_parentConstraint1.crx" "R_footfinger.rx";
connectAttr "R_footfinger_parentConstraint1.cry" "R_footfinger.ry";
connectAttr "R_footfinger_parentConstraint1.crz" "R_footfinger.rz";
connectAttr "R_footfinger.s" "R_footfinger_end.is";
connectAttr "R_footfinger.ro" "R_footfinger_parentConstraint1.cro";
connectAttr "R_footfinger.pim" "R_footfinger_parentConstraint1.cpim";
connectAttr "R_footfinger.rp" "R_footfinger_parentConstraint1.crp";
connectAttr "R_footfinger.rpt" "R_footfinger_parentConstraint1.crt";
connectAttr "R_footfinger.jo" "R_footfinger_parentConstraint1.cjo";
connectAttr "|nurbsCircle5|nurbsCircle18|nurbsCircle2|nurbsCircle3|nurbsCircle4.t" "R_footfinger_parentConstraint1.tg[0].tt"
		;
connectAttr "|nurbsCircle5|nurbsCircle18|nurbsCircle2|nurbsCircle3|nurbsCircle4.rp" "R_footfinger_parentConstraint1.tg[0].trp"
		;
connectAttr "|nurbsCircle5|nurbsCircle18|nurbsCircle2|nurbsCircle3|nurbsCircle4.rpt" "R_footfinger_parentConstraint1.tg[0].trt"
		;
connectAttr "|nurbsCircle5|nurbsCircle18|nurbsCircle2|nurbsCircle3|nurbsCircle4.r" "R_footfinger_parentConstraint1.tg[0].tr"
		;
connectAttr "|nurbsCircle5|nurbsCircle18|nurbsCircle2|nurbsCircle3|nurbsCircle4.ro" "R_footfinger_parentConstraint1.tg[0].tro"
		;
connectAttr "|nurbsCircle5|nurbsCircle18|nurbsCircle2|nurbsCircle3|nurbsCircle4.s" "R_footfinger_parentConstraint1.tg[0].ts"
		;
connectAttr "|nurbsCircle5|nurbsCircle18|nurbsCircle2|nurbsCircle3|nurbsCircle4.pm" "R_footfinger_parentConstraint1.tg[0].tpm"
		;
connectAttr "R_footfinger_parentConstraint1.w0" "R_footfinger_parentConstraint1.tg[0].tw"
		;
connectAttr "R_foot.ro" "R_foot_parentConstraint1.cro";
connectAttr "R_foot.pim" "R_foot_parentConstraint1.cpim";
connectAttr "R_foot.rp" "R_foot_parentConstraint1.crp";
connectAttr "R_foot.rpt" "R_foot_parentConstraint1.crt";
connectAttr "R_foot.jo" "R_foot_parentConstraint1.cjo";
connectAttr "|nurbsCircle5|nurbsCircle18|nurbsCircle2|nurbsCircle3.t" "R_foot_parentConstraint1.tg[0].tt"
		;
connectAttr "|nurbsCircle5|nurbsCircle18|nurbsCircle2|nurbsCircle3.rp" "R_foot_parentConstraint1.tg[0].trp"
		;
connectAttr "|nurbsCircle5|nurbsCircle18|nurbsCircle2|nurbsCircle3.rpt" "R_foot_parentConstraint1.tg[0].trt"
		;
connectAttr "|nurbsCircle5|nurbsCircle18|nurbsCircle2|nurbsCircle3.r" "R_foot_parentConstraint1.tg[0].tr"
		;
connectAttr "|nurbsCircle5|nurbsCircle18|nurbsCircle2|nurbsCircle3.ro" "R_foot_parentConstraint1.tg[0].tro"
		;
connectAttr "|nurbsCircle5|nurbsCircle18|nurbsCircle2|nurbsCircle3.s" "R_foot_parentConstraint1.tg[0].ts"
		;
connectAttr "|nurbsCircle5|nurbsCircle18|nurbsCircle2|nurbsCircle3.pm" "R_foot_parentConstraint1.tg[0].tpm"
		;
connectAttr "R_foot_parentConstraint1.w0" "R_foot_parentConstraint1.tg[0].tw";
connectAttr "R_reg02.ro" "R_reg02_parentConstraint1.cro";
connectAttr "R_reg02.pim" "R_reg02_parentConstraint1.cpim";
connectAttr "R_reg02.rp" "R_reg02_parentConstraint1.crp";
connectAttr "R_reg02.rpt" "R_reg02_parentConstraint1.crt";
connectAttr "R_reg02.jo" "R_reg02_parentConstraint1.cjo";
connectAttr "|nurbsCircle5|nurbsCircle18|nurbsCircle2.t" "R_reg02_parentConstraint1.tg[0].tt"
		;
connectAttr "|nurbsCircle5|nurbsCircle18|nurbsCircle2.rp" "R_reg02_parentConstraint1.tg[0].trp"
		;
connectAttr "|nurbsCircle5|nurbsCircle18|nurbsCircle2.rpt" "R_reg02_parentConstraint1.tg[0].trt"
		;
connectAttr "|nurbsCircle5|nurbsCircle18|nurbsCircle2.r" "R_reg02_parentConstraint1.tg[0].tr"
		;
connectAttr "|nurbsCircle5|nurbsCircle18|nurbsCircle2.ro" "R_reg02_parentConstraint1.tg[0].tro"
		;
connectAttr "|nurbsCircle5|nurbsCircle18|nurbsCircle2.s" "R_reg02_parentConstraint1.tg[0].ts"
		;
connectAttr "|nurbsCircle5|nurbsCircle18|nurbsCircle2.pm" "R_reg02_parentConstraint1.tg[0].tpm"
		;
connectAttr "R_reg02_parentConstraint1.w0" "R_reg02_parentConstraint1.tg[0].tw";
connectAttr "R_reg01.ro" "R_reg01_parentConstraint1.cro";
connectAttr "R_reg01.pim" "R_reg01_parentConstraint1.cpim";
connectAttr "R_reg01.rp" "R_reg01_parentConstraint1.crp";
connectAttr "R_reg01.rpt" "R_reg01_parentConstraint1.crt";
connectAttr "R_reg01.jo" "R_reg01_parentConstraint1.cjo";
connectAttr "nurbsCircle18.t" "R_reg01_parentConstraint1.tg[0].tt";
connectAttr "nurbsCircle18.rp" "R_reg01_parentConstraint1.tg[0].trp";
connectAttr "nurbsCircle18.rpt" "R_reg01_parentConstraint1.tg[0].trt";
connectAttr "nurbsCircle18.r" "R_reg01_parentConstraint1.tg[0].tr";
connectAttr "nurbsCircle18.ro" "R_reg01_parentConstraint1.tg[0].tro";
connectAttr "nurbsCircle18.s" "R_reg01_parentConstraint1.tg[0].ts";
connectAttr "nurbsCircle18.pm" "R_reg01_parentConstraint1.tg[0].tpm";
connectAttr "R_reg01_parentConstraint1.w0" "R_reg01_parentConstraint1.tg[0].tw";
connectAttr "kotuban.s" "o.is";
connectAttr "o_parentConstraint1.ctx" "o.tx";
connectAttr "o_parentConstraint1.cty" "o.ty";
connectAttr "o_parentConstraint1.ctz" "o.tz";
connectAttr "o_parentConstraint1.crx" "o.rx";
connectAttr "o_parentConstraint1.cry" "o.ry";
connectAttr "o_parentConstraint1.crz" "o.rz";
connectAttr "o.s" "o_end.is";
connectAttr "o.ro" "o_parentConstraint1.cro";
connectAttr "o.pim" "o_parentConstraint1.cpim";
connectAttr "o.rp" "o_parentConstraint1.crp";
connectAttr "o.rpt" "o_parentConstraint1.crt";
connectAttr "o.jo" "o_parentConstraint1.cjo";
connectAttr "nurbsCircle13.t" "o_parentConstraint1.tg[0].tt";
connectAttr "nurbsCircle13.rp" "o_parentConstraint1.tg[0].trp";
connectAttr "nurbsCircle13.rpt" "o_parentConstraint1.tg[0].trt";
connectAttr "nurbsCircle13.r" "o_parentConstraint1.tg[0].tr";
connectAttr "nurbsCircle13.ro" "o_parentConstraint1.tg[0].tro";
connectAttr "nurbsCircle13.s" "o_parentConstraint1.tg[0].ts";
connectAttr "nurbsCircle13.pm" "o_parentConstraint1.tg[0].tpm";
connectAttr "o_parentConstraint1.w0" "o_parentConstraint1.tg[0].tw";
connectAttr "kotuban.ro" "kotuban_parentConstraint1.cro";
connectAttr "kotuban.pim" "kotuban_parentConstraint1.cpim";
connectAttr "kotuban.rp" "kotuban_parentConstraint1.crp";
connectAttr "kotuban.rpt" "kotuban_parentConstraint1.crt";
connectAttr "kotuban.jo" "kotuban_parentConstraint1.cjo";
connectAttr "nurbsCircle5.t" "kotuban_parentConstraint1.tg[0].tt";
connectAttr "nurbsCircle5.rp" "kotuban_parentConstraint1.tg[0].trp";
connectAttr "nurbsCircle5.rpt" "kotuban_parentConstraint1.tg[0].trt";
connectAttr "nurbsCircle5.r" "kotuban_parentConstraint1.tg[0].tr";
connectAttr "nurbsCircle5.ro" "kotuban_parentConstraint1.tg[0].tro";
connectAttr "nurbsCircle5.s" "kotuban_parentConstraint1.tg[0].ts";
connectAttr "nurbsCircle5.pm" "kotuban_parentConstraint1.tg[0].tpm";
connectAttr "kotuban_parentConstraint1.w0" "kotuban_parentConstraint1.tg[0].tw";
connectAttr "nurbsCircle9_translateX.o" "nurbsCircle9.tx";
connectAttr "nurbsCircle9_translateY.o" "nurbsCircle9.ty";
connectAttr "nurbsCircle9_translateZ.o" "nurbsCircle9.tz";
connectAttr "nurbsCircle9_rotateX.o" "nurbsCircle9.rx";
connectAttr "nurbsCircle9_rotateY.o" "nurbsCircle9.ry";
connectAttr "nurbsCircle9_rotateZ.o" "nurbsCircle9.rz";
connectAttr "nurbsCircle9_scaleX.o" "nurbsCircle9.sx";
connectAttr "nurbsCircle9_scaleY.o" "nurbsCircle9.sy";
connectAttr "nurbsCircle9_scaleZ.o" "nurbsCircle9.sz";
connectAttr "nurbsCircle9_visibility.o" "nurbsCircle9.v";
connectAttr "nurbsCircle10_translateX.o" "|nurbsCircle5|nurbsCircle6|nurbsCircle7|nurbsCircle9|nurbsCircle10.tx"
		;
connectAttr "nurbsCircle10_translateY.o" "|nurbsCircle5|nurbsCircle6|nurbsCircle7|nurbsCircle9|nurbsCircle10.ty"
		;
connectAttr "nurbsCircle10_translateZ.o" "|nurbsCircle5|nurbsCircle6|nurbsCircle7|nurbsCircle9|nurbsCircle10.tz"
		;
connectAttr "nurbsCircle10_rotateX.o" "|nurbsCircle5|nurbsCircle6|nurbsCircle7|nurbsCircle9|nurbsCircle10.rx"
		;
connectAttr "nurbsCircle10_rotateY.o" "|nurbsCircle5|nurbsCircle6|nurbsCircle7|nurbsCircle9|nurbsCircle10.ry"
		;
connectAttr "nurbsCircle10_rotateZ.o" "|nurbsCircle5|nurbsCircle6|nurbsCircle7|nurbsCircle9|nurbsCircle10.rz"
		;
connectAttr "nurbsCircle10_scaleX.o" "|nurbsCircle5|nurbsCircle6|nurbsCircle7|nurbsCircle9|nurbsCircle10.sx"
		;
connectAttr "nurbsCircle10_scaleY.o" "|nurbsCircle5|nurbsCircle6|nurbsCircle7|nurbsCircle9|nurbsCircle10.sy"
		;
connectAttr "nurbsCircle10_scaleZ.o" "|nurbsCircle5|nurbsCircle6|nurbsCircle7|nurbsCircle9|nurbsCircle10.sz"
		;
connectAttr "nurbsCircle10_visibility.o" "|nurbsCircle5|nurbsCircle6|nurbsCircle7|nurbsCircle9|nurbsCircle10.v"
		;
connectAttr "nurbsCircle11_translateX.o" "|nurbsCircle5|nurbsCircle6|nurbsCircle7|nurbsCircle9|nurbsCircle10|nurbsCircle11.tx"
		;
connectAttr "nurbsCircle11_translateY.o" "|nurbsCircle5|nurbsCircle6|nurbsCircle7|nurbsCircle9|nurbsCircle10|nurbsCircle11.ty"
		;
connectAttr "nurbsCircle11_translateZ.o" "|nurbsCircle5|nurbsCircle6|nurbsCircle7|nurbsCircle9|nurbsCircle10|nurbsCircle11.tz"
		;
connectAttr "nurbsCircle11_rotateX.o" "|nurbsCircle5|nurbsCircle6|nurbsCircle7|nurbsCircle9|nurbsCircle10|nurbsCircle11.rx"
		;
connectAttr "nurbsCircle11_rotateY.o" "|nurbsCircle5|nurbsCircle6|nurbsCircle7|nurbsCircle9|nurbsCircle10|nurbsCircle11.ry"
		;
connectAttr "nurbsCircle11_rotateZ.o" "|nurbsCircle5|nurbsCircle6|nurbsCircle7|nurbsCircle9|nurbsCircle10|nurbsCircle11.rz"
		;
connectAttr "nurbsCircle11_scaleX.o" "|nurbsCircle5|nurbsCircle6|nurbsCircle7|nurbsCircle9|nurbsCircle10|nurbsCircle11.sx"
		;
connectAttr "nurbsCircle11_scaleY.o" "|nurbsCircle5|nurbsCircle6|nurbsCircle7|nurbsCircle9|nurbsCircle10|nurbsCircle11.sy"
		;
connectAttr "nurbsCircle11_scaleZ.o" "|nurbsCircle5|nurbsCircle6|nurbsCircle7|nurbsCircle9|nurbsCircle10|nurbsCircle11.sz"
		;
connectAttr "nurbsCircle11_visibility.o" "|nurbsCircle5|nurbsCircle6|nurbsCircle7|nurbsCircle9|nurbsCircle10|nurbsCircle11.v"
		;
connectAttr "nurbsCircle12_translateX.o" "|nurbsCircle5|nurbsCircle6|nurbsCircle7|nurbsCircle9|nurbsCircle10|nurbsCircle11|nurbsCircle12.tx"
		;
connectAttr "nurbsCircle12_translateY.o" "|nurbsCircle5|nurbsCircle6|nurbsCircle7|nurbsCircle9|nurbsCircle10|nurbsCircle11|nurbsCircle12.ty"
		;
connectAttr "nurbsCircle12_translateZ.o" "|nurbsCircle5|nurbsCircle6|nurbsCircle7|nurbsCircle9|nurbsCircle10|nurbsCircle11|nurbsCircle12.tz"
		;
connectAttr "nurbsCircle12_rotateX.o" "|nurbsCircle5|nurbsCircle6|nurbsCircle7|nurbsCircle9|nurbsCircle10|nurbsCircle11|nurbsCircle12.rx"
		;
connectAttr "nurbsCircle12_rotateY.o" "|nurbsCircle5|nurbsCircle6|nurbsCircle7|nurbsCircle9|nurbsCircle10|nurbsCircle11|nurbsCircle12.ry"
		;
connectAttr "nurbsCircle12_rotateZ.o" "|nurbsCircle5|nurbsCircle6|nurbsCircle7|nurbsCircle9|nurbsCircle10|nurbsCircle11|nurbsCircle12.rz"
		;
connectAttr "nurbsCircle12_scaleX.o" "|nurbsCircle5|nurbsCircle6|nurbsCircle7|nurbsCircle9|nurbsCircle10|nurbsCircle11|nurbsCircle12.sx"
		;
connectAttr "nurbsCircle12_scaleY.o" "|nurbsCircle5|nurbsCircle6|nurbsCircle7|nurbsCircle9|nurbsCircle10|nurbsCircle11|nurbsCircle12.sy"
		;
connectAttr "nurbsCircle12_scaleZ.o" "|nurbsCircle5|nurbsCircle6|nurbsCircle7|nurbsCircle9|nurbsCircle10|nurbsCircle11|nurbsCircle12.sz"
		;
connectAttr "nurbsCircle12_visibility.o" "|nurbsCircle5|nurbsCircle6|nurbsCircle7|nurbsCircle9|nurbsCircle10|nurbsCircle11|nurbsCircle12.v"
		;
connectAttr "nurbsCircle13_translateX.o" "nurbsCircle13.tx";
connectAttr "nurbsCircle13_translateY.o" "nurbsCircle13.ty";
connectAttr "nurbsCircle13_translateZ.o" "nurbsCircle13.tz";
connectAttr "nurbsCircle13_rotateX.o" "nurbsCircle13.rx";
connectAttr "nurbsCircle13_rotateY.o" "nurbsCircle13.ry";
connectAttr "nurbsCircle13_rotateZ.o" "nurbsCircle13.rz";
connectAttr "nurbsCircle13_scaleX.o" "nurbsCircle13.sx";
connectAttr "nurbsCircle13_scaleY.o" "nurbsCircle13.sy";
connectAttr "nurbsCircle13_scaleZ.o" "nurbsCircle13.sz";
connectAttr "nurbsCircle13_visibility.o" "nurbsCircle13.v";
connectAttr "heropengin_model_3:layer1.di" "|heropengin_model_3:gide|heropengin_model_3:gide.do"
		;
connectAttr "heropengin_model_3:polySplit11.out" "heropengin_model_3:gideShape.i"
		;
connectAttr "nurbsCircle14.v" "heropengin_model_3:mask1.v";
connectAttr "heropengin_model_3:groupId14.id" "heropengin_model_3:mask1Shape.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "heropengin_model_3:mask1Shape.iog.og[0].gco"
		;
connectAttr "skinCluster2GroupId.id" "mask1ShapeDeformed.iog.og[0].gid";
connectAttr "skinCluster2Set.mwc" "mask1ShapeDeformed.iog.og[0].gco";
connectAttr "groupId5.id" "mask1ShapeDeformed.iog.og[1].gid";
connectAttr "tweakSet2.mwc" "mask1ShapeDeformed.iog.og[1].gco";
connectAttr "groupId6.id" "mask1ShapeDeformed.iog.og[2].gid";
connectAttr ":initialShadingGroup.mwc" "mask1ShapeDeformed.iog.og[2].gco";
connectAttr "groupParts6.og" "mask1ShapeDeformed.i";
connectAttr "tweak2.vl[0].vt[0]" "mask1ShapeDeformed.twl";
connectAttr "groupId7.id" "bodyShapeDeformed.iog.og[2].gid";
connectAttr ":initialShadingGroup.mwc" "bodyShapeDeformed.iog.og[2].gco";
connectAttr "skinCluster3GroupId.id" "bodyShapeDeformed.iog.og[3].gid";
connectAttr "skinCluster3Set.mwc" "bodyShapeDeformed.iog.og[3].gco";
connectAttr "groupId9.id" "bodyShapeDeformed.iog.og[4].gid";
connectAttr "tweakSet3.mwc" "bodyShapeDeformed.iog.og[4].gco";
connectAttr "skinCluster3.og[0]" "bodyShapeDeformed.i";
connectAttr "tweak3.vl[0].vt[0]" "bodyShapeDeformed.twl";
connectAttr "mask.di" "heropengin_model_3:mask2.do";
connectAttr "heropengin_model_3:groupId11.id" "heropengin_model_3:maskShape2.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "heropengin_model_3:maskShape2.iog.og[0].gco"
		;
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "skinCluster2GroupParts.og" "skinCluster2.ip[0].ig";
connectAttr "skinCluster2GroupId.id" "skinCluster2.ip[0].gi";
connectAttr "bindPose2.msg" "skinCluster2.bp";
connectAttr "joint1.wm" "skinCluster2.ma[0]";
connectAttr "joint1.liw" "skinCluster2.lw[0]";
connectAttr "joint1.obcc" "skinCluster2.ifcl[0]";
connectAttr "groupParts5.og" "tweak2.ip[0].ig";
connectAttr "groupId5.id" "tweak2.ip[0].gi";
connectAttr "skinCluster2GroupId.msg" "skinCluster2Set.gn" -na;
connectAttr "mask1ShapeDeformed.iog.og[0]" "skinCluster2Set.dsm" -na;
connectAttr "skinCluster2.msg" "skinCluster2Set.ub[0]";
connectAttr "tweak2.og[0]" "skinCluster2GroupParts.ig";
connectAttr "skinCluster2GroupId.id" "skinCluster2GroupParts.gi";
connectAttr "groupId5.msg" "tweakSet2.gn" -na;
connectAttr "mask1ShapeDeformed.iog.og[1]" "tweakSet2.dsm" -na;
connectAttr "tweak2.msg" "tweakSet2.ub[0]";
connectAttr "heropengin_model_3:mask1Shape.w" "groupParts5.ig";
connectAttr "groupId5.id" "groupParts5.gi";
connectAttr "joint1.msg" "bindPose2.m[5]";
connectAttr "kotuban.msg" "bindPose2.m[99]";
connectAttr "L_reg01.msg" "bindPose2.m[100]";
connectAttr "L_reg02.msg" "bindPose2.m[101]";
connectAttr "L_foot.msg" "bindPose2.m[102]";
connectAttr "L_footfinger.msg" "bindPose2.m[103]";
connectAttr "born01.msg" "bindPose2.m[104]";
connectAttr "born02.msg" "bindPose2.m[105]";
connectAttr "neck.msg" "bindPose2.m[106]";
connectAttr "head.msg" "bindPose2.m[107]";
connectAttr "musubime.msg" "bindPose2.m[108]";
connectAttr "L_sukafu01.msg" "bindPose2.m[109]";
connectAttr "L_sukafu02.msg" "bindPose2.m[110]";
connectAttr "L_sukafu03.msg" "bindPose2.m[111]";
connectAttr "L_sukafu04.msg" "bindPose2.m[112]";
connectAttr "R_sukafu01.msg" "bindPose2.m[113]";
connectAttr "R_sukafu02.msg" "bindPose2.m[114]";
connectAttr "R_sukafu03.msg" "bindPose2.m[115]";
connectAttr "R_sukafu04.msg" "bindPose2.m[116]";
connectAttr "L_kata.msg" "bindPose2.m[117]";
connectAttr "L_ude01.msg" "bindPose2.m[118]";
connectAttr "L_ude02.msg" "bindPose2.m[119]";
connectAttr "L_hand.msg" "bindPose2.m[120]";
connectAttr "R_kata.msg" "bindPose2.m[121]";
connectAttr "R_ude01.msg" "bindPose2.m[122]";
connectAttr "R_ude02.msg" "bindPose2.m[123]";
connectAttr "R_hand.msg" "bindPose2.m[124]";
connectAttr "R_reg01.msg" "bindPose2.m[125]";
connectAttr "R_reg02.msg" "bindPose2.m[126]";
connectAttr "R_foot.msg" "bindPose2.m[127]";
connectAttr "R_footfinger.msg" "bindPose2.m[128]";
connectAttr "o.msg" "bindPose2.m[129]";
connectAttr "bindPose2.w" "bindPose2.p[0]";
connectAttr "bindPose2.m[0]" "bindPose2.p[1]";
connectAttr "bindPose2.m[1]" "bindPose2.p[2]";
connectAttr "bindPose2.m[2]" "bindPose2.p[3]";
connectAttr "bindPose2.m[3]" "bindPose2.p[4]";
connectAttr "bindPose2.m[107]" "bindPose2.p[5]";
connectAttr "bindPose2.w" "bindPose2.p[37]";
connectAttr "kotuban.msg" "bindPose2.p[38]";
connectAttr "L_reg01.msg" "bindPose2.p[39]";
connectAttr "L_reg02.msg" "bindPose2.p[40]";
connectAttr "L_foot.msg" "bindPose2.p[41]";
connectAttr "bindPose2.m[37]" "bindPose2.p[42]";
connectAttr "born01.msg" "bindPose2.p[43]";
connectAttr "born02.msg" "bindPose2.p[44]";
connectAttr "neck.msg" "bindPose2.p[45]";
connectAttr "bindPose2.m[44]" "bindPose2.p[46]";
connectAttr "musubime.msg" "bindPose2.p[47]";
connectAttr "L_sukafu01.msg" "bindPose2.p[48]";
connectAttr "L_sukafu02.msg" "bindPose2.p[49]";
connectAttr "L_sukafu03.msg" "bindPose2.p[50]";
connectAttr "bindPose2.m[46]" "bindPose2.p[51]";
connectAttr "R_sukafu01.msg" "bindPose2.p[52]";
connectAttr "R_sukafu02.msg" "bindPose2.p[53]";
connectAttr "R_sukafu03.msg" "bindPose2.p[54]";
connectAttr "bindPose2.m[43]" "bindPose2.p[55]";
connectAttr "L_kata.msg" "bindPose2.p[56]";
connectAttr "L_ude01.msg" "bindPose2.p[57]";
connectAttr "L_ude02.msg" "bindPose2.p[58]";
connectAttr "bindPose2.m[43]" "bindPose2.p[59]";
connectAttr "R_kata.msg" "bindPose2.p[60]";
connectAttr "R_ude01.msg" "bindPose2.p[61]";
connectAttr "R_ude02.msg" "bindPose2.p[62]";
connectAttr "bindPose2.m[37]" "bindPose2.p[63]";
connectAttr "R_reg01.msg" "bindPose2.p[64]";
connectAttr "R_reg02.msg" "bindPose2.p[65]";
connectAttr "R_foot.msg" "bindPose2.p[66]";
connectAttr "bindPose2.m[37]" "bindPose2.p[67]";
connectAttr "bindPose2.w" "bindPose2.p[99]";
connectAttr "kotuban.msg" "bindPose2.p[100]";
connectAttr "L_reg01.msg" "bindPose2.p[101]";
connectAttr "L_reg02.msg" "bindPose2.p[102]";
connectAttr "L_foot.msg" "bindPose2.p[103]";
connectAttr "bindPose2.m[99]" "bindPose2.p[104]";
connectAttr "born01.msg" "bindPose2.p[105]";
connectAttr "born02.msg" "bindPose2.p[106]";
connectAttr "neck.msg" "bindPose2.p[107]";
connectAttr "bindPose2.m[106]" "bindPose2.p[108]";
connectAttr "musubime.msg" "bindPose2.p[109]";
connectAttr "L_sukafu01.msg" "bindPose2.p[110]";
connectAttr "L_sukafu02.msg" "bindPose2.p[111]";
connectAttr "L_sukafu03.msg" "bindPose2.p[112]";
connectAttr "bindPose2.m[108]" "bindPose2.p[113]";
connectAttr "R_sukafu01.msg" "bindPose2.p[114]";
connectAttr "R_sukafu02.msg" "bindPose2.p[115]";
connectAttr "R_sukafu03.msg" "bindPose2.p[116]";
connectAttr "bindPose2.m[105]" "bindPose2.p[117]";
connectAttr "L_kata.msg" "bindPose2.p[118]";
connectAttr "L_ude01.msg" "bindPose2.p[119]";
connectAttr "L_ude02.msg" "bindPose2.p[120]";
connectAttr "bindPose2.m[105]" "bindPose2.p[121]";
connectAttr "R_kata.msg" "bindPose2.p[122]";
connectAttr "R_ude01.msg" "bindPose2.p[123]";
connectAttr "R_ude02.msg" "bindPose2.p[124]";
connectAttr "bindPose2.m[99]" "bindPose2.p[125]";
connectAttr "R_reg01.msg" "bindPose2.p[126]";
connectAttr "R_reg02.msg" "bindPose2.p[127]";
connectAttr "R_foot.msg" "bindPose2.p[128]";
connectAttr "bindPose2.m[99]" "bindPose2.p[129]";
connectAttr "kotuban.bps" "bindPose2.wm[99]";
connectAttr "L_reg01.bps" "bindPose2.wm[100]";
connectAttr "L_reg02.bps" "bindPose2.wm[101]";
connectAttr "L_foot.bps" "bindPose2.wm[102]";
connectAttr "L_footfinger.bps" "bindPose2.wm[103]";
connectAttr "born01.bps" "bindPose2.wm[104]";
connectAttr "born02.bps" "bindPose2.wm[105]";
connectAttr "neck.bps" "bindPose2.wm[106]";
connectAttr "head.bps" "bindPose2.wm[107]";
connectAttr "musubime.bps" "bindPose2.wm[108]";
connectAttr "L_sukafu01.bps" "bindPose2.wm[109]";
connectAttr "L_sukafu02.bps" "bindPose2.wm[110]";
connectAttr "L_sukafu03.bps" "bindPose2.wm[111]";
connectAttr "L_sukafu04.bps" "bindPose2.wm[112]";
connectAttr "R_sukafu01.bps" "bindPose2.wm[113]";
connectAttr "R_sukafu02.bps" "bindPose2.wm[114]";
connectAttr "R_sukafu03.bps" "bindPose2.wm[115]";
connectAttr "R_sukafu04.bps" "bindPose2.wm[116]";
connectAttr "L_kata.bps" "bindPose2.wm[117]";
connectAttr "L_ude01.bps" "bindPose2.wm[118]";
connectAttr "L_ude02.bps" "bindPose2.wm[119]";
connectAttr "L_hand.bps" "bindPose2.wm[120]";
connectAttr "R_kata.bps" "bindPose2.wm[121]";
connectAttr "R_ude01.bps" "bindPose2.wm[122]";
connectAttr "R_ude02.bps" "bindPose2.wm[123]";
connectAttr "R_hand.bps" "bindPose2.wm[124]";
connectAttr "R_reg01.bps" "bindPose2.wm[125]";
connectAttr "R_reg02.bps" "bindPose2.wm[126]";
connectAttr "R_foot.bps" "bindPose2.wm[127]";
connectAttr "R_footfinger.bps" "bindPose2.wm[128]";
connectAttr "o.bps" "bindPose2.wm[129]";
connectAttr "skinCluster2.og[0]" "groupParts6.ig";
connectAttr "groupId6.id" "groupParts6.gi";
connectAttr "nurbsCircleShape14.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "joint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[1].dn";
connectAttr "tweakSet2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[3].dn";
connectAttr ":initialShadingGroup.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[4].dn"
		;
connectAttr "skinCluster2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[5].dn";
connectAttr "mask1ShapeDeformed.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[6].dn"
		;
connectAttr "tweak2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[7].dn";
connectAttr "joint1_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[8].dn"
		;
connectAttr "skinCluster2Set.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[9].dn";
connectAttr "heropengin_model_3:mask1Shape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[10].dn"
		;
connectAttr "nurbsCircle14.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[11].dn";
connectAttr "heropengin_model_3:mask1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[12].dn"
		;
connectAttr "layerManager.dli[1]" "mask.id";
connectAttr "skinCluster3GroupParts.og" "skinCluster3.ip[0].ig";
connectAttr "skinCluster3GroupId.id" "skinCluster3.ip[0].gi";
connectAttr "kotuban.wm" "skinCluster3.ma[0]";
connectAttr "L_reg01.wm" "skinCluster3.ma[1]";
connectAttr "L_reg02.wm" "skinCluster3.ma[2]";
connectAttr "L_foot.wm" "skinCluster3.ma[3]";
connectAttr "L_footfinger.wm" "skinCluster3.ma[4]";
connectAttr "born01.wm" "skinCluster3.ma[5]";
connectAttr "born02.wm" "skinCluster3.ma[6]";
connectAttr "neck.wm" "skinCluster3.ma[7]";
connectAttr "head.wm" "skinCluster3.ma[8]";
connectAttr "joint1.wm" "skinCluster3.ma[9]";
connectAttr "musubime.wm" "skinCluster3.ma[10]";
connectAttr "L_sukafu01.wm" "skinCluster3.ma[11]";
connectAttr "L_sukafu02.wm" "skinCluster3.ma[12]";
connectAttr "L_sukafu03.wm" "skinCluster3.ma[13]";
connectAttr "L_sukafu04.wm" "skinCluster3.ma[14]";
connectAttr "R_sukafu01.wm" "skinCluster3.ma[15]";
connectAttr "R_sukafu02.wm" "skinCluster3.ma[16]";
connectAttr "R_sukafu03.wm" "skinCluster3.ma[17]";
connectAttr "R_sukafu04.wm" "skinCluster3.ma[18]";
connectAttr "L_kata.wm" "skinCluster3.ma[19]";
connectAttr "L_ude01.wm" "skinCluster3.ma[20]";
connectAttr "L_ude02.wm" "skinCluster3.ma[21]";
connectAttr "L_hand.wm" "skinCluster3.ma[22]";
connectAttr "R_kata.wm" "skinCluster3.ma[23]";
connectAttr "R_ude01.wm" "skinCluster3.ma[24]";
connectAttr "R_ude02.wm" "skinCluster3.ma[25]";
connectAttr "R_hand.wm" "skinCluster3.ma[26]";
connectAttr "R_reg01.wm" "skinCluster3.ma[27]";
connectAttr "R_reg02.wm" "skinCluster3.ma[28]";
connectAttr "R_foot.wm" "skinCluster3.ma[29]";
connectAttr "R_footfinger.wm" "skinCluster3.ma[30]";
connectAttr "o.wm" "skinCluster3.ma[31]";
connectAttr "kotuban.liw" "skinCluster3.lw[0]";
connectAttr "L_reg01.liw" "skinCluster3.lw[1]";
connectAttr "L_reg02.liw" "skinCluster3.lw[2]";
connectAttr "L_foot.liw" "skinCluster3.lw[3]";
connectAttr "L_footfinger.liw" "skinCluster3.lw[4]";
connectAttr "born01.liw" "skinCluster3.lw[5]";
connectAttr "born02.liw" "skinCluster3.lw[6]";
connectAttr "neck.liw" "skinCluster3.lw[7]";
connectAttr "head.liw" "skinCluster3.lw[8]";
connectAttr "joint1.liw" "skinCluster3.lw[9]";
connectAttr "musubime.liw" "skinCluster3.lw[10]";
connectAttr "L_sukafu01.liw" "skinCluster3.lw[11]";
connectAttr "L_sukafu02.liw" "skinCluster3.lw[12]";
connectAttr "L_sukafu03.liw" "skinCluster3.lw[13]";
connectAttr "L_sukafu04.liw" "skinCluster3.lw[14]";
connectAttr "R_sukafu01.liw" "skinCluster3.lw[15]";
connectAttr "R_sukafu02.liw" "skinCluster3.lw[16]";
connectAttr "R_sukafu03.liw" "skinCluster3.lw[17]";
connectAttr "R_sukafu04.liw" "skinCluster3.lw[18]";
connectAttr "L_kata.liw" "skinCluster3.lw[19]";
connectAttr "L_ude01.liw" "skinCluster3.lw[20]";
connectAttr "L_ude02.liw" "skinCluster3.lw[21]";
connectAttr "L_hand.liw" "skinCluster3.lw[22]";
connectAttr "R_kata.liw" "skinCluster3.lw[23]";
connectAttr "R_ude01.liw" "skinCluster3.lw[24]";
connectAttr "R_ude02.liw" "skinCluster3.lw[25]";
connectAttr "R_hand.liw" "skinCluster3.lw[26]";
connectAttr "R_reg01.liw" "skinCluster3.lw[27]";
connectAttr "R_reg02.liw" "skinCluster3.lw[28]";
connectAttr "R_foot.liw" "skinCluster3.lw[29]";
connectAttr "R_footfinger.liw" "skinCluster3.lw[30]";
connectAttr "o.liw" "skinCluster3.lw[31]";
connectAttr "kotuban.obcc" "skinCluster3.ifcl[0]";
connectAttr "L_reg01.obcc" "skinCluster3.ifcl[1]";
connectAttr "L_reg02.obcc" "skinCluster3.ifcl[2]";
connectAttr "L_foot.obcc" "skinCluster3.ifcl[3]";
connectAttr "L_footfinger.obcc" "skinCluster3.ifcl[4]";
connectAttr "born01.obcc" "skinCluster3.ifcl[5]";
connectAttr "born02.obcc" "skinCluster3.ifcl[6]";
connectAttr "neck.obcc" "skinCluster3.ifcl[7]";
connectAttr "head.obcc" "skinCluster3.ifcl[8]";
connectAttr "joint1.obcc" "skinCluster3.ifcl[9]";
connectAttr "musubime.obcc" "skinCluster3.ifcl[10]";
connectAttr "L_sukafu01.obcc" "skinCluster3.ifcl[11]";
connectAttr "L_sukafu02.obcc" "skinCluster3.ifcl[12]";
connectAttr "L_sukafu03.obcc" "skinCluster3.ifcl[13]";
connectAttr "L_sukafu04.obcc" "skinCluster3.ifcl[14]";
connectAttr "R_sukafu01.obcc" "skinCluster3.ifcl[15]";
connectAttr "R_sukafu02.obcc" "skinCluster3.ifcl[16]";
connectAttr "R_sukafu03.obcc" "skinCluster3.ifcl[17]";
connectAttr "R_sukafu04.obcc" "skinCluster3.ifcl[18]";
connectAttr "L_kata.obcc" "skinCluster3.ifcl[19]";
connectAttr "L_ude01.obcc" "skinCluster3.ifcl[20]";
connectAttr "L_ude02.obcc" "skinCluster3.ifcl[21]";
connectAttr "L_hand.obcc" "skinCluster3.ifcl[22]";
connectAttr "R_kata.obcc" "skinCluster3.ifcl[23]";
connectAttr "R_ude01.obcc" "skinCluster3.ifcl[24]";
connectAttr "R_ude02.obcc" "skinCluster3.ifcl[25]";
connectAttr "R_hand.obcc" "skinCluster3.ifcl[26]";
connectAttr "R_reg01.obcc" "skinCluster3.ifcl[27]";
connectAttr "R_reg02.obcc" "skinCluster3.ifcl[28]";
connectAttr "R_foot.obcc" "skinCluster3.ifcl[29]";
connectAttr "R_footfinger.obcc" "skinCluster3.ifcl[30]";
connectAttr "o.obcc" "skinCluster3.ifcl[31]";
connectAttr "bindPose2.msg" "skinCluster3.bp";
connectAttr "o.msg" "skinCluster3.ptt";
connectAttr "bodyShapeDeformedOrig.w" "groupParts7.ig";
connectAttr "groupId7.id" "groupParts7.gi";
connectAttr "groupParts9.og" "tweak3.ip[0].ig";
connectAttr "groupId9.id" "tweak3.ip[0].gi";
connectAttr "skinCluster3GroupId.msg" "skinCluster3Set.gn" -na;
connectAttr "bodyShapeDeformed.iog.og[3]" "skinCluster3Set.dsm" -na;
connectAttr "skinCluster3.msg" "skinCluster3Set.ub[0]";
connectAttr "tweak3.og[0]" "skinCluster3GroupParts.ig";
connectAttr "skinCluster3GroupId.id" "skinCluster3GroupParts.gi";
connectAttr "groupId9.msg" "tweakSet3.gn" -na;
connectAttr "bodyShapeDeformed.iog.og[4]" "tweakSet3.dsm" -na;
connectAttr "tweak3.msg" "tweakSet3.ub[0]";
connectAttr "groupParts7.og" "groupParts9.ig";
connectAttr "groupId9.id" "groupParts9.gi";
connectAttr "heropengin_model_3:renderLayerManager.rlmi[0]" "heropengin_model_3:defaultRenderLayer.rlid"
		;
connectAttr "layerManager.dli[2]" "heropengin_model_3:layer1.id";
connectAttr "heropengin_model_3:polyCube1.out" "heropengin_model_3:polySplit10.ip"
		;
connectAttr "heropengin_model_3:polySplit10.out" "heropengin_model_3:polySplit11.ip"
		;
connectAttr "layerManager.dli[3]" "heropengin_model_3:heropengin_model_2:layer1.id"
		;
connectAttr ":initialShadingGroup.msg" "heropengin_model_3:MayaNodeEditorSavedTabsInfo.tgi[0].ni[4].dn"
		;
connectAttr "heropengin_model_3:mask1.msg" "heropengin_model_3:MayaNodeEditorSavedTabsInfo.tgi[0].ni[9].dn"
		;
connectAttr "heropengin_model_3:mask1Shape.msg" "heropengin_model_3:MayaNodeEditorSavedTabsInfo.tgi[0].ni[11].dn"
		;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "heropengin_model_3:defaultRenderLayer.msg" ":defaultRenderingList1.r"
		 -na;
connectAttr "mask1ShapeDeformed.iog.og[2]" ":initialShadingGroup.dsm" -na;
connectAttr "bodyShapeDeformed.iog.og[2]" ":initialShadingGroup.dsm" -na;
connectAttr "heropengin_model_3:gideShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "heropengin_model_3:maskShape2.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "heropengin_model_3:mask1Shape.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "groupId6.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId7.msg" ":initialShadingGroup.gn" -na;
connectAttr "heropengin_model_3:groupId11.msg" ":initialShadingGroup.gn" -na;
connectAttr "heropengin_model_3:groupId14.msg" ":initialShadingGroup.gn" -na;
// End of heropengin_model01.ma
