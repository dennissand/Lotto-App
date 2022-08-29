//
//  ViewController.swift
//  Lotto App
//
//  Created by Dennis Sand on 26.08.22.
//

import UIKit
import GameKit

class ViewController: UIViewController {

    let lottoKugel = [Int] (1...50)
    let zuastzKugel : Int = 0
    
    var mischKugel = [Int]()
    //var mischZusatz: Int = 0
    
    
    @IBOutlet weak var ballOne: UILabel!
    @IBOutlet weak var ballTwo: UILabel!
    @IBOutlet weak var ballThree: UILabel!
    @IBOutlet weak var ballfour: UILabel!
    @IBOutlet weak var ballFive: UILabel!
    
    @IBOutlet weak var extraBallOne: UILabel!
    @IBOutlet weak var extraBallTwo: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func playButton(_ sender: UIButton) {
        lotttoZahlen()
    }
    
    func lotttoZahlen() {
        mischKugel =
        GKRandomSource.sharedRandom()
            .arrayByShufflingObjects(in: lottoKugel) as! [Int]
        
        ballOne.text = String(mischKugel[0])
        ballTwo.text = String(mischKugel[1])
        ballThree.text = String(mischKugel[2])
        ballfour.text = String(mischKugel[3])
        ballFive.text = String(mischKugel[4])
        extraBallOne.text = String(arc4random_uniform(12)+1)
        extraBallTwo.text = String(arc4random_uniform(12)+1)
    }
    
}

