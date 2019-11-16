//
//  GpaCalculationViewController.swift
//  rajveer_c0758564_gpaApp
//
//  Created by Rajveer Kaur on 2019-11-15.
//  Copyright © 2019 Rajveer Kaur. All rights reserved.
//

import UIKit

class GpaCalculationViewController: UIViewController {
    var Marks:Double = 0.0
    var scores:Double = 0.0
    var Hours:Double = 0.0
    var My_grades:Character?
    var creditScores:Double = 0.0
    
    
    
    
//    @IBOutlet var sub1: UIView!
    
    
    @IBOutlet weak var sub1TF: UILabel!
    @IBOutlet weak var sub2TF: UILabel!
    
    
    @IBOutlet weak var sub3TF: UILabel!
    
    
    @IBOutlet weak var sub4TF: UILabel!
    
    
    @IBOutlet weak var sub5TF: UILabel!
    
    
    
    @IBOutlet weak var sub1TextField: UITextField!
    
    
    @IBOutlet weak var sub2TextField: UITextField!
    
    
    @IBOutlet weak var sub3TextField: UITextField!
    
    
    @IBOutlet weak var sub4TextField: UITextField!
    
    
    
    @IBOutlet weak var sub5TextField: UITextField!
    
    @IBOutlet weak var gpaCalculation: UILabel!
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        var Marks_Subject:Double? = Double(sub1TextField.text!)
        self.sub1TextField.becomeFirstResponder()
        self.sub2TextField.becomeFirstResponder()

        // Do any additional setup after loading the view.
    }
    func GpaCalculate(Marks:Double){
        switch Marks {
        case 0..<50:
            scores = 0.0
        case 50...59:
            scores = 1.0
        case 60...62:
            scores = 1.7
        case 63...66:
            scores = 2.0
        case 67...69:
            scores = 2.3
        case 70...72:
            scores = 2.7
        case 73...76:
            scores = 3.0
        case 77...79:
            scores = 3.2
        case 80...86:
            scores = 3.5
        case 87...93:
            scores = 3.7
        case 94...100:
            scores = 4.0
        default:
          break
        }
        creditScores = Hours * scores
    }
    

    @IBAction func CalculateButton(_ sender: UIButton) {
        var marks_of_subjects:Double? = Double(sub1TextField.text!)
        var Hours:Double? = Double(sub1TF.text!)
        let mycourse = GpaCalculate(Marks: marks_of_subjects ?? 0)
        var total = scores + 0
        print("sum is \(total)")
        print(scores)
        var marks_of_subjects1:Double? = Double(sub2TextField.text!)
         let mycourse1 = GpaCalculate(Marks: marks_of_subjects1 ?? 0)
         total = scores + total
        print("sum is \(total)")
        print(scores)
        var marks_of_subjects2:Double? = Double(sub3TextField.text!)
                let mycourse2 = GpaCalculate(Marks: marks_of_subjects2 ?? 0)
                total = scores + total
               print("sum is \(total)")
               print(scores)
               var marks_of_subjects3:Double? = Double(sub4TextField.text!)
                       let mycourse3 = GpaCalculate(Marks: marks_of_subjects3 ?? 0)
                       total = scores + total
                      print("sum is \(total)")
                      print(scores)
                      var marks_of_subjects4:Double? = Double(sub5TextField.text!)
                              let mycourse4 = GpaCalculate(Marks: marks_of_subjects4 ?? 0)
                              total = scores + total
                             print("sum is \(total)")
                             print(scores)
                   print(total)
        var Cgpa = total/5
        print(Cgpa)
        gpaCalculation.text! = String(Float(Cgpa))
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
