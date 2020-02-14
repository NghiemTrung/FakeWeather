//
//  ViewController.swift
//  FakeWeatther
//
//  Created by Trung on 2/14/20.
//  Copyright © 2020 Trung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var headUIView: UIView!
    @IBOutlet weak var labelCity: UILabel!
    @IBOutlet weak var todayStatusLabel: UILabel!
    @IBOutlet weak var todayTempLabel: UILabel!
    @IBOutlet weak var todayDay: UILabel!
    @IBOutlet weak var todayMinTempLabel: UILabel!
    @IBOutlet weak var todayMaxTempLabel: UILabel!
    
    
    
    let Days = FakeDays()
    let Hours = FakeHours()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupLayout()
        headData()
        
    }
    
    func setupLayout() {
        
    }
    
    func headData() {
        let today = Days[0]
        labelCity.text = "Hanoi"
        todayStatusLabel.text = today.weatherStatus
        todayTempLabel.text = "\(today.currentTemperature)"
        todayMinTempLabel.text = "\(today.minTemperature)"
        todayMaxTempLabel.text = "\(today.maxTemperature)"
        let current = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE"
        todayDay.text = dateFormatter.string(from: current)
    }
}

