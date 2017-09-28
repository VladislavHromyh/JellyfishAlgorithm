using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class JellyImpulse : MonoBehaviour { // Has to be on jellyfish model cause of Animation event that sends message to animation

	public Jellyfish Jelly;
	public Transform RotationParent;

	private void Impulse() {
		Jelly.m_movement = RotationParent.forward * Jelly.m_impulseForce;
	}
}
