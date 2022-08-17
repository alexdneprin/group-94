//
//  FourthViewController.swift
//  Group 94
//
//  Created by Oleksandr Slobodianiuk on 27.07.2022.
//

import UIKit

/*
 UIKit classes
 UIView и Auto Layout
 .storyboard / .xib
 UIView и Animations
 Constraints
 UITableView, Custom cells, Navigation
 */

class FourthViewController: UIViewController {

    @IBOutlet weak var greenView: UIView!
    @IBOutlet weak var grayView: UIView!
    @IBOutlet weak var centralView: UIView!
    
    @IBOutlet weak var centralViewBottomConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let frame: CGRect = CGRect(x: 100,
                                   y: 100,
                                   width: 200,
                                   height: 200)
        
        let myButton = UIButton(frame: frame)
        myButton.setTitle("Press me!",
                          for: .normal)
        myButton.backgroundColor = .blue
        myButton.tintColor = .red
        view.addSubview(myButton)
        
        let label = UILabel(frame: CGRect(x: 200, y: 500, width: 200, height: 50))
        label.text = "This is the label!"
        view.addSubview(label)
        print(view.subviews.count)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        greenView.layer.cornerRadius = greenView.frame.height / 2
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }

    @IBAction func centralButtonPressed(_ sender: Any) {
        
        UIView.animate(withDuration: 5,
                       delay: 0,
                       options: [.autoreverse, .repeat]) {
//            self.centralView.alpha = 0.2
            self.centralView.backgroundColor = .red
            self.centralView.layer.cornerRadius = 100
            self.centralView.frame.origin.x = 20
            
            self.centralViewBottomConstraint.constant = 800
            
            self.view.layoutIfNeeded()
        } completion: { _ in
            self.view.backgroundColor = .green
        }
        
    }

}

class Coalaqq {
    
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    convenience init(age: Int) {
        self.init(name: "Alice", age: age)
    }
    
//    convenience init(age: Int) {
//        self.init(name: "Alice", age: age)
//    }
}
