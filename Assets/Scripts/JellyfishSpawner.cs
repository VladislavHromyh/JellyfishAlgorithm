using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class JellyfishSpawner : MonoBehaviour {
	GameObject jellyfishPrefab;

	private void Awake() {
		jellyfishPrefab = Resources.Load<GameObject> ("Jellyfish");
	}

	private void Start() {
		SpawnJellyfish();
	}

	private void Update() {
		if (Input.GetKeyDown(KeyCode.Space)) {
			SpawnJellyfish();
		}
	}

	private void SpawnJellyfish() {
		Instantiate (jellyfishPrefab, Random.onUnitSphere * 2.0f, Random.rotationUniform);
	}
}
