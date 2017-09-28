// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.18 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.18;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:False,igpj:True,qofs:0,qpre:4,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5441177,fgcg:0.4627208,fgcb:0.4440961,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:3133,x:32719,y:32712,varname:node_3133,prsc:2|alpha-1990-OUT,refract-4424-OUT;n:type:ShaderForge.SFN_Vector1,id:1990,x:32382,y:33027,varname:node_1990,prsc:2,v1:0;n:type:ShaderForge.SFN_Tex2dAsset,id:2413,x:31544,y:32511,ptovrint:False,ptlb:Distortion,ptin:_Distortion,varname:node_2413,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:40a59d660a527ee4cbad46b701a4d2cd,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Tex2d,id:5195,x:32137,y:32593,varname:node_5195,prsc:2,tex:40a59d660a527ee4cbad46b701a4d2cd,ntxv:0,isnm:False|UVIN-9421-UVOUT,TEX-2413-TEX;n:type:ShaderForge.SFN_Time,id:3131,x:31303,y:33066,varname:node_3131,prsc:2;n:type:ShaderForge.SFN_Tau,id:1588,x:31376,y:33339,varname:node_1588,prsc:2;n:type:ShaderForge.SFN_Multiply,id:5596,x:31828,y:33223,varname:node_5596,prsc:2|A-4676-OUT,B-1588-OUT;n:type:ShaderForge.SFN_Sin,id:1536,x:31828,y:33069,varname:node_1536,prsc:2|IN-5596-OUT;n:type:ShaderForge.SFN_RemapRange,id:5866,x:31979,y:33069,varname:node_5866,prsc:2,frmn:-1,frmx:1,tomn:0,tomx:1|IN-1536-OUT;n:type:ShaderForge.SFN_Tex2d,id:6751,x:32137,y:32712,varname:node_6751,prsc:2,tex:40a59d660a527ee4cbad46b701a4d2cd,ntxv:0,isnm:False|UVIN-9-UVOUT,TEX-2413-TEX;n:type:ShaderForge.SFN_TexCoord,id:994,x:31530,y:32666,varname:node_994,prsc:2,uv:0;n:type:ShaderForge.SFN_Lerp,id:9116,x:32387,y:32789,varname:node_9116,prsc:2|A-5195-RGB,B-6751-RGB,T-5866-OUT;n:type:ShaderForge.SFN_ComponentMask,id:4346,x:32444,y:33086,varname:node_4346,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-9116-OUT;n:type:ShaderForge.SFN_ValueProperty,id:467,x:32411,y:33276,ptovrint:False,ptlb:Distortion Intensity,ptin:_DistortionIntensity,varname:node_467,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.5;n:type:ShaderForge.SFN_Multiply,id:4424,x:32625,y:33205,varname:node_4424,prsc:2|A-4346-OUT,B-467-OUT;n:type:ShaderForge.SFN_Add,id:3596,x:31913,y:32804,varname:node_3596,prsc:2|A-2891-OUT,B-7220-OUT;n:type:ShaderForge.SFN_Vector2,id:7220,x:31709,y:32909,varname:node_7220,prsc:2,v1:0.5,v2:0.5;n:type:ShaderForge.SFN_Panner,id:9421,x:31923,y:32428,varname:node_9421,prsc:2,spu:1,spv:1|UVIN-2891-OUT,DIST-7861-OUT;n:type:ShaderForge.SFN_Multiply,id:2891,x:31837,y:32644,varname:node_2891,prsc:2|A-994-UVOUT,B-8783-OUT;n:type:ShaderForge.SFN_ValueProperty,id:8783,x:31530,y:32844,ptovrint:False,ptlb:Distortion Scale,ptin:_DistortionScale,varname:node_8783,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Panner,id:9,x:32094,y:32826,varname:node_9,prsc:2,spu:-1,spv:-1|UVIN-3596-OUT,DIST-7861-OUT;n:type:ShaderForge.SFN_Slider,id:5016,x:31318,y:32970,ptovrint:False,ptlb:Distortion Speed,ptin:_DistortionSpeed,varname:node_5016,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Multiply,id:7861,x:31679,y:32999,varname:node_7861,prsc:2|A-5016-OUT,B-3131-TSL;n:type:ShaderForge.SFN_Slider,id:6160,x:31212,y:33224,ptovrint:False,ptlb:Distortion Wave Speed,ptin:_DistortionWaveSpeed,varname:node_6160,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Multiply,id:4676,x:31554,y:33161,varname:node_4676,prsc:2|A-3131-T,B-6160-OUT;proporder:2413-467-8783-5016-6160;pass:END;sub:END;*/

Shader "DCG/Water Shader/Normal Distortion" {
    Properties {
        _Distortion ("Distortion", 2D) = "bump" {}
        _DistortionIntensity ("Distortion Intensity", Float ) = 0.5
        _DistortionScale ("Distortion Scale", Float ) = 1
        _DistortionSpeed ("Distortion Speed", Range(0, 1)) = 0
        _DistortionWaveSpeed ("Distortion Wave Speed", Range(0, 1)) = 0
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        
        GrabPass{ }
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
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform sampler2D _GrabTexture;
            uniform float4 _TimeEditor;
            uniform sampler2D _Distortion; uniform float4 _Distortion_ST;
            uniform float _DistortionIntensity;
            uniform float _DistortionScale;
            uniform float _DistortionSpeed;
            uniform float _DistortionWaveSpeed;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 screenPos : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = UnityObjectToClipPos(v.vertex);
                o.screenPos = o.pos;
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                #if UNITY_UV_STARTS_AT_TOP
                    float grabSign = -_ProjectionParams.x;
                #else
                    float grabSign = _ProjectionParams.x;
                #endif
                i.screenPos = float4( i.screenPos.xy / i.screenPos.w, 0, 0 );
                i.screenPos.y *= _ProjectionParams.x;
                float4 node_3131 = _Time + _TimeEditor;
                float node_7861 = (_DistortionSpeed*node_3131.r);
                float2 node_2891 = (i.uv0*_DistortionScale);
                float2 node_9421 = (node_2891+node_7861*float2(1,1));
                float3 node_5195 = UnpackNormal(tex2D(_Distortion,TRANSFORM_TEX(node_9421, _Distortion)));
                float2 node_9 = ((node_2891+float2(0.5,0.5))+node_7861*float2(-1,-1));
                float3 node_6751 = UnpackNormal(tex2D(_Distortion,TRANSFORM_TEX(node_9, _Distortion)));
                float2 sceneUVs = float2(1,grabSign)*i.screenPos.xy*0.5+0.5 + (lerp(node_5195.rgb,node_6751.rgb,(sin(((node_3131.g*_DistortionWaveSpeed)*6.28318530718))*0.5+0.5)).rg*_DistortionIntensity);
                float4 sceneColor = tex2D(_GrabTexture, sceneUVs);
/////// Vectors:
////// Lighting:
                float3 finalColor = 0;
                return fixed4(lerp(sceneColor.rgb, finalColor,0.0),1);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
