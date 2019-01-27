//
//  resultViewController.swift
//  IOSApp
//
//  Created by Andrea on 1/26/19.
//  Copyright © 2019 AndreaKayla. All rights reserved.
//

import UIKit

class resultViewController: UIViewController {

    @IBOutlet weak var nexButton: UIButton!
    @IBOutlet weak var eventImage: UIImageView!
    @IBOutlet weak var eventNameLabel: UILabel!
    @IBOutlet weak var eventDescriptionLabel: UILabel!
    
    
    let events = Events()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
            var yourImage: UIImage = UIImage(named: events.eventList[0].eventImageName)!
           eventImage.image = yourImage
        
        eventNameLabel.text = events.eventList[0].eventName
        eventDescriptionLabel.text = events.eventList[0].eventDescription
    }
    
    @IBAction func nextButton(_ sender: Any) {
         dismiss(animated: true, completion: nil)
    }

}
