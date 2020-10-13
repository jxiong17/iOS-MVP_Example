//
//  ViewController.swift
//  MVP_Example
//
//  Created by Jeff Xiong on 10/13/20.
//

import UIKit

class TrafficLightViewController: UIViewController, TrafficLightViewDelegate {
    
    @IBOutlet weak var trafficLabel: UILabel!
    private let trafficLightPresenter = TrafficLightPresenter(trafficLightService: TrafficLightService())

    override func viewDidLoad() {
        super.viewDidLoad()
        
        trafficLightPresenter.setViewDelegate(trafficLightViewDelegate: self)
        
    }
    
    @IBAction func redLightButton(_ sender: Any) {
        trafficLightPresenter.trafficLightColorSelected(colorName:"Red")
    }
    
    @IBAction func yellowLightButton(_ sender: Any) {
        trafficLightPresenter.trafficLightColorSelected(colorName:"Yellow")
    }
    
    @IBAction func greenLightButton(_ sender: Any) {
        trafficLightPresenter.trafficLightColorSelected(colorName:"Green")
    }

    func displayTrafficLight(description: String) {
        trafficLabel.text = description
    }
    
}

