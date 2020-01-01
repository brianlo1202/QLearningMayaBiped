//Maya ASCII 2018ff09 scene
//Name: Model.ma
//Last modified: Tue, Dec 31, 2019 05:27:18 PM
//Codeset: UTF-8
requires maya "2018ff09";
requires "mtoa" "3.1.2.1";
requires -nodeType "bulletRigidBodyShape" -nodeType "bulletRigidBodyConstraintShape"
		 -nodeType "bulletSolverShape" -dataType "bulletSolverData" -dataType "bulletRigidBodyData"
		 -dataType "bulletSoftBodyData" -dataType "bulletSoftConstraintData" -dataType "BulletRigidBodyConstraintData"
		 -dataType "bulletColliderData" -dataType "bulletRigidInitialStateGeometry" -dataType "bulletMotionsStates"
		 -dataType "bulletCollisionShapes" "bullet" "Mar 23 2019";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2018";
fileInfo "version" "2018";
fileInfo "cutIdentifier" "201903222215-65bada0e52";
fileInfo "osv" "Mac OS X 10.14.6";
fileInfo "license" "student";
createNode transform -s -n "persp";
	rename -uid "6C8C079B-AE47-7E6C-7CFB-BC8F9B26E7F9";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 4.7575556703155506 0.53932651957701494 4.5576693712222216 ;
	setAttr ".r" -type "double3" 3.2616472703362676 45.400000000003921 -2.8310731790388315e-16 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "423D463A-F944-6EA9-6984-368DED9496E6";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 8.8998087433817439;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0.30590120277268673 1.1887549666806687 1.0103931427001953 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "2A6B5969-5B45-2FCF-32C9-AF9EDE401D42";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "55775DD4-B045-2D3D-D896-4F95AD28F970";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "2A4BCE42-514B-4C4A-55CA-95986FB18036";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.36884681592332158 1.1717999119474398 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "D7C3169A-F044-8FE9-FC7B-2095913C2D06";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 2.0023833937479654;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "931F7A90-6645-51A9-7B7D-26A94A43F07C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1008855544363 1.0678920061116244 -0.3934365225525267 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "B53031C1-7541-A3DB-B163-F3A888A9638B";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 999.7949843516634;
	setAttr ".ow" 2.6850944430562098;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".tp" -type "double3" 0.30590120277268673 1.1887549666806687 0.97579585811854108 ;
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode joint -n "joint5";
	rename -uid "421DDB5A-F348-E7BD-81FA-80B944EDF964";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".radi" 0.5;
createNode joint -n "joint1" -p "joint5";
	rename -uid "88B9052F-404F-EF42-4A0A-BDA143933AF2";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".radi" 0.50149845002585403;
createNode joint -n "joint2" -p "joint1";
	rename -uid "4A925D53-004F-8035-AA4E-C3B8DB6DF813";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".radi" 0.5;
createNode joint -n "joint3" -p "|joint5|joint1|joint2";
	rename -uid "0E2A55DA-E444-B914-2BAD-DBB863A4D318";
	setAttr ".t" -type "double3" -0.063627370995645027 -0.97695201217270555 -0.010393106512475785 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".radi" 0.5;
createNode parentConstraint -n "joint2_parentConstraint1" -p "|joint5|joint1|joint2";
	rename -uid "24926325-4E4D-D78E-929D-2B82A375C7BE";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "joint2_joint3W0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -1.3582701297032429e-08 7.9845515095489095e-10 
		-3.6327235553024195e-08 ;
	setAttr ".tg[0].tor" -type "double3" -0.64911675712027872 -0.60821845902573257 93.726246357741402 ;
	setAttr ".lr" -type "double3" 2.7054607342462724e-07 -2.2030187551917887e-07 1.456655302608891e-05 ;
	setAttr ".rst" -type "double3" 0.063627370995645471 -1.0289175447350833 0.010393106512475381 ;
	setAttr ".rsrr" -type "double3" 0 0 -6.3611093621865014e-15 ;
	setAttr -k on ".w0";
createNode transform -n "sensor_rotation3_leftKnee" -p "joint1";
	rename -uid "6DF6132D-9048-CB84-7A84-2C8C20C713E5";
	setAttr ".t" -type "double3" 3.9026412447306788e-36 -2.0006730036515514 -1.0000000000000002 ;
	setAttr ".rp" -type "double3" 0.063627369701862391 0.97175544500350963 1.0103931427001953 ;
	setAttr ".sp" -type "double3" 0.063627369701862335 0.97175544500350963 1.0103931427001953 ;
createNode nurbsCurve -n "sensor_rotation3_leftKneeShape" -p "sensor_rotation3_leftKnee";
	rename -uid "23197A83-4A48-AA56-9E29-EBABC246785A";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.67942298037141513 0.99999999999999911 0.87674338856034628
		0.55616636893176208 0.99999999999999911 0.82568882844989111
		0.43290975749210914 0.99999999999999911 0.87674338856034617
		0.38185519738165413 0.99999999999999911 0.99999999999999911
		0.43290975749210914 0.99999999999999911 1.1232566114396521
		0.55616636893176208 0.99999999999999911 1.1743111715501071
		0.67942298037141491 0.99999999999999911 1.1232566114396521
		0.73047754048186997 0.99999999999999911 0.99999999999999922
		0.67942298037141513 0.99999999999999911 0.87674338856034628
		0.55616636893176208 0.99999999999999911 0.82568882844989111
		0.43290975749210914 0.99999999999999911 0.87674338856034617
		;
createNode orientConstraint -n "sensor_rotation_leftKnee_orientConstraint1" -p "sensor_rotation3_leftKnee";
	rename -uid "2C182FA4-2345-F1A8-BFFC-66A5283180D0";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "joint2W0" -dv 1 -min 0 -at "double";
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
	setAttr ".lr" -type "double3" 0 0 1.456655302608891e-05 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "joint1_parentConstraint1" -p "joint1";
	rename -uid "67191B5D-9C48-916B-46E7-ACA7718FDF41";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "joint1_joint2W0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 5.1895474140195574e-08 -3.2142174755112052e-09 
		-4.9275739044674083e-10 ;
	setAttr ".tg[0].tor" -type "double3" 0.54300530848136197 0.57762250241448276 86.461308815805651 ;
	setAttr ".lr" -type "double3" 1.115001745061035e-07 7.9585999345338132e-06 -1.8413255039988238e-05 ;
	setAttr ".rst" -type "double3" 2.1289357293918305e-17 0.00067300365155098518 1.0000000000000002 ;
	setAttr ".rsrr" -type "double3" 9.9392333795734899e-17 3.1318259200362295e-17 6.8761672062199156e-19 ;
	setAttr -k on ".w0";
createNode joint -n "joint4" -p "joint5";
	rename -uid "F3A7BC28-814C-866E-E4F5-988CBF76D098";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".radi" 0.50000001171380681;
createNode joint -n "joint2" -p "joint4";
	rename -uid "ABBACCA1-B942-D656-0616-A18CEF433E45";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".radi" 0.5;
createNode joint -n "joint3" -p "|joint5|joint4|joint2";
	rename -uid "A0249054-2644-C9F8-0F65-4BBC70D012CF";
	setAttr ".t" -type "double3" -0.06362737099564536 -0.97695201217270577 -0.010393106512475355 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jot" -type "string" "none";
	setAttr ".radi" 0.5;
createNode parentConstraint -n "joint2_parentConstraint2" -p "|joint5|joint4|joint2";
	rename -uid "B30667F7-6C4D-8E5D-55DF-8681C2BC5BE7";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "joint2_joint4W0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -1.4215416732632491e-08 1.232323063038443e-10 
		2.32702258573525e-08 ;
	setAttr ".tg[0].tor" -type "double3" -0.64911675712027872 -0.60821845902573257 93.726246357741402 ;
	setAttr ".lr" -type "double3" -2.3512987056041637e-06 1.1730097061206301e-06 1.4593935402021729e-05 ;
	setAttr ".rst" -type "double3" 0.063627370995645471 -1.0289175447350831 0.010393106512475492 ;
	setAttr ".rsrr" -type "double3" 0 0 -6.3611093621865014e-15 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "joint4_parentConstraint1" -p "joint4";
	rename -uid "F3F68176-0E47-88F7-2430-1CA399EEF8D9";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "joint4_joint2W0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 5.1895474140195574e-08 -3.2142175171445686e-09 
		-4.9275750146904329e-10 ;
	setAttr ".tg[0].tor" -type "double3" 0.54300530848136197 0.57762250241448276 86.461308815805651 ;
	setAttr ".lr" -type "double3" -1.1333155802849186e-06 7.8105476153150307e-06 -1.841882846207833e-05 ;
	setAttr ".rst" -type "double3" -1.9143271059304645e-17 0.00067300365155098518 -1 ;
	setAttr ".rsrr" -type "double3" 9.9392333795734899e-17 3.1318259200362295e-17 6.8761672062199156e-19 ;
	setAttr -k on ".w0";
createNode transform -n "sensor_rotation4_rightKnee" -p "joint4";
	rename -uid "AE862DBD-274D-8A0A-E755-79953B63FDE1";
	setAttr ".t" -type "double3" 1.9225327402560465e-17 -2.0006730036515514 1 ;
	setAttr ".rp" -type "double3" 0.063627369701862335 0.97175544500350952 -0.98960691690444946 ;
	setAttr ".sp" -type "double3" 0.06362736970186228 0.97175544500350952 -0.98960691690444946 ;
createNode nurbsCurve -n "sensor_rotation4_rightKneeShape" -p "sensor_rotation4_rightKnee";
	rename -uid "FAEA309A-264A-40CC-A828-8AAB947F23E9";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.67942298037141513 0.999999999999999 -1.1232566710442984
		0.55616636893176197 0.999999999999999 -1.1743112311547537
		0.43290975749210908 0.999999999999999 -1.1232566710442986
		0.38185519738165408 0.999999999999999 -1.0000000596046457
		0.43290975749210908 0.999999999999999 -0.87674344816499272
		0.55616636893176197 0.999999999999999 -0.82568888805453766
		0.67942298037141491 0.999999999999999 -0.87674344816499272
		0.73047754048186997 0.999999999999999 -1.0000000596046457
		0.67942298037141513 0.999999999999999 -1.1232566710442984
		0.55616636893176197 0.999999999999999 -1.1743112311547537
		0.43290975749210908 0.999999999999999 -1.1232566710442986
		;
createNode orientConstraint -n "sensor_rotation_rightKnee_orientConstraint1" -p "sensor_rotation4_rightKnee";
	rename -uid "9431D887-F448-D5BB-91D9-749D0A5900FE";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "joint2W0" -dv 1 -min 0 -at "double";
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
	setAttr ".lr" -type "double3" -2.3512987056041641e-06 4.5198400492033624e-29 1.4593935402021729e-05 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "joint5_parentConstraint1" -p "joint5";
	rename -uid "38357557-3047-0643-2ABC-6D9713AB80A1";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "joint5_joint1W0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 2.1684043449710089e-19 4.4408920985006262e-16 
		-2.1684043449710089e-19 ;
	setAttr ".tg[0].tor" -type "double3" -89.961291359979498 89.961436751929554 -89.999927235621612 ;
	setAttr ".lr" -type "double3" 1.39450907351201e-06 -8.2202159533668214e-06 1.9695576455371935e-06 ;
	setAttr ".rst" -type "double3" -8.2056343255819196e-20 2.0000000000000004 -8.2619297281191664e-20 ;
	setAttr ".rsrr" -type "double3" 2.0150988114373159e-12 6.7813603622692733e-16 -4.4163585817321552e-18 ;
	setAttr -k on ".w0";
createNode transform -n "sensor_rotation2_rightThigh" -p "joint5";
	rename -uid "21F9D7C7-7F4C-7ACE-EE4C-1AA38D0B1D37";
	setAttr ".t" -type "double3" -0.063627369701862349 -0.97108238935470625 -0.010393083095550537 ;
	setAttr ".rp" -type "double3" 0.063627369701862335 0.97175544500350952 -0.98960691690444946 ;
	setAttr ".sp" -type "double3" 0.06362736970186228 0.97175544500350952 -0.98960691690444946 ;
createNode nurbsCurve -n "sensor_rotation2_rightThighShape" -p "sensor_rotation2_rightThigh";
	rename -uid "FFDB563F-6B46-46F7-1865-93B3E3238126";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.67942298037141513 0.999999999999999 -1.1232566710442984
		0.55616636893176197 0.999999999999999 -1.1743112311547537
		0.43290975749210908 0.999999999999999 -1.1232566710442986
		0.38185519738165408 0.999999999999999 -1.0000000596046457
		0.43290975749210908 0.999999999999999 -0.87674344816499272
		0.55616636893176197 0.999999999999999 -0.82568888805453766
		0.67942298037141491 0.999999999999999 -0.87674344816499272
		0.73047754048186997 0.999999999999999 -1.0000000596046457
		0.67942298037141513 0.999999999999999 -1.1232566710442984
		0.55616636893176197 0.999999999999999 -1.1743112311547537
		0.43290975749210908 0.999999999999999 -1.1232566710442986
		;
createNode orientConstraint -n "sensor_rotation_rightThigh_orientConstraint1" -p "sensor_rotation2_rightThigh";
	rename -uid "D4C18047-CA44-05AF-E467-6693ADC64B76";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "joint4W0" -dv 1 -min 0 -at "double";
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
	setAttr ".lr" -type "double3" -1.8079360196813618e-28 7.8105476153150324e-06 -1.8418828462078333e-05 ;
	setAttr -k on ".w0";
createNode transform -n "sensor_rotation1_leftThigh" -p "joint5";
	rename -uid "515AC7B4-1041-4E0E-E27C-EE94CAF25A4E";
	setAttr ".t" -type "double3" -0.063627369701862307 -0.97108238935470625 1.9896069169044495 ;
	setAttr ".rp" -type "double3" 0.063627369701862335 0.97175544500350952 -0.98960691690444946 ;
	setAttr ".sp" -type "double3" 0.06362736970186228 0.97175544500350952 -0.98960691690444946 ;
createNode nurbsCurve -n "sensor_rotation1_leftThighShape" -p "sensor_rotation1_leftThigh";
	rename -uid "81D34D3F-1C44-6234-0FDD-F9ABEEEE45B4";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.67942298037141513 0.999999999999999 -1.1232566710442984
		0.55616636893176197 0.999999999999999 -1.1743112311547537
		0.43290975749210908 0.999999999999999 -1.1232566710442986
		0.38185519738165408 0.999999999999999 -1.0000000596046457
		0.43290975749210908 0.999999999999999 -0.87674344816499272
		0.55616636893176197 0.999999999999999 -0.82568888805453766
		0.67942298037141491 0.999999999999999 -0.87674344816499272
		0.73047754048186997 0.999999999999999 -1.0000000596046457
		0.67942298037141513 0.999999999999999 -1.1232566710442984
		0.55616636893176197 0.999999999999999 -1.1743112311547537
		0.43290975749210908 0.999999999999999 -1.1232566710442986
		;
createNode orientConstraint -n "sensor_rotation_leftThigh_orientConstraint1" -p "sensor_rotation1_leftThigh";
	rename -uid "3EE96087-F447-B351-5790-D8BD89B5BA4E";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "joint1W0" -dv 1 -min 0 -at "double";
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
	setAttr ".lr" -type "double3" 1.8079360196813627e-28 7.9585999345338132e-06 -1.8413255039988238e-05 ;
	setAttr -k on ".w0";
createNode transform -n "bulletSolver1";
	rename -uid "CD78A63E-F84D-DE5E-028E-A9B13A2C69EC";
createNode bulletSolverShape -n "bulletSolverShape1" -p "bulletSolver1";
	rename -uid "8CFB3EED-5242-9D03-0907-F1A499130ACF";
	setAttr -k off ".v";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 7 ".rb";
	setAttr -s 5 ".rbc";
createNode transform -n "sensor_rotation0_body";
	rename -uid "E5A506B1-5F4A-F44F-D078-978A0781F252";
	setAttr ".rp" -type "double3" 0 2 0 ;
	setAttr ".sp" -type "double3" -5.5511151231257827e-17 2 0 ;
createNode nurbsCurve -n "sensor_rotation0_bodyShape" -p "sensor_rotation0_body";
	rename -uid "365C884A-1C4A-BCF2-F421-D6A97CFC4584";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.6157956106695528 2.0282445549964896 -0.13364975413984892
		0.49253899922989963 2.0282445549964896 -0.1847043142503042
		0.36928238779024675 2.0282445549964896 -0.13364975413984914
		0.31822782767979174 2.0282445549964896 -0.010393142700196201
		0.36928238779024675 2.0282445549964896 0.11286346873945674
		0.49253899922989963 2.0282445549964896 0.1639180288499118
		0.61579561066955257 2.0282445549964896 0.11286346873945674
		0.66685017078000763 2.0282445549964896 -0.010393142700196201
		0.6157956106695528 2.0282445549964896 -0.13364975413984892
		0.49253899922989963 2.0282445549964896 -0.1847043142503042
		0.36928238779024675 2.0282445549964896 -0.13364975413984914
		;
createNode orientConstraint -n "sensor_rotation_body_orientConstraint1" -p "sensor_rotation0_body";
	rename -uid "CD63EBD1-1D4D-6E97-3B7D-C783DFEA9E48";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "joint5W0" -dv 1 -min 0 -at "double";
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
	setAttr ".lr" -type "double3" 1.39450907351201e-06 -8.2202159533668197e-06 1.9695576455371935e-06 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "sensor_rotation_body_pointConstraint1" -p "sensor_rotation0_body";
	rename -uid "F0B81A85-644B-DFEC-45D0-DE9B777BF8C4";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "joint5W0" -dv 1 -min 0 -at "double";
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
	setAttr ".o" -type "double3" 8.2056343255819196e-20 -4.4408920985006262e-16 8.2619297281191664e-20 ;
	setAttr -k on ".w0";
createNode transform -n "bulletRigidBody_ground";
	rename -uid "87D3984E-1242-EE67-AB14-C7A96537C8FF";
createNode bulletRigidBodyShape -n "bulletRigidBody_groundShape" -p "bulletRigidBody_ground";
	rename -uid "406D326E-D843-F626-5316-788F2B3B549E";
	setAttr -k off ".v";
	setAttr ".colshtyp" 6;
	setAttr ".bdytyp" 0;
createNode transform -n "Ragdoll1";
	rename -uid "DDFE0762-FA4E-532C-0E6A-D68614FA4306";
createNode transform -n "joint5_joint1" -p "Ragdoll1";
	rename -uid "24FC38E4-0F4E-25E0-B1D2-5DBFB5EE2366";
createNode bulletRigidBodyShape -n "bulletRigidBodyShape1" -p "joint5_joint1";
	rename -uid "78D7A4CE-3643-0829-2BED-DF81F787A6E3";
	setAttr -k off ".v";
	setAttr ".ms" 4;
	setAttr ".com" -type "float3" 0.50000012 0 0 ;
	setAttr ".bdytyp" 2;
	setAttr ".len" 0.70000016689300537;
	setAttr ".rad" 0.10000002384185791;
	setAttr ".ext" -type "float3" 0.60000002 0.60000002 0.60000002 ;
	setAttr ".axis" 0;
	setAttr ".itrs" -type "float3" 0 2 0 ;
	setAttr ".irot" -type "float3" -1.570122 -1.570122 1.5707951 ;
	setAttr ".af" no;
createNode transform -n "joint5_joint4" -p "Ragdoll1";
	rename -uid "EDBB59AE-CD46-BFA2-7FCD-599A98F08C88";
createNode bulletRigidBodyShape -n "bulletRigidBodyShape2" -p "joint5_joint4";
	rename -uid "A20A640F-474B-271A-8FF0-1F85A5613AFE";
	setAttr -k off ".v";
	setAttr ".ms" 4;
	setAttr ".com" -type "float3" 0.50000012 0 0 ;
	setAttr ".bdytyp" 2;
	setAttr ".len" 0.70000016689300537;
	setAttr ".rad" 0.10000002384185791;
	setAttr ".ext" -type "float3" 0.60000002 0.60000002 0.60000002 ;
	setAttr ".axis" 0;
	setAttr ".itrs" -type "float3" 0 2 0 ;
	setAttr ".irot" -type "float3" 1.570122 1.570122 1.5707951 ;
	setAttr ".af" no;
createNode transform -n "constraint_joint5" -p "Ragdoll1";
	rename -uid "B552BD0F-8740-F709-3C4A-6793A17093AB";
	setAttr ".t" -type "double3" 0 2.0000000000000004 0 ;
createNode bulletRigidBodyConstraintShape -n "constraint_jointShape5" -p "constraint_joint5";
	rename -uid "00087E59-8B47-0D92-07A8-938B87C37861";
	setAttr -k off ".v";
	setAttr ".contyp" 4;
	setAttr ".angdamp" 0.5;
	setAttr ".linconx" 1;
	setAttr ".lincony" 1;
	setAttr ".linconz" 1;
	setAttr ".angconx" 1;
	setAttr ".angcony" 1;
	setAttr ".angconz" 1;
	setAttr ".acmin" -type "float3" -360 -360 -360 ;
	setAttr ".acmax" -type "float3" 360 360 360 ;
createNode transform -n "joint1_joint2" -p "Ragdoll1";
	rename -uid "DA5996CC-F840-06E8-F72B-7EB71E63259D";
createNode bulletRigidBodyShape -n "bulletRigidBodyShape3" -p "joint1_joint2";
	rename -uid "00A02BAD-2348-0022-86A8-6DB6FF8736F6";
	setAttr -k off ".v";
	setAttr ".com" -type "float3" 0.5154677 0 0 ;
	setAttr ".colshtyp" 3;
	setAttr ".bdytyp" 2;
	setAttr ".len" 0.72165477275848389;
	setAttr ".rad" 0.10309354215860367;
	setAttr ".axis" 0;
	setAttr ".itrs" -type "float3" -3.9026412e-36 2.0006731 1 ;
	setAttr ".irot" -type "float3" 0.0094772438 -0.010081402 -1.5090345 ;
	setAttr ".af" no;
createNode transform -n "motor1_leftThigh" -p "Ragdoll1";
	rename -uid "D1364893-5644-A1D4-209E-809E166B3ADA";
	setAttr ".t" -type "double3" -3.9026412447306788e-36 2.0006730036515514 1.0000000000000002 ;
createNode bulletRigidBodyConstraintShape -n "motor1_leftThighShape" -p "motor1_leftThigh";
	rename -uid "36E67CC8-6849-091E-B23E-F086D65109A5";
	setAttr -k off ".v";
	setAttr ".contyp" 4;
	setAttr ".angdamp" 0.5;
	setAttr ".angmotor" yes;
	setAttr ".angmotorvel" -type "float3" 0 0 0 ;
	setAttr ".angmotormaxf" -type "float3" 0 0 1000000 ;
	setAttr ".linconx" 1;
	setAttr ".lincony" 1;
	setAttr ".linconz" 1;
	setAttr ".angconx" 1;
	setAttr ".angcony" 1;
	setAttr ".angconz" 2;
	setAttr ".acmin" -type "float3" 0 0 -90 ;
	setAttr ".acmax" -type "float3" 0 0 90 ;
createNode transform -n "joint4_joint2" -p "Ragdoll1";
	rename -uid "333AF356-F84D-1FE1-91D4-CF8AB0810E99";
createNode bulletRigidBodyShape -n "bulletRigidBodyShape4" -p "joint4_joint2";
	rename -uid "2FE1CFDE-7543-CDC8-4676-7E8F860980DD";
	setAttr -k off ".v";
	setAttr ".com" -type "float3" 0.5154677 0 0 ;
	setAttr ".colshtyp" 3;
	setAttr ".bdytyp" 2;
	setAttr ".len" 0.72165477275848389;
	setAttr ".rad" 0.10309354215860367;
	setAttr ".axis" 0;
	setAttr ".itrs" -type "float3" 0 2.0006731 -1 ;
	setAttr ".irot" -type "float3" 0.0094772438 -0.010081402 -1.5090345 ;
	setAttr ".af" no;
createNode transform -n "motor2_rightThigh" -p "Ragdoll1";
	rename -uid "28F0AFCE-484C-46F3-9C5C-819DE8532365";
	setAttr ".t" -type "double3" 0 2.0006730036515514 -1 ;
createNode bulletRigidBodyConstraintShape -n "motor2_rightThighShape" -p "motor2_rightThigh";
	rename -uid "EDA988A6-9F4B-5823-5DE1-919C9D52FDA5";
	setAttr -k off ".v";
	setAttr ".contyp" 4;
	setAttr ".angdamp" 0.5;
	setAttr ".angmotor" yes;
	setAttr ".angmotorvel" -type "float3" 0 0 0 ;
	setAttr ".angmotormaxf" -type "float3" 0 0 1000000 ;
	setAttr ".linconx" 1;
	setAttr ".lincony" 1;
	setAttr ".linconz" 1;
	setAttr ".angconx" 1;
	setAttr ".angcony" 1;
	setAttr ".angconz" 2;
	setAttr ".acmin" -type "float3" 0 0 -90 ;
	setAttr ".acmax" -type "float3" 0 0 90 ;
createNode transform -n "joint2_joint3" -p "Ragdoll1";
	rename -uid "476352C7-B641-61E3-67AA-F6A420634929";
createNode bulletRigidBodyShape -n "bulletRigidBodyShape5" -p "joint2_joint3";
	rename -uid "17718CA5-B845-3851-7BAB-CA9295B496A2";
	setAttr -k off ".v";
	setAttr ".com" -type "float3" 0.48953849 0 0 ;
	setAttr ".colshtyp" 3;
	setAttr ".bdytyp" 2;
	setAttr ".len" 0.68535387516021729;
	setAttr ".rad" 0.097907699644565582;
	setAttr ".axis" 0;
	setAttr ".itrs" -type "float3" 0.06362737 0.97175545 1.0103931 ;
	setAttr ".irot" -type "float3" -0.011329239 0.010615399 -1.6358316 ;
	setAttr ".af" no;
createNode transform -n "motor3_leftKnee" -p "Ragdoll1";
	rename -uid "3FEC9A89-EE45-764D-C627-85A254D0A61B";
	setAttr ".t" -type "double3" 0.063627370995645471 0.97175545891646808 1.0103931065124756 ;
createNode bulletRigidBodyConstraintShape -n "motor3_leftKneeShape" -p "motor3_leftKnee";
	rename -uid "C9E9D6FA-0B47-265A-8D9E-5A895F0EE9EC";
	setAttr -k off ".v";
	setAttr ".contyp" 4;
	setAttr ".angdamp" 0.5;
	setAttr ".angmotor" yes;
	setAttr ".angmotorvel" -type "float3" 0 0 0 ;
	setAttr ".angmotormaxf" -type "float3" 0 0 1000000 ;
	setAttr ".linconx" 1;
	setAttr ".lincony" 1;
	setAttr ".linconz" 1;
	setAttr ".angconx" 1;
	setAttr ".angcony" 1;
	setAttr ".angconz" 2;
	setAttr ".acmin" -type "float3" 0 0 -150 ;
createNode transform -n "joint2_joint4" -p "Ragdoll1";
	rename -uid "4E3132C3-2346-64A8-BB76-8C8A123A1F66";
createNode bulletRigidBodyShape -n "bulletRigidBodyShape6" -p "joint2_joint4";
	rename -uid "CA8DA3EF-EC41-DE98-DBCB-DCB97D911375";
	setAttr -k off ".v";
	setAttr ".com" -type "float3" 0.48953849 0 0 ;
	setAttr ".colshtyp" 3;
	setAttr ".bdytyp" 2;
	setAttr ".len" 0.68535387516021729;
	setAttr ".rad" 0.097907699644565582;
	setAttr ".axis" 0;
	setAttr ".itrs" -type "float3" 0.06362737 0.97175545 -0.98960692 ;
	setAttr ".irot" -type "float3" -0.011329239 0.010615399 -1.6358316 ;
	setAttr ".af" no;
createNode transform -n "motor4_rightKnee" -p "Ragdoll1";
	rename -uid "69CBB497-D147-5152-6713-CDAB53B6F1C9";
	setAttr ".t" -type "double3" 0.063627370995645471 0.97175545891646831 -0.98960689348752451 ;
createNode bulletRigidBodyConstraintShape -n "motor4_rightKneeShape" -p "motor4_rightKnee";
	rename -uid "167E13D2-5E46-02AD-9043-099F84443A77";
	setAttr -k off ".v";
	setAttr ".contyp" 4;
	setAttr ".angdamp" 0.5;
	setAttr ".angmotor" yes;
	setAttr ".angmotorvel" -type "float3" 0 0 0 ;
	setAttr ".angmotormaxf" -type "float3" 0 0 1000000 ;
	setAttr ".linconx" 1;
	setAttr ".lincony" 1;
	setAttr ".linconz" 1;
	setAttr ".angconx" 1;
	setAttr ".angcony" 1;
	setAttr ".angconz" 2;
	setAttr ".acmin" -type "float3" 0 0 -150 ;
createNode transform -n "sensor_translate_body";
	rename -uid "3C3750CC-644D-DF42-B880-498D956CA621";
	setAttr ".rp" -type "double3" 0 2.526815855810117 0 ;
	setAttr ".sp" -type "double3" 0 2.526815855810117 0 ;
createNode nurbsCurve -n "sensor_translate_bodyShape" -p "sensor_translate_body";
	rename -uid "89967AA5-3542-18CA-BB04-E7B445C46105";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.23429031360697986 2.526815855810117 -0.23429031360697949
		-3.7801537299884606e-17 2.526815855810117 -0.33133653903563637
		-0.23429031360697963 2.526815855810117 -0.23429031360697963
		-0.33133653903563637 2.526815855810117 -9.6013039626815187e-17
		-0.23429031360697969 2.526815855810117 0.23429031360697958
		-9.9838165614545469e-17 2.526815855810117 0.33133653903563642
		0.23429031360697949 2.526815855810117 0.23429031360697966
		0.33133653903563637 2.526815855810117 1.7796150146564685e-16
		0.23429031360697986 2.526815855810117 -0.23429031360697949
		-3.7801537299884606e-17 2.526815855810117 -0.33133653903563637
		-0.23429031360697963 2.526815855810117 -0.23429031360697963
		;
createNode pointConstraint -n "sensor_translate_body_pointConstraint1" -p "sensor_translate_body";
	rename -uid "42952317-CC43-397A-B6CC-FCA23908973E";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "joint5W0" -dv 1 -min 0 -at "double";
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
	setAttr ".o" -type "double3" 8.2056343255819196e-20 0.52681585581011658 8.2619297281191664e-20 ;
	setAttr -k on ".w0";
createNode transform -n "sensor_death_body1";
	rename -uid "2C4FA41C-4B47-FFBC-A7E1-AAA9394CDDC2";
	setAttr ".s" -type "double3" 0.2201668741466348 0.2201668741466348 0.2201668741466348 ;
createNode nurbsCurve -n "sensor_death_bodyShape1" -p "sensor_death_body1";
	rename -uid "CB0A6D54-3044-3E27-028E-2F89B6125338";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode parentConstraint -n "sensor_death_body1_parentConstraint1" -p "sensor_death_body1";
	rename -uid "7F0EFFB8-FA43-E558-A611-1DAC48A84294";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "joint5W0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 0.45387123199010976 -0.42405822225656342 0.7 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 45.000000000000014 ;
	setAttr ".lr" -type "double3" -4.8265036211370378e-06 -6.7986372657500159e-06 45.000001969558049 ;
	setAttr ".rst" -type "double3" 0.45387123199010976 1.575941777743437 0.7 ;
	setAttr ".rsrr" -type "double3" 0 0 45.000000000000014 ;
	setAttr -k on ".w0";
createNode transform -n "sensor_death_body2";
	rename -uid "A8763803-424A-0581-612E-D88A58B9F7EB";
	setAttr ".s" -type "double3" 0.2201668741466348 0.2201668741466348 0.2201668741466348 ;
createNode nurbsCurve -n "sensor_death_bodyShape2" -p "sensor_death_body2";
	rename -uid "641A008E-7F4C-79E7-A1E2-2CB78E7EC34B";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.78361162489122504 4.7982373409884682e-17 -0.78361162489122382
		-1.2643170607829326e-16 6.7857323231109134e-17 -1.1081941875543879
		-0.78361162489122427 4.7982373409884713e-17 -0.78361162489122427
		-1.1081941875543879 1.9663354616187859e-32 -3.2112695072372299e-16
		-0.78361162489122449 -4.7982373409884694e-17 0.78361162489122405
		-3.3392053635905195e-16 -6.7857323231109146e-17 1.1081941875543881
		0.78361162489122382 -4.7982373409884719e-17 0.78361162489122438
		1.1081941875543879 -3.6446300679047921e-32 5.9521325992805852e-16
		0.78361162489122504 4.7982373409884682e-17 -0.78361162489122382
		-1.2643170607829326e-16 6.7857323231109134e-17 -1.1081941875543879
		-0.78361162489122427 4.7982373409884713e-17 -0.78361162489122427
		;
createNode parentConstraint -n "sensor_death_body2_parentConstraint1" -p "sensor_death_body2";
	rename -uid "A4AD08DF-BE44-DE99-E11F-B39BFB604CC2";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "joint5W0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 0.45387123199010976 -0.42405822225656342 -0.7 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 45.000000000000014 ;
	setAttr ".lr" -type "double3" -4.8265036211370378e-06 -6.7986372657500159e-06 45.000001969558049 ;
	setAttr ".rst" -type "double3" 0.45387123199010976 1.575941777743437 -0.7 ;
	setAttr ".rsrr" -type "double3" 0 0 45.000000000000014 ;
	setAttr -k on ".w0";
createNode transform -n "sensor_death_body3";
	rename -uid "68430F0F-3744-BC30-FE76-84AD640B507D";
	setAttr ".s" -type "double3" 0.2201668741466348 0.2201668741466348 -0.2201668741466348 ;
createNode nurbsCurve -n "sensor_death_bodyShape3" -p "sensor_death_body3";
	rename -uid "8B856A12-5F48-9F41-89FA-2CBEC70B335E";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.78361162489122504 4.7982373409884682e-17 -0.78361162489122382
		-1.2643170607829326e-16 6.7857323231109134e-17 -1.1081941875543879
		-0.78361162489122427 4.7982373409884713e-17 -0.78361162489122427
		-1.1081941875543879 1.9663354616187859e-32 -3.2112695072372299e-16
		-0.78361162489122449 -4.7982373409884694e-17 0.78361162489122405
		-3.3392053635905195e-16 -6.7857323231109146e-17 1.1081941875543881
		0.78361162489122382 -4.7982373409884719e-17 0.78361162489122438
		1.1081941875543879 -3.6446300679047921e-32 5.9521325992805852e-16
		0.78361162489122504 4.7982373409884682e-17 -0.78361162489122382
		-1.2643170607829326e-16 6.7857323231109134e-17 -1.1081941875543879
		-0.78361162489122427 4.7982373409884713e-17 -0.78361162489122427
		;
createNode parentConstraint -n "sensor_death_body3_parentConstraint1" -p "sensor_death_body3";
	rename -uid "046FCCE8-8641-686A-A888-0AB076ECE753";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "joint5W0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -0.44756746487913596 -0.42405822225656342 0.7 ;
	setAttr ".tg[0].tor" -type "double3" 180 0 135 ;
	setAttr ".lr" -type "double3" -6.7986372533506343e-06 -180.00000482650361 -44.999998030442534 ;
	setAttr ".rst" -type "double3" -0.44756746487913596 1.575941777743437 0.7 ;
	setAttr ".rsrr" -type "double3" 0 180 -45 ;
	setAttr -k on ".w0";
createNode transform -n "sensor_death_body4";
	rename -uid "19A76C8E-BC49-08D1-C37F-24B75260F8D4";
	setAttr ".s" -type "double3" 0.2201668741466348 0.2201668741466348 -0.2201668741466348 ;
createNode nurbsCurve -n "sensor_death_body4Shape" -p "sensor_death_body4";
	rename -uid "CDF782F9-894D-44EC-FFE8-F7ADBE83FCBE";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.78361162489122504 4.7982373409884682e-17 -0.78361162489122382
		-1.2643170607829326e-16 6.7857323231109134e-17 -1.1081941875543879
		-0.78361162489122427 4.7982373409884713e-17 -0.78361162489122427
		-1.1081941875543879 1.9663354616187859e-32 -3.2112695072372299e-16
		-0.78361162489122449 -4.7982373409884694e-17 0.78361162489122405
		-3.3392053635905195e-16 -6.7857323231109146e-17 1.1081941875543881
		0.78361162489122382 -4.7982373409884719e-17 0.78361162489122438
		1.1081941875543879 -3.6446300679047921e-32 5.9521325992805852e-16
		0.78361162489122504 4.7982373409884682e-17 -0.78361162489122382
		-1.2643170607829326e-16 6.7857323231109134e-17 -1.1081941875543879
		-0.78361162489122427 4.7982373409884713e-17 -0.78361162489122427
		;
createNode parentConstraint -n "sensor_death_body4_parentConstraint1" -p "sensor_death_body4";
	rename -uid "A506F7BC-1549-E82B-E409-36859CFCEB8D";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "joint5W0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -0.44756746487913596 -0.42405822225656342 -0.7 ;
	setAttr ".tg[0].tor" -type "double3" 180 0 135 ;
	setAttr ".lr" -type "double3" -6.7986372533506343e-06 -180.00000482650361 -44.999998030442534 ;
	setAttr ".rst" -type "double3" -0.44756746487913596 1.575941777743437 -0.7 ;
	setAttr ".rsrr" -type "double3" 0 180 -45 ;
	setAttr -k on ".w0";
createNode transform -n "sensor_death_body5";
	rename -uid "2F406555-EF4F-52B4-A7A3-A4AE82191936";
	setAttr ".s" -type "double3" 0.2201668741466348 0.2201668741466348 0.2201668741466348 ;
createNode nurbsCurve -n "sensor_death_bodyShape5" -p "sensor_death_body5";
	rename -uid "2A835936-DA4D-3F91-1792-71BA17235F6D";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.78361162489122504 4.7982373409884682e-17 -0.78361162489122382
		-1.2643170607829326e-16 6.7857323231109134e-17 -1.1081941875543879
		-0.78361162489122427 4.7982373409884713e-17 -0.78361162489122427
		-1.1081941875543879 1.9663354616187859e-32 -3.2112695072372299e-16
		-0.78361162489122449 -4.7982373409884694e-17 0.78361162489122405
		-3.3392053635905195e-16 -6.7857323231109146e-17 1.1081941875543881
		0.78361162489122382 -4.7982373409884719e-17 0.78361162489122438
		1.1081941875543879 -3.6446300679047921e-32 5.9521325992805852e-16
		0.78361162489122504 4.7982373409884682e-17 -0.78361162489122382
		-1.2643170607829326e-16 6.7857323231109134e-17 -1.1081941875543879
		-0.78361162489122427 4.7982373409884713e-17 -0.78361162489122427
		;
createNode parentConstraint -n "sensor_death_body5_parentConstraint1" -p "sensor_death_body5";
	rename -uid "04DF83B2-7644-7349-3022-559F0C6F02B9";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "joint5W0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -0.44756746487913596 0.43325410483586646 0.7 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 -135 ;
	setAttr ".lr" -type "double3" 4.8265036211370378e-06 6.7986372657500159e-06 -134.99999803044196 ;
	setAttr ".rst" -type "double3" -0.44756746487913596 2.4332541048358669 0.7 ;
	setAttr ".rsrr" -type "double3" 0 0 -135 ;
	setAttr -k on ".w0";
createNode transform -n "sensor_death_body6";
	rename -uid "8AEEDB53-9345-2AE7-D35B-85A19C8E6F0B";
	setAttr ".s" -type "double3" 0.2201668741466348 0.2201668741466348 0.2201668741466348 ;
createNode nurbsCurve -n "sensor_death_bodyShape6" -p "sensor_death_body6";
	rename -uid "731789AF-0746-442A-5017-3B919E6EFA8A";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.78361162489122504 4.7982373409884682e-17 -0.78361162489122382
		-1.2643170607829326e-16 6.7857323231109134e-17 -1.1081941875543879
		-0.78361162489122427 4.7982373409884713e-17 -0.78361162489122427
		-1.1081941875543879 1.9663354616187859e-32 -3.2112695072372299e-16
		-0.78361162489122449 -4.7982373409884694e-17 0.78361162489122405
		-3.3392053635905195e-16 -6.7857323231109146e-17 1.1081941875543881
		0.78361162489122382 -4.7982373409884719e-17 0.78361162489122438
		1.1081941875543879 -3.6446300679047921e-32 5.9521325992805852e-16
		0.78361162489122504 4.7982373409884682e-17 -0.78361162489122382
		-1.2643170607829326e-16 6.7857323231109134e-17 -1.1081941875543879
		-0.78361162489122427 4.7982373409884713e-17 -0.78361162489122427
		;
createNode parentConstraint -n "sensor_death_body6_parentConstraint1" -p "sensor_death_body6";
	rename -uid "F1FDA3F5-0645-E823-A710-978BA6F13D94";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "joint5W0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" -0.44756746487913596 0.43325410483586646 -0.7 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 -135 ;
	setAttr ".lr" -type "double3" 4.8265036211370378e-06 6.7986372657500159e-06 -134.99999803044196 ;
	setAttr ".rst" -type "double3" -0.44756746487913596 2.4332541048358669 -0.7 ;
	setAttr ".rsrr" -type "double3" 0 0 -135 ;
	setAttr -k on ".w0";
createNode transform -n "sensor_death_body7";
	rename -uid "C8162F18-DA4E-574F-1261-42AD8D8E6552";
	setAttr ".s" -type "double3" 0.2201668741466348 0.2201668741466348 -0.2201668741466348 ;
createNode nurbsCurve -n "sensor_death_bodyShape7" -p "sensor_death_body7";
	rename -uid "3ED21336-354E-3A28-22B4-129751720AA9";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.78361162489122504 4.7982373409884682e-17 -0.78361162489122382
		-1.2643170607829326e-16 6.7857323231109134e-17 -1.1081941875543879
		-0.78361162489122427 4.7982373409884713e-17 -0.78361162489122427
		-1.1081941875543879 1.9663354616187859e-32 -3.2112695072372299e-16
		-0.78361162489122449 -4.7982373409884694e-17 0.78361162489122405
		-3.3392053635905195e-16 -6.7857323231109146e-17 1.1081941875543881
		0.78361162489122382 -4.7982373409884719e-17 0.78361162489122438
		1.1081941875543879 -3.6446300679047921e-32 5.9521325992805852e-16
		0.78361162489122504 4.7982373409884682e-17 -0.78361162489122382
		-1.2643170607829326e-16 6.7857323231109134e-17 -1.1081941875543879
		-0.78361162489122427 4.7982373409884713e-17 -0.78361162489122427
		;
createNode parentConstraint -n "sensor_death_body7_parentConstraint1" -p "sensor_death_body7";
	rename -uid "43F5AC44-2D43-B69B-6FEF-A98F92E174E7";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "joint5W0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 0.45387123199010976 0.43325410483586646 0.7 ;
	setAttr ".tg[0].tor" -type "double3" 180 0 -45.000000000000014 ;
	setAttr ".lr" -type "double3" -179.99999320136274 -4.8265036211370014e-06 -44.999998030442548 ;
	setAttr ".rst" -type "double3" 0.45387123199010976 2.4332541048358669 0.7 ;
	setAttr ".rsrr" -type "double3" 180 0 -45.000000000000014 ;
	setAttr -k on ".w0";
createNode transform -n "sensor_death_body8";
	rename -uid "9301E869-0043-2D0F-D43F-3EA7CE99DA15";
	setAttr ".s" -type "double3" 0.2201668741466348 0.2201668741466348 -0.2201668741466348 ;
createNode nurbsCurve -n "sensor_death_bodyShape8" -p "sensor_death_body8";
	rename -uid "22F122E8-EC4B-EA68-4671-7D8D78B801B5";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.78361162489122504 4.7982373409884682e-17 -0.78361162489122382
		-1.2643170607829326e-16 6.7857323231109134e-17 -1.1081941875543879
		-0.78361162489122427 4.7982373409884713e-17 -0.78361162489122427
		-1.1081941875543879 1.9663354616187859e-32 -3.2112695072372299e-16
		-0.78361162489122449 -4.7982373409884694e-17 0.78361162489122405
		-3.3392053635905195e-16 -6.7857323231109146e-17 1.1081941875543881
		0.78361162489122382 -4.7982373409884719e-17 0.78361162489122438
		1.1081941875543879 -3.6446300679047921e-32 5.9521325992805852e-16
		0.78361162489122504 4.7982373409884682e-17 -0.78361162489122382
		-1.2643170607829326e-16 6.7857323231109134e-17 -1.1081941875543879
		-0.78361162489122427 4.7982373409884713e-17 -0.78361162489122427
		;
createNode parentConstraint -n "sensor_death_body8_parentConstraint1" -p "sensor_death_body8";
	rename -uid "95F099ED-0443-7086-DDA4-0BABA0953E21";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "joint5W0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 0.45387123199010976 0.43325410483586646 -0.7 ;
	setAttr ".tg[0].tor" -type "double3" 180 0 -45.000000000000014 ;
	setAttr ".lr" -type "double3" -179.99999320136274 -4.8265036211370014e-06 -44.999998030442548 ;
	setAttr ".rst" -type "double3" 0.45387123199010976 2.4332541048358669 -0.7 ;
	setAttr ".rsrr" -type "double3" 180 0 -45.000000000000014 ;
	setAttr -k on ".w0";
createNode transform -n "sensor_death_knee1";
	rename -uid "A950C8CE-5645-E492-F4EC-3482CD7943E9";
	setAttr ".s" -type "double3" 0.2201668741466348 0.2201668741466348 -0.2201668741466348 ;
createNode nurbsCurve -n "sensor_death_kneeShape1" -p "sensor_death_knee1";
	rename -uid "79801987-AA49-D858-2089-5B9049EADB30";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.78361162489122504 4.7982373409884682e-17 -0.78361162489122382
		-1.2643170607829326e-16 6.7857323231109134e-17 -1.1081941875543879
		-0.78361162489122427 4.7982373409884713e-17 -0.78361162489122427
		-1.1081941875543879 1.9663354616187859e-32 -3.2112695072372299e-16
		-0.78361162489122449 -4.7982373409884694e-17 0.78361162489122405
		-3.3392053635905195e-16 -6.7857323231109146e-17 1.1081941875543881
		0.78361162489122382 -4.7982373409884719e-17 0.78361162489122438
		1.1081941875543879 -3.6446300679047921e-32 5.9521325992805852e-16
		0.78361162489122504 4.7982373409884682e-17 -0.78361162489122382
		-1.2643170607829326e-16 6.7857323231109134e-17 -1.1081941875543879
		-0.78361162489122427 4.7982373409884713e-17 -0.78361162489122427
		;
createNode parentConstraint -n "sensor_death_knee1_parentConstraint1" -p "sensor_death_knee1";
	rename -uid "02C4961A-C14E-B6F5-A4E5-5CAF20C8DA19";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "joint1W0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 0.30306552318431251 -0.80355271414144691 0.01039314270019509 ;
	setAttr ".tg[0].tor" -type "double3" 180 0 -45.000000000000014 ;
	setAttr ".lr" -type "double3" -179.99999882894119 8.0107854621405903e-07 -45.000016443697199 ;
	setAttr ".rst" -type "double3" 0.30306552318431251 1.1971202895101045 1.0103931427001953 ;
	setAttr ".rsrr" -type "double3" 180 0 -45.000000000000014 ;
	setAttr -k on ".w0";
createNode transform -n "sensor_death_knee2";
	rename -uid "B4BB9F09-AB49-1219-6168-74B5F4DE4AD3";
	setAttr ".s" -type "double3" 0.2201668741466348 0.2201668741466348 -0.2201668741466348 ;
createNode nurbsCurve -n "sensor_death_kneeShape2" -p "sensor_death_knee2";
	rename -uid "4B3148F8-854E-2251-8A0F-E8A7D11A8CEC";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.78361162489122504 4.7982373409884682e-17 -0.78361162489122382
		-1.2643170607829326e-16 6.7857323231109134e-17 -1.1081941875543879
		-0.78361162489122427 4.7982373409884713e-17 -0.78361162489122427
		-1.1081941875543879 1.9663354616187859e-32 -3.2112695072372299e-16
		-0.78361162489122449 -4.7982373409884694e-17 0.78361162489122405
		-3.3392053635905195e-16 -6.7857323231109146e-17 1.1081941875543881
		0.78361162489122382 -4.7982373409884719e-17 0.78361162489122438
		1.1081941875543879 -3.6446300679047921e-32 5.9521325992805852e-16
		0.78361162489122504 4.7982373409884682e-17 -0.78361162489122382
		-1.2643170607829326e-16 6.7857323231109134e-17 -1.1081941875543879
		-0.78361162489122427 4.7982373409884713e-17 -0.78361162489122427
		;
createNode parentConstraint -n "sensor_death_knee2_parentConstraint1" -p "sensor_death_knee2";
	rename -uid "D5750A0A-6042-D347-9C4F-FDBA74C3F08B";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "joint1W0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 0.30306552318431251 -1.223457838964964 0.01039314270019509 ;
	setAttr ".tg[0].tor" -type "double3" 180 -3.5311250384401269e-31 45.000000000000007 ;
	setAttr ".lr" -type "double3" -179.99999919892147 -1.1710588343927673e-06 44.999983556302809 ;
	setAttr ".rst" -type "double3" 0.30306552318431251 0.77721516468658747 1.0103931427001953 ;
	setAttr ".rsrr" -type "double3" 180 0 45.000000000000014 ;
	setAttr -k on ".w0";
createNode transform -n "sensor_death_knee3";
	rename -uid "CA846ED6-A049-9479-FE98-6F83764C7AA3";
	setAttr ".s" -type "double3" 0.2201668741466348 0.2201668741466348 -0.2201668741466348 ;
createNode nurbsCurve -n "sensor_death_kneeShape3" -p "sensor_death_knee3";
	rename -uid "B64FC32D-BB4A-68F9-AF7F-7F8F67010067";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.78361162489122504 4.7982373409884682e-17 -0.78361162489122382
		-1.2643170607829326e-16 6.7857323231109134e-17 -1.1081941875543879
		-0.78361162489122427 4.7982373409884713e-17 -0.78361162489122427
		-1.1081941875543879 1.9663354616187859e-32 -3.2112695072372299e-16
		-0.78361162489122449 -4.7982373409884694e-17 0.78361162489122405
		-3.3392053635905195e-16 -6.7857323231109146e-17 1.1081941875543881
		0.78361162489122382 -4.7982373409884719e-17 0.78361162489122438
		1.1081941875543879 -3.6446300679047921e-32 5.9521325992805852e-16
		0.78361162489122504 4.7982373409884682e-17 -0.78361162489122382
		-1.2643170607829326e-16 6.7857323231109134e-17 -1.1081941875543879
		-0.78361162489122427 4.7982373409884713e-17 -0.78361162489122427
		;
createNode parentConstraint -n "sensor_death_knee3_parentConstraint1" -p "sensor_death_knee3";
	rename -uid "638B864A-CF4A-450B-B51D-889CF3EE9CC8";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "joint4W0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 0.30306552318431251 -1.223457838964964 0.010393083095550537 ;
	setAttr ".tg[0].tor" -type "double3" 180 -3.5311250384401269e-31 45.000000000000007 ;
	setAttr ".lr" -type "double3" -179.99999930361028 -1.2757476337522561e-06 44.999983550729389 ;
	setAttr ".rst" -type "double3" 0.30306552318431251 0.77721516468658747 -0.98960691690444946 ;
	setAttr ".rsrr" -type "double3" 180 0 45.000000000000014 ;
	setAttr -k on ".w0";
createNode transform -n "sensor_death_knee4";
	rename -uid "F8F36828-594B-C6D9-8E2A-25A5A63FFFE9";
	setAttr ".s" -type "double3" 0.2201668741466348 0.2201668741466348 -0.2201668741466348 ;
createNode nurbsCurve -n "sensor_death_kneeShape4" -p "sensor_death_knee4";
	rename -uid "8FBE7C8A-9143-EB06-25BF-8FB9A967C3DF";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.78361162489122504 4.7982373409884682e-17 -0.78361162489122382
		-1.2643170607829326e-16 6.7857323231109134e-17 -1.1081941875543879
		-0.78361162489122427 4.7982373409884713e-17 -0.78361162489122427
		-1.1081941875543879 1.9663354616187859e-32 -3.2112695072372299e-16
		-0.78361162489122449 -4.7982373409884694e-17 0.78361162489122405
		-3.3392053635905195e-16 -6.7857323231109146e-17 1.1081941875543881
		0.78361162489122382 -4.7982373409884719e-17 0.78361162489122438
		1.1081941875543879 -3.6446300679047921e-32 5.9521325992805852e-16
		0.78361162489122504 4.7982373409884682e-17 -0.78361162489122382
		-1.2643170607829326e-16 6.7857323231109134e-17 -1.1081941875543879
		-0.78361162489122427 4.7982373409884713e-17 -0.78361162489122427
		;
createNode parentConstraint -n "sensor_death_knee4_parentConstraint1" -p "sensor_death_knee4";
	rename -uid "449B3D38-0A46-BF1C-E798-AC8932BD5493";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "joint4W0" -dv 1 -min 0 -at "double";
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
	setAttr ".tg[0].tot" -type "double3" 0.30306552318431251 -0.80355271414144691 0.010393083095550537 ;
	setAttr ".tg[0].tor" -type "double3" 180 0 -45.000000000000014 ;
	setAttr ".lr" -type "double3" -179.99999872425238 6.9638974798539862e-07 -45.000016449270625 ;
	setAttr ".rst" -type "double3" 0.30306552318431251 1.1971202895101045 -0.98960691690444946 ;
	setAttr ".rsrr" -type "double3" 180 0 -45.000000000000014 ;
	setAttr -k on ".w0";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "9418E37C-CE4D-0D78-F8C3-5EA5AA169719";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "08CBC985-0344-E7A9-45F7-57AD73F3627D";
createNode displayLayer -n "defaultLayer";
	rename -uid "8E1C98AA-A14C-45D1-D43E-828BB60D1EC3";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "B443C2FD-D346-678F-7FB7-6A879B47A95E";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "5940178D-D544-4FD3-1A9C-F69CF529A356";
	setAttr ".g" yes;
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "43EFBDD4-664B-30F7-F13F-9EB266E9AC17";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "6F6ACF38-D144-A4A9-BCEE-1C819893011D";
createNode script -n "uiConfigurationScriptNode";
	rename -uid "909DEDCE-9B4E-A9D4-7909-E8A45A4E801F";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 3\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 316\n            -height 276\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 3\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n"
		+ "            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n"
		+ "            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 316\n            -height 275\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 3\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n"
		+ "            -width 316\n            -height 275\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n"
		+ "            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 3\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n"
		+ "            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n"
		+ "            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 345\n            -height 595\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n"
		+ "            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n"
		+ "            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n"
		+ "            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n"
		+ "                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n"
		+ "                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -autoFitTime 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n"
		+ "                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n"
		+ "                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n"
		+ "                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n"
		+ "                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n"
		+ "                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n"
		+ "                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n"
		+ "                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n"
		+ "                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n"
		+ "                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n"
		+ "\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 3\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 345\\n    -height 595\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 3\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 345\\n    -height 595\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "229829E4-1745-1D67-E7E3-879B2B35204F";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode pairBlend -n "translateRotate6";
	rename -uid "4B570428-FE41-82DF-E6BB-5295CD2C0C2E";
createNode pairBlend -n "translateRotate";
	rename -uid "F4A6E343-2D49-BDA5-D15A-ACAFD4ACC22A";
	setAttr ".it1" -type "double3" 0 2 0 ;
	setAttr ".ir1" -type "double3" -89.961364124343405 -89.961364124343405 89.999927372397295 ;
createNode pairBlend -n "translateRotate7";
	rename -uid "F7913106-D64F-A761-4C4D-9997035813CD";
	setAttr ".it1" -type "double3" 0 2 0 ;
	setAttr ".ir1" -type "double3" 89.961364124343405 89.961364124343405 89.999927372397295 ;
createNode pairBlend -n "translateRotate8";
	rename -uid "52A32A7E-0345-6429-F3E8-15AFE921B694";
	setAttr ".it1" -type "double3" -3.9026412447299945e-36 2.0006730556488037 1 ;
	setAttr ".ir1" -type "double3" 0.54300606879239033 -0.57762178767113237 -86.461308816251247 ;
createNode pairBlend -n "translateRotate9";
	rename -uid "66A32222-144F-379C-39DD-F9BBD56046D7";
	setAttr ".it1" -type "double3" 0 2.0006730556488037 -1 ;
	setAttr ".ir1" -type "double3" 0.54300606879239033 -0.57762178767113237 -86.461308816251247 ;
createNode pairBlend -n "translateRotate10";
	rename -uid "BE93164C-A74E-D5B5-59BB-DD828556976A";
	setAttr ".it1" -type "double3" 0.063627369701862335 0.97175544500350952 1.0103931427001953 ;
	setAttr ".ir1" -type "double3" -0.64911759322103413 0.6082175666973515 -93.726246357124467 ;
createNode pairBlend -n "translateRotate11";
	rename -uid "26227852-9E4D-C79D-4D77-4E9C4E02B861";
	setAttr ".it1" -type "double3" 0.063627369701862335 0.97175544500350952 -0.98960691690444946 ;
	setAttr ".ir1" -type "double3" -0.64911759322103413 0.6082175666973515 -93.726246357124467 ;
createNode makeNurbCircle -n "makeNurbCircle1";
	rename -uid "0CF17E77-504C-C933-FB72-AFA83E75E05C";
	setAttr ".nr" -type "double3" 0 1 0 ;
select -ne :time1;
	setAttr ".o" 2;
	setAttr ".unw" 2;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 4 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".ren" -type "string" "arnold";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "joint5_parentConstraint1.ctx" "joint5.tx";
connectAttr "joint5_parentConstraint1.cty" "joint5.ty";
connectAttr "joint5_parentConstraint1.ctz" "joint5.tz";
connectAttr "joint5_parentConstraint1.crx" "joint5.rx";
connectAttr "joint5_parentConstraint1.cry" "joint5.ry";
connectAttr "joint5_parentConstraint1.crz" "joint5.rz";
connectAttr "joint5.s" "joint1.is";
connectAttr "joint1_parentConstraint1.ctx" "joint1.tx";
connectAttr "joint1_parentConstraint1.cty" "joint1.ty";
connectAttr "joint1_parentConstraint1.ctz" "joint1.tz";
connectAttr "joint1_parentConstraint1.crx" "joint1.rx";
connectAttr "joint1_parentConstraint1.cry" "joint1.ry";
connectAttr "joint1_parentConstraint1.crz" "joint1.rz";
connectAttr "joint1.s" "|joint5|joint1|joint2.is";
connectAttr "joint2_parentConstraint1.crx" "|joint5|joint1|joint2.rx";
connectAttr "joint2_parentConstraint1.cry" "|joint5|joint1|joint2.ry";
connectAttr "joint2_parentConstraint1.crz" "|joint5|joint1|joint2.rz";
connectAttr "joint2_parentConstraint1.ctx" "|joint5|joint1|joint2.tx";
connectAttr "joint2_parentConstraint1.cty" "|joint5|joint1|joint2.ty";
connectAttr "joint2_parentConstraint1.ctz" "|joint5|joint1|joint2.tz";
connectAttr "|joint5|joint1|joint2.s" "|joint5|joint1|joint2|joint3.is";
connectAttr "|joint5|joint1|joint2.ro" "joint2_parentConstraint1.cro";
connectAttr "|joint5|joint1|joint2.pim" "joint2_parentConstraint1.cpim";
connectAttr "|joint5|joint1|joint2.rp" "joint2_parentConstraint1.crp";
connectAttr "|joint5|joint1|joint2.rpt" "joint2_parentConstraint1.crt";
connectAttr "|joint5|joint1|joint2.jo" "joint2_parentConstraint1.cjo";
connectAttr "joint2_joint3.t" "joint2_parentConstraint1.tg[0].tt";
connectAttr "joint2_joint3.rp" "joint2_parentConstraint1.tg[0].trp";
connectAttr "joint2_joint3.rpt" "joint2_parentConstraint1.tg[0].trt";
connectAttr "joint2_joint3.r" "joint2_parentConstraint1.tg[0].tr";
connectAttr "joint2_joint3.ro" "joint2_parentConstraint1.tg[0].tro";
connectAttr "joint2_joint3.s" "joint2_parentConstraint1.tg[0].ts";
connectAttr "joint2_joint3.pm" "joint2_parentConstraint1.tg[0].tpm";
connectAttr "joint2_parentConstraint1.w0" "joint2_parentConstraint1.tg[0].tw";
connectAttr "sensor_rotation_leftKnee_orientConstraint1.crz" "sensor_rotation3_leftKnee.rz"
		;
connectAttr "sensor_rotation3_leftKnee.ro" "sensor_rotation_leftKnee_orientConstraint1.cro"
		;
connectAttr "sensor_rotation3_leftKnee.pim" "sensor_rotation_leftKnee_orientConstraint1.cpim"
		;
connectAttr "|joint5|joint1|joint2.r" "sensor_rotation_leftKnee_orientConstraint1.tg[0].tr"
		;
connectAttr "|joint5|joint1|joint2.ro" "sensor_rotation_leftKnee_orientConstraint1.tg[0].tro"
		;
connectAttr "|joint5|joint1|joint2.pm" "sensor_rotation_leftKnee_orientConstraint1.tg[0].tpm"
		;
connectAttr "|joint5|joint1|joint2.jo" "sensor_rotation_leftKnee_orientConstraint1.tg[0].tjo"
		;
connectAttr "sensor_rotation_leftKnee_orientConstraint1.w0" "sensor_rotation_leftKnee_orientConstraint1.tg[0].tw"
		;
connectAttr "joint1.ro" "joint1_parentConstraint1.cro";
connectAttr "joint1.pim" "joint1_parentConstraint1.cpim";
connectAttr "joint1.rp" "joint1_parentConstraint1.crp";
connectAttr "joint1.rpt" "joint1_parentConstraint1.crt";
connectAttr "joint1.jo" "joint1_parentConstraint1.cjo";
connectAttr "joint1_joint2.t" "joint1_parentConstraint1.tg[0].tt";
connectAttr "joint1_joint2.rp" "joint1_parentConstraint1.tg[0].trp";
connectAttr "joint1_joint2.rpt" "joint1_parentConstraint1.tg[0].trt";
connectAttr "joint1_joint2.r" "joint1_parentConstraint1.tg[0].tr";
connectAttr "joint1_joint2.ro" "joint1_parentConstraint1.tg[0].tro";
connectAttr "joint1_joint2.s" "joint1_parentConstraint1.tg[0].ts";
connectAttr "joint1_joint2.pm" "joint1_parentConstraint1.tg[0].tpm";
connectAttr "joint1_parentConstraint1.w0" "joint1_parentConstraint1.tg[0].tw";
connectAttr "joint5.s" "joint4.is";
connectAttr "joint4_parentConstraint1.ctx" "joint4.tx";
connectAttr "joint4_parentConstraint1.cty" "joint4.ty";
connectAttr "joint4_parentConstraint1.ctz" "joint4.tz";
connectAttr "joint4_parentConstraint1.crx" "joint4.rx";
connectAttr "joint4_parentConstraint1.cry" "joint4.ry";
connectAttr "joint4_parentConstraint1.crz" "joint4.rz";
connectAttr "joint4.s" "|joint5|joint4|joint2.is";
connectAttr "joint2_parentConstraint2.ctx" "|joint5|joint4|joint2.tx";
connectAttr "joint2_parentConstraint2.cty" "|joint5|joint4|joint2.ty";
connectAttr "joint2_parentConstraint2.ctz" "|joint5|joint4|joint2.tz";
connectAttr "joint2_parentConstraint2.crx" "|joint5|joint4|joint2.rx";
connectAttr "joint2_parentConstraint2.cry" "|joint5|joint4|joint2.ry";
connectAttr "joint2_parentConstraint2.crz" "|joint5|joint4|joint2.rz";
connectAttr "|joint5|joint4|joint2.s" "|joint5|joint4|joint2|joint3.is";
connectAttr "|joint5|joint4|joint2.ro" "joint2_parentConstraint2.cro";
connectAttr "|joint5|joint4|joint2.pim" "joint2_parentConstraint2.cpim";
connectAttr "|joint5|joint4|joint2.rp" "joint2_parentConstraint2.crp";
connectAttr "|joint5|joint4|joint2.rpt" "joint2_parentConstraint2.crt";
connectAttr "|joint5|joint4|joint2.jo" "joint2_parentConstraint2.cjo";
connectAttr "joint2_joint4.t" "joint2_parentConstraint2.tg[0].tt";
connectAttr "joint2_joint4.rp" "joint2_parentConstraint2.tg[0].trp";
connectAttr "joint2_joint4.rpt" "joint2_parentConstraint2.tg[0].trt";
connectAttr "joint2_joint4.r" "joint2_parentConstraint2.tg[0].tr";
connectAttr "joint2_joint4.ro" "joint2_parentConstraint2.tg[0].tro";
connectAttr "joint2_joint4.s" "joint2_parentConstraint2.tg[0].ts";
connectAttr "joint2_joint4.pm" "joint2_parentConstraint2.tg[0].tpm";
connectAttr "joint2_parentConstraint2.w0" "joint2_parentConstraint2.tg[0].tw";
connectAttr "joint4.ro" "joint4_parentConstraint1.cro";
connectAttr "joint4.pim" "joint4_parentConstraint1.cpim";
connectAttr "joint4.rp" "joint4_parentConstraint1.crp";
connectAttr "joint4.rpt" "joint4_parentConstraint1.crt";
connectAttr "joint4.jo" "joint4_parentConstraint1.cjo";
connectAttr "joint4_joint2.t" "joint4_parentConstraint1.tg[0].tt";
connectAttr "joint4_joint2.rp" "joint4_parentConstraint1.tg[0].trp";
connectAttr "joint4_joint2.rpt" "joint4_parentConstraint1.tg[0].trt";
connectAttr "joint4_joint2.r" "joint4_parentConstraint1.tg[0].tr";
connectAttr "joint4_joint2.ro" "joint4_parentConstraint1.tg[0].tro";
connectAttr "joint4_joint2.s" "joint4_parentConstraint1.tg[0].ts";
connectAttr "joint4_joint2.pm" "joint4_parentConstraint1.tg[0].tpm";
connectAttr "joint4_parentConstraint1.w0" "joint4_parentConstraint1.tg[0].tw";
connectAttr "sensor_rotation_rightKnee_orientConstraint1.crz" "sensor_rotation4_rightKnee.rz"
		;
connectAttr "sensor_rotation4_rightKnee.ro" "sensor_rotation_rightKnee_orientConstraint1.cro"
		;
connectAttr "sensor_rotation4_rightKnee.pim" "sensor_rotation_rightKnee_orientConstraint1.cpim"
		;
connectAttr "|joint5|joint4|joint2.r" "sensor_rotation_rightKnee_orientConstraint1.tg[0].tr"
		;
connectAttr "|joint5|joint4|joint2.ro" "sensor_rotation_rightKnee_orientConstraint1.tg[0].tro"
		;
connectAttr "|joint5|joint4|joint2.pm" "sensor_rotation_rightKnee_orientConstraint1.tg[0].tpm"
		;
connectAttr "|joint5|joint4|joint2.jo" "sensor_rotation_rightKnee_orientConstraint1.tg[0].tjo"
		;
connectAttr "sensor_rotation_rightKnee_orientConstraint1.w0" "sensor_rotation_rightKnee_orientConstraint1.tg[0].tw"
		;
connectAttr "joint5.ro" "joint5_parentConstraint1.cro";
connectAttr "joint5.pim" "joint5_parentConstraint1.cpim";
connectAttr "joint5.rp" "joint5_parentConstraint1.crp";
connectAttr "joint5.rpt" "joint5_parentConstraint1.crt";
connectAttr "joint5.jo" "joint5_parentConstraint1.cjo";
connectAttr "joint5_joint1.t" "joint5_parentConstraint1.tg[0].tt";
connectAttr "joint5_joint1.rp" "joint5_parentConstraint1.tg[0].trp";
connectAttr "joint5_joint1.rpt" "joint5_parentConstraint1.tg[0].trt";
connectAttr "joint5_joint1.r" "joint5_parentConstraint1.tg[0].tr";
connectAttr "joint5_joint1.ro" "joint5_parentConstraint1.tg[0].tro";
connectAttr "joint5_joint1.s" "joint5_parentConstraint1.tg[0].ts";
connectAttr "joint5_joint1.pm" "joint5_parentConstraint1.tg[0].tpm";
connectAttr "joint5_parentConstraint1.w0" "joint5_parentConstraint1.tg[0].tw";
connectAttr "sensor_rotation_rightThigh_orientConstraint1.crz" "sensor_rotation2_rightThigh.rz"
		;
connectAttr "sensor_rotation2_rightThigh.ro" "sensor_rotation_rightThigh_orientConstraint1.cro"
		;
connectAttr "sensor_rotation2_rightThigh.pim" "sensor_rotation_rightThigh_orientConstraint1.cpim"
		;
connectAttr "joint4.r" "sensor_rotation_rightThigh_orientConstraint1.tg[0].tr";
connectAttr "joint4.ro" "sensor_rotation_rightThigh_orientConstraint1.tg[0].tro"
		;
connectAttr "joint4.pm" "sensor_rotation_rightThigh_orientConstraint1.tg[0].tpm"
		;
connectAttr "joint4.jo" "sensor_rotation_rightThigh_orientConstraint1.tg[0].tjo"
		;
connectAttr "sensor_rotation_rightThigh_orientConstraint1.w0" "sensor_rotation_rightThigh_orientConstraint1.tg[0].tw"
		;
connectAttr "sensor_rotation_leftThigh_orientConstraint1.crz" "sensor_rotation1_leftThigh.rz"
		;
connectAttr "sensor_rotation1_leftThigh.ro" "sensor_rotation_leftThigh_orientConstraint1.cro"
		;
connectAttr "sensor_rotation1_leftThigh.pim" "sensor_rotation_leftThigh_orientConstraint1.cpim"
		;
connectAttr "joint1.r" "sensor_rotation_leftThigh_orientConstraint1.tg[0].tr";
connectAttr "joint1.ro" "sensor_rotation_leftThigh_orientConstraint1.tg[0].tro";
connectAttr "joint1.pm" "sensor_rotation_leftThigh_orientConstraint1.tg[0].tpm";
connectAttr "joint1.jo" "sensor_rotation_leftThigh_orientConstraint1.tg[0].tjo";
connectAttr "sensor_rotation_leftThigh_orientConstraint1.w0" "sensor_rotation_leftThigh_orientConstraint1.tg[0].tw"
		;
connectAttr ":time1.o" "bulletSolverShape1.ct";
connectAttr "bulletRigidBody_groundShape.rbdata" "bulletSolverShape1.rb" -na;
connectAttr "bulletRigidBodyShape1.rbdata" "bulletSolverShape1.rb" -na;
connectAttr "bulletRigidBodyShape2.rbdata" "bulletSolverShape1.rb" -na;
connectAttr "bulletRigidBodyShape3.rbdata" "bulletSolverShape1.rb" -na;
connectAttr "bulletRigidBodyShape4.rbdata" "bulletSolverShape1.rb" -na;
connectAttr "bulletRigidBodyShape5.rbdata" "bulletSolverShape1.rb" -na;
connectAttr "bulletRigidBodyShape6.rbdata" "bulletSolverShape1.rb" -na;
connectAttr "constraint_jointShape5.outcondata" "bulletSolverShape1.rbc" -na;
connectAttr "motor1_leftThighShape.outcondata" "bulletSolverShape1.rbc" -na;
connectAttr "motor2_rightThighShape.outcondata" "bulletSolverShape1.rbc" -na;
connectAttr "motor3_leftKneeShape.outcondata" "bulletSolverShape1.rbc" -na;
connectAttr "motor4_rightKneeShape.outcondata" "bulletSolverShape1.rbc" -na;
connectAttr "sensor_rotation_body_orientConstraint1.crz" "sensor_rotation0_body.rz"
		;
connectAttr "sensor_rotation_body_pointConstraint1.ctx" "sensor_rotation0_body.tx"
		;
connectAttr "sensor_rotation_body_pointConstraint1.cty" "sensor_rotation0_body.ty"
		;
connectAttr "sensor_rotation_body_pointConstraint1.ctz" "sensor_rotation0_body.tz"
		;
connectAttr "sensor_rotation0_body.ro" "sensor_rotation_body_orientConstraint1.cro"
		;
connectAttr "sensor_rotation0_body.pim" "sensor_rotation_body_orientConstraint1.cpim"
		;
connectAttr "joint5.r" "sensor_rotation_body_orientConstraint1.tg[0].tr";
connectAttr "joint5.ro" "sensor_rotation_body_orientConstraint1.tg[0].tro";
connectAttr "joint5.pm" "sensor_rotation_body_orientConstraint1.tg[0].tpm";
connectAttr "joint5.jo" "sensor_rotation_body_orientConstraint1.tg[0].tjo";
connectAttr "sensor_rotation_body_orientConstraint1.w0" "sensor_rotation_body_orientConstraint1.tg[0].tw"
		;
connectAttr "sensor_rotation0_body.pim" "sensor_rotation_body_pointConstraint1.cpim"
		;
connectAttr "sensor_rotation0_body.rp" "sensor_rotation_body_pointConstraint1.crp"
		;
connectAttr "sensor_rotation0_body.rpt" "sensor_rotation_body_pointConstraint1.crt"
		;
connectAttr "joint5.t" "sensor_rotation_body_pointConstraint1.tg[0].tt";
connectAttr "joint5.rp" "sensor_rotation_body_pointConstraint1.tg[0].trp";
connectAttr "joint5.rpt" "sensor_rotation_body_pointConstraint1.tg[0].trt";
connectAttr "joint5.pm" "sensor_rotation_body_pointConstraint1.tg[0].tpm";
connectAttr "sensor_rotation_body_pointConstraint1.w0" "sensor_rotation_body_pointConstraint1.tg[0].tw"
		;
connectAttr "translateRotate6.otx" "bulletRigidBody_ground.tx";
connectAttr "translateRotate6.oty" "bulletRigidBody_ground.ty";
connectAttr "translateRotate6.otz" "bulletRigidBody_ground.tz";
connectAttr "translateRotate6.orx" "bulletRigidBody_ground.rx";
connectAttr "translateRotate6.ory" "bulletRigidBody_ground.ry";
connectAttr "translateRotate6.orz" "bulletRigidBody_ground.rz";
connectAttr "bulletRigidBody_ground.wm" "bulletRigidBody_groundShape.inwmat";
connectAttr "bulletRigidBody_ground.pim" "bulletRigidBody_groundShape.inpim";
connectAttr "bulletSolverShape1.solinitdata" "bulletRigidBody_groundShape.solinit"
		;
connectAttr "bulletSolverShape1.soldata" "bulletRigidBody_groundShape.solup";
connectAttr "bulletSolverShape1.st" "bulletRigidBody_groundShape.st";
connectAttr "bulletSolverShape1.ct" "bulletRigidBody_groundShape.ct";
connectAttr "bulletRigidBody_ground.rp" "bulletRigidBody_groundShape.ptrs";
connectAttr "translateRotate.otx" "joint5_joint1.tx";
connectAttr "translateRotate.oty" "joint5_joint1.ty";
connectAttr "translateRotate.otz" "joint5_joint1.tz";
connectAttr "translateRotate.orx" "joint5_joint1.rx";
connectAttr "translateRotate.ory" "joint5_joint1.ry";
connectAttr "translateRotate.orz" "joint5_joint1.rz";
connectAttr "joint5_joint1.wm" "bulletRigidBodyShape1.inwmat";
connectAttr "joint5_joint1.pim" "bulletRigidBodyShape1.inpim";
connectAttr "bulletSolverShape1.solinitdata" "bulletRigidBodyShape1.solinit";
connectAttr "bulletSolverShape1.soldata" "bulletRigidBodyShape1.solup";
connectAttr "bulletSolverShape1.st" "bulletRigidBodyShape1.st";
connectAttr "bulletSolverShape1.ct" "bulletRigidBodyShape1.ct";
connectAttr "joint5_joint1.rp" "bulletRigidBodyShape1.ptrs";
connectAttr "translateRotate7.otx" "joint5_joint4.tx";
connectAttr "translateRotate7.oty" "joint5_joint4.ty";
connectAttr "translateRotate7.otz" "joint5_joint4.tz";
connectAttr "translateRotate7.orx" "joint5_joint4.rx";
connectAttr "translateRotate7.ory" "joint5_joint4.ry";
connectAttr "translateRotate7.orz" "joint5_joint4.rz";
connectAttr "joint5_joint4.wm" "bulletRigidBodyShape2.inwmat";
connectAttr "joint5_joint4.pim" "bulletRigidBodyShape2.inpim";
connectAttr "bulletSolverShape1.solinitdata" "bulletRigidBodyShape2.solinit";
connectAttr "bulletSolverShape1.soldata" "bulletRigidBodyShape2.solup";
connectAttr "bulletSolverShape1.st" "bulletRigidBodyShape2.st";
connectAttr "bulletSolverShape1.ct" "bulletRigidBodyShape2.ct";
connectAttr "joint5_joint4.rp" "bulletRigidBodyShape2.ptrs";
connectAttr "bulletSolverShape1.solinitdata" "constraint_jointShape5.solinit";
connectAttr "bulletRigidBodyShape1.rbdata" "constraint_jointShape5.rba";
connectAttr "bulletRigidBodyShape2.rbdata" "constraint_jointShape5.rbb";
connectAttr "bulletSolverShape1.st" "constraint_jointShape5.st";
connectAttr "bulletSolverShape1.ct" "constraint_jointShape5.ct";
connectAttr "translateRotate8.otx" "joint1_joint2.tx";
connectAttr "translateRotate8.oty" "joint1_joint2.ty";
connectAttr "translateRotate8.otz" "joint1_joint2.tz";
connectAttr "translateRotate8.orx" "joint1_joint2.rx";
connectAttr "translateRotate8.ory" "joint1_joint2.ry";
connectAttr "translateRotate8.orz" "joint1_joint2.rz";
connectAttr "joint1_joint2.wm" "bulletRigidBodyShape3.inwmat";
connectAttr "joint1_joint2.pim" "bulletRigidBodyShape3.inpim";
connectAttr "bulletSolverShape1.solinitdata" "bulletRigidBodyShape3.solinit";
connectAttr "bulletSolverShape1.soldata" "bulletRigidBodyShape3.solup";
connectAttr "bulletSolverShape1.st" "bulletRigidBodyShape3.st";
connectAttr "bulletSolverShape1.ct" "bulletRigidBodyShape3.ct";
connectAttr "joint1_joint2.rp" "bulletRigidBodyShape3.ptrs";
connectAttr "bulletSolverShape1.solinitdata" "motor1_leftThighShape.solinit";
connectAttr "bulletRigidBodyShape1.rbdata" "motor1_leftThighShape.rba";
connectAttr "bulletRigidBodyShape3.rbdata" "motor1_leftThighShape.rbb";
connectAttr "bulletSolverShape1.st" "motor1_leftThighShape.st";
connectAttr "bulletSolverShape1.ct" "motor1_leftThighShape.ct";
connectAttr "translateRotate9.otx" "joint4_joint2.tx";
connectAttr "translateRotate9.oty" "joint4_joint2.ty";
connectAttr "translateRotate9.otz" "joint4_joint2.tz";
connectAttr "translateRotate9.orx" "joint4_joint2.rx";
connectAttr "translateRotate9.ory" "joint4_joint2.ry";
connectAttr "translateRotate9.orz" "joint4_joint2.rz";
connectAttr "joint4_joint2.wm" "bulletRigidBodyShape4.inwmat";
connectAttr "joint4_joint2.pim" "bulletRigidBodyShape4.inpim";
connectAttr "bulletSolverShape1.solinitdata" "bulletRigidBodyShape4.solinit";
connectAttr "bulletSolverShape1.soldata" "bulletRigidBodyShape4.solup";
connectAttr "bulletSolverShape1.st" "bulletRigidBodyShape4.st";
connectAttr "bulletSolverShape1.ct" "bulletRigidBodyShape4.ct";
connectAttr "joint4_joint2.rp" "bulletRigidBodyShape4.ptrs";
connectAttr "bulletSolverShape1.solinitdata" "motor2_rightThighShape.solinit";
connectAttr "bulletRigidBodyShape2.rbdata" "motor2_rightThighShape.rba";
connectAttr "bulletRigidBodyShape4.rbdata" "motor2_rightThighShape.rbb";
connectAttr "bulletSolverShape1.st" "motor2_rightThighShape.st";
connectAttr "bulletSolverShape1.ct" "motor2_rightThighShape.ct";
connectAttr "translateRotate10.otx" "joint2_joint3.tx";
connectAttr "translateRotate10.oty" "joint2_joint3.ty";
connectAttr "translateRotate10.otz" "joint2_joint3.tz";
connectAttr "translateRotate10.orx" "joint2_joint3.rx";
connectAttr "translateRotate10.ory" "joint2_joint3.ry";
connectAttr "translateRotate10.orz" "joint2_joint3.rz";
connectAttr "joint2_joint3.wm" "bulletRigidBodyShape5.inwmat";
connectAttr "joint2_joint3.pim" "bulletRigidBodyShape5.inpim";
connectAttr "bulletSolverShape1.solinitdata" "bulletRigidBodyShape5.solinit";
connectAttr "bulletSolverShape1.soldata" "bulletRigidBodyShape5.solup";
connectAttr "bulletSolverShape1.st" "bulletRigidBodyShape5.st";
connectAttr "bulletSolverShape1.ct" "bulletRigidBodyShape5.ct";
connectAttr "joint2_joint3.rp" "bulletRigidBodyShape5.ptrs";
connectAttr "bulletSolverShape1.solinitdata" "motor3_leftKneeShape.solinit";
connectAttr "bulletRigidBodyShape3.rbdata" "motor3_leftKneeShape.rba";
connectAttr "bulletRigidBodyShape5.rbdata" "motor3_leftKneeShape.rbb";
connectAttr "bulletSolverShape1.st" "motor3_leftKneeShape.st";
connectAttr "bulletSolverShape1.ct" "motor3_leftKneeShape.ct";
connectAttr "translateRotate11.otx" "joint2_joint4.tx";
connectAttr "translateRotate11.oty" "joint2_joint4.ty";
connectAttr "translateRotate11.otz" "joint2_joint4.tz";
connectAttr "translateRotate11.orx" "joint2_joint4.rx";
connectAttr "translateRotate11.ory" "joint2_joint4.ry";
connectAttr "translateRotate11.orz" "joint2_joint4.rz";
connectAttr "joint2_joint4.wm" "bulletRigidBodyShape6.inwmat";
connectAttr "joint2_joint4.pim" "bulletRigidBodyShape6.inpim";
connectAttr "bulletSolverShape1.solinitdata" "bulletRigidBodyShape6.solinit";
connectAttr "bulletSolverShape1.soldata" "bulletRigidBodyShape6.solup";
connectAttr "bulletSolverShape1.st" "bulletRigidBodyShape6.st";
connectAttr "bulletSolverShape1.ct" "bulletRigidBodyShape6.ct";
connectAttr "joint2_joint4.rp" "bulletRigidBodyShape6.ptrs";
connectAttr "bulletSolverShape1.solinitdata" "motor4_rightKneeShape.solinit";
connectAttr "bulletRigidBodyShape4.rbdata" "motor4_rightKneeShape.rba";
connectAttr "bulletRigidBodyShape6.rbdata" "motor4_rightKneeShape.rbb";
connectAttr "bulletSolverShape1.st" "motor4_rightKneeShape.st";
connectAttr "bulletSolverShape1.ct" "motor4_rightKneeShape.ct";
connectAttr "sensor_translate_body_pointConstraint1.ctx" "sensor_translate_body.tx"
		;
connectAttr "sensor_translate_body_pointConstraint1.cty" "sensor_translate_body.ty"
		;
connectAttr "sensor_translate_body_pointConstraint1.ctz" "sensor_translate_body.tz"
		;
connectAttr "sensor_translate_body.pim" "sensor_translate_body_pointConstraint1.cpim"
		;
connectAttr "sensor_translate_body.rp" "sensor_translate_body_pointConstraint1.crp"
		;
connectAttr "sensor_translate_body.rpt" "sensor_translate_body_pointConstraint1.crt"
		;
connectAttr "joint5.t" "sensor_translate_body_pointConstraint1.tg[0].tt";
connectAttr "joint5.rp" "sensor_translate_body_pointConstraint1.tg[0].trp";
connectAttr "joint5.rpt" "sensor_translate_body_pointConstraint1.tg[0].trt";
connectAttr "joint5.pm" "sensor_translate_body_pointConstraint1.tg[0].tpm";
connectAttr "sensor_translate_body_pointConstraint1.w0" "sensor_translate_body_pointConstraint1.tg[0].tw"
		;
connectAttr "sensor_death_body1_parentConstraint1.ctx" "sensor_death_body1.tx";
connectAttr "sensor_death_body1_parentConstraint1.cty" "sensor_death_body1.ty";
connectAttr "sensor_death_body1_parentConstraint1.ctz" "sensor_death_body1.tz";
connectAttr "sensor_death_body1_parentConstraint1.crx" "sensor_death_body1.rx";
connectAttr "sensor_death_body1_parentConstraint1.cry" "sensor_death_body1.ry";
connectAttr "sensor_death_body1_parentConstraint1.crz" "sensor_death_body1.rz";
connectAttr "makeNurbCircle1.oc" "sensor_death_bodyShape1.cr";
connectAttr "sensor_death_body1.ro" "sensor_death_body1_parentConstraint1.cro";
connectAttr "sensor_death_body1.pim" "sensor_death_body1_parentConstraint1.cpim"
		;
connectAttr "sensor_death_body1.rp" "sensor_death_body1_parentConstraint1.crp";
connectAttr "sensor_death_body1.rpt" "sensor_death_body1_parentConstraint1.crt";
connectAttr "joint5.t" "sensor_death_body1_parentConstraint1.tg[0].tt";
connectAttr "joint5.rp" "sensor_death_body1_parentConstraint1.tg[0].trp";
connectAttr "joint5.rpt" "sensor_death_body1_parentConstraint1.tg[0].trt";
connectAttr "joint5.r" "sensor_death_body1_parentConstraint1.tg[0].tr";
connectAttr "joint5.ro" "sensor_death_body1_parentConstraint1.tg[0].tro";
connectAttr "joint5.s" "sensor_death_body1_parentConstraint1.tg[0].ts";
connectAttr "joint5.pm" "sensor_death_body1_parentConstraint1.tg[0].tpm";
connectAttr "joint5.jo" "sensor_death_body1_parentConstraint1.tg[0].tjo";
connectAttr "joint5.ssc" "sensor_death_body1_parentConstraint1.tg[0].tsc";
connectAttr "joint5.is" "sensor_death_body1_parentConstraint1.tg[0].tis";
connectAttr "sensor_death_body1_parentConstraint1.w0" "sensor_death_body1_parentConstraint1.tg[0].tw"
		;
connectAttr "sensor_death_body2_parentConstraint1.ctx" "sensor_death_body2.tx";
connectAttr "sensor_death_body2_parentConstraint1.cty" "sensor_death_body2.ty";
connectAttr "sensor_death_body2_parentConstraint1.ctz" "sensor_death_body2.tz";
connectAttr "sensor_death_body2_parentConstraint1.crx" "sensor_death_body2.rx";
connectAttr "sensor_death_body2_parentConstraint1.cry" "sensor_death_body2.ry";
connectAttr "sensor_death_body2_parentConstraint1.crz" "sensor_death_body2.rz";
connectAttr "sensor_death_body2.ro" "sensor_death_body2_parentConstraint1.cro";
connectAttr "sensor_death_body2.pim" "sensor_death_body2_parentConstraint1.cpim"
		;
connectAttr "sensor_death_body2.rp" "sensor_death_body2_parentConstraint1.crp";
connectAttr "sensor_death_body2.rpt" "sensor_death_body2_parentConstraint1.crt";
connectAttr "joint5.t" "sensor_death_body2_parentConstraint1.tg[0].tt";
connectAttr "joint5.rp" "sensor_death_body2_parentConstraint1.tg[0].trp";
connectAttr "joint5.rpt" "sensor_death_body2_parentConstraint1.tg[0].trt";
connectAttr "joint5.r" "sensor_death_body2_parentConstraint1.tg[0].tr";
connectAttr "joint5.ro" "sensor_death_body2_parentConstraint1.tg[0].tro";
connectAttr "joint5.s" "sensor_death_body2_parentConstraint1.tg[0].ts";
connectAttr "joint5.pm" "sensor_death_body2_parentConstraint1.tg[0].tpm";
connectAttr "joint5.jo" "sensor_death_body2_parentConstraint1.tg[0].tjo";
connectAttr "joint5.ssc" "sensor_death_body2_parentConstraint1.tg[0].tsc";
connectAttr "joint5.is" "sensor_death_body2_parentConstraint1.tg[0].tis";
connectAttr "sensor_death_body2_parentConstraint1.w0" "sensor_death_body2_parentConstraint1.tg[0].tw"
		;
connectAttr "sensor_death_body3_parentConstraint1.ctx" "sensor_death_body3.tx";
connectAttr "sensor_death_body3_parentConstraint1.cty" "sensor_death_body3.ty";
connectAttr "sensor_death_body3_parentConstraint1.ctz" "sensor_death_body3.tz";
connectAttr "sensor_death_body3_parentConstraint1.crx" "sensor_death_body3.rx";
connectAttr "sensor_death_body3_parentConstraint1.cry" "sensor_death_body3.ry";
connectAttr "sensor_death_body3_parentConstraint1.crz" "sensor_death_body3.rz";
connectAttr "sensor_death_body3.ro" "sensor_death_body3_parentConstraint1.cro";
connectAttr "sensor_death_body3.pim" "sensor_death_body3_parentConstraint1.cpim"
		;
connectAttr "sensor_death_body3.rp" "sensor_death_body3_parentConstraint1.crp";
connectAttr "sensor_death_body3.rpt" "sensor_death_body3_parentConstraint1.crt";
connectAttr "joint5.t" "sensor_death_body3_parentConstraint1.tg[0].tt";
connectAttr "joint5.rp" "sensor_death_body3_parentConstraint1.tg[0].trp";
connectAttr "joint5.rpt" "sensor_death_body3_parentConstraint1.tg[0].trt";
connectAttr "joint5.r" "sensor_death_body3_parentConstraint1.tg[0].tr";
connectAttr "joint5.ro" "sensor_death_body3_parentConstraint1.tg[0].tro";
connectAttr "joint5.s" "sensor_death_body3_parentConstraint1.tg[0].ts";
connectAttr "joint5.pm" "sensor_death_body3_parentConstraint1.tg[0].tpm";
connectAttr "joint5.jo" "sensor_death_body3_parentConstraint1.tg[0].tjo";
connectAttr "joint5.ssc" "sensor_death_body3_parentConstraint1.tg[0].tsc";
connectAttr "joint5.is" "sensor_death_body3_parentConstraint1.tg[0].tis";
connectAttr "sensor_death_body3_parentConstraint1.w0" "sensor_death_body3_parentConstraint1.tg[0].tw"
		;
connectAttr "sensor_death_body4_parentConstraint1.ctx" "sensor_death_body4.tx";
connectAttr "sensor_death_body4_parentConstraint1.cty" "sensor_death_body4.ty";
connectAttr "sensor_death_body4_parentConstraint1.ctz" "sensor_death_body4.tz";
connectAttr "sensor_death_body4_parentConstraint1.crx" "sensor_death_body4.rx";
connectAttr "sensor_death_body4_parentConstraint1.cry" "sensor_death_body4.ry";
connectAttr "sensor_death_body4_parentConstraint1.crz" "sensor_death_body4.rz";
connectAttr "sensor_death_body4.ro" "sensor_death_body4_parentConstraint1.cro";
connectAttr "sensor_death_body4.pim" "sensor_death_body4_parentConstraint1.cpim"
		;
connectAttr "sensor_death_body4.rp" "sensor_death_body4_parentConstraint1.crp";
connectAttr "sensor_death_body4.rpt" "sensor_death_body4_parentConstraint1.crt";
connectAttr "joint5.t" "sensor_death_body4_parentConstraint1.tg[0].tt";
connectAttr "joint5.rp" "sensor_death_body4_parentConstraint1.tg[0].trp";
connectAttr "joint5.rpt" "sensor_death_body4_parentConstraint1.tg[0].trt";
connectAttr "joint5.r" "sensor_death_body4_parentConstraint1.tg[0].tr";
connectAttr "joint5.ro" "sensor_death_body4_parentConstraint1.tg[0].tro";
connectAttr "joint5.s" "sensor_death_body4_parentConstraint1.tg[0].ts";
connectAttr "joint5.pm" "sensor_death_body4_parentConstraint1.tg[0].tpm";
connectAttr "joint5.jo" "sensor_death_body4_parentConstraint1.tg[0].tjo";
connectAttr "joint5.ssc" "sensor_death_body4_parentConstraint1.tg[0].tsc";
connectAttr "joint5.is" "sensor_death_body4_parentConstraint1.tg[0].tis";
connectAttr "sensor_death_body4_parentConstraint1.w0" "sensor_death_body4_parentConstraint1.tg[0].tw"
		;
connectAttr "sensor_death_body5_parentConstraint1.ctx" "sensor_death_body5.tx";
connectAttr "sensor_death_body5_parentConstraint1.cty" "sensor_death_body5.ty";
connectAttr "sensor_death_body5_parentConstraint1.ctz" "sensor_death_body5.tz";
connectAttr "sensor_death_body5_parentConstraint1.crx" "sensor_death_body5.rx";
connectAttr "sensor_death_body5_parentConstraint1.cry" "sensor_death_body5.ry";
connectAttr "sensor_death_body5_parentConstraint1.crz" "sensor_death_body5.rz";
connectAttr "sensor_death_body5.ro" "sensor_death_body5_parentConstraint1.cro";
connectAttr "sensor_death_body5.pim" "sensor_death_body5_parentConstraint1.cpim"
		;
connectAttr "sensor_death_body5.rp" "sensor_death_body5_parentConstraint1.crp";
connectAttr "sensor_death_body5.rpt" "sensor_death_body5_parentConstraint1.crt";
connectAttr "joint5.t" "sensor_death_body5_parentConstraint1.tg[0].tt";
connectAttr "joint5.rp" "sensor_death_body5_parentConstraint1.tg[0].trp";
connectAttr "joint5.rpt" "sensor_death_body5_parentConstraint1.tg[0].trt";
connectAttr "joint5.r" "sensor_death_body5_parentConstraint1.tg[0].tr";
connectAttr "joint5.ro" "sensor_death_body5_parentConstraint1.tg[0].tro";
connectAttr "joint5.s" "sensor_death_body5_parentConstraint1.tg[0].ts";
connectAttr "joint5.pm" "sensor_death_body5_parentConstraint1.tg[0].tpm";
connectAttr "joint5.jo" "sensor_death_body5_parentConstraint1.tg[0].tjo";
connectAttr "joint5.ssc" "sensor_death_body5_parentConstraint1.tg[0].tsc";
connectAttr "joint5.is" "sensor_death_body5_parentConstraint1.tg[0].tis";
connectAttr "sensor_death_body5_parentConstraint1.w0" "sensor_death_body5_parentConstraint1.tg[0].tw"
		;
connectAttr "sensor_death_body6_parentConstraint1.ctx" "sensor_death_body6.tx";
connectAttr "sensor_death_body6_parentConstraint1.cty" "sensor_death_body6.ty";
connectAttr "sensor_death_body6_parentConstraint1.ctz" "sensor_death_body6.tz";
connectAttr "sensor_death_body6_parentConstraint1.crx" "sensor_death_body6.rx";
connectAttr "sensor_death_body6_parentConstraint1.cry" "sensor_death_body6.ry";
connectAttr "sensor_death_body6_parentConstraint1.crz" "sensor_death_body6.rz";
connectAttr "sensor_death_body6.ro" "sensor_death_body6_parentConstraint1.cro";
connectAttr "sensor_death_body6.pim" "sensor_death_body6_parentConstraint1.cpim"
		;
connectAttr "sensor_death_body6.rp" "sensor_death_body6_parentConstraint1.crp";
connectAttr "sensor_death_body6.rpt" "sensor_death_body6_parentConstraint1.crt";
connectAttr "joint5.t" "sensor_death_body6_parentConstraint1.tg[0].tt";
connectAttr "joint5.rp" "sensor_death_body6_parentConstraint1.tg[0].trp";
connectAttr "joint5.rpt" "sensor_death_body6_parentConstraint1.tg[0].trt";
connectAttr "joint5.r" "sensor_death_body6_parentConstraint1.tg[0].tr";
connectAttr "joint5.ro" "sensor_death_body6_parentConstraint1.tg[0].tro";
connectAttr "joint5.s" "sensor_death_body6_parentConstraint1.tg[0].ts";
connectAttr "joint5.pm" "sensor_death_body6_parentConstraint1.tg[0].tpm";
connectAttr "joint5.jo" "sensor_death_body6_parentConstraint1.tg[0].tjo";
connectAttr "joint5.ssc" "sensor_death_body6_parentConstraint1.tg[0].tsc";
connectAttr "joint5.is" "sensor_death_body6_parentConstraint1.tg[0].tis";
connectAttr "sensor_death_body6_parentConstraint1.w0" "sensor_death_body6_parentConstraint1.tg[0].tw"
		;
connectAttr "sensor_death_body7_parentConstraint1.ctx" "sensor_death_body7.tx";
connectAttr "sensor_death_body7_parentConstraint1.cty" "sensor_death_body7.ty";
connectAttr "sensor_death_body7_parentConstraint1.ctz" "sensor_death_body7.tz";
connectAttr "sensor_death_body7_parentConstraint1.crx" "sensor_death_body7.rx";
connectAttr "sensor_death_body7_parentConstraint1.cry" "sensor_death_body7.ry";
connectAttr "sensor_death_body7_parentConstraint1.crz" "sensor_death_body7.rz";
connectAttr "sensor_death_body7.ro" "sensor_death_body7_parentConstraint1.cro";
connectAttr "sensor_death_body7.pim" "sensor_death_body7_parentConstraint1.cpim"
		;
connectAttr "sensor_death_body7.rp" "sensor_death_body7_parentConstraint1.crp";
connectAttr "sensor_death_body7.rpt" "sensor_death_body7_parentConstraint1.crt";
connectAttr "joint5.t" "sensor_death_body7_parentConstraint1.tg[0].tt";
connectAttr "joint5.rp" "sensor_death_body7_parentConstraint1.tg[0].trp";
connectAttr "joint5.rpt" "sensor_death_body7_parentConstraint1.tg[0].trt";
connectAttr "joint5.r" "sensor_death_body7_parentConstraint1.tg[0].tr";
connectAttr "joint5.ro" "sensor_death_body7_parentConstraint1.tg[0].tro";
connectAttr "joint5.s" "sensor_death_body7_parentConstraint1.tg[0].ts";
connectAttr "joint5.pm" "sensor_death_body7_parentConstraint1.tg[0].tpm";
connectAttr "joint5.jo" "sensor_death_body7_parentConstraint1.tg[0].tjo";
connectAttr "joint5.ssc" "sensor_death_body7_parentConstraint1.tg[0].tsc";
connectAttr "joint5.is" "sensor_death_body7_parentConstraint1.tg[0].tis";
connectAttr "sensor_death_body7_parentConstraint1.w0" "sensor_death_body7_parentConstraint1.tg[0].tw"
		;
connectAttr "sensor_death_body8_parentConstraint1.ctx" "sensor_death_body8.tx";
connectAttr "sensor_death_body8_parentConstraint1.cty" "sensor_death_body8.ty";
connectAttr "sensor_death_body8_parentConstraint1.ctz" "sensor_death_body8.tz";
connectAttr "sensor_death_body8_parentConstraint1.crx" "sensor_death_body8.rx";
connectAttr "sensor_death_body8_parentConstraint1.cry" "sensor_death_body8.ry";
connectAttr "sensor_death_body8_parentConstraint1.crz" "sensor_death_body8.rz";
connectAttr "sensor_death_body8.ro" "sensor_death_body8_parentConstraint1.cro";
connectAttr "sensor_death_body8.pim" "sensor_death_body8_parentConstraint1.cpim"
		;
connectAttr "sensor_death_body8.rp" "sensor_death_body8_parentConstraint1.crp";
connectAttr "sensor_death_body8.rpt" "sensor_death_body8_parentConstraint1.crt";
connectAttr "joint5.t" "sensor_death_body8_parentConstraint1.tg[0].tt";
connectAttr "joint5.rp" "sensor_death_body8_parentConstraint1.tg[0].trp";
connectAttr "joint5.rpt" "sensor_death_body8_parentConstraint1.tg[0].trt";
connectAttr "joint5.r" "sensor_death_body8_parentConstraint1.tg[0].tr";
connectAttr "joint5.ro" "sensor_death_body8_parentConstraint1.tg[0].tro";
connectAttr "joint5.s" "sensor_death_body8_parentConstraint1.tg[0].ts";
connectAttr "joint5.pm" "sensor_death_body8_parentConstraint1.tg[0].tpm";
connectAttr "joint5.jo" "sensor_death_body8_parentConstraint1.tg[0].tjo";
connectAttr "joint5.ssc" "sensor_death_body8_parentConstraint1.tg[0].tsc";
connectAttr "joint5.is" "sensor_death_body8_parentConstraint1.tg[0].tis";
connectAttr "sensor_death_body8_parentConstraint1.w0" "sensor_death_body8_parentConstraint1.tg[0].tw"
		;
connectAttr "sensor_death_knee1_parentConstraint1.ctx" "sensor_death_knee1.tx";
connectAttr "sensor_death_knee1_parentConstraint1.cty" "sensor_death_knee1.ty";
connectAttr "sensor_death_knee1_parentConstraint1.ctz" "sensor_death_knee1.tz";
connectAttr "sensor_death_knee1_parentConstraint1.crx" "sensor_death_knee1.rx";
connectAttr "sensor_death_knee1_parentConstraint1.cry" "sensor_death_knee1.ry";
connectAttr "sensor_death_knee1_parentConstraint1.crz" "sensor_death_knee1.rz";
connectAttr "sensor_death_knee1.ro" "sensor_death_knee1_parentConstraint1.cro";
connectAttr "sensor_death_knee1.pim" "sensor_death_knee1_parentConstraint1.cpim"
		;
connectAttr "sensor_death_knee1.rp" "sensor_death_knee1_parentConstraint1.crp";
connectAttr "sensor_death_knee1.rpt" "sensor_death_knee1_parentConstraint1.crt";
connectAttr "joint1.t" "sensor_death_knee1_parentConstraint1.tg[0].tt";
connectAttr "joint1.rp" "sensor_death_knee1_parentConstraint1.tg[0].trp";
connectAttr "joint1.rpt" "sensor_death_knee1_parentConstraint1.tg[0].trt";
connectAttr "joint1.r" "sensor_death_knee1_parentConstraint1.tg[0].tr";
connectAttr "joint1.ro" "sensor_death_knee1_parentConstraint1.tg[0].tro";
connectAttr "joint1.s" "sensor_death_knee1_parentConstraint1.tg[0].ts";
connectAttr "joint1.pm" "sensor_death_knee1_parentConstraint1.tg[0].tpm";
connectAttr "joint1.jo" "sensor_death_knee1_parentConstraint1.tg[0].tjo";
connectAttr "joint1.ssc" "sensor_death_knee1_parentConstraint1.tg[0].tsc";
connectAttr "joint1.is" "sensor_death_knee1_parentConstraint1.tg[0].tis";
connectAttr "sensor_death_knee1_parentConstraint1.w0" "sensor_death_knee1_parentConstraint1.tg[0].tw"
		;
connectAttr "sensor_death_knee2_parentConstraint1.ctx" "sensor_death_knee2.tx";
connectAttr "sensor_death_knee2_parentConstraint1.cty" "sensor_death_knee2.ty";
connectAttr "sensor_death_knee2_parentConstraint1.ctz" "sensor_death_knee2.tz";
connectAttr "sensor_death_knee2_parentConstraint1.crx" "sensor_death_knee2.rx";
connectAttr "sensor_death_knee2_parentConstraint1.cry" "sensor_death_knee2.ry";
connectAttr "sensor_death_knee2_parentConstraint1.crz" "sensor_death_knee2.rz";
connectAttr "sensor_death_knee2.ro" "sensor_death_knee2_parentConstraint1.cro";
connectAttr "sensor_death_knee2.pim" "sensor_death_knee2_parentConstraint1.cpim"
		;
connectAttr "sensor_death_knee2.rp" "sensor_death_knee2_parentConstraint1.crp";
connectAttr "sensor_death_knee2.rpt" "sensor_death_knee2_parentConstraint1.crt";
connectAttr "joint1.t" "sensor_death_knee2_parentConstraint1.tg[0].tt";
connectAttr "joint1.rp" "sensor_death_knee2_parentConstraint1.tg[0].trp";
connectAttr "joint1.rpt" "sensor_death_knee2_parentConstraint1.tg[0].trt";
connectAttr "joint1.r" "sensor_death_knee2_parentConstraint1.tg[0].tr";
connectAttr "joint1.ro" "sensor_death_knee2_parentConstraint1.tg[0].tro";
connectAttr "joint1.s" "sensor_death_knee2_parentConstraint1.tg[0].ts";
connectAttr "joint1.pm" "sensor_death_knee2_parentConstraint1.tg[0].tpm";
connectAttr "joint1.jo" "sensor_death_knee2_parentConstraint1.tg[0].tjo";
connectAttr "joint1.ssc" "sensor_death_knee2_parentConstraint1.tg[0].tsc";
connectAttr "joint1.is" "sensor_death_knee2_parentConstraint1.tg[0].tis";
connectAttr "sensor_death_knee2_parentConstraint1.w0" "sensor_death_knee2_parentConstraint1.tg[0].tw"
		;
connectAttr "sensor_death_knee3_parentConstraint1.ctx" "sensor_death_knee3.tx";
connectAttr "sensor_death_knee3_parentConstraint1.cty" "sensor_death_knee3.ty";
connectAttr "sensor_death_knee3_parentConstraint1.ctz" "sensor_death_knee3.tz";
connectAttr "sensor_death_knee3_parentConstraint1.crx" "sensor_death_knee3.rx";
connectAttr "sensor_death_knee3_parentConstraint1.cry" "sensor_death_knee3.ry";
connectAttr "sensor_death_knee3_parentConstraint1.crz" "sensor_death_knee3.rz";
connectAttr "sensor_death_knee3.ro" "sensor_death_knee3_parentConstraint1.cro";
connectAttr "sensor_death_knee3.pim" "sensor_death_knee3_parentConstraint1.cpim"
		;
connectAttr "sensor_death_knee3.rp" "sensor_death_knee3_parentConstraint1.crp";
connectAttr "sensor_death_knee3.rpt" "sensor_death_knee3_parentConstraint1.crt";
connectAttr "joint4.t" "sensor_death_knee3_parentConstraint1.tg[0].tt";
connectAttr "joint4.rp" "sensor_death_knee3_parentConstraint1.tg[0].trp";
connectAttr "joint4.rpt" "sensor_death_knee3_parentConstraint1.tg[0].trt";
connectAttr "joint4.r" "sensor_death_knee3_parentConstraint1.tg[0].tr";
connectAttr "joint4.ro" "sensor_death_knee3_parentConstraint1.tg[0].tro";
connectAttr "joint4.s" "sensor_death_knee3_parentConstraint1.tg[0].ts";
connectAttr "joint4.pm" "sensor_death_knee3_parentConstraint1.tg[0].tpm";
connectAttr "joint4.jo" "sensor_death_knee3_parentConstraint1.tg[0].tjo";
connectAttr "joint4.ssc" "sensor_death_knee3_parentConstraint1.tg[0].tsc";
connectAttr "joint4.is" "sensor_death_knee3_parentConstraint1.tg[0].tis";
connectAttr "sensor_death_knee3_parentConstraint1.w0" "sensor_death_knee3_parentConstraint1.tg[0].tw"
		;
connectAttr "sensor_death_knee4_parentConstraint1.ctx" "sensor_death_knee4.tx";
connectAttr "sensor_death_knee4_parentConstraint1.cty" "sensor_death_knee4.ty";
connectAttr "sensor_death_knee4_parentConstraint1.ctz" "sensor_death_knee4.tz";
connectAttr "sensor_death_knee4_parentConstraint1.crx" "sensor_death_knee4.rx";
connectAttr "sensor_death_knee4_parentConstraint1.cry" "sensor_death_knee4.ry";
connectAttr "sensor_death_knee4_parentConstraint1.crz" "sensor_death_knee4.rz";
connectAttr "sensor_death_knee4.ro" "sensor_death_knee4_parentConstraint1.cro";
connectAttr "sensor_death_knee4.pim" "sensor_death_knee4_parentConstraint1.cpim"
		;
connectAttr "sensor_death_knee4.rp" "sensor_death_knee4_parentConstraint1.crp";
connectAttr "sensor_death_knee4.rpt" "sensor_death_knee4_parentConstraint1.crt";
connectAttr "joint4.t" "sensor_death_knee4_parentConstraint1.tg[0].tt";
connectAttr "joint4.rp" "sensor_death_knee4_parentConstraint1.tg[0].trp";
connectAttr "joint4.rpt" "sensor_death_knee4_parentConstraint1.tg[0].trt";
connectAttr "joint4.r" "sensor_death_knee4_parentConstraint1.tg[0].tr";
connectAttr "joint4.ro" "sensor_death_knee4_parentConstraint1.tg[0].tro";
connectAttr "joint4.s" "sensor_death_knee4_parentConstraint1.tg[0].ts";
connectAttr "joint4.pm" "sensor_death_knee4_parentConstraint1.tg[0].tpm";
connectAttr "joint4.jo" "sensor_death_knee4_parentConstraint1.tg[0].tjo";
connectAttr "joint4.ssc" "sensor_death_knee4_parentConstraint1.tg[0].tsc";
connectAttr "joint4.is" "sensor_death_knee4_parentConstraint1.tg[0].tis";
connectAttr "sensor_death_knee4_parentConstraint1.w0" "sensor_death_knee4_parentConstraint1.tg[0].tw"
		;
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "bulletRigidBody_groundShape.sot" "translateRotate6.it2";
connectAttr "bulletRigidBody_groundShape.sor" "translateRotate6.ir2";
connectAttr "bulletRigidBody_groundShape.isdriven" "translateRotate6.w";
connectAttr "bulletRigidBodyShape1.sot" "translateRotate.it2";
connectAttr "bulletRigidBodyShape1.sor" "translateRotate.ir2";
connectAttr "bulletRigidBodyShape1.isdriven" "translateRotate.w";
connectAttr "bulletRigidBodyShape2.sot" "translateRotate7.it2";
connectAttr "bulletRigidBodyShape2.sor" "translateRotate7.ir2";
connectAttr "bulletRigidBodyShape2.isdriven" "translateRotate7.w";
connectAttr "bulletRigidBodyShape3.sot" "translateRotate8.it2";
connectAttr "bulletRigidBodyShape3.sor" "translateRotate8.ir2";
connectAttr "bulletRigidBodyShape3.isdriven" "translateRotate8.w";
connectAttr "bulletRigidBodyShape4.sot" "translateRotate9.it2";
connectAttr "bulletRigidBodyShape4.sor" "translateRotate9.ir2";
connectAttr "bulletRigidBodyShape4.isdriven" "translateRotate9.w";
connectAttr "bulletRigidBodyShape5.sot" "translateRotate10.it2";
connectAttr "bulletRigidBodyShape5.sor" "translateRotate10.ir2";
connectAttr "bulletRigidBodyShape5.isdriven" "translateRotate10.w";
connectAttr "bulletRigidBodyShape6.sot" "translateRotate11.it2";
connectAttr "bulletRigidBodyShape6.sor" "translateRotate11.ir2";
connectAttr "bulletRigidBodyShape6.isdriven" "translateRotate11.w";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of Model.ma
