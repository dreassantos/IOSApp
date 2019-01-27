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
        EventProvider (eventName:  "Party at the park", eventLocation: "Santa Barbara", eventCost: 5, eventDescription: "This event is for everyone!!! Family Friendly! Dog-friendly! ", eventTags: ["fun","family"], eventImageName: "PPark.jpg"),
        EventProvider (eventName:  "Movie at the park", eventLocation: "Santa Barbara", eventCost: 34, eventDescription: "Fun for the whole Family! Showing movies every Friday night! Bring a blanket or chair and enjoy a movie on the lawn. Starts at 7pm", eventTags: ["free","family","fun"], eventImageName: "MPark.jpg"),
        EventProvider (eventName: "County Fair", eventLocation: "Santa Barbara", eventCost: 20, eventDescription: "Come have a blast! Multiple vendors and cool rides! Tickets go on sale Saturday.", eventTags: ["family","fun", "fair","food"], eventImageName: "Fair.jpg"),
        EventProvider (eventName: "5K Fun Run", eventLocation: "Santa Barbara", eventCost: 10, eventDescription: "Want to run for a good cause? All donations will go to a local charity! Bring friends and family! First Place wins a prize!", eventTags: ["fundraiser","fun", "healthy","exercise", "prizes"], eventImageName: "run.jpg"),
        EventProvider (eventName: "Concert", eventLocation: "Santa Barbara", eventCost: 25, eventDescription: "Multiple local artists with a surprise guest. Jam out with friends, come join!", eventTags: ["concert","music", "cool","artists"], eventImageName: "concert.jpg"),
        EventProvider (eventName: "Farmer's Market", eventLocation: "Santa Barbara", eventCost: 0, eventDescription: "Join our town in our weekly Farmer's Market. There's tons to do! 5-9pm Thursdays", eventTags: ["family","fun", "fair","food"], eventImageName: "fmarket.jpeg"),
        EventProvider (eventName: "Halloween Party", eventLocation: "Santa Barbara", eventCost: 15, eventDescription: "Ready for Halloween? Dress up in costumes and participate in our costume contest. 1st prize gets a $100, 2nd prize $50 and 3rd $25.", eventTags: ["contest","party", "prizes","costumes", "Halloween"], eventImageName: "HParty.jpg"),
        EventProvider (eventName: "Make your own Bowls", eventLocation: "Santa Barbara", eventCost: 10, eventDescription: "Ever wanted to make your own bowl? Now's your chance to make a clay bowl and paint/decorate it!", eventTags: ["painting","pots", "event","clay"], eventImageName: "bowl.jpg"),
        EventProvider (eventName: "Happy Hour", eventLocation: "Santa Barbara", eventCost: 3, eventDescription: "Join us for Happy Hour! Drinks are half off only from 5-7pm", eventTags: ["happyhour", "drinks", "bar","food", "bar"], eventImageName: "bar.jpg"),
        EventProvider (eventName: "Poetry Reading", eventLocation: "Santa Barbara", eventCost: 0, eventDescription: "Listen or read everyone is welcome to come! Share your artistic abilities and show your support!", eventTags: ["poetry","reading", "club","food", "drinks"], eventImageName: "poetry.jpg")
    ]
}


