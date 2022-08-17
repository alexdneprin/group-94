//
//  ViewController.swift
//  Group 94
//
//  Created by Oleksandr Slobodianiuk on 13.07.2022.
//

import UIKit
import Alamofire
import SDWebImage

class ViewController: UIViewController {
    
    @IBOutlet weak var centralView: UIView!
    @IBOutlet weak var centralButton: UIButton!
    
    var someValue: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myFox = Fox()
        let myWolf = Wolf()
        myFox.hunt()
        myWolf.hunt()
        myFox.findPrey()
        myFox.name = "Alice"
        print(myFox.name)
        
        let myCoala = Coala(val1: 12, val2: 500)
//        let mySecondCoala = Coala(age: 10)

        loadTrendingMovies()

        print("Hello world!")
        print("Hello world!")
        print("Hello world!")
        print("Hello world!")
        print("Hello world!")
        print("Hello world!")
        print("Hello world!")
        
    }
    
    func loadTrendingMovies() {
        let url = "https://api.themoviedb.org/3/trending/movie/week?api_key=96cfbe0ba15c4721bca8030e8e32becb"
        
        AF.request(url, method: .get, parameters: nil).responseJSON { recievedData in
            let decoder = JSONDecoder()
            if let responseData = recievedData.data {
                if let data = try? decoder.decode(Json4Swift_Base.self,
                                                  from: responseData) {
                    
                }
            }
        }
    }
    
    
    
    let myChiken = Chicken(name: "Name")
    
    let array = ["", "", ""]
    
    
    @IBAction func centralButtonPressed(_ sender: Any) {
        print("Pressed!")
    }
}

class Animal {
    var name: String = ""
}

class Predator: Animal {
    func hunt() {
        print("Predator is hunting")
    }
    
    //
}

class Fox: Predator {
    var hairColor: String = ""
    
    override func hunt() {
        super.hunt()
        print("Fox is hunting")
        findPrey()
    }
    
    func findPrey() { }
}

class Wolf: Predator {
    func findPrey() { }
}

class Coala: Animal {
    
    var age: Int
    var size: Float
    
    init(val1: Int, val2: Float) {
        age = val1
        size = val2
    }
    
//    convenience init(age: Int) {
//        self.init(val1: age, val2: 600)
//    }
}

struct Chicken {
    var name: String
}
