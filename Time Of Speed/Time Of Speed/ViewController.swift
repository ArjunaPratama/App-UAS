//
//  ViewController.swift
//  Time Of Speed
//
//  Created by Jun  on 11/30/17.
//  Copyright © 2017 Arjuna. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelResult: UILabel!
    @IBOutlet weak var etDistance: UITextField!
    @IBOutlet weak var etSpeed: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func btnHitung(_ sender: Any) {
        
        
        
        if etSpeed.text == "0" && etDistance.text == "0" {
            //alert dialog
            let alertController = UIAlertController(title: "Warning", message: "Please input only number 1", preferredStyle: .alert)
            alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            alertController.addAction(UIAlertAction(title: "NO", style: .default, handler: nil))
            present(alertController, animated: true, completion: nil)
            
        } else if etSpeed.text == "" &&  etDistance.text == ""{
            //alert dialog
            let alertController = UIAlertController(title: "Warning", message: "Please input only number 1", preferredStyle: .alert)
            alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            alertController.addAction(UIAlertAction(title: "NO", style: .default, handler: nil))
            present(alertController, animated: true, completion: nil)
        }else{
            let nilaikecepatan : Int? = Int(etSpeed.text!)
            let nilaijarak : Int? = Int(etDistance.text!)
            
            let hasil : Int = nilaikecepatan! / nilaijarak!
            
            labelResult.text = "Time is \(hasil) minutes"        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

