//
//  LKDetailViewController.swift
//  Table&CollectionViews
//
//  Created by Jason Mach on 8/30/19.
//  Copyright © 2019 Jason Mach. All rights reserved.
//

import UIKit

class LKDetailViewController: UIViewController {
    @IBOutlet weak var characterImage: UIImageView!
    @IBOutlet weak var characterTitle: UILabel!
    @IBOutlet weak var characterDetail: UITextView!
    
    var selectedCharacter:(title:String,description:String,image:UIImage?)?// the reason for the second? is because when working with ui controller table view controller we don't have access to initialier only swift access have the
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let selectedCharacter = selectedCharacter{
            characterImage.image = selectedCharacter.image
            characterTitle.text = selectedCharacter.title
            characterDetail.text = selectedCharacter.description

        }
        // Do any additional setup after loading the view.
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
