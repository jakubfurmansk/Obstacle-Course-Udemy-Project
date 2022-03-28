[33mcommit 0969236aa81c9961ccd17f325db344bb04af5cc1[m[33m ([m[1;36mHEAD -> [m[1;32mmain[m[33m, [m[1;31morigin/main[m[33m, [m[1;31morigin/HEAD[m[33m)[m
Author: jakubfurmansk <jakubfurmansk@gmail.com>
Date:   Mon Mar 28 19:30:37 2022 +0200

    Cinemachine added

[1mdiff --git a/Obstacle-Course-Udemy-Project/Assets/Mover.cs b/Obstacle-Course-Udemy-Project/Assets/Mover.cs[m
[1mindex d35acac..96f2dd4 100644[m
[1m--- a/Obstacle-Course-Udemy-Project/Assets/Mover.cs[m
[1m+++ b/Obstacle-Course-Udemy-Project/Assets/Mover.cs[m
[36m@@ -4,7 +4,7 @@[m [musing UnityEngine;[m
 [m
 public class Mover : MonoBehaviour[m
 {[m
[31m-    [SerializeField] float moveSpeed = 1f;[m
[32m+[m[32m    [SerializeField] float moveSpeed = 10f;[m
     // Start is called before the first frame update[m
     void Start()[m
     {[m
[1mdiff --git a/Obstacle-Course-Udemy-Project/Assets/Scenes/SampleScene.unity b/Obstacle-Course-Udemy-Project/Assets/Scenes/SampleScene.unity[m
[1mindex 63f1da9..b6ead31 100644[m
[1m--- a/Obstacle-Course-Udemy-Project/Assets/Scenes/SampleScene.unity[m
[1m+++ b/Obstacle-Course-Udemy-Project/Assets/Scenes/SampleScene.unity[m
[36m@@ -292,13 +292,13 @@[m [mTransform:[m
   m_PrefabInstance: {fileID: 0}[m
   m_PrefabAsset: {fileID: 0}[m
   m_GameObject: {fileID: 963194225}[m
[31m-  m_LocalRotation: {x: 0, y: 0, z: 0, w: 1}[m
[31m-  m_LocalPosition: {x: 0, y: 1, z: -10}[m
[32m+[m[32m  m_LocalRotation: {x: 0.60876137, y: 0, z: 0, w: 0.7933534}[m
[32m+[m[32m  m_LocalPosition: {x: 0, y: 18.21, z: -9.2}[m
   m_LocalScale: {x: 1, y: 1, z: 1}[m
   m_Children: [][m
   m_Father: {fileID: 0}[m
   m_RootOrder: 0[m
[31m-  m_LocalEulerAnglesHint: {x: 0, y: 0, z: 0}[m
[32m+[m[32m  m_LocalEulerAnglesHint: {x: 75, y: 0, z: 0}[m
 --- !u!1 &1244593927[m
 GameObject:[m
   m_ObjectHideFlags: 0[m
[36m@@ -427,9 +427,7 @@[m [mMonoBehaviour:[m
   m_Script: {fileID: 11500000, guid: 696c701837bfb9b4ca42ad5fa3f0af2c, type: 3}[m
   m_Name: [m
   m_EditorClassIdentifier: [m
[31m-  xValue: 0[m
[31m-  yValue: 0[m
[31m-  zValue: 0[m
[32m+[m[32m  moveSpeed: 10[m
 --- !u!65 &1540122892[m
 BoxCollider:[m
   m_ObjectHideFlags: 0[m
[1mdiff --git a/Obstacle-Course-Udemy-Project/Packages/manifest.json b/Obstacle-Course-Udemy-Project/Packages/manifest.json[m
[1mindex 5bc7b7d..eb28698 100644[m
[1m--- a/Obstacle-Course-Udemy-Project/Packages/manifest.json[m
[1m+++ b/Obstacle-Course-Udemy-Project/Packages/manifest.json[m
[36m@@ -1,5 +1,6 @@[m
 {[m
   "dependencies": {[m
[32m+[m[32m    "com.unity.cinemachine": "2.6.11",[m
     "com.unity.collab-proxy": "1.15.13",[m
     "com.unity.ide.rider": "2.0.7",[m
     "com.unity.ide.visualstudio": "2.0.14",[m
[1mdiff --git a/Obstacle-Course-Udemy-Project/Packages/packages-lock.json b/Obstacle-Course-Udemy-Project/Packages/packages-lock.json[m
[1mindex f9aa2e2..d0f2e03 100644[m
[1m--- a/Obstacle-Course-Udemy-Project/Packages/packages-lock.json[m
[1m+++ b/Obstacle-Course-Udemy-Project/Packages/packages-lock.json[m
[36m@@ -1,5 +1,12 @@[m
 {[m
   "dependencies": {[m
[32m+[m[32m    "com.unity.cinemachine": {[m
[32m+[m[32m      "version": "2.6.11",[m
[32m+[m[32m      "depth": 0,[m
[32m+[m[32m      "source": "registry",[m
[32m+[m[32m      "dependencies": {},[m
[32m+[m[32m      "url": "https://packages.unity.com"[m
[32m+[m[32m    },[m
     "com.unity.collab-proxy": {[m
       "version": "1.15.13",[m
       "depth": 0,[m

[33mcommit f806da8685ef48c1ee587a09d481aefd85802748[m
Author: jakubfurmansk <jakubfurmansk@gmail.com>
Date:   Mon Mar 28 16:56:08 2022 +0200

    Add player and script that allows to move around

[1mdiff --git a/Obstacle-Course-Udemy-Project/Assets/GroundMaterial.mat b/Obstacle-Course-Udemy-Project/Assets/GroundMaterial.mat[m
[1mnew file mode 100644[m
[1mindex 0000000..0e50624[m
[1m--- /dev/null[m
[1m+++ b/Obstacle-Course-Udemy-Project/Assets/GroundMaterial.mat[m
[36m@@ -0,0 +1,78 @@[m
[32m+[m[32m%YAML 1.1[m
[32m+[m[32m%TAG !u! tag:unity3d.com,2011:[m
[32m+[m[32m--- !u!21 &2100000[m
[32m+[m[32mMaterial:[m
[32m+[m[32m  serializedVersion: 6[m
[32m+[m[32m  m_ObjectHideFlags: 0[m
[32m+[m[32m  m_CorrespondingSourceObject: {fileID: 0}[m
[32m+[m[32m  m_PrefabInstance: {fileID: 0}[m
[32m+[m[32m  m_PrefabAsset: {fileID: 0}[m
[32m+[m[32m  m_Name: GroundMaterial[m
[32m+[m[32m  m_Shader: {fileID: 46, guid: 0000000000000000f000000000000000, type: 0}[m
[32m+[m[32m  m_ShaderKeywords:[m[41m [m
[32m+[m[32m  m_LightmapFlags: 4[m
[32m+[m[32m  m_EnableInstancingVariants: 0[m
[32m+[m[32m  m_DoubleSidedGI: 0[m
[32m+[m[32m  m_CustomRenderQueue: -1[m
[32m+[m[32m  stringTagMap: {}[m
[32m+[m[32m  disabledShaderPasses: [][m
[32m+[m[32m  m_SavedProperties:[m
[32m+[m[32m    serializedVersion: 3[m
[32m+[m[32m    m_TexEnvs:[m
[32m+[m[32m    - _BumpMap:[m
[32m+[m[32m        m_Texture: {fileID: 0}[m
[32m+[m[32m        m_Scale: {x: 1, y: 1}[m
[32m+[m[32m        m_Offset: {x: 0, y: 0}[m
[32m+[m[32m    - _DetailAlbedoMap:[m
[32m+[m[32m        m_Texture: {fileID: 0}[m
[32m+[m[32m        m_Scale: {x: 1, y: 1}[m
[32m+[m[32m        m_Offset: {x: 0, y: 0}[m
[32m+[m[32m    - _DetailMask:[m
[32m+[m[32m        m_Texture: {fileID: 0}[m
[32m+[m[32m        m_Scale: {x: 1, y: 1}[m
[32m+[m[32m        m_Offset: {x: 0, y: 0}[m
[32m+[m[32m    - _DetailNormalMap:[m
[32m+[m[32m        m_Texture: {fileID: 0}[m
[32m+[m[32m        m_Scale: {x: 1, y: 1}[m
[32m+[m[32m        m_Offset: {x: 0, y: 0}[m
[32m+[m[32m    - _EmissionMap:[m
[32m+[m[32m        m_Texture: {fileID: 0}[m
[32m+[m[32m        m_Scale: {x: 1, y: 1}[m
[32m+[m[32m        m_Offset: {x: 0, y: 0}[m
[32m+[m[32m    - _MainTex:[m
[32m+[m[32m        m_Texture: {fileID: 0}[m
[32m+[m[32m        m_Scale: {x: 1, y: 1}[m
[32m+[m[32m        m_Offset: {x: 0, y: 0}[m
[32m+[m[32m    - _MetallicGlossMap:[m
[32m+[m[32m        m_Texture: {fileID: 0}[m
[32m+[m[32m        m_Scale: {x: 1, y: 1}[m
[32m+[m[32m        m_Offset: {x: 0, y: 0}[m
[32m+[m[32m    - _OcclusionMap:[m
[32m+[m[32m        m_Texture: {fileID: 0}[m
[32m+[m[32m        m_Scale: {x: 1, y: 1}[m
[32m+[m[32m        m_Offset: {x: 0, y: 0}[m
[32m+[m[32m    - _ParallaxMap:[m
[32m+[m[32m        m_Texture: {fileID: 0}[m
[32m+[m[32m        m_Scale: {x: 1, y: 1}[m
[32m+[m[32m        m_Offset: {x: 0, y: 0}[m
[32m+[m[32m    m_Floats:[m
[32m+[m[32m    - _BumpScale: 1[m
[32m+[m[32m    - _Cutoff: 0.5[m
[32m+[m[32m    - _DetailNormalMapScale: 1[m
[32m+[m[32m    - _DstBlend: 0[m
[32m+[m[32m    - _GlossMapScale: 1[m
[32m+[m[32m    - _Glossiness: 0[m
[32m+[m[32m    - _GlossyReflections: 1[m
[32m+[m[32m    - _Metallic: 0[m
[32m+[m[32m    - _Mode: 0[m
[32m+[m[32m    - _OcclusionStrength: 1[m
[32m+[m[32m    - _Parallax: 0.02[m
[32m+[m[32m    - _SmoothnessTextureChannel: 0[m
[32m+[m[32m    - _SpecularHighlights: 1[m
[32m+[m[32m    - _SrcBlend: 1[m
[32m+[m[32m    - _UVSec: 0[m
[32m+[m[32m    - _ZWrite: 1[m
[32m+[m[32m    m_Colors:[m
[32m+[m[32m    - _Color: {r: 0.7264151, g: 0.7264151, b: 0.7264151, a: 1}[m
[32m+[m[32m    - _EmissionColor: {r: 0, g: 0, b: 0, a: 1}[m
[32m+[m[32m  m_BuildTextureStacks: [][m
[1mdiff --git a/Obstacle-Course-Udemy-Project/Assets/GroundMaterial.mat.meta b/Obstacle-Course-Udemy-Project/Assets/GroundMaterial.mat.meta[m
[1mnew file mode 100644[m
[1mindex 0000000..1cdba2a[m
[1m--- /dev/null[m
[1m+++ b/Obstacle-Course-Udemy-Project/Assets/GroundMaterial.mat.meta[m
[36m@@ -0,0 +1,8 @@[m
[32m+[m[32mfileFormatVersion: 2[m
[32m+[m[32mguid: 2c62f4aafee51984dacb56eb3ed62148[m
[32m+[m[32mNativeFormatImporter:[m
[32m+[m[32m  externalObjects: {}[m
[32m+[m[32m  mainObjectFileID: 2100000[m
[32m+[m[32m  userData:[m[41m [m
[32m+[m[32m  assetBundleName:[m[41m [m
[32m+[m[32m  assetBundleVariant:[m[41m [m
[1mdiff --git a/Obstacle-Course-Udemy-Project/Assets/Mover.cs b/Obstacle-Co