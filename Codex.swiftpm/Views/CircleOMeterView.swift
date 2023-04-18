//
//  CircleOMeterView.swift
//  Codex
//
//  Created by Kenny Jinhiro Wibowo on 16/04/23.
//

import SwiftUI
import ConfettiSwiftUI

struct CircleOMeterView: View {
    @Binding var viewIndex: Int
    
    @State var counterFirework: Int = 0
    @State var sliderValue: Double = 240
    @State var rotate: Bool = true
    var body: some View {
        GeometryReader{ geo in
            VStack{
                //MARK: Compiler
                VStack{
                    VStack(spacing: 48){
                        Text("Circle O' Meter")
                            .font(.title)
                            .bold()
                        Text("Area of Circle:\(String(Int(sliderValue)))")
                            .frame(width: sliderValue, height: sliderValue)
                            .background(Circle()
                                .strokeBorder(.black, lineWidth: 2)
                                .frame(width: sliderValue, height: sliderValue)
                                .rotation3DEffect(.degrees(sliderValue - 240), axis: (x: 0, y: 1, z: 0)))
                            
                            
                        Slider(value: $sliderValue, in: 180...360)
                            .padding(.horizontal, 128)
                    }.padding(.all, 48)
                }.frame(height: geo.size.height * 1/2 )
                    .onAppear{
                        counterFirework = counterFirework + 1
                    }
                //MARK: Tutorial
                VStack{
                    VStack{
                        HStack{
                            Text("It Works!")
                                .font(.title)
                                .bold()
                        }
                        .padding(.bottom)
                        
                        Text("**Woah!** you made this program work!")
                            .font(.title3)
                        Text("It also **spins**! How cool is that!")
                            .font(.title3)
                        

                        Text("You now know how to use **variables**.")
                            .font(.title3)
                            .padding(.top)
                        
                            
                        
                        HStack{
                            Text("Press **the**")
                                .font(.title3)
                            Text("**continue**")
                                .font(.title3)
                                .foregroundColor(.blue)
                            Text("**button** below this text to fix the program!")
                                .font(.title3)
                        }.padding(.top)
                        
                        VStack{
                            //MARK: Continue - Interact
                            Text("Continue")
                                .bold()
                                .foregroundColor(.white)
                        }
                        .frame(width: 140, height: 40)
                        .background(
                            RoundedRectangle(cornerRadius: 8)
                                .fill(.blue)
                                .shadow(radius: 2))
                        .onTapGesture {
                            viewIndex = viewIndex + 1
                        }
                        
                    }.padding(.horizontal)
                }
                .frame(width: geo.size.width, height: geo.size.height * 1/2)
                .confettiCannon(counter: $counterFirework, num: 50, openingAngle: Angle(degrees: 0), closingAngle: Angle(degrees: 360), radius: 200)
            }
        }
    }
}

struct CircleOMeterView_Previews: PreviewProvider {
    static var previews: some View {
        CircleOMeterView(viewIndex: .constant(0))
    }
}
