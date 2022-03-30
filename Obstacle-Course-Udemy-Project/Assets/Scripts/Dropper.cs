using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Dropper : MonoBehaviour
{
    
    MeshRenderer renderer;
    Rigidbody rigidBody;
    
    [SerializeField]float timeToWait = 3f;
    // Start is called before the first frame update
    void Start()
    {
        //components must be get in start method
        renderer = GetComponent<MeshRenderer>();
        rigidBody = GetComponent<Rigidbody>();
        rigidBody.useGravity = false;
        renderer.enabled = false;
    }

    // Update is called once per frame
    void Update()
    {
        if (Time.time > timeToWait)  //Time.time counts time that has passed since first frame
        {
            renderer.enabled = true;
            rigidBody.useGravity = true;
        }
    }
}
