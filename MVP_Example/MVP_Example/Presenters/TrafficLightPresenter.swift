//
//  TrafficLightPresenter.swift
//  MVP_Example
//
//  Created by Jeff Xiong on 10/13/20.
//

import Foundation


protocol TrafficLightViewDelegate {
    func displayTrafficLight(description: String)
}

class TrafficLightPresenter {
    
    private let trafficLightService: TrafficLightService
    private var trafficLightViewDelegate: TrafficLightViewDelegate?
    
    init(trafficLightService: TrafficLightService) {
        self.trafficLightService = trafficLightService
    }
    
    func setViewDelegate(trafficLightViewDelegate:TrafficLightViewDelegate?){
        self.trafficLightViewDelegate = trafficLightViewDelegate
    }
    
    func trafficLightColorSelected(colorName:(String)){

        trafficLightService.getTrafficLight(colorName: colorName) { [weak self] trafficLight in

            if let trafficLight = trafficLight {
                self?.trafficLightViewDelegate?.displayTrafficLight(description: trafficLight.description)
            }
        }
    }
    
}
