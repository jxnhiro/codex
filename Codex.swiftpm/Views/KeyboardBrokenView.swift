//
//  KeyboardBrokenView.swift
//  Codex
//
//  Created by Kenny Jinhiro Wibowo on 18/04/23.
//

import SwiftUI

struct KeyboardBrokenView: View {
    
    @Binding var viewIndex: Int
    @State var keyboardText: String = ""
    
    var body: some View {
        GeometryReader{ geo in
            VStack{
                //MARK: Compiler
                VStack{
                    Text("Mini Keyboard!")
                        .bold()
                        .font(.title)
                        .padding(.bottom, 64)
                    HStack{
                        Text(keyboardText)
                            .bold()
                            .font(.title)
                            .frame(width: 500, height: 100)
                            .padding(.horizontal, 164)
                        Spacer()
                    }.background(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(.blue)
                            .frame(width: 500, height: 100)
                            .padding(.horizontal, 164)
                    )
                    .padding(.horizontal, 160)
                    .padding(.bottom, 36)
                    
                    HStack{
                        VStack{
                            Text("A")
                        }
                        .frame(width: 100, height: 100)
                        .border(.blue)
                        .onTapGesture{

                        }
                        VStack{
                            Text("B")
                        }
                        .frame(width: 100, height: 100)
                        .border(.blue)
                        .onTapGesture{

                        }
                        VStack{
                            Text("C")
                        }
                        .frame(width: 100, height: 100)
                        .border(.blue)
                        .onTapGesture{

                        }
                        VStack{
                            Text("Backspace")
                        }
                        .frame(width: 175, height: 100)
                        .border(.blue)
                        .onTapGesture{
                            self.keyboardText = String(keyboardText.dropLast())
                        }
                    }
                }.frame(width: geo.size.width, height: geo.size.height * 1/2)
                
                //MARK: Tutorial
                VStack{
                    VStack{
                        HStack{
                            Text("Fix the Program!")
                                .font(.title)
                                .bold()
                        }
                        .padding(.bottom)
                        
                        Text("The 'A', 'B', 'C' key **is currently broken**.")
                            .font(.title3)
                        Text("Now, **this** is your chance to fix the code for this program.")
                            .font(.title3)
                        
                        
                        
                        HStack{
                            Text("Press **the**")
                                .font(.title3)
                            Text("**continue**")
                                .font(.title3)
                                .foregroundColor(.blue)
                            Text("**button** below this text to fix the program!")
                                .font(.title3)
                        }.padding(.vertical)
                        
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
                }.frame(width: geo.size.width, height: geo.size.height * 1/2)
            }
        }
        
    }
}

struct KeyboardBrokenView_Previews: PreviewProvider {
    static var previews: some View {
        KeyboardBrokenView(viewIndex: .constant(0))
    }
}
