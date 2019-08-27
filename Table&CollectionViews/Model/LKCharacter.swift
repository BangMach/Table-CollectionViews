//
//  LKCharacter.swift
//  LK_Tab_Table_Collection
//
//  Created by Rodney Cocker on 6/7/19.
//  Copyright © 2019 RMIT. All rights reserved.
//

import Foundation
enum LKCharacter:String
{
    case Mufasa = "Mufasa", Simba = "Simba", Nala = "Nala", Timon = "Timon", Pumbaa = "Pumbaa", Kiara = "Kiara", Rafiki = "Rafiki", Scar = "Scar"
    
    var imageName:String{
        switch self{
        case .Mufasa: return "mufassa"
        case .Simba: return "simba"
        case .Nala: return "nala"
        case .Timon: return "timon"
        case .Pumbaa: return "pumbaa"
        case .Kiara: return "kiara"
        case .Rafiki: return "rafiki"
        case .Scar: return "scar"
        }
    }
    
    var shortDescription:String{
        switch self{
        case .Mufasa:
            return "Mufasa was the first son and heir of King Ahadi and Queen Uru, as evidenced in a set of prequel books released after the success of The Lion King."
        case .Simba:
            return "Simba was inspired by the character Bambi from Disney's Bambi (1942), as well as the stories of Moses and Joseph from the Bible."
        case .Nala:
            return "Nala is introduced as the childhood best friend of Simba, and ultimately becomes his wife by the end of The Lion King. Several years after Simba's uncle Scar has killed Simba's father Mufasa and usurped the throne, Nala desperately ventures into the jungle to find help."
        case .Timon:
            return "Timon is the best friend of Pumbaa, friend and guardian (when he was a cub) of Simba, son of Ma, and nephew of Uncle Max."
        case .Pumbaa:
            return "Pumbaa is a supporting character in Disney's 1994 animated feature film The Lion King. He is a gluttonous warthog and the best friend of Timon, a meerkat."
        case .Kiara:
            return "Kiara is a young adult lioness. She is the current crown princess of Pride Rock. She is the daughter of Simba and Nala, the older sister of Kion, and the mate of Kovu."
        case .Rafiki:
            return "It is revealed in the storybook A Tale of Two Brothers that Rafiki wasn't always a resident of the Pride Lands. Years before Simba and Mufasa's reign, Rafiki was a traveler studying the African lands who eventually stumbled upon the Pride Lands, where he was attacked by a young Shenzi, Banzai, and Ed. The mandrill was saved by Ahadi, the former ruler of the Pride Lands and father of Mufasa and Scar (then known as Taka)."
        case .Scar:
            return "Scar is a fictional character who appears in Walt Disney Pictures' animated feature film The Lion King (1994). The character is voiced by Jeremy Irons while his singing voice is provided by both Irons and Jim Cummings, the latter of whom was hired to replace Irons when the former damaged his singing voice."
        }
    }
}
