//
//  CharactersTableViewController.swift
//  Characters
//
//  Created by Timothy Hang on 4/6/17.
//  Copyright © 2017 Timothy Hang. All rights reserved.
//

import UIKit

class CharactersTableViewController: UITableViewController
{
  let arrayOfNames1 = ["The Mad Hatter : Johny Depp", "Tonto : Johny Depp", "Jack Sparrow : Johny Depp" ,"Frank Tupolo : Johny Depp" ,"Sweeny Todd : Johny Depp"]
  let arrayOfNames2 = ["Captain America: Chris Evans", "Iron Man: Robert Downey Jr.", "Thor : Liam Hemsworth", "Hulk : Mark Ruffalo", "Black Widow : Scarlet Johanson"]
  
  override func viewDidLoad()
  {
    super.viewDidLoad()
    
  }

  override func didReceiveMemoryWarning()
  {
    super.didReceiveMemoryWarning()
  }

  override func numberOfSections(in tableView: UITableView) -> Int
  {
    return 2
  }

  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
  {
    return 5
  }
  
  override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String?
  {
    if section == 0
    {
      return "Shane's Favorite Characters"
    }
    else
    {
      return "Tim's Favorite Characters"
    }
  }
  
  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
  {
    let cell = tableView.dequeueReusableCell(withIdentifier: "NamesCell", for: indexPath)

    if indexPath.section == 0
    {
      cell.textLabel?.text = arrayOfNames1[indexPath.row]
      return cell
    }
    else
    {
      cell.textLabel?.text = arrayOfNames2[indexPath.row]
      return cell
    }
  }
}
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
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
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */


