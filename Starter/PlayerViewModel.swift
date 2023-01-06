//
//  PlayerViewModel.swift
//  Starter
//
//  Created by Adnan Cobanoglu on 4.01.2023.
//

import Foundation
import SwiftUI


class PlayerViewModel: ObservableObject{
        @Published var isTurnedOn:Bool=true
        @Published var playerCount=0
        @Published var playerList=[Player]()
        
        func increment(){
            playerCount=playerCount+1
        }
        
        func addItem(){
            let randomPlayersName=["Ronaldo", "Beckham","Mbappe","Alex de Souza"]
            let randomPlayersSurname=["Cristiano", "David","Killian","Souza"]
            let randomPlayersOverall=["92", "93","89","90"]
            let randomJerseyNumber=["1","2","3","4","5","6","7","8"]
            let randomAge=["20","21","22","23","24"]
            let randomPosition=["0","1","2","3","4"]
            
            
            let playerName=""
            let playerSurName=""
            let playerOverall=""
            let jerseyNumber=""
            let age=""
            let position=""
            
            
            
            let newPlayer=Player(name: playerName, surname: playerSurName, jerseyNumber: jerseyNumber, age: age, position: position, overalPower: playerOverall)
            
            withAnimation {
                playerList.insert(newPlayer, at: 0)
            }
        }
    }

