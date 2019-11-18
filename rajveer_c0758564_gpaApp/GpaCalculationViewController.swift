////
////  GpaCalculationViewController.swift
////  rajveer_c0758564_gpaApp
////
////  Created by Rajveer Kaur on 2019-11-15.
////  Copyright © 2019 Rajveer Kaur. All rights reserved.
////
//
//import UIKit
//
//class GpaCalculationViewController: UIViewController {
//    var Marks:Double = 0.0
//    var scores:Double = 0.0
//    var Hours:Double = 0.0
//    var My_grades:Character?
//    var creditScores:Double = 0.0
//    
//    
//    
//    
////    @IBOutlet var sub1: UIView!
//    
//    
//    @IBOutlet weak var Sub1Label: UILabel!
//    
//    @IBOutlet weak var Sub2Label: UILabel!
//    
//    @IBOutlet weak var Sub3Label: UILabel!
//    
//    @IBOutlet weak var Sub4label: UILabel!
//    
//    @IBOutlet weak var Sub5Label: UILabel!
//    
//  
//    
//    
//    @IBOutlet weak var sub1TextField: UITextField!
//    
//    
//    @IBOutlet weak var sub2TextField: UITextField!
//    
//    
//    @IBOutlet weak var sub3TextField: UITextField!
//    
//    
//    @IBOutlet weak var sub4TextField: UITextField!
//    
//    
//    
//    @IBOutlet weak var sub5TextField: UITextField!
//    
//    @IBOutlet weak var gpaCalculation: UILabel!
//    
//    
//    
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
////        var Marks_Subject:Double? = Double(sub1TextField.text!)
////        self.sub1TextField.becomeFirstResponder()
////        self.sub2TextField.becomeFirstResponder()
//
//        // Do any additional setup after loading the view.
//    }
//    func GpaCalculate(Marks:Double) -> Double{
//        switch Marks {
//        case 0..<50:
//            return 0.0
//        case 50...59:
//           return 1.0
//        case 60...62:
//            return 1.7
//        case 63...66:
//           return 2.0
//        case 67...69:
//            return 2.3
//        case 70...72:
//            return 2.7
//        case 73...76:
//            return 3.0
//        case 77...79:
//            return 3.2
//        case 80...86:
//            return 3.5
//        case 87...93:
//           return 3.7
//        case 94...100:
//            return 4.0
//        default:
//          break
//        }
//        return 0.0
//    }
//    
//
//    @IBAction func CalculateButton(_ sender: UIButton) {
////        var marks_of_subjects:Double? = Double(sub1TextField.text!)
////        var Hours:Double? = (Double(String(Sub1Label.text!.last!))!)
////        let mycourse = GpaCalculate(Marks: marks_of_subjects ?? 0)
////        var total = Hours! * mycourse
////        print("sum is \(total)")
////        print(scores)
////        var marks_of_subjects1:Double? = Double(sub2TextField.text!)
////         let mycourse1 = GpaCalculate(Marks: marks_of_subjects1 ?? 0)
////         total = scores + total
////        print("sum is \(total)")
////        print(scores)
////        var marks_of_subjects2:Double? = Double(sub3TextField.text!)
////                let mycourse2 = GpaCalculate(Marks: marks_of_subjects2 ?? 0)
////                total = scores + total
////               print("sum is \(total)")
////               print(scores)
////               var marks_of_subjects3:Double? = Double(sub4TextField.text!)
////                       let mycourse3 = GpaCalculate(Marks: marks_of_subjects3 ?? 0)
////                       total = scores + total
////                      print("sum is \(total)")
////                      print(scores)
////                      var marks_of_subjects4:Double? = Double(sub5TextField.text!)
////                              let mycourse4 = GpaCalculate(Marks: marks_of_subjects4 ?? 0)
////                              total = scores + total
////                             print("sum is \(total)")
////                             print(scores)
////                   print(total)
////        var Cgpa = total/5
////        print(Cgpa)
////        gpaCalculation.text! = String(Float(Cgpa))
//        
//    }
//    /*
//    // MARK: - Navigation
//
//    // In a storyboard-based application, you will often want to do a little preparation before navigation
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        // Get the new view controller using segue.destination.
//        // Pass the selected object to the new view controller.
//    }
//    */
//
//}
