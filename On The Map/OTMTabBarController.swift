//
//  TabBarController.swift
//  On The Map
//
//  Created by Avinash Mudivedu on 4/7/16.
//  Copyright © 2016 Avinash Mudivedu. All rights reserved.
//

import UIKit

class OTMTabBarController: UITabBarController {
    

    var studentInformation: [StudentInformation] = [StudentInformation]()
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        OTMClient.sharedInstance().getStudentLocations(100) { (success, students, error) in
            if success {
                if let studentInformation = students {
                    self.studentInformation = students!

                }
            } else {
                //error
            }

            
    }
    func getNextResults() {
        
    }
}