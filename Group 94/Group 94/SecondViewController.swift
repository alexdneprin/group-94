//
//  SecondViewController.swift
//  Group 94
//
//  Created by Oleksandr Slobodianiuk on 20.07.2022.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let audi = Audi(name: "")
        let bmw = BMW(name: "")
        let nissan = Nissan()
        
        let service = Service()
        service.test(car: audi)
        service.test(car: bmw)
        service.test(car: nissan)
    }
}

struct Service {
    func test(car: Car) {
        car.drive()
    }
    
    func checkInfo(car: Vendor) {
        print(car.name)
    }
}

protocol Car {
    func drive()
}

protocol Vendor {
    var name: String { get set }
}

protocol CarWithVendor: Car, Vendor { }

extension CarWithVendor {
    func drive() {
        print("Drive in extension")
    }
}

struct Audi: Car, Vendor {
    var name: String
    func drive() {
        print("Drive: Audi")
    }
}

struct BMW: CarWithVendor {
    var name: String
    func drive() {
        print("Drive: BMW")
    }
}

struct Nissan: Car {
    func drive() {
        print("Drive: Nissan")
    }
}
