//
//  StudentDataViewController.swift
//  rajveer_c0758564_gpaApp
//
//  Created by Rajveer Kaur on 2019-11-15.
//  Copyright © 2019 Rajveer Kaur. All rights reserved.
//

import UIKit

class StudentDataViewController: UIViewController {
    var studentdelegate : StudentSearchTableViewController?
    
    
    
    
    @IBOutlet weak var FirstNameTF: UITextField!
    
    
    @IBOutlet weak var LastNameTF: UITextField!
    
    
    @IBOutlet weak var StudentIdTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    
    @IBAction func SaveButton(_ sender: Any) {
                 let First_name = self.FirstNameTF.text!
                 let Last_name = self.LastNameTF.text!
                 let Student_Id = self.StudentIdTF.text!
                 self.FirstNameTF.text = nil
                 self.LastNameTF.text = nil
                 self.StudentIdTF.text = nil
                            
        
        let myalertcontroller = UIAlertController(title: "Save Student", message: "Are You Sure", preferredStyle: .alert)
        let myCancelAction = UIAlertAction(title: "No Way", style: .cancel, handler: nil)
        myCancelAction.setValue(UIColor.systemPink, forKey: "titleTextColor")
        let myAddAction = UIAlertAction(title: "Yes Sure", style: .default) {
            (action) in
            let AlertAction = UIAlertController(title: "New Contact Saved", message: "\(First_name)is now a student", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "Ok", style: .default)
            {(action) in
                let AnyStudent = student(First_Name: First_name, Last_Nmae: Last_name, Student_id: Student_Id)
                student.My_Student.append(AnyStudent)
                
            }
            AlertAction.addAction(okAction)
            self.present(AlertAction,animated: true , completion: nil)
//            let First_name = self.FirstNameTF.text!
//            let Last_name = self.LastNameTF.text!
//            let Student_Id = self.StudentIdTF.text!
//            let AnyStudent = student(First_Name: First_name, Last_Nmae: Last_name, Student_id: Student_Id)
//            student.My_Student.append(AnyStudent)
//            self.FirstNameTF.text = nil
//            self.LastNameTF.text = nil
//            self.StudentIdTF.text = nil
            
        }
    
       
        myalertcontroller.addAction(myAddAction)
        myalertcontroller.addAction(myCancelAction)
        self.present(myalertcontroller , animated: true , completion: nil)
    }
    
    
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    override func viewDidDisappear(_ animated: Bool) {
        
        studentdelegate?.tableView.reloadData()
    }
}
