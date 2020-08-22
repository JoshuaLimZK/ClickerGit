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
    @IBOutlet weak var timerLabel: UILabel!
    var count = 0
    var currentTime = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true){(_) in
            self.currentTime += 0.1
            self.timerLabel.text = "\(self.currentTime)s"
        }
    }

    @IBAction func screenPressed(_ sender: Any) {
        count += 1
        if count == 30 {
            print("Done!")
            
            var timeAppend: [Double] = UserDefaults.standard.object(forKey: "timeArray") as? [Double] ?? []
            timeAppend.append(currentTime)
            //append time to timearray here
            UserDefaults.standard.set(timeAppend, forKey: "timeArray")
            //refresh
            //unwind here
            
            performSegue(withIdentifier: "finished clicker", sender: nil)
            
        }
        counterLabel.text = String(count)
        
        
        
    }
    
}

