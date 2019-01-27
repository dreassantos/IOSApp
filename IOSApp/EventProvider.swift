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
    let eventImageType: String
}

struct Events {
    let eventList: [EventProvider] = [
    EventProvider (eventName: "Party at the park", eventLocation: "Santa Barbara", eventCost: 50, eventDescription: "This event is for everyone!!! laskjdfhakjsdhflkajshdf asdfasdf dfs asdf asd fasd f asdf asdf asdf asd fa sdf adfs fads adfs fads ads ads dfsa fsd fdsa ", eventTags: ["fun","free","family"], eventImageName: "park.jpeg", eventImageType: "jpeg")
    ]
}


