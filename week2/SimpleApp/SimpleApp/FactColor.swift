//
//  FactColor.swift
//  SimpleApp
//
//  Created by Ting on 2022/4/3.
//

import Foundation
import UIKit

struct BackgroundColor {
    //設定顏色
    let colors = [
     UIColor(red: 171/255, green: 52/255, blue: 40/255, alpha: 1),
     UIColor(red: 244/255, green: 158/255, blue: 76/255, alpha: 1),
     UIColor(red: 245/255, green: 221/255, blue: 125/255, alpha: 1),
     UIColor(red: 152/255, green: 190/255, blue: 162/255, alpha: 1),
     UIColor(red: 59/255, green: 142/255, blue: 165/255, alpha: 1),
     UIColor(red: 45/255, green: 114/255, blue: 143/255, alpha: 1),
     UIColor(red: 41/255, green: 104/255, blue: 130/255, alpha: 1)
    ]
    //設定隨機顏色
    func randomColor() -> UIColor {
        let randomNumber = Int.random(in: 0...6)
        return colors[randomNumber]
    }
}



struct FunFacts {
    let text = [
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas tempus.",
    "Contrary to popular belief, Lorem Ipsum is not simply random text.",
    "Richard McClintock, a Latin professor at Hampden-Sydney College in ",
    "looked up one of the more obscure Latin words, consectetur",
    "from a Lorem Ipsum passage, and going through the cities of the word",
    "This book is a treatise on the theory of ethics, very popular during the.",
    "The first line of Lorem Ipsum, Lorem ipsum dolor sit amet..",
    ]
    //設定隨機句子
    func randomText() -> String {
        let randomNumber = Int.random(in: 0...6)
        return text[randomNumber]
    }
}


