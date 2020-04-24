//
//  shopClassViewer.swift
//  crazyShopApp
//
//  Created by 林祐辰 on 2020/4/23.
//  Copyright © 2020 smirkiiiv. All rights reserved.
//

import UIKit

class shopClassViewer: UITableViewController {

    @IBOutlet weak var clearButton: UIButton!
    @IBOutlet weak var redJerseys: UILabel!
    @IBOutlet weak var purpleJerseys: UILabel!
    @IBOutlet weak var greenJerseys: UILabel!
    @IBOutlet weak var blueRedJerseys: UILabel!
    @IBOutlet weak var blueOrangeJerseys: UILabel!
    @IBOutlet weak var blackJerseys: UILabel!
    @IBOutlet weak var totalPrice: UILabel!
    
    var itemnumber1 :Int = 0
    var itemnumber2 :Int = 0
    var itemnumber3 :Int = 0
    var itemnumber4 :Int = 0
    var itemnumber5 :Int = 0
    var itemnumber6 :Int = 0
    var num :Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        clearButton.layer.borderWidth = 0.3
        clearButton.layer.borderColor = UIColor.black.cgColor
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    @IBOutlet weak var redStepper: UIStepper!
    @IBOutlet weak var purpleStepper: UIStepper!
    @IBOutlet weak var greenStepper: UIStepper!
    @IBOutlet weak var blueRedStepper: UIStepper!
    @IBOutlet weak var blueOrangeStepper: UIStepper!
    @IBOutlet weak var blackStepper: UIStepper!
    
    
    @IBAction func addRedJersey(_ sender: UIStepper) {
        itemnumber1 = Int(sender.value)
        redJerseys.text = "\(itemnumber1)"
        addJerseyMoney()
    }
    
    @IBAction func addPurpleJersey(_ sender: UIStepper) {
        itemnumber2 = Int(sender.value)
        purpleJerseys.text = "\(itemnumber2)"
        addJerseyMoney()
    }
    
    @IBAction func addGreenJersey(_ sender: UIStepper) {
        itemnumber3 = Int(sender.value)
        greenJerseys.text = "\(itemnumber3)"
        addJerseyMoney()
    }
    
    
    @IBAction func addBlueRedJersey(_ sender: UIStepper) {
        itemnumber4 = Int(sender.value)
        blueRedJerseys.text = "\(itemnumber4)"
        addJerseyMoney()
    }
    
    
    @IBAction func addBlueOrangeJersey(_ sender: UIStepper) {
        itemnumber5 = Int(sender.value)
        blueOrangeJerseys.text = "\(itemnumber5)"
        addJerseyMoney()
    }
    
    
    @IBAction func addBlackJersey(_ sender: UIStepper) {
        itemnumber6 = Int(sender.value)
        blackJerseys.text = "\(itemnumber6)"
        addJerseyMoney()
    }
    
  func addJerseyMoney(){
    num = itemnumber1*400+itemnumber2*350+itemnumber3*190+itemnumber4*300+itemnumber5*150+itemnumber6*230
    totalPrice.text =  "Total Price $ : \(num)"
  }
    
    @IBAction func clearAll(_ sender: UIButton) {
        redStepper.value = Double(0)
        purpleStepper.value = Double(0)
        greenStepper.value = Double(0)
        blueRedStepper.value = Double(0)
        blueOrangeStepper.value = Double(0)
        blackStepper.value = Double(0)
 
        itemnumber1 = 0
        itemnumber2 = 0
        itemnumber3 = 0
        itemnumber4 = 0
        itemnumber5 = 0
        itemnumber6 = 0
        
       redJerseys.text = "\(0)"
       purpleJerseys.text = "\(0)"
       greenJerseys.text = "\(0)"
       blueRedJerseys.text = "\(0)"
       blueOrangeJerseys.text = "\(0)"
       blackJerseys.text = "\(0)"
       totalPrice.text =  "Total Price $ : \(0)"
        
    }
    
    // MARK: - Table view data source

//    override func numberOfSections(in tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 0
//    }
//
//    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        // #warning Incomplete implementation, return the number of rows
//        return 0
//    }

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
