// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'

// Shader created with Shader Forge v1.25 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.25;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:1,spmd:0,trmd:1,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,rfrpo:False,rfrpn:Refraction,coma:15,ufog:True,aust:False,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.6768491,fgcg:0.7551224,fgcb:0.7867647,fgca:1,fgde:0.0002,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:9546,x:37801,y:31703,varname:node_9546,prsc:2|diff-9938-OUT,spec-8447-OUT,gloss-4986-OUT,normal-2275-OUT,emission-2106-OUT,transm-3774-OUT,lwrap-3774-OUT,custl-9938-OUT,alpha-7421-OUT,refract-9559-OUT,voffset-490-OUT;n:type:ShaderForge.SFN_Tex2d,id:7025,x:33604,y:31065,varname:node_7025,prsc:2,ntxv:0,isnm:False|UVIN-9584-OUT,TEX-7950-TEX;n:type:ShaderForge.SFN_Tex2dAsset,id:7950,x:33373,y:31065,ptovrint:False,ptlb:ReflectionTex,ptin:_ReflectionTex,varname:node_7950,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_ScreenPos,id:6286,x:33603,y:30744,varname:node_6286,prsc:2,sctp:2;n:type:ShaderForge.SFN_DepthBlend,id:5244,x:33631,y:31750,varname:node_5244,prsc:2|DIST-5805-OUT;n:type:ShaderForge.SFN_Slider,id:2899,x:33276,y:32001,ptovrint:False,ptlb:Depth Blend,ptin:_DepthBlend,varname:node_2899,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.6131065,max:1;n:type:ShaderForge.SFN_RemapRange,id:5805,x:33616,y:31942,varname:node_5805,prsc:2,frmn:0,frmx:1,tomn:0,tomx:100|IN-2899-OUT;n:type:ShaderForge.SFN_Lerp,id:8776,x:33631,y:31576,varname:node_8776,prsc:2|A-7839-RGB,B-4039-RGB,T-5244-OUT;n:type:ShaderForge.SFN_Color,id:7839,x:33202,y:31557,ptovrint:False,ptlb:Shallow Color,ptin:_ShallowColor,varname:node_7839,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Color,id:4039,x:33175,y:31726,ptovrint:False,ptlb:Deep Color,ptin:_DeepColor,varname:node_4039,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Fresnel,id:119,x:33608,y:31371,varname:node_119,prsc:2|EXP-4273-OUT;n:type:ShaderForge.SFN_Slider,id:4747,x:33373,y:31264,ptovrint:False,ptlb:Reflection Fresnel,ptin:_ReflectionFresnel,varname:node_4747,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_RemapRange,id:4273,x:33394,y:31371,varname:node_4273,prsc:2,frmn:0,frmx:1,tomn:0,tomx:5|IN-4747-OUT;n:type:ShaderForge.SFN_Multiply,id:8521,x:34028,y:31254,varname:node_8521,prsc:2|A-4085-OUT,B-119-OUT;n:type:ShaderForge.SFN_DepthBlend,id:4610,x:33399,y:32327,varname:node_4610,prsc:2|DIST-9607-OUT;n:type:ShaderForge.SFN_Slider,id:17,x:33399,y:32511,ptovrint:False,ptlb:Shore Blend,ptin:_ShoreBlend,varname:node_17,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_RemapRange,id:9607,x:33763,y:32499,varname:node_9607,prsc:2,frmn:0,frmx:1,tomn:0,tomx:10|IN-17-OUT;n:type:ShaderForge.SFN_ConstantClamp,id:2266,x:33567,y:32327,varname:node_2266,prsc:2,min:0,max:0.98|IN-4610-OUT;n:type:ShaderForge.SFN_Blend,id:6044,x:34081,y:31432,varname:node_6044,prsc:2,blmd:6,clmp:True|SRC-8521-OUT,DST-8776-OUT;n:type:ShaderForge.SFN_Get,id:4622,x:35689,y:32311,varname:node_4622,prsc:2|IN-9815-OUT;n:type:ShaderForge.SFN_Set,id:9815,x:33742,y:32327,cmnt:OPACITY,varname:Opacity,prsc:2|IN-2266-OUT;n:type:ShaderForge.SFN_Slider,id:7998,x:34653,y:31773,ptovrint:False,ptlb:Specular,ptin:_Specular,varname:node_7998,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:10;n:type:ShaderForge.SFN_Get,id:8856,x:35371,y:31743,varname:node_8856,prsc:2|IN-7343-OUT;n:type:ShaderForge.SFN_Set,id:7343,x:34291,y:31399,cmnt:ALBEDO,varname:Albedo,prsc:2|IN-6044-OUT;n:type:ShaderForge.SFN_Get,id:2275,x:34484,y:31998,varname:node_2275,prsc:2|IN-8768-OUT;n:type:ShaderForge.SFN_Set,id:8768,x:35653,y:32550,cmnt:NORMAL,varname:Normal,prsc:2|IN-9958-OUT;n:type:ShaderForge.SFN_Tex2d,id:5499,x:35141,y:32549,ptovrint:False,ptlb:Wave A,ptin:_WaveA,varname:node_5499,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:True|UVIN-4617-UVOUT;n:type:ShaderForge.SFN_Tex2d,id:8205,x:35138,y:32743,ptovrint:False,ptlb:Wave B,ptin:_WaveB,varname:node_8205,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:True|UVIN-4047-UVOUT;n:type:ShaderForge.SFN_Multiply,id:9958,x:35614,y:32662,varname:node_9958,prsc:2|A-5499-RGB,B-8205-RGB;n:type:ShaderForge.SFN_Slider,id:4986,x:34653,y:31864,ptovrint:False,ptlb:Gloss,ptin:_Gloss,varname:node_4986,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:4;n:type:ShaderForge.SFN_TexCoord,id:6195,x:34350,y:32544,varname:node_6195,prsc:2,uv:0;n:type:ShaderForge.SFN_Multiply,id:2952,x:34582,y:32620,varname:node_2952,prsc:2|A-6195-UVOUT,B-6693-OUT;n:type:ShaderForge.SFN_Slider,id:686,x:34056,y:33049,ptovrint:False,ptlb:Wave Speed,ptin:_WaveSpeed,varname:node_686,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_RemapRange,id:1998,x:34386,y:33041,varname:node_1998,prsc:2,frmn:0,frmx:1,tomn:0,tomx:0.1|IN-686-OUT;n:type:ShaderForge.SFN_Time,id:89,x:34213,y:33164,varname:node_89,prsc:2;n:type:ShaderForge.SFN_Multiply,id:1830,x:34643,y:33050,varname:node_1830,prsc:2|A-1998-OUT,B-89-T;n:type:ShaderForge.SFN_Panner,id:4047,x:34859,y:32774,varname:node_4047,prsc:2,spu:1,spv:1|UVIN-2952-OUT,DIST-1830-OUT;n:type:ShaderForge.SFN_Panner,id:4617,x:34904,y:32593,varname:node_4617,prsc:2,spu:-1,spv:-1|UVIN-2952-OUT,DIST-1830-OUT;n:type:ShaderForge.SFN_Slider,id:8866,x:33902,y:32122,ptovrint:False,ptlb:Waves Fresnel,ptin:_WavesFresnel,varname:node_8866,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.4933273,max:1;n:type:ShaderForge.SFN_RemapRange,id:7981,x:34260,y:32154,varname:node_7981,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:2|IN-8866-OUT;n:type:ShaderForge.SFN_Set,id:5593,x:34253,y:31121,varname:Reflection,prsc:2|IN-4998-OUT;n:type:ShaderForge.SFN_Desaturate,id:4998,x:33969,y:31066,varname:node_4998,prsc:2|COL-4085-OUT;n:type:ShaderForge.SFN_Multiply,id:3774,x:35523,y:31978,varname:node_3774,prsc:2|A-644-OUT,B-7981-OUT;n:type:ShaderForge.SFN_Desaturate,id:4933,x:34469,y:32099,varname:node_4933,prsc:2|COL-2275-OUT;n:type:ShaderForge.SFN_OneMinus,id:644,x:34632,y:32099,varname:node_644,prsc:2|IN-4933-OUT;n:type:ShaderForge.SFN_DepthBlend,id:9840,x:35035,y:31899,varname:node_9840,prsc:2|DIST-2715-OUT;n:type:ShaderForge.SFN_Vector1,id:2715,x:34834,y:31943,varname:node_2715,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Multiply,id:8447,x:35113,y:31813,varname:node_8447,prsc:2|A-7998-OUT,B-9840-OUT;n:type:ShaderForge.SFN_Tex2d,id:5007,x:35951,y:30272,varname:node_5007,prsc:2,ntxv:0,isnm:False|UVIN-2701-OUT,TEX-655-TEX;n:type:ShaderForge.SFN_DepthBlend,id:4348,x:36191,y:30386,varname:node_4348,prsc:2|DIST-842-OUT;n:type:ShaderForge.SFN_Slider,id:1111,x:35660,y:30078,ptovrint:False,ptlb:Foam Distance,ptin:_FoamDistance,varname:node_1111,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_RemapRange,id:842,x:36101,y:30095,varname:node_842,prsc:2,frmn:0,frmx:1,tomn:0,tomx:5|IN-1111-OUT;n:type:ShaderForge.SFN_Multiply,id:9220,x:36012,y:31118,varname:node_9220,prsc:2|A-1458-OUT,B-5841-OUT,C-5971-OUT,D-2542-OUT;n:type:ShaderForge.SFN_OneMinus,id:1458,x:36451,y:30496,varname:node_1458,prsc:2|IN-4348-OUT;n:type:ShaderForge.SFN_Add,id:6410,x:35689,y:32124,varname:node_6410,prsc:2|A-8276-OUT,B-4622-OUT;n:type:ShaderForge.SFN_Slider,id:3285,x:35685,y:30783,ptovrint:False,ptlb:Foam Intensity,ptin:_FoamIntensity,varname:node_3285,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_RemapRange,id:2542,x:35742,y:30907,varname:node_2542,prsc:2,frmn:0,frmx:1,tomn:0,tomx:10|IN-3285-OUT;n:type:ShaderForge.SFN_Panner,id:8535,x:35408,y:30618,varname:node_8535,prsc:2,spu:1,spv:1|UVIN-5707-OUT,DIST-1683-OUT;n:type:ShaderForge.SFN_Multiply,id:5707,x:35603,y:29965,varname:node_5707,prsc:2|A-4049-OUT,B-6534-UVOUT;n:type:ShaderForge.SFN_Multiply,id:1683,x:35037,y:30435,varname:node_1683,prsc:2|A-5623-OUT,B-1830-OUT;n:type:ShaderForge.SFN_TexCoord,id:6534,x:35030,y:29895,varname:node_6534,prsc:2,uv:0;n:type:ShaderForge.SFN_Panner,id:3051,x:35456,y:30411,varname:node_3051,prsc:2,spu:-1,spv:-1|UVIN-5707-OUT,DIST-1683-OUT;n:type:ShaderForge.SFN_Tex2dAsset,id:655,x:35685,y:30279,ptovrint:False,ptlb:Foam,ptin:_Foam,varname:node_655,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:289,x:35882,y:30417,varname:node_289,prsc:2,ntxv:0,isnm:False|UVIN-8535-UVOUT,TEX-655-TEX;n:type:ShaderForge.SFN_DepthBlend,id:7081,x:36344,y:30949,varname:node_7081,prsc:2|DIST-5019-OUT;n:type:ShaderForge.SFN_Multiply,id:8276,x:36649,y:30835,varname:node_8276,prsc:2|A-9220-OUT,B-7081-OUT;n:type:ShaderForge.SFN_Tex2d,id:2396,x:35249,y:31225,varname:node_2396,prsc:2,ntxv:0,isnm:False|UVIN-5885-UVOUT,TEX-4625-TEX;n:type:ShaderForge.SFN_Vector1,id:828,x:35456,y:30560,varname:node_828,prsc:2,v1:0.8;n:type:ShaderForge.SFN_Multiply,id:2701,x:35642,y:30488,varname:node_2701,prsc:2|A-3051-UVOUT,B-828-OUT;n:type:ShaderForge.SFN_Multiply,id:6168,x:35054,y:31378,varname:node_6168,prsc:2|A-6009-OUT,B-1830-OUT;n:type:ShaderForge.SFN_Slider,id:4068,x:34607,y:30292,ptovrint:False,ptlb:Foam Speed,ptin:_FoamSpeed,varname:node_4068,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_RemapRange,id:5623,x:34786,y:30389,varname:node_5623,prsc:2,frmn:0,frmx:1,tomn:0,tomx:10|IN-4068-OUT;n:type:ShaderForge.SFN_Desaturate,id:5971,x:35917,y:30627,varname:node_5971,prsc:2|COL-289-RGB;n:type:ShaderForge.SFN_Desaturate,id:5841,x:36113,y:30591,varname:node_5841,prsc:2|COL-5007-RGB;n:type:ShaderForge.SFN_Slider,id:4147,x:36616,y:31466,ptovrint:False,ptlb:Foam Shore,ptin:_FoamShore,varname:node_4147,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_RemapRange,id:5019,x:36698,y:31328,varname:node_5019,prsc:2,frmn:0,frmx:1,tomn:0,tomx:5|IN-4147-OUT;n:type:ShaderForge.SFN_Blend,id:4874,x:36894,y:31676,varname:node_4874,prsc:2,blmd:6,clmp:True|SRC-8856-OUT,DST-9220-OUT;n:type:ShaderForge.SFN_Get,id:4062,x:36109,y:32287,varname:node_4062,prsc:2|IN-8768-OUT;n:type:ShaderForge.SFN_ComponentMask,id:9053,x:36299,y:32287,varname:node_9053,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-4062-OUT;n:type:ShaderForge.SFN_Slider,id:6299,x:36190,y:32474,ptovrint:False,ptlb:Refraction Amount,ptin:_RefractionAmount,varname:node_6299,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Multiply,id:9559,x:36586,y:32324,varname:node_9559,prsc:2|A-9053-OUT,B-6162-OUT,C-8089-OUT;n:type:ShaderForge.SFN_RemapRange,id:6162,x:36745,y:32481,varname:node_6162,prsc:2,frmn:0,frmx:1,tomn:0,tomx:0.1|IN-6299-OUT;n:type:ShaderForge.SFN_DepthBlend,id:8089,x:36514,y:32624,varname:node_8089,prsc:2|DIST-3576-OUT;n:type:ShaderForge.SFN_Vector1,id:3576,x:36329,y:32678,varname:node_3576,prsc:2,v1:0.2;n:type:ShaderForge.SFN_Slider,id:1778,x:35846,y:32224,ptovrint:False,ptlb:Overall Opacity,ptin:_OverallOpacity,varname:node_1778,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Clamp01,id:8928,x:36031,y:32054,varname:node_8928,prsc:2|IN-5167-OUT;n:type:ShaderForge.SFN_Multiply,id:7421,x:36210,y:32092,varname:node_7421,prsc:2|A-8928-OUT,B-1778-OUT;n:type:ShaderForge.SFN_Set,id:2630,x:36897,y:32356,varname:Refraction,prsc:2|IN-9559-OUT;n:type:ShaderForge.SFN_Get,id:3752,x:33223,y:30871,varname:node_3752,prsc:2|IN-2630-OUT;n:type:ShaderForge.SFN_Multiply,id:616,x:33406,y:30898,varname:node_616,prsc:2|A-3752-OUT,B-4669-OUT;n:type:ShaderForge.SFN_Add,id:9584,x:33578,y:30908,varname:node_9584,prsc:2|A-6286-UVOUT,B-616-OUT;n:type:ShaderForge.SFN_Slider,id:6925,x:32895,y:30997,ptovrint:False,ptlb:Reflection Distortion,ptin:_ReflectionDistortion,varname:node_6925,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_RemapRange,id:4669,x:33244,y:30986,varname:node_4669,prsc:2,frmn:0,frmx:1,tomn:0,tomx:16|IN-6925-OUT;n:type:ShaderForge.SFN_Tex2dAsset,id:4625,x:34403,y:30839,ptovrint:False,ptlb:Displacement Mask,ptin:_DisplacementMask,varname:node_4625,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:9054,x:35249,y:31105,varname:node_9054,prsc:2,ntxv:0,isnm:False|UVIN-7172-UVOUT,TEX-4625-TEX;n:type:ShaderForge.SFN_TexCoord,id:5947,x:34636,y:30626,varname:node_5947,prsc:2,uv:0;n:type:ShaderForge.SFN_Vector1,id:9094,x:34636,y:30787,varname:node_9094,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Add,id:2277,x:34832,y:30698,varname:node_2277,prsc:2|A-5947-UVOUT,B-9094-OUT;n:type:ShaderForge.SFN_Slider,id:5181,x:34471,y:31149,ptovrint:False,ptlb:Displacement Scale,ptin:_DisplacementScale,varname:node_5181,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.05725567,max:1;n:type:ShaderForge.SFN_RemapRange,id:7235,x:34890,y:31207,varname:node_7235,prsc:2,frmn:0,frmx:1,tomn:0,tomx:200|IN-5181-OUT;n:type:ShaderForge.SFN_TexCoord,id:8283,x:34539,y:30951,varname:node_8283,prsc:2,uv:0;n:type:ShaderForge.SFN_Multiply,id:6948,x:34858,y:30962,varname:node_6948,prsc:2|A-8283-UVOUT,B-7235-OUT;n:type:ShaderForge.SFN_Multiply,id:7827,x:35107,y:30759,varname:node_7827,prsc:2|A-2277-OUT,B-7235-OUT;n:type:ShaderForge.SFN_Panner,id:7172,x:35306,y:30775,varname:node_7172,prsc:2,spu:1,spv:1|UVIN-7827-OUT,DIST-6168-OUT;n:type:ShaderForge.SFN_Panner,id:5885,x:35293,y:30944,varname:node_5885,prsc:2,spu:-1,spv:-1|UVIN-6948-OUT,DIST-6168-OUT;n:type:ShaderForge.SFN_Multiply,id:5833,x:35619,y:31083,varname:node_5833,prsc:2|A-9136-OUT,B-1338-OUT;n:type:ShaderForge.SFN_Set,id:1976,x:35652,y:31353,varname:Displacement,prsc:2|IN-6104-OUT;n:type:ShaderForge.SFN_Get,id:3036,x:36084,y:31468,varname:node_3036,prsc:2|IN-1976-OUT;n:type:ShaderForge.SFN_Slider,id:6009,x:34554,y:31493,ptovrint:False,ptlb:Displacement Speed,ptin:_DisplacementSpeed,varname:node_6009,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:2;n:type:ShaderForge.SFN_Slider,id:1091,x:35182,y:31616,ptovrint:False,ptlb:Displacement Power,ptin:_DisplacementPower,varname:node_1091,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_RemapRange,id:1338,x:35631,y:31409,varname:node_1338,prsc:2,frmn:0,frmx:1,tomn:0,tomx:2|IN-1091-OUT;n:type:ShaderForge.SFN_Multiply,id:4323,x:36466,y:31312,varname:node_4323,prsc:2|A-8464-OUT,B-4247-OUT,C-3036-OUT;n:type:ShaderForge.SFN_Slider,id:76,x:35859,y:31300,ptovrint:False,ptlb:Waves Foam,ptin:_WavesFoam,varname:node_76,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Multiply,id:8464,x:36528,y:31007,varname:node_8464,prsc:2|A-5841-OUT,B-5971-OUT;n:type:ShaderForge.SFN_Blend,id:7789,x:37325,y:31663,varname:node_7789,prsc:2,blmd:6,clmp:True|SRC-4874-OUT,DST-7015-OUT;n:type:ShaderForge.SFN_RemapRange,id:4247,x:36197,y:31310,varname:node_4247,prsc:2,frmn:0,frmx:1,tomn:0,tomx:5|IN-76-OUT;n:type:ShaderForge.SFN_Get,id:1246,x:36494,y:31897,varname:node_1246,prsc:2|IN-1976-OUT;n:type:ShaderForge.SFN_Multiply,id:490,x:37476,y:32066,varname:node_490,prsc:2|A-7136-OUT,B-1889-OUT,C-3201-OUT;n:type:ShaderForge.SFN_Vector3,id:1889,x:36566,y:32100,varname:node_1889,prsc:2,v1:0,v2:1,v3:0;n:type:ShaderForge.SFN_Clamp01,id:6104,x:35715,y:31225,varname:node_6104,prsc:2|IN-5833-OUT;n:type:ShaderForge.SFN_Slider,id:8529,x:35158,y:31520,ptovrint:False,ptlb:Displacement Direction,ptin:_DisplacementDirection,varname:node_8529,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Lerp,id:9136,x:35515,y:31225,varname:node_9136,prsc:2|A-9054-RGB,B-2396-RGB,T-8529-OUT;n:type:ShaderForge.SFN_Multiply,id:4085,x:33794,y:31129,varname:node_4085,prsc:2|A-7025-RGB,B-8736-OUT;n:type:ShaderForge.SFN_Slider,id:8736,x:33623,y:31294,ptovrint:False,ptlb:Reflection Intensity,ptin:_ReflectionIntensity,varname:node_8736,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Lerp,id:2656,x:33918,y:31682,varname:node_2656,prsc:2|A-7839-A,B-4039-A,T-5244-OUT;n:type:ShaderForge.SFN_Set,id:4683,x:33884,y:31834,varname:ColorsOpacity,prsc:2|IN-2656-OUT;n:type:ShaderForge.SFN_Multiply,id:5167,x:35865,y:32037,varname:node_5167,prsc:2|A-974-OUT,B-6410-OUT;n:type:ShaderForge.SFN_Get,id:974,x:35631,y:32058,varname:node_974,prsc:2|IN-4683-OUT;n:type:ShaderForge.SFN_Tex2d,id:7735,x:38452,y:32484,ptovrint:False,ptlb:Displacement Waves Mask,ptin:_DisplacementWavesMask,varname:node_7735,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:306f7b8087773cb42a665b9c5eeff8f1,ntxv:2,isnm:False|UVIN-6489-OUT;n:type:ShaderForge.SFN_Slider,id:581,x:37299,y:32974,ptovrint:False,ptlb:Disp. Waves Amount,ptin:_DispWavesAmount,varname:node_581,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.1450237,max:1;n:type:ShaderForge.SFN_RemapRange,id:4525,x:37644,y:32960,varname:node_4525,prsc:2,frmn:0,frmx:1,tomn:0,tomx:200|IN-581-OUT;n:type:ShaderForge.SFN_Slider,id:3546,x:38643,y:32465,ptovrint:False,ptlb:Disp. Waves Intensity,ptin:_DispWavesIntensity,varname:node_3546,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.2961853,max:1;n:type:ShaderForge.SFN_RemapRange,id:6425,x:38988,y:32636,varname:node_6425,prsc:2,frmn:0,frmx:1,tomn:0,tomx:10|IN-3546-OUT;n:type:ShaderForge.SFN_TexCoord,id:9308,x:37151,y:32720,varname:node_9308,prsc:2,uv:0;n:type:ShaderForge.SFN_Length,id:5648,x:37796,y:32538,varname:node_5648,prsc:2|IN-9215-OUT;n:type:ShaderForge.SFN_RemapRange,id:9215,x:37615,y:32538,varname:node_9215,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-9308-UVOUT;n:type:ShaderForge.SFN_OneMinus,id:7855,x:37796,y:32698,varname:node_7855,prsc:2|IN-5648-OUT;n:type:ShaderForge.SFN_Panner,id:4499,x:38366,y:33161,varname:node_4499,prsc:2,spu:1,spv:1|UVIN-9859-OUT,DIST-3911-OUT;n:type:ShaderForge.SFN_Slider,id:7304,x:37355,y:33244,ptovrint:False,ptlb:Disp. Waves Speed,ptin:_DispWavesSpeed,varname:node_7304,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_RemapRange,id:525,x:37682,y:33177,varname:node_525,prsc:2,frmn:0,frmx:1,tomn:0,tomx:0.5|IN-7304-OUT;n:type:ShaderForge.SFN_Time,id:5249,x:37376,y:33385,varname:node_5249,prsc:2;n:type:ShaderForge.SFN_Multiply,id:3911,x:37886,y:33320,varname:node_3911,prsc:2|A-525-OUT,B-5249-T,C-2015-OUT;n:type:ShaderForge.SFN_Set,id:8259,x:39184,y:32864,varname:DispWaves,prsc:2|IN-4017-OUT;n:type:ShaderForge.SFN_Tex2d,id:9310,x:38691,y:32602,ptovrint:False,ptlb:Displacement Waves,ptin:_DisplacementWaves,varname:node_9310,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-4499-UVOUT;n:type:ShaderForge.SFN_Desaturate,id:8744,x:38154,y:32624,varname:node_8744,prsc:2|COL-7735-RGB;n:type:ShaderForge.SFN_Multiply,id:9814,x:38218,y:32940,varname:node_9814,prsc:2|A-5300-OUT,B-7855-OUT,C-4525-OUT;n:type:ShaderForge.SFN_Append,id:7969,x:37951,y:33022,varname:node_7969,prsc:2|A-9814-OUT,B-9814-OUT;n:type:ShaderForge.SFN_TexCoord,id:9672,x:37997,y:32289,varname:node_9672,prsc:2,uv:0;n:type:ShaderForge.SFN_Vector1,id:9791,x:37963,y:32460,varname:node_9791,prsc:2,v1:-1;n:type:ShaderForge.SFN_Multiply,id:6489,x:38305,y:32350,varname:node_6489,prsc:2|A-9672-UVOUT,B-9791-OUT;n:type:ShaderForge.SFN_Multiply,id:5778,x:38910,y:32822,varname:node_5778,prsc:2|A-9310-RGB,B-6425-OUT;n:type:ShaderForge.SFN_Add,id:7136,x:36515,y:31957,varname:node_7136,prsc:2|A-1246-OUT,B-8781-OUT;n:type:ShaderForge.SFN_Get,id:8781,x:36276,y:32018,varname:node_8781,prsc:2|IN-8259-OUT;n:type:ShaderForge.SFN_ToggleProperty,id:4362,x:36713,y:31825,ptovrint:False,ptlb:Show Waves,ptin:_ShowWaves,varname:node_4362,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False;n:type:ShaderForge.SFN_Multiply,id:2106,x:37041,y:31911,varname:node_2106,prsc:2|A-4362-OUT,B-7136-OUT;n:type:ShaderForge.SFN_Get,id:9171,x:35907,y:31514,varname:node_9171,prsc:2|IN-8259-OUT;n:type:ShaderForge.SFN_Multiply,id:1724,x:36257,y:31559,varname:node_1724,prsc:2|A-9171-OUT,B-4623-OUT,C-8464-OUT,D-6025-OUT;n:type:ShaderForge.SFN_Vector1,id:4623,x:35995,y:31618,varname:node_4623,prsc:2,v1:0.75;n:type:ShaderForge.SFN_Add,id:7015,x:36913,y:31530,varname:node_7015,prsc:2|A-4323-OUT,B-1724-OUT;n:type:ShaderForge.SFN_ToggleProperty,id:4250,x:37964,y:33527,ptovrint:False,ptlb:Inverse Waves,ptin:_InverseWaves,varname:node_4250,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False;n:type:ShaderForge.SFN_RemapRange,id:2015,x:38238,y:33458,varname:node_2015,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-4250-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:9859,x:38290,y:33016,ptovrint:False,ptlb:Use Radial Mask,ptin:_UseRadialMask,varname:node_9859,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-7472-OUT,B-7969-OUT;n:type:ShaderForge.SFN_Multiply,id:7472,x:37862,y:32854,varname:node_7472,prsc:2|A-9308-UVOUT,B-4525-OUT;n:type:ShaderForge.SFN_ToggleProperty,id:9108,x:38873,y:32984,ptovrint:False,ptlb:Use Disp. Waves,ptin:_UseDispWaves,varname:node_9108,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False;n:type:ShaderForge.SFN_Multiply,id:4017,x:39106,y:32938,varname:node_4017,prsc:2|A-5778-OUT,B-9108-OUT;n:type:ShaderForge.SFN_Relay,id:3201,x:37157,y:32303,varname:node_3201,prsc:2|IN-8744-OUT;n:type:ShaderForge.SFN_Slider,id:2912,x:37926,y:32777,ptovrint:False,ptlb:Disp. Mask Intensity,ptin:_DispMaskIntensity,varname:node_2912,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.5041658,max:1;n:type:ShaderForge.SFN_Add,id:9986,x:38432,y:32669,varname:node_9986,prsc:2|A-8744-OUT,B-6973-OUT;n:type:ShaderForge.SFN_OneMinus,id:6973,x:38277,y:32772,varname:node_6973,prsc:2|IN-2912-OUT;n:type:ShaderForge.SFN_Clamp01,id:5300,x:38466,y:32877,varname:node_5300,prsc:2|IN-9986-OUT;n:type:ShaderForge.SFN_ValueProperty,id:6693,x:34544,y:32833,ptovrint:False,ptlb:Wave Scale,ptin:_WaveScale,varname:node_6693,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:2;n:type:ShaderForge.SFN_ValueProperty,id:4049,x:35191,y:29842,ptovrint:False,ptlb:Foam Scale,ptin:_FoamScale,varname:node_4049,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:2;n:type:ShaderForge.SFN_Clamp01,id:9938,x:37601,y:31603,varname:node_9938,prsc:2|IN-7789-OUT;n:type:ShaderForge.SFN_Slider,id:6025,x:35888,y:31698,ptovrint:False,ptlb:Disp. Waves Foam Intensity,ptin:_DispWavesFoamIntensity,varname:node_6025,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;proporder:7950-8736-4747-7839-4039-2899-17-1778-5499-8205-7998-4986-6693-686-8866-655-1111-3285-76-4049-4068-4147-6299-6925-4625-5181-6009-1091-8529-9108-9310-9859-7735-2912-4250-581-7304-3546-6025-4362;pass:END;sub:END;*/

Shader "DCG/Water Shader/Water Surface(Mac)(WIP)" {
    Properties {
        _ReflectionTex ("ReflectionTex", 2D) = "white" {}
        _ReflectionIntensity ("Reflection Intensity", Range(0, 1)) = 0
        _ReflectionFresnel ("Reflection Fresnel", Range(0, 1)) = 0
        _ShallowColor ("Shallow Color", Color) = (1,1,1,1)
        _DeepColor ("Deep Color", Color) = (0,0,0,1)
        _DepthBlend ("Depth Blend", Range(0, 1)) = 0.6131065
        _ShoreBlend ("Shore Blend", Range(0, 1)) = 0
        _OverallOpacity ("Overall Opacity", Range(0, 1)) = 0
        _WaveA ("Wave A", 2D) = "bump" {}
        _WaveB ("Wave B", 2D) = "bump" {}
        _Specular ("Specular", Range(0, 10)) = 0
        _Gloss ("Gloss", Range(0, 4)) = 0
        _WaveScale ("Wave Scale", Float ) = 2
        _WaveSpeed ("Wave Speed", Range(0, 1)) = 0
        _WavesFresnel ("Waves Fresnel", Range(0, 1)) = 0.4933273
        _Foam ("Foam", 2D) = "white" {}
        _FoamDistance ("Foam Distance", Range(0, 1)) = 0
        _FoamIntensity ("Foam Intensity", Range(0, 1)) = 0
        _WavesFoam ("Waves Foam", Range(0, 1)) = 0
        _FoamScale ("Foam Scale", Float ) = 2
        _FoamSpeed ("Foam Speed", Range(0, 1)) = 0
        _FoamShore ("Foam Shore", Range(0, 1)) = 0
        _RefractionAmount ("Refraction Amount", Range(0, 1)) = 0
        _ReflectionDistortion ("Reflection Distortion", Range(0, 1)) = 0
        _DisplacementMask ("Displacement Mask", 2D) = "white" {}
        _DisplacementScale ("Displacement Scale", Range(0, 1)) = 0.05725567
        _DisplacementSpeed ("Displacement Speed", Range(0, 2)) = 0
        _DisplacementPower ("Displacement Power", Range(0, 1)) = 0
        _DisplacementDirection ("Displacement Direction", Range(0, 1)) = 0
        [MaterialToggle] _UseDispWaves ("Use Disp. Waves", Float ) = 0
        _DisplacementWaves ("Displacement Waves", 2D) = "white" {}
        [MaterialToggle] _UseRadialMask ("Use Radial Mask", Float ) = 0
        _DisplacementWavesMask ("Displacement Waves Mask", 2D) = "black" {}
        _DispMaskIntensity ("Disp. Mask Intensity", Range(0, 1)) = 0.5041658
        [MaterialToggle] _InverseWaves ("Inverse Waves", Float ) = 0
        _DispWavesAmount ("Disp. Waves Amount", Range(0, 1)) = 0.1450237
        _DispWavesSpeed ("Disp. Waves Speed", Range(0, 1)) = 0
        _DispWavesIntensity ("Disp. Waves Intensity", Range(0, 1)) = 0.2961853
        _DispWavesFoamIntensity ("Disp. Waves Foam Intensity", Range(0, 1)) = 0
        [MaterialToggle] _ShowWaves ("Show Waves", Float ) = 0
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        GrabPass{ "Refraction" }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend SrcAlpha OneMinusSrcAlpha
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 d3d11_9x 
            #pragma target 3.0
            #pragma glsl
            uniform float4 _LightColor0;
            uniform sampler2D Refraction;
            uniform sampler2D _CameraDepthTexture;
            uniform float4 _TimeEditor;
            uniform sampler2D _ReflectionTex; uniform float4 _ReflectionTex_ST;
            uniform float _DepthBlend;
            uniform float4 _ShallowColor;
            uniform float4 _DeepColor;
            uniform float _ReflectionFresnel;
            uniform float _ShoreBlend;
            uniform float _Specular;
            uniform sampler2D _WaveA; uniform float4 _WaveA_ST;
            uniform sampler2D _WaveB; uniform float4 _WaveB_ST;
            uniform float _Gloss;
            uniform float _WaveSpeed;
            uniform float _WavesFresnel;
            uniform float _FoamDistance;
            uniform float _FoamIntensity;
            uniform sampler2D _Foam; uniform float4 _Foam_ST;
            uniform float _FoamSpeed;
            uniform float _FoamShore;
            uniform float _RefractionAmount;
            uniform float _OverallOpacity;
            uniform float _ReflectionDistortion;
            uniform sampler2D _DisplacementMask; uniform float4 _DisplacementMask_ST;
            uniform float _DisplacementScale;
            uniform float _DisplacementSpeed;
            uniform float _DisplacementPower;
            uniform float _WavesFoam;
            uniform float _DisplacementDirection;
            uniform float _ReflectionIntensity;
            uniform sampler2D _DisplacementWavesMask; uniform float4 _DisplacementWavesMask_ST;
            uniform float _DispWavesAmount;
            uniform float _DispWavesIntensity;
            uniform float _DispWavesSpeed;
            uniform sampler2D _DisplacementWaves; uniform float4 _DisplacementWaves_ST;
            uniform fixed _ShowWaves;
            uniform fixed _InverseWaves;
            uniform fixed _UseRadialMask;
            uniform fixed _UseDispWaves;
            uniform float _DispMaskIntensity;
            uniform float _WaveScale;
            uniform float _FoamScale;
            uniform float _DispWavesFoamIntensity;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
                float4 screenPos : TEXCOORD5;
                float4 projPos : TEXCOORD6;
                UNITY_FOG_COORDS(7)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                float4 node_89 = _Time + _TimeEditor;
                float node_1830 = ((_WaveSpeed*0.1+0.0)*node_89.g);
                float node_6168 = (_DisplacementSpeed*node_1830);
                float node_7235 = (_DisplacementScale*200.0+0.0);
                float2 node_7172 = (((o.uv0+0.5)*node_7235)+node_6168*float2(1,1));
                float4 node_9054 = tex2Dlod(_DisplacementMask,float4(node_7172,0.0,0));
                float2 node_5885 = ((o.uv0*node_7235)+node_6168*float2(-1,-1));
                float4 node_2396 = tex2Dlod(_DisplacementMask,float4(node_5885,0.0,0));
                float3 Displacement = saturate((lerp(node_9054.rgb,node_2396.rgb,_DisplacementDirection)*(_DisplacementPower*2.0+0.0)));
                float4 node_5249 = _Time + _TimeEditor;
                float node_4525 = (_DispWavesAmount*200.0+0.0);
                float2 node_6489 = (o.uv0*(-1.0));
                float4 _DisplacementWavesMask_var = tex2Dlod(_DisplacementWavesMask,float4(TRANSFORM_TEX(node_6489, _DisplacementWavesMask),0.0,0));
                float node_8744 = dot(_DisplacementWavesMask_var.rgb,float3(0.3,0.59,0.11));
                float node_9814 = (saturate((node_8744+(1.0 - _DispMaskIntensity)))*(1.0 - length((o.uv0*2.0+-1.0)))*node_4525);
                float2 node_4499 = (lerp( (o.uv0*node_4525), float2(node_9814,node_9814), _UseRadialMask )+((_DispWavesSpeed*0.5+0.0)*node_5249.g*(_InverseWaves*2.0+-1.0))*float2(1,1));
                float4 _DisplacementWaves_var = tex2Dlod(_DisplacementWaves,float4(TRANSFORM_TEX(node_4499, _DisplacementWaves),0.0,0));
                float3 DispWaves = ((_DisplacementWaves_var.rgb*(_DispWavesIntensity*10.0+0.0))*_UseDispWaves);
                float3 node_7136 = (Displacement+DispWaves);
                v.vertex.xyz += (node_7136*float3(0,1,0)*node_8744);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos(v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                o.screenPos = o.pos;
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                #if UNITY_UV_STARTS_AT_TOP
                    float grabSign = -_ProjectionParams.x;
                #else
                    float grabSign = _ProjectionParams.x;
                #endif
                i.normalDir = normalize(i.normalDir);
                i.screenPos = float4( i.screenPos.xy / i.screenPos.w, 0, 0 );
                i.screenPos.y *= _ProjectionParams.x;
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float4 node_89 = _Time + _TimeEditor;
                float node_1830 = ((_WaveSpeed*0.1+0.0)*node_89.g);
                float2 node_2952 = (i.uv0*_WaveScale);
                float2 node_4617 = (node_2952+node_1830*float2(-1,-1));
                float3 _WaveA_var = UnpackNormal(tex2D(_WaveA,TRANSFORM_TEX(node_4617, _WaveA)));
                float2 node_4047 = (node_2952+node_1830*float2(1,1));
                float3 _WaveB_var = UnpackNormal(tex2D(_WaveB,TRANSFORM_TEX(node_4047, _WaveB)));
                float3 Normal = (_WaveA_var.rgb*_WaveB_var.rgb); // NORMAL
                float3 node_2275 = Normal;
                float3 normalLocal = node_2275;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float sceneZ = max(0,LinearEyeDepth (UNITY_SAMPLE_DEPTH(tex2Dproj(_CameraDepthTexture, UNITY_PROJ_COORD(i.projPos)))) - _ProjectionParams.g);
                float partZ = max(0,i.projPos.z - _ProjectionParams.g);
                float2 node_9559 = (Normal.rg*(_RefractionAmount*0.1+0.0)*saturate((sceneZ-partZ)/0.2));
                float2 sceneUVs = float2(1,grabSign)*i.screenPos.xy*0.5+0.5 + node_9559;
                float4 sceneColor = tex2D(Refraction, sceneUVs);
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = 1;
                float3 attenColor = attenuation * _LightColor0.xyz;
///////// Gloss:
                float gloss = _Gloss;
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float node_8447 = (_Specular*saturate((sceneZ-partZ)/0.5));
                float3 specularColor = float3(node_8447,node_8447,node_8447);
                float3 directSpecular = (floor(attenuation) * _LightColor0.xyz) * pow(max(0,dot(halfDirection,normalDirection)),specPow)*specularColor;
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = dot( normalDirection, lightDirection );
                float node_3774 = ((1.0 - dot(node_2275,float3(0.3,0.59,0.11)))*(_WavesFresnel*3.0+-1.0));
                float3 w = float3(node_3774,node_3774,node_3774)*0.5; // Light wrapping
                float3 NdotLWrap = NdotL * ( 1.0 - w );
                float3 forwardLight = max(float3(0.0,0.0,0.0), NdotLWrap + w );
                float3 backLight = max(float3(0.0,0.0,0.0), -NdotLWrap + w ) * float3(node_3774,node_3774,node_3774);
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = (forwardLight+backLight) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += UNITY_LIGHTMODEL_AMBIENT.rgb; // Ambient Light
                float2 Refraction = node_9559;
                float2 node_9584 = (sceneUVs.rg+(Refraction*(_ReflectionDistortion*16.0+0.0)));
                float4 node_7025 = tex2D(_ReflectionTex,node_9584);
                float3 node_4085 = (node_7025.rgb*_ReflectionIntensity);
                float node_5244 = saturate((sceneZ-partZ)/(_DepthBlend*100.0+0.0));
                float3 Albedo = saturate((1.0-(1.0-(node_4085*pow(1.0-max(0,dot(normalDirection, viewDirection)),(_ReflectionFresnel*5.0+0.0))))*(1.0-lerp(_ShallowColor.rgb,_DeepColor.rgb,node_5244)))); // ALBEDO
                float node_1683 = ((_FoamSpeed*10.0+0.0)*node_1830);
                float2 node_5707 = (_FoamScale*i.uv0);
                float2 node_2701 = ((node_5707+node_1683*float2(-1,-1))*0.8);
                float4 node_5007 = tex2D(_Foam,node_2701);
                float node_5841 = dot(node_5007.rgb,float3(0.3,0.59,0.11));
                float2 node_8535 = (node_5707+node_1683*float2(1,1));
                float4 node_289 = tex2D(_Foam,node_8535);
                float node_5971 = dot(node_289.rgb,float3(0.3,0.59,0.11));
                float node_9220 = ((1.0 - saturate((sceneZ-partZ)/(_FoamDistance*5.0+0.0)))*node_5841*node_5971*(_FoamIntensity*10.0+0.0));
                float node_8464 = (node_5841*node_5971);
                float node_6168 = (_DisplacementSpeed*node_1830);
                float node_7235 = (_DisplacementScale*200.0+0.0);
                float2 node_7172 = (((i.uv0+0.5)*node_7235)+node_6168*float2(1,1));
                float4 node_9054 = tex2D(_DisplacementMask,node_7172);
                float2 node_5885 = ((i.uv0*node_7235)+node_6168*float2(-1,-1));
                float4 node_2396 = tex2D(_DisplacementMask,node_5885);
                float3 Displacement = saturate((lerp(node_9054.rgb,node_2396.rgb,_DisplacementDirection)*(_DisplacementPower*2.0+0.0)));
                float4 node_5249 = _Time + _TimeEditor;
                float node_4525 = (_DispWavesAmount*200.0+0.0);
                float2 node_6489 = (i.uv0*(-1.0));
                float4 _DisplacementWavesMask_var = tex2D(_DisplacementWavesMask,TRANSFORM_TEX(node_6489, _DisplacementWavesMask));
                float node_8744 = dot(_DisplacementWavesMask_var.rgb,float3(0.3,0.59,0.11));
                float node_9814 = (saturate((node_8744+(1.0 - _DispMaskIntensity)))*(1.0 - length((i.uv0*2.0+-1.0)))*node_4525);
                float2 node_4499 = (lerp( (i.uv0*node_4525), float2(node_9814,node_9814), _UseRadialMask )+((_DispWavesSpeed*0.5+0.0)*node_5249.g*(_InverseWaves*2.0+-1.0))*float2(1,1));
                float4 _DisplacementWaves_var = tex2D(_DisplacementWaves,TRANSFORM_TEX(node_4499, _DisplacementWaves));
                float3 DispWaves = ((_DisplacementWaves_var.rgb*(_DispWavesIntensity*10.0+0.0))*_UseDispWaves);
                float3 node_9938 = saturate(saturate((1.0-(1.0-saturate((1.0-(1.0-Albedo)*(1.0-node_9220))))*(1.0-((node_8464*(_WavesFoam*5.0+0.0)*Displacement)+(DispWaves*0.75*node_8464*_DispWavesFoamIntensity))))));
                float3 diffuseColor = node_9938;
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
////// Emissive:
                float3 node_7136 = (Displacement+DispWaves);
                float3 emissive = (_ShowWaves*node_7136);
/// Final Color:
                float ColorsOpacity = lerp(_ShallowColor.a,_DeepColor.a,node_5244);
                float Opacity = clamp(saturate((sceneZ-partZ)/(_ShoreBlend*10.0+0.0)),0,0.98); // OPACITY
                float3 finalColor = diffuse * (saturate((ColorsOpacity*((node_9220*saturate((sceneZ-partZ)/(_FoamShore*5.0+0.0)))+Opacity)))*_OverallOpacity) + specular + emissive;
                fixed4 finalRGBA = fixed4(lerp(sceneColor.rgb, finalColor,(saturate((ColorsOpacity*((node_9220*saturate((sceneZ-partZ)/(_FoamShore*5.0+0.0)))+Opacity)))*_OverallOpacity)),1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdadd
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 d3d11_9x 
            #pragma target 3.0
            #pragma glsl
            uniform float4 _LightColor0;
            uniform sampler2D Refraction;
            uniform sampler2D _CameraDepthTexture;
            uniform float4 _TimeEditor;
            uniform sampler2D _ReflectionTex; uniform float4 _ReflectionTex_ST;
            uniform float _DepthBlend;
            uniform float4 _ShallowColor;
            uniform float4 _DeepColor;
            uniform float _ReflectionFresnel;
            uniform float _ShoreBlend;
            uniform float _Specular;
            uniform sampler2D _WaveA; uniform float4 _WaveA_ST;
            uniform sampler2D _WaveB; uniform float4 _WaveB_ST;
            uniform float _Gloss;
            uniform float _WaveSpeed;
            uniform float _WavesFresnel;
            uniform float _FoamDistance;
            uniform float _FoamIntensity;
            uniform sampler2D _Foam; uniform float4 _Foam_ST;
            uniform float _FoamSpeed;
            uniform float _FoamShore;
            uniform float _RefractionAmount;
            uniform float _OverallOpacity;
            uniform float _ReflectionDistortion;
            uniform sampler2D _DisplacementMask; uniform float4 _DisplacementMask_ST;
            uniform float _DisplacementScale;
            uniform float _DisplacementSpeed;
            uniform float _DisplacementPower;
            uniform float _WavesFoam;
            uniform float _DisplacementDirection;
            uniform float _ReflectionIntensity;
            uniform sampler2D _DisplacementWavesMask; uniform float4 _DisplacementWavesMask_ST;
            uniform float _DispWavesAmount;
            uniform float _DispWavesIntensity;
            uniform float _DispWavesSpeed;
            uniform sampler2D _DisplacementWaves; uniform float4 _DisplacementWaves_ST;
            uniform fixed _ShowWaves;
            uniform fixed _InverseWaves;
            uniform fixed _UseRadialMask;
            uniform fixed _UseDispWaves;
            uniform float _DispMaskIntensity;
            uniform float _WaveScale;
            uniform float _FoamScale;
            uniform float _DispWavesFoamIntensity;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
                float4 screenPos : TEXCOORD5;
                float4 projPos : TEXCOORD6;
                LIGHTING_COORDS(7,8)
                UNITY_FOG_COORDS(9)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                float4 node_89 = _Time + _TimeEditor;
                float node_1830 = ((_WaveSpeed*0.1+0.0)*node_89.g);
                float node_6168 = (_DisplacementSpeed*node_1830);
                float node_7235 = (_DisplacementScale*200.0+0.0);
                float2 node_7172 = (((o.uv0+0.5)*node_7235)+node_6168*float2(1,1));
                float4 node_9054 = tex2Dlod(_DisplacementMask,float4(node_7172,0.0,0));
                float2 node_5885 = ((o.uv0*node_7235)+node_6168*float2(-1,-1));
                float4 node_2396 = tex2Dlod(_DisplacementMask,float4(node_5885,0.0,0));
                float3 Displacement = saturate((lerp(node_9054.rgb,node_2396.rgb,_DisplacementDirection)*(_DisplacementPower*2.0+0.0)));
                float4 node_5249 = _Time + _TimeEditor;
                float node_4525 = (_DispWavesAmount*200.0+0.0);
                float2 node_6489 = (o.uv0*(-1.0));
                float4 _DisplacementWavesMask_var = tex2Dlod(_DisplacementWavesMask,float4(TRANSFORM_TEX(node_6489, _DisplacementWavesMask),0.0,0));
                float node_8744 = dot(_DisplacementWavesMask_var.rgb,float3(0.3,0.59,0.11));
                float node_9814 = (saturate((node_8744+(1.0 - _DispMaskIntensity)))*(1.0 - length((o.uv0*2.0+-1.0)))*node_4525);
                float2 node_4499 = (lerp( (o.uv0*node_4525), float2(node_9814,node_9814), _UseRadialMask )+((_DispWavesSpeed*0.5+0.0)*node_5249.g*(_InverseWaves*2.0+-1.0))*float2(1,1));
                float4 _DisplacementWaves_var = tex2Dlod(_DisplacementWaves,float4(TRANSFORM_TEX(node_4499, _DisplacementWaves),0.0,0));
                float3 DispWaves = ((_DisplacementWaves_var.rgb*(_DispWavesIntensity*10.0+0.0))*_UseDispWaves);
                float3 node_7136 = (Displacement+DispWaves);
                v.vertex.xyz += (node_7136*float3(0,1,0)*node_8744);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos(v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                o.screenPos = o.pos;
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                #if UNITY_UV_STARTS_AT_TOP
                    float grabSign = -_ProjectionParams.x;
                #else
                    float grabSign = _ProjectionParams.x;
                #endif
                i.normalDir = normalize(i.normalDir);
                i.screenPos = float4( i.screenPos.xy / i.screenPos.w, 0, 0 );
                i.screenPos.y *= _ProjectionParams.x;
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float4 node_89 = _Time + _TimeEditor;
                float node_1830 = ((_WaveSpeed*0.1+0.0)*node_89.g);
                float2 node_2952 = (i.uv0*_WaveScale);
                float2 node_4617 = (node_2952+node_1830*float2(-1,-1));
                float3 _WaveA_var = UnpackNormal(tex2D(_WaveA,TRANSFORM_TEX(node_4617, _WaveA)));
                float2 node_4047 = (node_2952+node_1830*float2(1,1));
                float3 _WaveB_var = UnpackNormal(tex2D(_WaveB,TRANSFORM_TEX(node_4047, _WaveB)));
                float3 Normal = (_WaveA_var.rgb*_WaveB_var.rgb); // NORMAL
                float3 node_2275 = Normal;
                float3 normalLocal = node_2275;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float sceneZ = max(0,LinearEyeDepth (UNITY_SAMPLE_DEPTH(tex2Dproj(_CameraDepthTexture, UNITY_PROJ_COORD(i.projPos)))) - _ProjectionParams.g);
                float partZ = max(0,i.projPos.z - _ProjectionParams.g);
                float2 node_9559 = (Normal.rg*(_RefractionAmount*0.1+0.0)*saturate((sceneZ-partZ)/0.2));
                float2 sceneUVs = float2(1,grabSign)*i.screenPos.xy*0.5+0.5 + node_9559;
                float4 sceneColor = tex2D(Refraction, sceneUVs);
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
///////// Gloss:
                float gloss = _Gloss;
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float node_8447 = (_Specular*saturate((sceneZ-partZ)/0.5));
                float3 specularColor = float3(node_8447,node_8447,node_8447);
                float3 directSpecular = attenColor * pow(max(0,dot(halfDirection,normalDirection)),specPow)*specularColor;
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = dot( normalDirection, lightDirection );
                float node_3774 = ((1.0 - dot(node_2275,float3(0.3,0.59,0.11)))*(_WavesFresnel*3.0+-1.0));
                float3 w = float3(node_3774,node_3774,node_3774)*0.5; // Light wrapping
                float3 NdotLWrap = NdotL * ( 1.0 - w );
                float3 forwardLight = max(float3(0.0,0.0,0.0), NdotLWrap + w );
                float3 backLight = max(float3(0.0,0.0,0.0), -NdotLWrap + w ) * float3(node_3774,node_3774,node_3774);
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = (forwardLight+backLight) * attenColor;
                float2 Refraction = node_9559;
                float2 node_9584 = (sceneUVs.rg+(Refraction*(_ReflectionDistortion*16.0+0.0)));
                float4 node_7025 = tex2D(_ReflectionTex,node_9584);
                float3 node_4085 = (node_7025.rgb*_ReflectionIntensity);
                float node_5244 = saturate((sceneZ-partZ)/(_DepthBlend*100.0+0.0));
                float3 Albedo = saturate((1.0-(1.0-(node_4085*pow(1.0-max(0,dot(normalDirection, viewDirection)),(_ReflectionFresnel*5.0+0.0))))*(1.0-lerp(_ShallowColor.rgb,_DeepColor.rgb,node_5244)))); // ALBEDO
                float node_1683 = ((_FoamSpeed*10.0+0.0)*node_1830);
                float2 node_5707 = (_FoamScale*i.uv0);
                float2 node_2701 = ((node_5707+node_1683*float2(-1,-1))*0.8);
                float4 node_5007 = tex2D(_Foam,node_2701);
                float node_5841 = dot(node_5007.rgb,float3(0.3,0.59,0.11));
                float2 node_8535 = (node_5707+node_1683*float2(1,1));
                float4 node_289 = tex2D(_Foam,node_8535);
                float node_5971 = dot(node_289.rgb,float3(0.3,0.59,0.11));
                float node_9220 = ((1.0 - saturate((sceneZ-partZ)/(_FoamDistance*5.0+0.0)))*node_5841*node_5971*(_FoamIntensity*10.0+0.0));
                float node_8464 = (node_5841*node_5971);
                float node_6168 = (_DisplacementSpeed*node_1830);
                float node_7235 = (_DisplacementScale*200.0+0.0);
                float2 node_7172 = (((i.uv0+0.5)*node_7235)+node_6168*float2(1,1));
                float4 node_9054 = tex2D(_DisplacementMask,node_7172);
                float2 node_5885 = ((i.uv0*node_7235)+node_6168*float2(-1,-1));
                float4 node_2396 = tex2D(_DisplacementMask,node_5885);
                float3 Displacement = saturate((lerp(node_9054.rgb,node_2396.rgb,_DisplacementDirection)*(_DisplacementPower*2.0+0.0)));
                float4 node_5249 = _Time + _TimeEditor;
                float node_4525 = (_DispWavesAmount*200.0+0.0);
                float2 node_6489 = (i.uv0*(-1.0));
                float4 _DisplacementWavesMask_var = tex2D(_DisplacementWavesMask,TRANSFORM_TEX(node_6489, _DisplacementWavesMask));
                float node_8744 = dot(_DisplacementWavesMask_var.rgb,float3(0.3,0.59,0.11));
                float node_9814 = (saturate((node_8744+(1.0 - _DispMaskIntensity)))*(1.0 - length((i.uv0*2.0+-1.0)))*node_4525);
                float2 node_4499 = (lerp( (i.uv0*node_4525), float2(node_9814,node_9814), _UseRadialMask )+((_DispWavesSpeed*0.5+0.0)*node_5249.g*(_InverseWaves*2.0+-1.0))*float2(1,1));
                float4 _DisplacementWaves_var = tex2D(_DisplacementWaves,TRANSFORM_TEX(node_4499, _DisplacementWaves));
                float3 DispWaves = ((_DisplacementWaves_var.rgb*(_DispWavesIntensity*10.0+0.0))*_UseDispWaves);
                float3 node_9938 = saturate(saturate((1.0-(1.0-saturate((1.0-(1.0-Albedo)*(1.0-node_9220))))*(1.0-((node_8464*(_WavesFoam*5.0+0.0)*Displacement)+(DispWaves*0.75*node_8464*_DispWavesFoamIntensity))))));
                float3 diffuseColor = node_9938;
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float ColorsOpacity = lerp(_ShallowColor.a,_DeepColor.a,node_5244);
                float Opacity = clamp(saturate((sceneZ-partZ)/(_ShoreBlend*10.0+0.0)),0,0.98); // OPACITY
                float3 finalColor = diffuse * (saturate((ColorsOpacity*((node_9220*saturate((sceneZ-partZ)/(_FoamShore*5.0+0.0)))+Opacity)))*_OverallOpacity) + specular;
                fixed4 finalRGBA = fixed4(finalColor,0);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "ShadowCaster"
            Tags {
                "LightMode"="ShadowCaster"
            }
            Offset 1, 1
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCASTER
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 d3d11_9x 
            #pragma target 3.0
            #pragma glsl
            uniform float4 _TimeEditor;
            uniform float _WaveSpeed;
            uniform sampler2D _DisplacementMask; uniform float4 _DisplacementMask_ST;
            uniform float _DisplacementScale;
            uniform float _DisplacementSpeed;
            uniform float _DisplacementPower;
            uniform float _DisplacementDirection;
            uniform sampler2D _DisplacementWavesMask; uniform float4 _DisplacementWavesMask_ST;
            uniform float _DispWavesAmount;
            uniform float _DispWavesIntensity;
            uniform float _DispWavesSpeed;
            uniform sampler2D _DisplacementWaves; uniform float4 _DisplacementWaves_ST;
            uniform fixed _InverseWaves;
            uniform fixed _UseRadialMask;
            uniform fixed _UseDispWaves;
            uniform float _DispMaskIntensity;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                float4 node_89 = _Time + _TimeEditor;
                float node_1830 = ((_WaveSpeed*0.1+0.0)*node_89.g);
                float node_6168 = (_DisplacementSpeed*node_1830);
                float node_7235 = (_DisplacementScale*200.0+0.0);
                float2 node_7172 = (((o.uv0+0.5)*node_7235)+node_6168*float2(1,1));
                float4 node_9054 = tex2Dlod(_DisplacementMask,float4(node_7172,0.0,0));
                float2 node_5885 = ((o.uv0*node_7235)+node_6168*float2(-1,-1));
                float4 node_2396 = tex2Dlod(_DisplacementMask,float4(node_5885,0.0,0));
                float3 Displacement = saturate((lerp(node_9054.rgb,node_2396.rgb,_DisplacementDirection)*(_DisplacementPower*2.0+0.0)));
                float4 node_5249 = _Time + _TimeEditor;
                float node_4525 = (_DispWavesAmount*200.0+0.0);
                float2 node_6489 = (o.uv0*(-1.0));
                float4 _DisplacementWavesMask_var = tex2Dlod(_DisplacementWavesMask,float4(TRANSFORM_TEX(node_6489, _DisplacementWavesMask),0.0,0));
                float node_8744 = dot(_DisplacementWavesMask_var.rgb,float3(0.3,0.59,0.11));
                float node_9814 = (saturate((node_8744+(1.0 - _DispMaskIntensity)))*(1.0 - length((o.uv0*2.0+-1.0)))*node_4525);
                float2 node_4499 = (lerp( (o.uv0*node_4525), float2(node_9814,node_9814), _UseRadialMask )+((_DispWavesSpeed*0.5+0.0)*node_5249.g*(_InverseWaves*2.0+-1.0))*float2(1,1));
                float4 _DisplacementWaves_var = tex2Dlod(_DisplacementWaves,float4(TRANSFORM_TEX(node_4499, _DisplacementWaves),0.0,0));
                float3 DispWaves = ((_DisplacementWaves_var.rgb*(_DispWavesIntensity*10.0+0.0))*_UseDispWaves);
                float3 node_7136 = (Displacement+DispWaves);
                v.vertex.xyz += (node_7136*float3(0,1,0)*node_8744);
                o.pos = UnityObjectToClipPos(v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
