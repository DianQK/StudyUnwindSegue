//
//  PickerViewController.swift
//  TestUnwindsegue
//
//  Created by 宋宋 on 12/28/15.
//  Copyright © 2015 TransitionTreasury. All rights reserved.
//

import UIKit

class AnimalPickerViewController: UIViewController {
    
    static let UnwindSegue = "UnwindAnimalPicker"
    
    private(set) var selectedAnimal: String!
    
    @IBOutlet weak var pickerButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func dogButtonPressed(sender: AnyObject) {
        selectAnimal("Dog")
    }
    
    @IBAction func catButtonPressed(sender: AnyObject) {
        selectAnimal("Cat")
    }
    
    @IBAction func snakeButtonPressed(sender: AnyObject) {
        selectAnimal("Snake")
    }
    
    private func selectAnimal(animal: String) {
        selectedAnimal = animal
        performSegueWithIdentifier(AnimalPickerViewController.UnwindSegue, sender: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
