//
//  StudentSearchTableViewController.swift
//  rajveer_c0758564_gpaApp
//
//  Created by Rajveer Kaur on 2019-11-15.
//  Copyright © 2019 Rajveer Kaur. All rights reserved.
//

import UIKit

class StudentSearchTableViewController: UITableViewController ,UISearchBarDelegate {
    
    
    @IBOutlet weak var searching: UISearchBar!
    
    @IBOutlet var tableViewData: UITableView!
    
    var searchdata : [student]!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        searching.delegate = self
        searchdata = student.My_Student
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
      
        return searchdata.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       let cell = tableView.dequeueReusableCell(withIdentifier: "stu")

        // Configure the cell...
        cell?.textLabel?.text = searchdata[indexPath.row].First_Name
            return cell!
            
            
       
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        searchdata = searchText.isEmpty ? student.My_Student : student.My_Student.filter{
           (item: student) -> Bool in
                        // If dataItem matches the searchText, return true to include it
            //            return item.range(of: searchText, options: .caseInsensitive, range: nil, locale: nil) != nil
                        let name = item.First_Name + " " + item.Last_Nmae
                        return name.lowercased().contains(searchText.lowercased())
                    }
                    
                    tableView.reloadData()
                }
            
            

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */


    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        
        if let student1 = segue.destination as? StudentDataViewController{
            student1.studentdelegate = self
        }
        
        
    }
    override func viewWillAppear(_ animated: Bool) {
        searchdata = student.My_Student
        tableViewData.reloadData()
    }
   

}
