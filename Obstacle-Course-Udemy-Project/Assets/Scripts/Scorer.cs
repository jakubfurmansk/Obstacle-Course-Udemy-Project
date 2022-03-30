using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Scorer : MonoBehaviour
{
    int bump = 0;
    void OnCollisionEnter(Collision other) 
    {
        bump++;
        if (bump == 1)
        {
            Debug.Log("You bumped into something");
        }
        else
        {
            Debug.Log("You bumped into something " + bump + " times");
        }
    }
}
