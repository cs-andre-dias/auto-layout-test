//
//  ViewController.swift
//  auto-layout-test
//
//  Created by Andre Dias on 30/09/16.
//  Copyright © 2016 Andre Dias. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        let label1 = UILabel()
        label1.translatesAutoresizingMaskIntoConstraints = false
        label1.backgroundColor = UIColor.red
        label1.text = "THESE"
        
        let label2 = UILabel()
        label2.translatesAutoresizingMaskIntoConstraints = false
        label2.backgroundColor = UIColor.cyan
        label2.text = "ARE"
        
        let label3 = UILabel()
        label3.translatesAutoresizingMaskIntoConstraints = false
        label3.backgroundColor = UIColor.yellow
        label3.text = "SOME"
        
        let label4 = UILabel()
        label4.translatesAutoresizingMaskIntoConstraints = false
        label4.backgroundColor = UIColor.green
        label4.text = "AWESOME"
        
        let label5 = UILabel()
        label5.translatesAutoresizingMaskIntoConstraints = false
        label5.backgroundColor = UIColor.orange
        label5.text = "LABELS"

        
        view.addSubview(label1)
        view.addSubview(label2)
        view.addSubview(label3)
        view.addSubview(label4)
        view.addSubview(label5)
        
        
        
        let dic = ["label1":label1, "label2":label2, "label3": label3, "label4": label4, "label5": label5]
        
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-20-[label1]-20-|", options: [], metrics: nil, views: dic))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-20-[label2]-20-|", options: [], metrics: nil, views: dic))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-20-[label3]-20-|", options: [], metrics: nil, views: dic))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-20-[label4]-20-|", options: [], metrics: nil, views: dic))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-20-[label5]-20-|", options: [], metrics: nil, views: dic))

        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-50-[label1(30)]-10-[label2(30)]-10-[label3(30)]-10-[label4(30)]-10-[label5(30)]", options: [], metrics: nil, views: dic))

//        
////        view.addSubview(label1)
////        view.addSubview(label2)
////        view.addSubview(label3)
////        view.addSubview(label4)
//        
//        let viewsDictionary = ["label5" : label5]
//        
//        view.addSubview(label5)
//        
//        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-5-[label5]-5-|", options: [], metrics: nil, views: viewsDictionary))
//
//        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-5-[label5]-5-|", options: [], metrics: nil, views: viewsDictionary))
//        
//        view.layoutIfNeeded()
//        
////        let viewsDictionary = ["label1" : label1, "label2" : label2, "label3" : label3, "label4" : label4, "label5" : label5 ]
//        
//        
//        
////        for label in viewsDictionary.keys {
////            view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[\(label)]|", options: [], metrics: nil, views: viewsDictionary))
////        }
//
//        
////        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-5-[label1(20)]-5-[label2(30)]-5-[label3(40)]-5-[label4(50)]-5-[label5(10)]-|", options: [], metrics: nil, views: viewsDictionary))
////
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

