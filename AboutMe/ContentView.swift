//
//  ContentView.swift
//  AboutMe
//
//  Created by scholar on 7/13/23.
//

import SwiftUI

struct CustomColor {
    static let mygreen = Color("mygreen")
    static let pink = Color("pink")
    }


struct ContentView: View {
    @State private var alert = false
    var body: some View {
        ZStack{
            Color("pink")
                .ignoresSafeArea()
                
            //practicing git hub
            VStack {
               
                Text(" Jasmine Trinh ")
                    .font(.title)
                    .foregroundColor(Color.white)
                    .background(Rectangle()
                        .foregroundColor(CustomColor.mygreen))
                    .cornerRadius(6)
                
                                        
                Text(" Hello! My name is Jasmine Trinh and I'm a rising junior at Garfield Highschool. Below are some  pictures and facts about me. ")
                    
                    .foregroundColor(Color.white)
                    .background(Rectangle()
                        .foregroundColor(CustomColor.mygreen))
                    .cornerRadius(6)
                    
                Spacer()
                    .frame(width: 100.0, height: 20.0)
                
                VStack{
                    
                    Image("me")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 150.0, height: 150.0)
                        .background(Rectangle()
                            .frame(width: 250.0, height: 170.0)
                            .foregroundColor(.white))

                    
                    Image("drumline")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 150.0, height: 150.0)
                        .background(Rectangle()
                            .frame(width: 250.0, height: 180.0)
                            .foregroundColor(.white))

                    
                    
                    Image("dance2")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 150.0, height: 150.0)
                        .background(Rectangle()
                            .frame(width: 250.0, height: 180.0)
                            .foregroundColor(.white))
                    
                    
                }

                Button("Show Facts") {
                    alert = true
                                    }
                .buttonStyle(.borderedProminent)
                .tint(CustomColor.mygreen)
                .padding()
                                
                Text(alert ? "I'm born and raised in Seattle, but my family is Chinese. I love drumline and I also do dance!" : "")
                    .background(Rectangle()
                        .foregroundColor(CustomColor.mygreen))
                    .cornerRadius(6)
                    .foregroundColor(Color.white)
                    
                    .padding()
                    
                    


                Spacer()
            }
            
        }
        
    }
                
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
