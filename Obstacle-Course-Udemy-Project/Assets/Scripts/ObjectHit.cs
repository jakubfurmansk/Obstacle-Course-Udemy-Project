using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ObjectHit : MonoBehaviour
{
    void OnCollisionEnter(Collision other) //collision handling
    {
        if(other.gameObject.tag == "Player")
        {
            gameObject.tag = "Hit";
            GetComponent<MeshRenderer>().material.color = Color.black;
        }
    }
}
