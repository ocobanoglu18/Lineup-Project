//
//  Player.swift
//  Starter
//
//  Created by Adnan Cobanoglu on 15.11.2022.
//

import Foundation

struct Player:Identifiable,Codable{
    var id=UUID()
    var name:String
    var surname:String
    var jerseyNumber:String
    var age:String
    var position:String
    var overalPower:String
}

struct Team:Identifiable,Codable{
    var id=UUID()
    var Player1:Player
    var Player2:Player
    var Player3:Player
    var Player4:Player
    var Player5:Player
    var Player6:Player
    var Player7:Player
    var Player8:Player
    var Player9:Player
    var Player10:Player
    var Player11:Player
    var teamName:String
    var teamImage:String
    var teamColor:String
}
