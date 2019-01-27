//
//  EventProvider.swift
//  IOSApp
//
//  Created by Andrea on 1/26/19.
//  Copyright © 2019 AndreaKayla. All rights reserved.
//

import Foundation
struct EventProvider {
    let eventName : String
    let eventLocation: String
    let eventCost: Int
    let eventDescription: String
    let eventTags: [String]
    let eventImageName: String
}

struct Events {
    let eventList: [EventProvider] = [
        EventProvider (eventName:  "Party at the park", eventLocation: "Santa Barbara", eventCost: 5, eventDescription: "This event is for everyone!!! Family Friendly! Dog-friendly! ", eventTags: ["fun","family"], eventImageName: "park.jpeg"),
        EventProvider (eventName:  "Movie at the park", eventLocation: "Santa Barbara", eventCost: 34, eventDescription: "Fun for the whole Family! Showing movies every Friday night!", eventTags: ["free","family","fun"], eventImageName: "park.jpeg"),
        EventProvider (eventName: "County Fair", eventLocation: "Santa Barbara", eventCost: 20, eventDescription: "Come have a blast! Multiple vendors and cool rides", eventTags: ["family","fun", "fair","food"], eventImageName: "park.jpeg"),
        EventProvider (eventName: "5K Fun Run", eventLocation: "Santa Barbara", eventCost: 10, eventDescription: "Want to run for a good cause? All donations will go to a local charity! Bring friends and family! First Place wins a prize!", eventTags: ["fundraiser","fun", "healthy","exercise", "prizes"], eventImageName: "park.jpeg"),
        EventProvider (eventName: "Concert", eventLocation: "Santa Barbara", eventCost: 25, eventDescription: "Multiple local artists with a surprise guest. Jam out with friends, come join!", eventTags: ["concert","music", "cool","artists"], eventImageName: "park.jpeg"),
        EventProvider (eventName: "Farmer's Market", eventLocation: "Santa Barbara", eventCost: 0, eventDescription: "Come have a blast! Multiple vendors and cool rides", eventTags: ["family","fun", "fair","food"], eventImageName: "park.jpeg"),
        EventProvider (eventName: "Halloween Party", eventLocation: "Santa Barbara", eventCost: 15, eventDescription: "Ready for Halloween? Dress up in costumes and participate in our costume contest. 1st prize gets a $100, 2nd prize $50 and 3rd $25.", eventTags: ["contest","party", "prizes","costumes", "Halloween"], eventImageName: "park.jpeg"),
        EventProvider (eventName: "Make your own Bowls", eventLocation: "Santa Barbara", eventCost: 10, eventDescription: "Ever wanted to make your own bowl? Now's your chance to make a clay pot and paint/decorate it!", eventTags: ["painting","pots", "event","clay"], eventImageName: "park.jpeg"),
        EventProvider (eventName: "Happy Hour", eventLocation: "Santa Barbara", eventCost: 3, eventDescription: "Join us for Happy Hour! Drinks are half off only from 5-7pm", eventTags: ["happyhour", "drinks", "bar","food", "bar"], eventImageName: "park.jpeg"),
        EventProvider (eventName: "Poetry Reading", eventLocation: "Santa Barbara", eventCost: 0, eventDescription: "Listen or read everyone is welcome to come! Share your artistic abilities and show your support!", eventTags: ["poetry","reading", "club","food", "drinks"], eventImageName: "park.jpeg")
    ]
}


