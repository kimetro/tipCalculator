//
//  SettingsViewController.swift
//  tipCalculator
//
//  Created by Akeem Lawal on 8/23/17.
//  Copyright © 2017 Akeem Lawal. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func setDefaultTip(_ sender: Any) {
        
        
       
    
        let tipDefaultIndex = tipControl.selectedSegmentIndex
        
        let defaults = UserDefaults.standard // Swift 3 syntax, previously UserDefaults.standardUserDefaults()
        defaults.set(tipDefaultIndex, forKey: "defaultChoice")
        defaults.synchronize()
    }
}


