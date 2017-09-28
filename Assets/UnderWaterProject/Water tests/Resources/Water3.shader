// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

Shader "Custom/Scrolling tile map3" {
 
     Properties {
         _MainTex ("Tileset", 2D) = "black" {}
         _Number ("Texture number", Int) = 0
         _Color ("Color", Color) = (1,1,1,1)

         _ScrollSpeedX ("Scroll Speed X", float) = 0
         _ScrollSpeedY ("Scroll Speed Y", float) = 0
     }
     
     SubShader {
         Tags { "Queue"="Transparent" "RenderType"="Transparent" }
         Blend SrcAlpha OneMinusSrcAlpha
 
         LOD 200
         pass
         {  
             CGPROGRAM
             #pragma vertex vert
             #pragma fragment frag
             #include "UnityCG.cginc"
 
             sampler2D _MainTex;
             //sampler2D _MainTex2;
             float4 _MainTex_ST;
             float4 _Color;
             int _Number;

             float _ScrollSpeedX;
             float _ScrollSpeedY;
 
             struct vinput
             {
                 float4 vertex : POSITION;
                 float4 texcoord : TEXCOORD0;
             };
 
             struct voutput
             {
                 float4 vertex : SV_POSITION;
                 float4 texcoord : TEXCOORD0;
             };
 
             voutput vert(vinput i)
             {
                 voutput result;
                 result.vertex = UnityObjectToClipPos(i.vertex);
                 result.texcoord.xy = i.texcoord.xy * _MainTex_ST.xy + _MainTex_ST.zw;
                 result.texcoord.zw = _MainTex_ST.zw;
                 return result;
             }
 
             float4 frag(voutput o) : COLOR
             {
                 float2 newUVs = float2(
                 o.texcoord.x % 0.0625 + 0.0625 * (_Number % 4),
                 o.texcoord.y % 0.0625 + 0.0625 * (_Number / 4));

				float4 main =
				 tex2D(_MainTex, newUVs) * _Color;
                
					return main;
             }
 
             ENDCG
         }
     } 
 
 }
