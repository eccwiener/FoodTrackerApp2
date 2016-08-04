//
//  MealTableViewController.swift
//  FoodTracker
//
//  Created by Elena Wiener on 8/4/16.
//  Copyright © 2016 Elena. All rights reserved.
//

import UIKit

class MealTableViewController: UITableViewController {
    // MARK: Properties
    
    
    var meals = [Meal]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Load the sample data.
        loadSampleMeals()
    }

    func loadSampleMeals() {
        
        let photo1 = UIImage(named: "meal1")!
        let meal1 = Meal(name: "Candy Cane", photo: photo1, rating: 2)!
        
        let photo2 = UIImage(named: "meal2")!
        let meal2 = Meal(name: "Caramel", photo: photo2, rating: 4)!
        
        let photo3 = UIImage(named: "meal3")!
        let meal3 = Meal(name: "Chocolate Bar", photo: photo3, rating: 5)!
        
        let photo4 = UIImage(named: "meal4")!
        let meal4 = Meal(name: "Hotdog", photo: photo4, rating: 2)!
        
        let photo5 = UIImage(named: "meal5")!
        let meal5 = Meal(name: "Hamburger", photo: photo5, rating: 4)!
        
        let photo6 = UIImage(named: "meal6")!
        let meal6 = Meal(name: "Milkshake", photo: photo6, rating: 5)!
        
        let photo7 = UIImage(named: "meal7")!
        let meal7 = Meal(name: "White Rice", photo: photo7, rating: 2)!
        
        let photo8 = UIImage(named: "meal8")!
        let meal8 = Meal(name: "Pizza", photo: photo8, rating: 4)!
        
        let photo9 = UIImage(named: "meal9")!
        let meal9 = Meal(name: "Carrot", photo: photo9, rating: 5)!
        
        let photo10 = UIImage(named: "meal10")!
        let meal10 = Meal(name: "Pancakes", photo: photo10, rating: 4)!
        
        let photo11 = UIImage(named: "meal11")!
        let meal11 = Meal(name: "Cupcake", photo: photo11, rating: 3)!
        
        let photo12 = UIImage(named: "meal12")!
        let meal12 = Meal(name: "Dragon Fruit", photo: photo12, rating: 1)!
        
        let photo13 = UIImage(named: "meal13")!
        let meal13 = Meal(name: "Nachos", photo: photo13, rating: 3)!
        
        let photo14 = UIImage(named: "meal14")!
        let meal14 = Meal(name: "Deli Sandwhich", photo: photo14, rating: 4)!
        
        let photo15 = UIImage(named: "meal15")!
        let meal15 = Meal(name: "Beer", photo: photo15, rating: 3)!
        
        let photo16 = UIImage(named: "meal16")!
        let meal16 = Meal(name: "Cookie", photo: photo16, rating: 3)!
        
        let photo17 = UIImage(named: "meal17")!
        let meal17 = Meal(name: "Pumpkin Pie", photo: photo17, rating: 5)!
        
        let photo18 = UIImage(named: "meal18")!
        let meal18 = Meal(name: "Bread", photo: photo18, rating: 4)!
        
        let photo19 = UIImage(named: "meal19")!
        let meal19 = Meal(name: "Cherries", photo: photo19, rating: 5)!
        
        let photo20 = UIImage(named: "meal20")!
        let meal20 = Meal(name: "Strawberries", photo: photo20, rating: 4)!
        
        let photo21 = UIImage(named: "meal21")!
        let meal21 = Meal(name: "Coca Cola", photo: photo21, rating: 5)!
        
        let photo22 = UIImage(named: "meal22")!
        let meal22 = Meal(name: "Pineapple", photo: photo22, rating: 2)!
        
        let photo23 = UIImage(named: "meal23")!
        let meal23 = Meal(name: "Broccoli", photo: photo23, rating: 3)!
        
        let photo24 = UIImage(named: "meal24")!
        let meal24 = Meal(name: "Pepper", photo: photo24, rating: 2)!
        
        let photo25 = UIImage(named: "meal25")!
        let meal25 = Meal(name: "idk", photo: photo25, rating: 1)!
        
        let photo26 = UIImage(named: "meal26")!
        let meal26 = Meal(name: "Fancy Banana", photo: photo26, rating: 5)!
        
        let photo27 = UIImage(named: "meal27")!
        let meal27 = Meal(name: "Mariachi", photo: photo27, rating: 2)!
        
        let photo28 = UIImage(named: "meal28")!
        let meal28 = Meal(name: "Fries", photo: photo28, rating: 4)!
        
        let photo29 = UIImage(named: "meal29")!
        let meal29 = Meal(name: "Coconut", photo: photo29, rating: 5)!
        
        let photo30 = UIImage(named: "meal30")!
        let meal30 = Meal(name: "Tomato", photo: photo30, rating: 5)!
        
        
        meals += [meal1, meal2, meal3, meal4, meal5, meal6, meal7, meal8, meal9, meal10, meal11, meal12, meal13, meal14, meal15, meal16, meal17, meal18, meal19, meal20, meal21, meal22, meal23, meal24, meal25, meal26, meal27, meal28, meal29, meal30]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return meals.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
       
        // Table view cells are reused and should be dequeued using a cell identifier.
        let cellIdentifier = "MealTableViewCell"
       
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as! MealTableViewCell
        
        // Fetches the appropriate meal for the data source layout.
        let meal = meals[indexPath.row]
        
        cell.nameLabel?.text = meal.name
        cell.photoImageView?.image = meal.photo
        cell.ratingControl?.rating = meal.rating
        
        return cell
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
