//
//  ViewController.swift
//  parsing
//
//  Created by Erika V. Miguel on 11/22/14.
//  Copyright (c) 2014 Erika V. Miguel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var text1: UITextField!
    @IBOutlet weak var text2: UITextField!
    @IBOutlet weak var slider: UISlider!
    
    var person = PFObject(className:"Person")
    var sliderVal = PFObject(className:"Slider")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func savePerson(){
        person.saveInBackgroundWithBlock { (success, error) -> Void in
            if(success) {
                NSLog("all done")
            } else {
                // handle error
            }
        }
    }
    
    func saveSlider() {
        sliderVal.saveInBackgroundWithBlock { (success, error) -> Void in
            if(success) {
                NSLog("all done")
            } else {
                // handle error
            }
        }
    }
    
    @IBAction func firstName(sender: AnyObject) {
        person["firstName"] = sender.description
        savePerson()
    }
    
    @IBAction func lastName(sender: AnyObject) {
        person["lastName"] = sender.description
        savePerson()
    }
    
    @IBAction func sliderSave(sender: AnyObject) {
        sliderVal["slider"] = sender.description
        saveSlider()
    }

}

