//
//  resultViewController.swift
//  IOSApp
//
//  Created by Andrea on 1/26/19.
//  Copyright © 2019 AndreaKayla. All rights reserved.
//

import UIKit

class resultViewController: UIViewController {

 
    @IBOutlet weak var noButton: UIButton!
    @IBOutlet weak var yesButton: UIButton!
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var eventImage: UIImageView!
    @IBOutlet weak var eventNameLabel: UILabel!
    @IBOutlet weak var eventDescriptionLabel: UILabel!
    
    
    let events = Events()
    var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let eventList = events.eventList.shuffled()
        setName(eventName: eventList[0].eventName)
        setImage(imageName: eventList[0].eventImageName)
        setDescription(eventDescription: eventList[0].eventDescription)
        print("in did load")
    }
    
    func setName(eventName: String){
        eventNameLabel.text = eventName
        print("In set Name")
    }
    
    func setImage (imageName: String) {
        eventImage.image = UIImage(named: imageName)!
        print("setImage")
    }
    
    func setDescription(eventDescription: String){
        eventDescriptionLabel.text = eventDescription
        print("setDescription")
    }
    
    @IBAction func noButton(_ sender: Any) {
        print("In no button")
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
    
    @IBAction func yesButton(_ sender: Any) {
        print("In yes button")
        noButton.isHidden = true
        yesButton.isHidden = true
        eventDescriptionLabel.isHidden = true
        eventNameLabel.text = "This event has been saved"
    }
    
    ///button to return to the option picker page
 
    @IBAction func backButton(_ sender: Any) {
        print("Hit back button")
        dismiss(animated: true, completion: nil)
    }
}

