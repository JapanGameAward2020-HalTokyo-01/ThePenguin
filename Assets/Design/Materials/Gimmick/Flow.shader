Shader "Custom/Flow"
{
    Properties
    {
        _Color ("Color", Color) = (1,1,1,1)
        _MainTex ("Albedo (RGB)", 2D) = "white" {}
        _Center("Center", Vector) = (0,0,0,0)
        _WindForce("WindForce", Float) = 0.04
    }
    SubShader
    {
        Tags { "Queue"="Transparent" }
        LOD 200

        CGPROGRAM
        // Physically based Standard lighting model, and enable shadows on all light types
        #pragma surface surf Standard fullforwardshadows alpha:fade

        // Use shader model 3.0 target, to get nicer looking lighting
        #pragma target 3.0


        struct Input
        {
            float2 uv_MainTex;
            float3 worldPos;
        };

        sampler2D _MainTex;
        fixed4 _Color;
        fixed4 _Center;
        fixed _WindForce;

        // Add instancing support for this shader. You need to check 'Enable Instancing' on materials that use the shader.
        // See https://docs.unity3d.com/Manual/GPUInstancing.html for more information about instancing.
        // #pragma instancing_options assumeuniformscaling
        UNITY_INSTANCING_BUFFER_START(Props)
            // put more per-instance properties here
        UNITY_INSTANCING_BUFFER_END(Props)

        void surf (Input IN, inout SurfaceOutputStandard o)
        {
            float dist = distance(_Center, IN.worldPos);
            float val = dist * 0.5 - _Time.y * _WindForce * 50;
            fixed4 color = tex2D(_MainTex, fixed2(0, val));

            o.Albedo = color * _Color;
            o.Alpha = _Color.a;

        }
        ENDCG
    }
    FallBack "Diffuse"
}
