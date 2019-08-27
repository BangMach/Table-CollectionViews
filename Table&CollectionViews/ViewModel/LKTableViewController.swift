//
//  LKTableViewController.swift
//  Table&CollectionViews
//
//  Created by Jason Mach on 8/27/19.
//  Copyright © 2019 Jason Mach. All rights reserved.
//

import UIKit

class LKTableViewController: UITableViewController {
    // in controller we need connection to viewMODEL
    private let viewModel = LKCharacterViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // create as many row as there are items in the underlying data set
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.count
    }
    
    
    
    // we need this method so we gonna uncomment it
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LKCell", for: indexPath)
        
        // this is a system method for when the system is build, each row of the table this method will get call and pass in the index path to create the object
        
        // this will go to the storyboard look for LKCell identifier, instantiate a copy of it in code so we can have a reference to cell
        // so the next thing we need to do is identify the element in the cell so we can reuse them, we can do this by give them a tag  example imageName with 1000, characterName with 1001,characterDescription 1002
        let imageView = cell.viewWithTag(1000) as? UIImageView// your code doesn't know it is an image view so you need to cast it as ...
        let characterTitle = cell.viewWithTag(1001) as? UILabel
        let characterDescription = cell.viewWithTag(1002) as? UILabel
        
        // safetly unwrap them with if let
        if let imageView = imageView, let characterTitle = characterTitle, let characterDescription = characterDescription {// are you really you and not optional zombie (.)_(.)
            
            let currentCharacter = viewModel.getCharacter(byIndex: indexPath.row)
            
            imageView.image = currentCharacter.image
            characterTitle.text = currentCharacter.title
            characterDescription.text = currentCharacter.description
        }
        return cell
    }
    
    
    
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
    
    // MARK: - Navigation
    
    //In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    
    
}
