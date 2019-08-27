//
//  LKCharacterViewModel.swift
//  Table&CollectionViews
//
//  Created by Jason Mach on 8/27/19.
//  Copyright © 2019 Jason Mach. All rights reserved.
// the job of viewmodel is to transform data from model to filter to view
// building up the data elements that it want to display in the view

import Foundation
import UIKit
// preparing the image for presentation so it need UiKit

struct LKCharacterViewModel{
    private (set) var characters:[LKCharacter]=[]// remember our viewmodel has a reference to model //this is good encapsulation // controller doesn't get direct access to model
    // need to know how many character I got to and agina the job of the view model to made it easier for the controller to know how many character it got
    var count:Int {
        return characters.count
    }
    init() {
        loadData()
    }
    // load the data from Model
    private mutating func loadData() {
        characters.append(LKCharacter.Mufasa)
        characters.append(LKCharacter.Simba)
        characters.append(LKCharacter.Nala)
        characters.append(LKCharacter.Kiara)
        characters.append(LKCharacter.Pumbaa)
        characters.append(LKCharacter.Timon)
        characters.append(LKCharacter.Rafiki)
        characters.append(LKCharacter.Scar)


        
    }
    // provide the detail for display, this is not the job of the controller
    func getCharacter(byIndex index: Int)-> (title:String,description:String,image:UIImage?) {
        let title = characters[index].rawValue
        let description = characters[index].shortDescription
        let image = UIImage(named:characters[index].imageName)
        
        return (title,description,image)
    }
    
}
