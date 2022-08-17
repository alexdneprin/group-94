//
//  ThirdViewController.swift
//  Group 94
//
//  Created by Oleksandr Slobodianiuk on 20.07.2022.
//

import UIKit

class ThirdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let someNumber: Int = 7
        let isEven: Bool = someNumber.isEven()
//        print("Is number even: \(isEven)")
        
        var humanStruct = HumanStruct()
        humanStruct.name = "Alice"
        
        let humanClass = HumanClass()
        humanClass.name = "Bob"
        
        var structCopy = humanStruct
        structCopy.name = "Tom"
        
        let classCopy = humanClass
        classCopy.name = "Chack"
    }
//    init() {
//
//    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        view.backgroundColor = .green
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        view.backgroundColor = .green
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        view.backgroundColor = .red
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        view.backgroundColor = .red
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
    }
    
    deinit {
        
    }
}

extension Int {
    func isEven() -> Bool {
        self % 2 == 0
    }
}

// [*===]
class HumanClass { // Reference type (ссылочный тип)
    var name: String = ""
}

// [**==]
struct HumanStruct { // Value type (тип значение)
    var name: String = ""
}
