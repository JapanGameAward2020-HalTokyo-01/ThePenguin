

Shader "EffekseerMaterial/ToonBase" {

Properties{
	_MainTex("Base (RGB)", 2D) = "white" {}
	[Enum(UnityEngine.Rendering.BlendMode)] _BlendSrc("Blend Src", Float) = 0
	[Enum(UnityEngine.Rendering.BlendMode)] _BlendDst("Blend Dst", Float) = 0
	_BlendOp("Blend Op", Float) = 0
	_Cull("Cull", Float) = 0
	[Enum(UnityEngine.Rendering.CompareFunction)] _ZTest("ZTest Mode", Float) = 0
	[Toggle] _ZWrite("ZWrite", Float) = 0

	BaseNoise("Color (RGBA)", 2D) = "white" {}
Mask("Color (RGBA)", 2D) = "white" {}
Dis_Texture("Color (RGBA)", 2D) = "white" {}

}

SubShader{

Blend[_BlendSrc][_BlendDst]
BlendOp[_BlendOp]
ZTest[_ZTest]
ZWrite[_ZWrite]
Cull[_Cull]

	Pass {

		CGPROGRAM

		#define MOD fmod
		#define FRAC frac
		#define LERP lerp

		#pragma target 5.0
		#pragma vertex vert
		#pragma fragment frag
		#pragma multi_compile _ _MODEL_
		//PRAGMA_REFRACTION_FLAG
		//PRAGMA_LIT_FLAG

		#include "UnityCG.cginc"

		#if _MATERIAL_REFRACTION_
		sampler2D _BackTex;
		#endif

		sampler2D BaseNoise;
sampler2D Mask;
sampler2D Dis_Texture;


		float4 Dis_Level;
float4 Core_Add_Level;
float4 Dis_Tiling;
float4 Dis_Speed;
float4 Base_Speed;
float4 Base_Tiling;
float4 Mask_Subtract_AddCore;


		#if _MODEL_

		struct SimpleVertex
		{
			float3 Pos;
			float3 Normal;
			float3 Binormal;
			float3 Tangent;
			float2 UV;
			float4 Color;
		};
	
		struct ModelParameter
		{
			float4x4 Mat;
			float4 UV;
			float4 Color;
			int Time;
		};
	
		StructuredBuffer<float4> buf_customData1;
		//%CUSTOM_BUF2%

		StructuredBuffer<SimpleVertex> buf_vertex;
		StructuredBuffer<int> buf_index;
	
		StructuredBuffer<ModelParameter> buf_model_parameter;
		StructuredBuffer<int> buf_vertex_offsets;
		StructuredBuffer<int> buf_index_offsets;

		#else

		struct Vertex
		{
			float3 Pos;
			float4 Color;
			float3 Normal;
			float3 Tangent;
			float2 UV1;
			float2 UV2;
			float4 CustomData1;
			//%CUSTOM_VS_INPUT2%
		};

		StructuredBuffer<Vertex> buf_vertex;
		float buf_offset;

		#endif

		struct ps_input
		{
			float4 Position		: SV_POSITION;
			float4 VColor		: COLOR;
			float2 UV1		: TEXCOORD0;
			float2 UV2		: TEXCOORD1;
			float3 WorldP	: TEXCOORD2;
			float3 WorldN : TEXCOORD3;
			float3 WorldT : TEXCOORD4;
			float3 WorldB : TEXCOORD5;
			float2 ScreenUV : TEXCOORD6;
			float4 CustomData1 : TEXCOORD7;
			//%CUSTOM_VSPS_INOUT2%
		};

		float4 lightDirection;
		float4 lightColor;
		float4 lightAmbientColor;

		float2 GetUV(float2 uv)
		{
			uv.y = 1.0 - uv.y;
			return uv;
		}
		
		float2 GetUVBack(float2 uv)
		{
			uv.y = uv.y;
			return uv;
		}

		ps_input vert(uint id : SV_VertexID, uint inst : SV_InstanceID)
		{
			// Unity
			float4 cameraPosition = float4(UNITY_MATRIX_V[3].xyzw);

			#if _MODEL_

			uint v_id = id;
	
			float4x4 buf_matrix = buf_model_parameter[inst].Mat;
			float4 buf_uv = buf_model_parameter[inst].UV;
			float4 buf_color = buf_model_parameter[inst].Color;
			float buf_vertex_offset = buf_vertex_offsets[buf_model_parameter[inst].Time];
			float buf_index_offset = buf_index_offsets[buf_model_parameter[inst].Time];
	
			SimpleVertex Input = buf_vertex[buf_index[v_id + buf_index_offset] + buf_vertex_offset];


			float3 localPos = Input.Pos;
			

			#else

			int qind = (id) / 6;
			int vind = (id) % 6;

			int v_offset[6];
			v_offset[0] = 2;
			v_offset[1] = 1;
			v_offset[2] = 0;
			v_offset[3] = 1;
			v_offset[4] = 2;
			v_offset[5] = 3;

			Vertex Input = buf_vertex[buf_offset + qind * 4 + v_offset[vind]];

			#endif

			ps_input Output;

			#if _MODEL_
			float3x3 matRotModel = (float3x3)buf_matrix;
			float3 worldPos = mul(buf_matrix, float4(localPos, 1.0f)).xyz;
			float3 worldNormal = normalize(mul(matRotModel, Input.Normal));
			float3 worldTangent = normalize(mul(matRotModel, Input.Tangent));
			float3 worldBinormal = cross(worldNormal, worldTangent);
			#else
			float3 worldPos = Input.Pos;
			float3 worldNormal = Input.Normal;
			float3 worldTangent = Input.Tangent;
			float3 worldBinormal = cross(worldNormal, worldTangent);
			#endif
		
			#if _MODEL_
			float3 objectScale = float3(1.0, 1.0, 1.0);
			objectScale.x = length(mul(matRotModel, float3(1.0, 0.0, 0.0)));
			objectScale.y = length(mul(matRotModel, float3(0.0, 1.0, 0.0)));
			objectScale.z = length(mul(matRotModel, float3(0.0, 0.0, 1.0)));
			#else
			float3 objectScale = float3(1.0, 1.0, 1.0);
			#endif

			// UV
			#if _MODEL_
			float2 uv1 = Input.UV.xy * buf_uv.zw + buf_uv.xy;
			float2 uv2 = Input.UV.xy * buf_uv.zw + buf_uv.xy;
			#else
			float2 uv1 = Input.UV1;
			float2 uv2 = Input.UV2;
			#endif

			// NBT
			Output.WorldN = worldNormal;
			Output.WorldB = worldBinormal;
			Output.WorldT = worldTangent;
		
			float3 pixelNormalDir = worldNormal;

			#if _MODEL_
			float4 vcolor = Input.Color * buf_color;
			#else
			float4 vcolor = Input.Color;
			#endif

			#if _MODEL_
float4 customData1 = buf_customData1[inst];
#else
float4 customData1 = Input.CustomData1;
#endif


float2 val0=Mask_Subtract_AddCore.xy;
float4 val1_CompMask=float4(val0.x,val0.y, 0.0, 1.0);
float val1=val1_CompMask.x;
float2 val2=uv1;
float4 val4 = tex2Dlod(Mask,float4(GetUV(val2),0,0));
float val5=Dis_Level.x;
float val6=_Time.y;
float2 val7=Dis_Speed.xy;
float2 val8=(val7*float2(val6,val6));
float2 val9=Dis_Tiling.xy;
float2 val10=(val9*val2);
float2 val11=(val10+val8);
float4 val13 = tex2Dlod(Dis_Texture,float4(GetUV(val11),0,0));
float4 val14=(val13*float4(val5,val5,val5,val5));
float4 val15_CompMask=val14;
float2 val15=val15_CompMask.xy;
float2 val16=Base_Tiling.xy;
float2 val17=(val16*val2);
float2 val18=Base_Speed.xy;
float2 val19=(val18*float2(val6,val6));
float2 val20=(val19+val17);
float2 val21=(val20+val15);
float4 val23 = tex2Dlod(BaseNoise,float4(GetUV(val21),0,0));
float4 val24=(val23*val4);
float4 val25=(val24+val4);
float4 val26=customData1.xyzw;
float4 val27_CompMask=val26;
float val27=val27_CompMask.w;
float4 val28=(float4(val27,val27,val27,val27)*val25);
float4 val29=(val28-float4(val1,val1,val1,val1));
float val30=Core_Add_Level.x;
float4 val31_CompMask=float4(val0.x,val0.y, 0.0, 1.0);
float val31=val31_CompMask.y;
float4 val32=(val28-float4(val31,val31,val31,val31));
float4 val33=ceil(val32);
float4 val34=(val26*val33);
float4 val35=(val34*float4(val30,val30,val30,val30));
float4 val36=(val35+val26);
float3 normalDir = float3(0.5,0.5,1.0);
float3 tempNormalDir = ((normalDir -float3 (0.5, 0.5, 0.5)) * 2.0);
pixelNormalDir = tempNormalDir.x * worldTangent + tempNormalDir.y * worldBinormal + tempNormalDir.z * worldNormal;
float3 worldPositionOffset = float3(0.0,0.0,0.0);
float3 baseColor = float3(0.0,0.0,0.0);
float3 emissive = float3(val36.x,val36.y,val36.z);
float metallic = float(0.5);
float roughness = float(0.5);
float ambientOcclusion = float(1.0);
float opacity = float(1.0);
float opacityMask = val29.x;
float refraction = float(0.0);


Output.CustomData1 = customData1.xyzw;

			worldPos = worldPos + worldPositionOffset;

			// Unity Ext
			float4 cameraPos = mul(UNITY_MATRIX_V, float4(worldPos, 1.0f));
			cameraPos = cameraPos / cameraPos.w;
			Output.Position = mul(UNITY_MATRIX_VP, float4(worldPos, 1.0f));
		
			Output.WorldP = worldPos;
			Output.VColor = vcolor;
			Output.UV1 = uv1;
			Output.UV2 = uv2;
			Output.ScreenUV = Output.Position.xy / Output.Position.w;
			Output.ScreenUV.xy = float2(Output.ScreenUV.x + 1.0, 1.0 - Output.ScreenUV.y) * 0.5;
		
			return Output;
		}
		
		#ifdef _MATERIAL_LIT_
		
		#define lightScale 3.14
		
		float calcD_GGX(float roughness, float dotNH)
		{
			float alpha = roughness*roughness;
			float alphaSqr = alpha*alpha;
			float pi = 3.14159;
			float denom = dotNH * dotNH *(alphaSqr-1.0) + 1.0;
			return (alpha / denom) * (alpha / denom) / pi;
		}
		
		float calcF(float F0, float dotLH)
		{
			float dotLH5 = pow(1.0-dotLH,5.0);
			return F0 + (1.0-F0)*(dotLH5);
		}
		
		float calcG_Schlick(float roughness, float dotNV, float dotNL)
		{
			// UE4
			float k = (roughness + 1.0) * (roughness + 1.0) / 8.0;
			// float k = roughness * roughness / 2.0;
		
			float gV = dotNV*(1.0 - k) + k;
			float gL = dotNL*(1.0 - k) + k;
		
			return 1.0 / (gV * gL);
		}
		
		float calcLightingGGX(float3 N, float3 V, float3 L, float roughness, float F0)
		{
			float3 H = normalize(V+L);
		
			float dotNL = saturate( dot(N,L) );
			float dotLH = saturate( dot(L,H) );
			float dotNH = saturate( dot(N,H) ) - 0.001;
			float dotNV = saturate( dot(N,V) ) + 0.001;
		
			float D = calcD_GGX(roughness, dotNH);
			float F = calcF(F0, dotLH);
			float G = calcG_Schlick(roughness, dotNV, dotNL);
		
			return dotNL * D * F * G / 4.0;
		}
		
		float3 calcDirectionalLightDiffuseColor(float3 diffuseColor, float3 normal, float3 lightDir, float ao)
		{
			float3 color = float3(0.0,0.0,0.0);
		
			float NoL = dot(normal,lightDir);
			color.xyz = lightColor.xyz * lightScale * max(NoL,0.0) * ao / 3.14;
			color.xyz = color.xyz * diffuseColor.xyz;
			return color;
		}
		
		#endif
		
		float4 frag(ps_input Input) : COLOR
		{
			// Unity
			float4 cameraPosition = float4(_WorldSpaceCameraPos, 1.0);
			float4x4 cameraMat = UNITY_MATRIX_V;

			float2 uv1 = Input.UV1;
			float2 uv2 = Input.UV2;
			float3 worldPos = Input.WorldP;
			float3 worldNormal = Input.WorldN;
			float3 worldBinormal = Input.WorldB;
			float3 worldTangent = Input.WorldT;
		
			float3 pixelNormalDir = worldNormal;
			float4 vcolor = Input.VColor;

			float3 objectScale = float3(1.0, 1.0, 1.0);
		
			float4 customData1 = Input.CustomData1;

float2 val0=Mask_Subtract_AddCore.xy;
float4 val1_CompMask=float4(val0.x,val0.y, 0.0, 1.0);
float val1=val1_CompMask.x;
float2 val2=uv1;
float4 val4 = tex2D(Mask,GetUV(val2));
float val5=Dis_Level.x;
float val6=_Time.y;
float2 val7=Dis_Speed.xy;
float2 val8=(val7*float2(val6,val6));
float2 val9=Dis_Tiling.xy;
float2 val10=(val9*val2);
float2 val11=(val10+val8);
float4 val13 = tex2D(Dis_Texture,GetUV(val11));
float4 val14=(val13*float4(val5,val5,val5,val5));
float4 val15_CompMask=val14;
float2 val15=val15_CompMask.xy;
float2 val16=Base_Tiling.xy;
float2 val17=(val16*val2);
float2 val18=Base_Speed.xy;
float2 val19=(val18*float2(val6,val6));
float2 val20=(val19+val17);
float2 val21=(val20+val15);
float4 val23 = tex2D(BaseNoise,GetUV(val21));
float4 val24=(val23*val4);
float4 val25=(val24+val4);
float4 val26=customData1.xyzw;
float4 val27_CompMask=val26;
float val27=val27_CompMask.w;
float4 val28=(float4(val27,val27,val27,val27)*val25);
float4 val29=(val28-float4(val1,val1,val1,val1));
float val30=Core_Add_Level.x;
float4 val31_CompMask=float4(val0.x,val0.y, 0.0, 1.0);
float val31=val31_CompMask.y;
float4 val32=(val28-float4(val31,val31,val31,val31));
float4 val33=ceil(val32);
float4 val34=(val26*val33);
float4 val35=(val34*float4(val30,val30,val30,val30));
float4 val36=(val35+val26);
float3 normalDir = float3(0.5,0.5,1.0);
float3 tempNormalDir = ((normalDir -float3 (0.5, 0.5, 0.5)) * 2.0);
pixelNormalDir = tempNormalDir.x * worldTangent + tempNormalDir.y * worldBinormal + tempNormalDir.z * worldNormal;
float3 worldPositionOffset = float3(0.0,0.0,0.0);
float3 baseColor = float3(0.0,0.0,0.0);
float3 emissive = float3(val36.x,val36.y,val36.z);
float metallic = float(0.5);
float roughness = float(0.5);
float ambientOcclusion = float(1.0);
float opacity = float(1.0);
float opacityMask = val29.x;
float refraction = float(0.0);




			#if _MATERIAL_REFRACTION_
			float airRefraction = 1.0;
			float3 dir = mul((float3x3)cameraMat, pixelNormalDir);
			dir.y = -dir.y;

			float2 distortUV = 	dir.xy * (refraction - airRefraction);

			distortUV += Input.ScreenUV;
			distortUV = GetUVBack(distortUV);	

			float4 bg = tex2D(_BackTex, distortUV);
			float4 Output = bg;

			if(opacityMask <= 0.0) discard;
			if(opacity <= 0.0) discard;

			return Output;

			#elif defined(_MATERIAL_LIT_)
			float3 viewDir = normalize(cameraPosition.xyz - worldPos);
			float3 diffuse = calcDirectionalLightDiffuseColor(baseColor, pixelNormalDir, lightDirection.xyz, ambientOcclusion);
			float3 specular = lightColor.xyz * lightScale * calcLightingGGX(worldNormal, viewDir, lightDirection.xyz, roughness, 0.9);
		
			float4 Output =  float4(metallic * specular + (1.0 - metallic) * diffuse + baseColor * lightAmbientColor.xyz * ambientOcclusion, opacity);
			Output.xyz = Output.xyz + emissive.xyz;
		
			if(opacityMask <= 0.0) discard;
			if(opacity <= 0.0) discard;
		
			return Output;

			#else

			float4 Output = float4(emissive, opacity);
		
			if(opacityMask <= 0.0f) discard;
			if(opacity <= 0.0) discard;
		
			return Output;
			#endif
		}

		ENDCG
	}

}

Fallback Off

}

