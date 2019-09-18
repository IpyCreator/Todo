//
//  ViewController.swift
//  Todo
//

//  Copyright © 2019 Saurabh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let array = [2,3,4,5,6,7,8,9]
        let subarray = array.filter { (type) -> Bool in
            return (type%2 == 0)
        }
        print(subarray)
        // Do any additional setup after loading the view, typically from a nib.
    }


}

