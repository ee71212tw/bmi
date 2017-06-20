//
//  nextViewController.swift
//  bmu
//
//  Created by 陳毓琇 on 2017/6/15.
//  Copyright © 2017年 陳毓琇. All rights reserved.
//

import UIKit

class nextViewController: UIViewController {

    @IBOutlet weak var minmonth: UILabel!
    
    @IBOutlet weak var maxmonth: UILabel!
   
    @IBOutlet weak var f: UILabel!
   
    @IBOutlet weak var zz: UITextField!
    @IBOutlet weak var jj: UIImageView!
    @IBOutlet weak var dr: UILabel!
    
    
    @IBOutlet weak var mindate: UILabel!
  
    
    @IBOutlet weak var maxdate: UILabel!
    
    @IBOutlet weak var hh: UITextField!
    
    
    @IBOutlet weak var gogo: UIImageView!
    var final: Int = 0
    
    var ay : Int = 0
    var y : Int = 0
    var l: Int = 0

    @IBOutlet weak var mr: UILabel!

    override func viewDidLoad()
    {
     super.viewDidLoad()
    
        final = 9
    ay = 18
    gogo.isHidden=true
        
// Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func da()
    {
            let l = Int(zz.text!)
        
        let y = Int( hh.text!)
       if l == final
       {
        mr.text=("月份對了")
       
       if y == ay
       {gogo.isHidden=false
        jj.isHidden=true
        }
       
       
    }
       else if l! < final
       {mr.text=("月份請打大一點")
       minmonth.text = ( zz.text )
       }
    
       else
        {mr.text = ("月份請打小一點")
        maxmonth.text = (zz.text )
        }
    if y == ay
            
    {dr.text=("日期對了")
        
    }
    
    else if y! < ay
    {dr.text=("日期請打大一點")
    mindate.text = (hh.text)
    }
    else
    {dr.text=("日期請打小一點")
        maxdate.text = (hh.text)
        }
}
    
    

    @IBAction func dd(_ sender: Any)
    {
    da()
    }
}
