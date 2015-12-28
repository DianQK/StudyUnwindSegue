//
//  ViewController.swift
//  TestUnwindsegue
//
//  Created by 宋宋 on 12/28/15.
//  Copyright © 2015 TransitionTreasury. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func performUnwindSegue(segue: UIStoryboardSegue) {
        print(segue.identifier)
        if segue.identifier == AnimalPickerViewController.UnwindSegue {
            resultLabel.text = (segue.sourceViewController as! AnimalPickerViewController).selectedAnimal
        }
    }


}

