//
//  ViewController.swift
//  Totemizer
//
//  Created by Kalybay Zhalgasbay on 02.04.2022.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var animalImage: UIImageView!
    @IBOutlet weak var animalName: UILabel!
    @IBOutlet weak var randomizerButton: UIButton!
    @IBOutlet weak var wallPaper: UIImageView!
    
    var index = Int.random(in: 0...4)
    let names: [String] = ["tigerPic","gorillaPic","snakePic","panteraPic","crocPic","bearPic"]
    let animals: [String:Int] = ["tigerPic":1,"gorillaPic":2,"snakePic":3,"panteraPic":4,"crocPic":5]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        // - Intro image and label setup
        animalName.text = "Guess who you are today"
        animalName.backgroundColor = UIColor.blue
        animalName.layer.masksToBounds = true
        animalName.layer.cornerRadius = 25
        randomizerButton.layer.cornerRadius = 30.0
        animalImage.image = UIImage(named: "introPic")
        wallPaper.image = UIImage(named: "wallPic")
       }
    
    
    @IBAction func generateButton(_ sender: Any) {
        index = Int.random(in: 0...5)
        animalImage.image = UIImage(named: names[index])
        
        switch(index){
        case 0:
            animalName.text = "Today you are Tiger"
        case 1:
            animalName.text = "Today you are Gorilla"
        case 2:
            animalName.text = "Today you are Snake"
        case 3:
            animalName.text = "Today you are Pantera"
        case 4:
            animalName.text = "Today you are Crocodile"
        case 5:
            animalName.text = "Today you are Bear"
        default:
            break
        }
        
        
    }

}
