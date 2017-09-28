// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'

// Shader created with Shader Forge v1.25 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.25;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:1,olmd:1,culm:1,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:False,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.6768491,fgcg:0.7551224,fgcb:0.7867647,fgca:1,fgde:0.0002,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:9546,x:33006,y:32691,varname:node_9546,prsc:2|normal-750-OUT,alpha-5053-OUT,refract-7824-OUT;n:type:ShaderForge.SFN_Tex2d,id:2627,x:31912,y:32504,ptovrint:False,ptlb:Wave A,ptin:_WaveA,varname:node_2627,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:True|UVIN-743-UVOUT;n:type:ShaderForge.SFN_Tex2d,id:5414,x:31951,y:32804,ptovrint:False,ptlb:Wave B,ptin:_WaveB,varname:node_5414,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:True|UVIN-2333-UVOUT;n:type:ShaderForge.SFN_TexCoord,id:4656,x:31174,y:32619,varname:node_4656,prsc:2,uv:0;n:type:ShaderForge.SFN_Panner,id:743,x:31722,y:32511,varname:node_743,prsc:2,spu:1,spv:1|UVIN-1700-OUT,DIST-4123-OUT;n:type:ShaderForge.SFN_Slider,id:6237,x:31131,y:32871,ptovrint:False,ptlb:Waves Scale,ptin:_WavesScale,varname:node_6237,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.3713441,max:1;n:type:ShaderForge.SFN_RemapRange,id:2768,x:31444,y:32871,varname:node_2768,prsc:2,frmn:0,frmx:1,tomn:0,tomx:200|IN-6237-OUT;n:type:ShaderForge.SFN_Multiply,id:1700,x:31414,y:32649,varname:node_1700,prsc:2|A-4656-UVOUT,B-2768-OUT;n:type:ShaderForge.SFN_Panner,id:2333,x:31733,y:32693,varname:node_2333,prsc:2,spu:-1,spv:-1|UVIN-1700-OUT,DIST-4123-OUT;n:type:ShaderForge.SFN_Slider,id:7117,x:31470,y:33240,ptovrint:False,ptlb:Wave Speed,ptin:_WaveSpeed,varname:node_7117,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Time,id:4779,x:31470,y:33072,varname:node_4779,prsc:2;n:type:ShaderForge.SFN_RemapRange,id:6774,x:31801,y:33195,varname:node_6774,prsc:2,frmn:0,frmx:1,tomn:0.01,tomx:0.1|IN-7117-OUT;n:type:ShaderForge.SFN_Multiply,id:4123,x:31765,y:33039,varname:node_4123,prsc:2|A-4779-T,B-6774-OUT;n:type:ShaderForge.SFN_Multiply,id:750,x:32196,y:32638,varname:node_750,prsc:2|A-2627-RGB,B-5414-RGB;n:type:ShaderForge.SFN_Vector1,id:3504,x:32507,y:32959,varname:node_3504,prsc:2,v1:0.3;n:type:ShaderForge.SFN_TexCoord,id:718,x:32129,y:32943,varname:node_718,prsc:2,uv:0;n:type:ShaderForge.SFN_Slider,id:5751,x:32102,y:33179,ptovrint:False,ptlb:Refraction Power,ptin:_RefractionPower,varname:node_5751,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Multiply,id:7824,x:32459,y:33126,varname:node_7824,prsc:2|A-718-UVOUT,B-4300-OUT,C-5751-OUT;n:type:ShaderForge.SFN_ComponentMask,id:4300,x:32291,y:32802,varname:node_4300,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-750-OUT;n:type:ShaderForge.SFN_Fresnel,id:4256,x:32528,y:32781,varname:node_4256,prsc:2|EXP-6253-OUT;n:type:ShaderForge.SFN_Multiply,id:5053,x:32791,y:32855,varname:node_5053,prsc:2|A-7859-OUT,B-3504-OUT;n:type:ShaderForge.SFN_Vector1,id:6253,x:32477,y:32708,varname:node_6253,prsc:2,v1:9;n:type:ShaderForge.SFN_RemapRange,id:7859,x:32679,y:32763,varname:node_7859,prsc:2,frmn:0,frmx:1,tomn:0,tomx:0.3|IN-4256-OUT;proporder:2627-5414-6237-7117-5751;pass:END;sub:END;*/

Shader "DCG/Water Shader/Water Backface" {
    Properties {
        _WaveA ("Wave A", 2D) = "bump" {}
        _WaveB ("Wave B", 2D) = "bump" {}
        _WavesScale ("Waves Scale", Range(0, 1)) = 0.3713441
        _WaveSpeed ("Wave Speed", Range(0, 1)) = 0
        _RefractionPower ("Refraction Power", Range(0, 1)) = 0
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
            Cull Front
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma multi_compile_fog
            #pragma exclude_renderers xbox360 ps3 
            #pragma target 3.0
            uniform sampler2D _GrabTexture;
            uniform float4 _TimeEditor;
            uniform sampler2D _WaveA; uniform float4 _WaveA_ST;
            uniform sampler2D _WaveB; uniform float4 _WaveB_ST;
            uniform float _WavesScale;
            uniform float _WaveSpeed;
            uniform float _RefractionPower;
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
                UNITY_FOG_COORDS(6)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(-v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos(v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
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
                float4 node_4779 = _Time + _TimeEditor;
                float node_4123 = (node_4779.g*(_WaveSpeed*0.09+0.01));
                float2 node_1700 = (i.uv0*(_WavesScale*200.0+0.0));
                float2 node_743 = (node_1700+node_4123*float2(1,1));
                float3 _WaveA_var = UnpackNormal(tex2D(_WaveA,TRANSFORM_TEX(node_743, _WaveA)));
                float2 node_2333 = (node_1700+node_4123*float2(-1,-1));
                float3 _WaveB_var = UnpackNormal(tex2D(_WaveB,TRANSFORM_TEX(node_2333, _WaveB)));
                float3 node_750 = (_WaveA_var.rgb*_WaveB_var.rgb);
                float3 normalLocal = node_750;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float2 sceneUVs = float2(1,grabSign)*i.screenPos.xy*0.5+0.5 + (i.uv0*node_750.rg*_RefractionPower);
                float4 sceneColor = tex2D(_GrabTexture, sceneUVs);
////// Lighting:
                float3 finalColor = 0;
                fixed4 finalRGBA = fixed4(lerp(sceneColor.rgb, finalColor,((pow(1.0-max(0,dot(normalDirection, viewDirection)),9.0)*0.3+0.0)*0.3)),1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
