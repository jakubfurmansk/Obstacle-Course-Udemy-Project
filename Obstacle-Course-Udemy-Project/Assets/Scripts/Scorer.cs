using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Scorer : MonoBehaviour
{
    int bump = 0;
    void OnCollisionEnter(Collision other) 
    {
        //logic that allows to count how many obstacles player has hit
        if (other.gameObject.tag != "Hit")
        {
            bump++;
            Debug.Log("Bumped " + bump + " times");
        }

        
    }
}
