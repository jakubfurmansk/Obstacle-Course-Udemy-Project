using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Scorer : MonoBehaviour
{
    int bump = 0;
    void OnCollisionEnter(Collision other) 
    {
        if (other.gameObject.tag != "Hit")
        {
            bump++;
            Debug.Log("Bumped " + bump + " times");
        }

        
    }
}
