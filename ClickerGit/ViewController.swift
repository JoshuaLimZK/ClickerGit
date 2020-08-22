//
//  ViewController.swift
//  ClickerGit
//
//  Created by Joshua Lim on 22/8/20.
//  Copyright © 2020 Joshua Lim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var counterLabel: UILabel!
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func screenPressed(_ sender: Any) {
        count += 1
        if count == 30 {
            print("Done!")
            //append time to timearray here
            UserDefaults.standard.set(count, forKey: "timeArray")
            //refresh
            //unwind here
        }
        counterLabel.text = String(count)
        
    }
    
}

