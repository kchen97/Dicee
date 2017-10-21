//
//  ViewController.swift
//  Dicee
//
//  Created by Korman Chen on 10/20/17.
//  Copyright © 2017 Korman Chen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var randomDiceIndex1: Int = 0
    var randomDiceIndex2: Int = 0
    
    //MARK: Properties
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //MARK: Actions
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        randomDiceIndex1 = Int(arc4random_uniform(6)) + 1
        randomDiceIndex2 = Int(arc4random_uniform(6)) + 1
        
        diceImageView1.image = UIImage(named: "dice\(randomDiceIndex1)")
        diceImageView2.image = UIImage(named: "dice\(randomDiceIndex2)")
    }
}

