//
//  TeamView.swift
//  Starter
//
//  Created by Adnan Cobanoglu on 15.11.2022.
//

import SwiftUI

struct TeamView: View {
    @StateObject var viewModel = PlayerViewModel()
    @State var popup=false
    @State var player:Player?
    @State var playerName:String=""
    @State var surname:String=""
    @State var jerseyNumber:String=""
    @State var age:String=""
    @State var position:String=""
    @State var overalPower:String=""
    
    
    var body: some View {
        VStack{
            List(1 ..< 12) { _ in
                HStack {
                    Text("name")
                    Text("surname")
                }
            }
            Button("Add Player"){
                popup=true
            }.foregroundColor(Color.yellow)
        }
        
        .popover(isPresented: $popup) {
            VStack {
                Form{
                    Section("Oyuncu") {
                        TextField("Oyuncu adı", text:$playerName)
                        TextField("Oyuncu soyadı", text:$surname)
                        TextField("Oyuncu Numarası", text:$jerseyNumber)
                        TextField("Oyuncu Yaşı", text:$age)
                        TextField("Oyuncu Pozisyonu", text:$position)
                    }
               
                }
                
                Button("Kaydet"){
                    
                    player?.name=playerName
                    player?.surname=surname
                    player?.jerseyNumber=jerseyNumber
                    player?.position=position
                    player?.age=age
                    
                    player=Player(name: player!.name, surname: player!.surname, jerseyNumber: player!.jerseyNumber, age: player!.age, position: "", overalPower: "")
                    
                }.foregroundColor(Color.yellow)
                Text(player?.name ?? "")
                
            }
        }
    }
}

struct TeamView_Previews: PreviewProvider {
    static var previews: some View {
        TeamView()
    }
}
