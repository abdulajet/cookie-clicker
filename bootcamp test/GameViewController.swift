//
//  GameViewController.swift
//  bootcamp test
//
//  Created by Abdulhakim Ajetunmobi on 29/09/2016.
//  Copyright © 2016 abdulajet. All rights reserved.
//

import UIKit
import AVFoundation

class GameViewController: UIViewController {

    @IBOutlet var numLabel: UILabel!
    var counter:Int = 0
    var player = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let audioPath = Bundle.main.path(forResource: "click", ofType: "wav")
        
        do {
            try player = AVAudioPlayer(contentsOf: URL(fileURLWithPath: audioPath!))
        } catch {
            // process errors
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func buttonPressed(_ sender: AnyObject) {
        counter += 1
        numLabel.text = "\(counter)"
        player.play()
    }

}
