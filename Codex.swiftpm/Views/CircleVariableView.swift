//
//  CircleVariableView.swift
//  Codex
//
//  Created by Kenny Jinhiro Wibowo on 14/04/23.
//

import SwiftUI

struct CircleVariableView: View {
    @Binding var viewIndex: Int
    
    @State var sliderValue: Double = 240
    var body: some View {
        GeometryReader{ geo in
            VStack{
                //MARK: Compiler
                VStack{
                    VStack(spacing: 64){
                        Text("Circle O' Meter")
                            .font(.title)
                            .bold()
                        Text("Area of Circle: nil")
                            .background(Circle()
                                .strokeBorder(.black, lineWidth: 2)
                                .frame(width: 240, height: 240))
                            .frame(width: 240, height: 240)
                        Slider(value: $sliderValue, in: 180...400)
                            .padding(.horizontal, 128)
                    }.padding(.all, 48)
                }.frame(height: geo.size.height / 2)
                
                //MARK: Tutorial
                VStack{
                    VStack{
                        HStack{
                            Text("Fix the Program!")
                                .font(.title)
                                .bold()
                        }
                        .padding(.bottom)
                        
                        Text("We **want** the program to make the area of the circle bigger as the slider goes up.")
                            .font(.title3)
                        Text("Now, **this** is your chance to fix the code for this program.")
                            .font(.title3)
                        
                        Text("**The slider** does not work.")
                            .font(.title3)
                            .padding(.top)
                        
                        
                        Text("**The area** does not work.")
                            .font(.title3)
                        Text("**The circle** does not move.")
                            .font(.title3)
                        
                        Text("The instructions work, but **not** the variables.")
                            .font(.title3)
                            .padding(.top)
                        Text("Let's try fixing the **variables**.")
                            .font(.title3)
                            
                        
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
                }.frame(width: geo.size.width, height: geo.size.height / 2)
            }
        }
    }
}

struct CircleVariableView_Previews: PreviewProvider {
    static var previews: some View {
        CircleVariableView(viewIndex: .constant(0))
    }
}
