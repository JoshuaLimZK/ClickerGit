//
//  Data.swift
//  ClickerGit
//
//  Created by Leroy Hong Jae-Yang on 22/8/20.
//  Copyright © 2020 Joshua Lim. All rights reserved.
//

import Foundation

class Data {
    var time : Double
    var timeArray : [Double]
    
    
    init(time: Double,timeArray: Double) {
        self.time = time
        self.timeArray = UserDefaults.standard.object(forKey: "Time") as! [Double]
    }
}
