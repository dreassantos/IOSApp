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
    var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func setName(eventName: String){
        eventNameLabel.text = eventName
    }
    
    func setImage (imageName: String) {
        eventImage.image = UIImage(named: imageName)!
    }
    
    func setDescription(eventDescription: String){
        eventDescriptionLabel.text = eventDescription
    }

    
    func nextButton() {
        let eventList = events.eventList.shuffled()
        if counter < eventList.count {
            setName(eventName: eventList[counter].eventName)
            setImage(imageName: eventList[counter].eventImageName)
            setDescription(eventDescription: eventList[counter].eventDescription)
               counter += 1
        } else {
            dismiss(animated: true, completion: nil)
        }
    }
    
    
    ///button to return to the option picker page
    @IBAction func nextButton(_ sender: Any) {
         dismiss(animated: true, completion: nil)

    }
}

