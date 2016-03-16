//
//  ViewController.swift
//  Water Flow
//
//  Created by Lovish Dogra on 16/03/16.
//  Copyright © 2016 Lovish Dogra. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var counterView: CounterView!
    @IBOutlet weak var counterLable: UILabel!
    
    @IBAction func pushButton(button: PushButtonView) {
        if button.isAddButton {
            if counterView.counter < 8{
                counterView.counter++
            }
        } else {
            if counterView.counter > 0 {
                counterView.counter--
            }
        }
        counterLable.text = String(counterView.counter)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        counterLable.text = String(counterView.counter)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

