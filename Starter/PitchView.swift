//
//  PitchView.swift
//  Starter
//
//  Created by Adnan Cobanoglu on 14.11.2022.
//

import SwiftUI

struct PitchView: View {
    
    struct CustomColor {
        static let cardColor = Color("cardColor")
    }
    
    @State var pitch=true
    @State var list=false
    @State var fourfourtwo=false
    @State var fourthreethree=false
    @State var threefivetwo=false
    @State var threefourthree=false
    
    @StateObject var viewModel = PlayerViewModel()
    @State var playerList:Player?
    @State var name:String=""
    @State var surname:String=""


    var body: some View {
        VStack {
            VStack{
                HStack {
                    Text("Pitch").foregroundColor(Color.white)
                }
                HStack {
                    Spacer()
                    Button("4-4-2"){
                        fourfourtwo=true
                        fourthreethree=false
                        threefourthree=false
                        threefivetwo=false
                    }
                    .buttonStyle(.borderedProminent).tint(.yellow)
                    .foregroundColor(Color.black).cornerRadius(10)
                    
                    Button("4-3-3"){
                        fourthreethree=true
                        fourfourtwo=false
                    }
                    .buttonStyle(.borderedProminent).tint(Color.yellow)
                    .foregroundColor(Color.black).cornerRadius(10)
                    
                    Button("3-5-2"){
                        fourthreethree=false
                        fourfourtwo=false
                        threefourthree=false
                        threefivetwo=true
                    }
                    .buttonStyle(.borderedProminent).tint(Color.yellow)
                    .foregroundColor(Color.black).cornerRadius(10)
                    
                    Button("3-4-3"){
                        fourthreethree=false
                        fourfourtwo=false
                        threefourthree=true
                        threefivetwo=false
                        
                    }
                    .buttonStyle(.borderedProminent).tint(Color.yellow)
                    .foregroundColor(Color.black).cornerRadius(10)
                    Spacer()
                }.padding(.top,10)
                .padding(.bottom,20)
            }.background(
                LinearGradient(gradient: Gradient(colors: [CustomColor.cardColor, .brown, .black]), startPoint: .leading, endPoint: .trailing)
            )
            Spacer()
            if pitch {
                VStack {
                    ZStack {
                        Image("Fener2")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .cornerRadius(40)
                            .frame(width: 200, height: 420)
                            .rotationEffect(.degrees(90))

                        if fourfourtwo {
                            VStack {
                                Spacer()

                                HStack {
                                    CircleButton(playerName: "Valencia", x: 10, y: 1.45)
                                    CircleButton(playerName: "Michi", x: 2.8, y: 1.3)
                                }
                                HStack {
                                    CircleButton(playerName: "Emre", x: 10, y: 1.45)
                                    CircleButton(playerName: "Crespo", x: 2.8, y: 1.3)
                                    CircleButton(playerName: "Arao", x: 1.5, y: 1.3)
                                    CircleButton(playerName: "İrfan", x: 1.12, y: 1.45)
                                }
                                HStack {
                                    CircleButton(playerName: "Ferdi", x: 10, y: 1.45)
                                    CircleButton(playerName: "Szalai", x: 2.8, y: 1.3)
                                    CircleButton(playerName: "Gustavo", x: 1.5, y: 1.3)
                                    CircleButton(playerName: "Osayi", x: 1.12, y: 1.45)
                                }
                                HStack {
                                    CircleButton(playerName: "Altay", x: 10, y: 1.45)
                                }
                            }.padding(.top, 70)
                        }
                        if (fourthreethree && fourfourtwo==false && threefivetwo==false && threefourthree==false) {
                            VStack {
                                Spacer()

                                HStack {
                                    CircleButton(playerName: "Valencia", x: 10, y: 1.45)
                                    CircleButton(playerName: "Michi", x: 2.8, y: 1.3)
                                    CircleButton(playerName: "Emre", x: 10, y: 1.45)
                                }
                                HStack {
                                    CircleButton(playerName: "Crespo", x: 2.8, y: 1.3)
                                    CircleButton(playerName: "Arao", x: 1.5, y: 1.3)
                                    CircleButton(playerName: "İrfan", x: 1.12, y: 1.45)
                                }
                                HStack {
                                    CircleButton(playerName: "Ferdi", x: 10, y: 1.45)
                                    CircleButton(playerName: "Szalai", x: 2.8, y: 1.3)
                                    CircleButton(playerName: "Gustavo", x: 1.5, y: 1.3)
                                    CircleButton(playerName: "Osayi", x: 1.12, y: 1.45)
                                }
                                HStack {
                                    CircleButton(playerName: "Altay", x: 10, y: 1.45)
                                }
                            }.padding(.top, 70)
                        }
                        
                        if (threefivetwo && fourfourtwo==false && fourthreethree==false && threefourthree==false) {
                            VStack {
                                Spacer()

                                HStack {
                                    CircleButton(playerName: "Valencia", x: 10, y: 1.45)
                                    CircleButton(playerName: "Michi", x: 2.8, y: 1.3)
                                   
                                }
                                HStack {
                                    CircleButton(playerName: "Ferdi", x: 1.12, y: 1.45)
                                    CircleButton(playerName: "Arao", x: 1.5, y: 1.3)
                                    CircleButton(playerName: "İrfan", x: 1.12, y: 1.45)
                                    CircleButton(playerName: "Crespo", x: 2.8, y: 1.3)
                                    CircleButton(playerName: "Osayi", x: 1.12, y: 1.45)
                                    
                                }
                                HStack {
                                    CircleButton(playerName: "Perez", x: 10, y: 1.45)
                                    CircleButton(playerName: "Szalai", x: 2.8, y: 1.3)
                                    CircleButton(playerName: "Gustavo", x: 1.5, y: 1.3)
                                 
                                }
                                HStack {
                                    CircleButton(playerName: "Altay", x: 10, y: 1.45)
                                }
                            }.padding(.top, 70)
                        }
                        
                        if (threefourthree && fourfourtwo==false && threefivetwo==false && fourthreethree==false) {
                            VStack {
                                Spacer()

                                HStack {
                                    CircleButton(playerName: "Valencia", x: 10, y: 1.45)
                                    CircleButton(playerName: "Michi", x: 2.8, y: 1.3)
                                    CircleButton(playerName: "Emre", x: 10, y: 1.45)
                                }
                                HStack {
                                    CircleButton(playerName: "Crespo", x: 2.8, y: 1.3)
                                    CircleButton(playerName: "Arao", x: 1.5, y: 1.3)
                                    CircleButton(playerName: "İrfan", x: 1.12, y: 1.45)
                                    CircleButton(playerName: "Osayi", x: 1.12, y: 1.45)
                                }
                                HStack {
                                    CircleButton(playerName: "Ferdi", x: 10, y: 1.45)
                                    CircleButton(playerName: "Szalai", x: 2.8, y: 1.3)
                                    CircleButton(playerName: "Gustavo", x: 1.5, y: 1.3)
                                 
                                }
                                HStack {
                                    CircleButton(playerName: "Altay", x: 10, y: 1.45)
                                }
                            }.padding(.top, 70)
                        }
                    }
                }
            } 
            Spacer()
        }

    }
}

struct CircleButton: View {
    @State private var dragAmount: CGPoint?
    @State var playerName: String
//    @State var playerNumber: String
    @State var x: Double
    @State var y: Double
    var body: some View {
        GeometryReader { gp in
            ZStack {
                Button(action: self.performAction) {
                    VStack {
                        Image("Fener").resizable()
                            .clipShape(Circle())
                            .foregroundColor(.blue)
                            .frame(width:40, height:40)
                        HStack{
//                            Text(playerNumber)
                            
                            TextField("Oyuncu adı", text: $playerName)
                                .foregroundColor(.white)
                                .fontWeight(.bold)
                         
                        }
                    }
                }

                .animation(.default, value: dragAmount)
                .position(self.dragAmount ?? CGPoint(x: gp.size.width / 2, y: gp.size.height / 2))
                .highPriorityGesture(
                    DragGesture()
                        .onChanged { self.dragAmount=$0.location })
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
    }

    func performAction() {
        print("button pressed")
    }
}

struct PitchView_Previews: PreviewProvider {
    static var previews: some View {
        PitchView()
    }
}
