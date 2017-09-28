using UnityEngine;
using System.Collections;

public class cameraEnterWater : MonoBehaviour {

	public Texture2D UnderwaterRamp;
	public GameObject WaterDistortionPlane;

	public bool ApplyUnderWaterEffects;

	bool isCameraUnderWater;

	UnityStandardAssets.ImageEffects.DepthOfField DOF;
	UnityStandardAssets.ImageEffects.ColorCorrectionRamp CCR;

	void Awake(){
		DOF = GetComponent<UnityStandardAssets.ImageEffects.DepthOfField> ();
		CCR = GetComponent<UnityStandardAssets.ImageEffects.ColorCorrectionRamp> ();
	//	WaterDistortionPlane.SetActive (false);
	}

	void OnTriggerEnter(Collider col){
		if (col.tag == "Water") {
			playerTransform.IsUnderWater = true;
	

			if(ApplyUnderWaterEffects)
			{
				if(DOF.isActiveAndEnabled && CCR.isActiveAndEnabled)
				{
					ApplyEffects();
				}else{
					DOF.enabled = true;
					CCR.enabled = true;
					ApplyEffects();
				}
			}

			print("Getting Underwater...");
		}
	}
	void ApplyEffects()
	{
		isCameraUnderWater = playerTransform.IsUnderWater;
		if (isCameraUnderWater) {
			DOF.aperture = 12f;
			DOF.blurType = UnityStandardAssets.ImageEffects.DepthOfField.BlurType.DX11;
			DOF.focalLength = 1.6f;
			DOF.focalSize = 0.3f;
			DOF.maxBlurSize = 5f;
			CCR.textureRamp = UnderwaterRamp;
			WaterDistortionPlane.SetActive (true);
		
		} 
		else 
		{
			DOF.aperture = 10.7f;
			DOF.blurType = UnityStandardAssets.ImageEffects.DepthOfField.BlurType.DX11;
			DOF.focalLength = 2;
			DOF.focalSize = 1f;
			DOF.maxBlurSize = 4;
			CCR.textureRamp = null;

			WaterDistortionPlane.SetActive (false);
		
		}
	}


	void OnTriggerExit(Collider col){
		if (col.tag == "Water") {
			playerTransform.IsUnderWater = false;
			print("Getting Above water...");

			if(ApplyUnderWaterEffects)
			{
				if(DOF.isActiveAndEnabled && CCR.isActiveAndEnabled)
				{
					ApplyEffects();
				}else{
					DOF.enabled = true;
					CCR.enabled = true;
					ApplyEffects();
				}
			}
		}
	}

}
