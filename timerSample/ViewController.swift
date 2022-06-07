//
//  ViewController.swift
//  timerSample
//
//  Created by クワシマ・ユウキ on 2022/06/07.
//

import UIKit

class ViewController: UIViewController {
    
    var timer: Timer!
    var startTime: TimeInterval!
    var stockTime: TimeInterval!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        startTime = Date.timeIntervalSinceReferenceDate
        stockTime = Date.timeIntervalSinceReferenceDate - startTime
    }
    
    @objc func onTimer() {
        print(stockTime + Date.timeIntervalSinceReferenceDate - startTime)
    }
    
    @IBAction func start() {
        startTime = Date.timeIntervalSinceReferenceDate
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(onTimer), userInfo: nil, repeats: true)
    }
    
    @IBAction func stop() {
        timer.invalidate()
        stockTime += Date.timeIntervalSinceReferenceDate - startTime
    }
    

}

