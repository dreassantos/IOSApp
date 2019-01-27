//
//  resultViewController.swift
//  IOSApp
//
//  Created by Andrea on 1/26/19.
//  Copyright © 2019 AndreaKayla. All rights reserved.
//

import UIKit

class resultViewController: UIViewController {

    //connecting buttons
    @IBOutlet weak var noButton: UIButton!
    @IBOutlet weak var yesButton: UIButton!
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var eventImage: UIImageView!
    @IBOutlet weak var eventNameLabel: UILabel!
    @IBOutlet weak var eventDescriptionLabel: UILabel!
    @IBOutlet weak var statusLabel: UILabel!
    
    
    let events = Events()
    var counter = 0
    var savedEvents:[String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let eventList = events.eventList
        setName(eventName: eventList[0].eventName)
        setImage(imageName: eventList[0].eventImageName)
        setDescription(eventDescription: eventList[0].eventDescription)
        statusLabel.isHidden = true
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
        let eventList = events.eventList
        counter += 1
        if counter < eventList.count {
            setName(eventName: eventList[counter].eventName)
            setImage(imageName: eventList[counter].eventImageName)
            setDescription(eventDescription: eventList[counter].eventDescription)
            statusLabel.isHidden = true
        } else {
            var tempString = ""
            noButton.isHidden = true
            yesButton.isHidden = true
            if savedEvents.count == 0 {
                tempString = "You decided not to take an Adventure and explore. ):"
            }else{
            tempString = "Here are your saved events to explore:\n"
            for event in savedEvents
            {
                tempString += "\n\(event)"
            }}
            eventDescriptionLabel.text = tempString
        }
    }
    
    @IBAction func yesButton(_ sender: Any) {
        print("In yes button")
        counter += 1
        statusLabel.isHidden = false
        savedEvents.append(String(eventNameLabel.text!))
        statusLabel.text = "Previous event has been saved"
        if counter < events.eventList.count {
        let eventList = events.eventList
        setName(eventName: eventList[counter].eventName)
        setImage(imageName: eventList[counter].eventImageName)
        setDescription(eventDescription: eventList[counter].eventDescription)
        } else {
            noButton.isHidden = true
            yesButton.isHidden = true
            var tempString = "Here are your saved events to explore:\n"
            for event in savedEvents
            {
                tempString += "\n\(event)"
            }
            eventDescriptionLabel.text = tempString
        }
    }
    
    ///button to return to the option picker page
 
    @IBAction func backButton(_ sender: Any) {
        print("Hit back button")
        dismiss(animated: true, completion: nil)
    }
}

