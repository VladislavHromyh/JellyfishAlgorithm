using System.Collections;
using System.Collections.Generic;
using System.Linq;
using UnityEngine;

public class Jellyfish : MonoBehaviour {
	[Range(3.0f, 10.0f)] public float m_swimmingPointsRadius;
	[Range(1.0f, 5.0f)] public float m_impulseForce = 1.0f;
	[Range(0.25f, 10.0f)] public float m_IdleSpeed = 1.0f;

	private Transform m_positionParent;
	private	 Transform m_rotationParent;
	private Vector3 m_PointToSwim;
	private Vector3[] m_swimmingPoints;
	[HideInInspector] public Vector3 m_movement;
	private void Awake() {
		m_positionParent = transform;
		m_rotationParent = transform.GetChild(0);
		InitializeSwimmingPoints();
		m_PointToSwim = m_swimmingPoints[Random.Range(0, m_swimmingPoints.Length)];
		m_movement = m_rotationParent.forward * m_IdleSpeed;

	}

	private IEnumerator Start() {
		yield return new WaitForSeconds (0.1f);
	}

	private void InitializeSwimmingPoints() {
		m_swimmingPoints = new Vector3[26];
		int counter = 0;
		for (int x = -1; x <= 1; x++) {
			for (int y = -1; y <= 1; y++) {
				for (int z = -1; z <= 1; z++) {
					if ((x == 0) && (x == y) && (x == z)) {
						continue;
					}
					m_swimmingPoints[counter] = new Vector3(x * m_swimmingPointsRadius, y * m_swimmingPointsRadius, z * m_swimmingPointsRadius);
					m_swimmingPoints[counter] += m_positionParent.position;
					counter++;
				}
			}
		}
	}

	private Vector3 GetNextSwimmingPoint() {
		List<Vector3> sortedPoints = m_swimmingPoints.OrderByDescending(point => (point - m_positionParent.position).magnitude).ToList();
		return sortedPoints[Random.Range(0, 4)];
	}

	private void Update() {
		IdleMovement();
	}

	private void IdleMovement() {

		Vector3 forward = m_rotationParent.forward;
		m_movement = Vector3.Lerp(m_movement, forward * m_IdleSpeed, 1.0f * Time.deltaTime);
		Quaternion targetRotation = Quaternion.LookRotation((m_PointToSwim - m_positionParent.position));

		m_rotationParent.rotation = Quaternion.Lerp(m_rotationParent.rotation, targetRotation, 0.5f * Time.deltaTime);
		m_positionParent.position += m_movement * Time.deltaTime;

		if ((m_positionParent.position - m_PointToSwim).magnitude < 1.0f) {
			m_PointToSwim = GetNextSwimmingPoint();
		}
	}
}

