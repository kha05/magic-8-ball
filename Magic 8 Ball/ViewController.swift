//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Kevin Ha on 22/05/2017.
//  Copyright © 2017 Kevin Ha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  var ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
  var randomBallNumber: Int?
  
  @IBOutlet weak var imageView: UIImageView!
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  
  @IBAction func askButtonPressed(_ sender: Any) {
    newBallImage()
  }
  
  override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
    newBallImage()
  }

  func newBallImage() {
    self.randomBallNumber = Int(arc4random_uniform(4))
    let ballStringName = ballArray[randomBallNumber!]
    self.imageView.image = UIImage(named: ballStringName)
  }

}

