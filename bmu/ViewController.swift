//
//  ViewController.swift
//  bmu
//
//  Created by 陳毓琇 on 2017/6/14.
//  Copyright © 2017年 陳毓琇. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tall: UITextField!
    
    @IBOutlet weak var weight: UITextField!
   
    @IBOutlet weak var answer: UILabel!
    
    @IBOutlet weak var what: UILabel!
    @IBOutlet weak var happy: UISwitch!
   
    @IBOutlet weak var medicine: UILabel!
    @IBOutlet weak var good: UIImageView!
    
    @IBOutlet weak var cry: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        good.isHidden=true
        cry.isHidden=true        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func bmi(_ sender: Any)
    {
    
    
    let Height = Double(tall.text!)
let Weight = Double(weight.text!)

        let BMI = Double(Weight!/(Height!*Height!))
   
        
        answer.text=String(BMI)
    
     if BMI<18.5
     {what.text = ("請吃肉")
        }
     else if BMI<23
     {what.text = ("可以繼續吃")
        }
       else if BMI>=23
        { what.text = ("請去運動")}
    
        if  happy.isOn
        {
       
        good.isHidden=false
            
       medicine.text=("不用治療")
        
        }else
        {
        cry.isHidden=false
            
          medicine.text = ("禱告")
        }
    
    }

  


}

