//
//  KeyboardView.swift
//  Codex
//
//  Created by Kenny Jinhiro Wibowo on 18/04/23.
//

import SwiftUI

struct KeyboardView: View {
    @Binding var viewIndex: Int
    @State var keyboardText: String = ""
    @State var counterFirework: Int = 0
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
                            .shadow(radius: 2)
                    )
                    .padding(.horizontal, 160)
                    .padding(.bottom, 36)
                    
                    HStack{
                        VStack{
                            Text("A")
                                .bold()
                                .foregroundColor(.white)
                        }
                        .frame(width: 100, height: 100)
                        .background(
                            RoundedRectangle(cornerRadius: 8)
                                .fill(.blue)
                                .frame(width: 100, height: 100)
                                .shadow(radius: 2)
                        )
                        .onTapGesture{
                            if self.keyboardText.count < 20{
                                self.keyboardText = keyboardText + "A"
                            } else{

                            }
                        }
                        VStack{
                            Text("B")
                                .bold()
                                .foregroundColor(.white)
                        }
                        .frame(width: 100, height: 100)
                        .background(
                            RoundedRectangle(cornerRadius: 8)
                                .fill(.blue)
                                .frame(width: 100, height: 100)
                                .shadow(radius: 2)
                        )
                        .onTapGesture{
                            if self.keyboardText.count < 20{
                                self.keyboardText = keyboardText + "B"
                            } else{

                            }
                        }
                        VStack{
                            Text("C")
                                .bold()
                                .foregroundColor(.white)
                        }
                        .frame(width: 100, height: 100)
                        .background(
                            RoundedRectangle(cornerRadius: 8)
                                .fill(.blue)
                                .frame(width: 100, height: 100)
                                .shadow(radius: 2)
                        )
                        .onTapGesture{
                            if self.keyboardText.count < 20{
                                self.keyboardText = keyboardText + "C"
                            } else{

                            }
                        }
                        VStack{
                            Text("Backspace")
                                .bold()
                                .foregroundColor(.white)
                        }
                        .frame(width: 175, height: 100)
                        .background(
                            RoundedRectangle(cornerRadius: 8)
                                .fill(.blue)
                                .frame(width: 175, height: 100)
                                .shadow(radius: 2)
                        )
                        .onTapGesture{
                            self.keyboardText = String(keyboardText.dropLast())
                        }
                    }
                }
                .frame(width: geo.size.width, height: geo.size.height * 1/2)
                .onAppear{
                    counterFirework = counterFirework + 1
                }
                //MARK: Tutorial
                VStack{
                    VStack{
                        HStack{
                            Text("Marvelous!")
                                .font(.title)
                                .bold()
                        }
                        .padding(.bottom)
                        VStack{
                            Text("You are **awesome**!")
                                .font(.title3)
                            Text("From not knowing anything, into fixing a keyboard!")
                                .font(.title3)
                                .padding(.bottom)
                            Text("Even though we had fun,")
                                .font(.title3)
                            Text("seems like the journey of us in Codex has **ended**.")
                                .font(.title3)
                                .padding(.bottom)
                            Text("**Programming will always be a continuous learning**.")
                                .font(.title3)
                            Text("The basics still need to be explored, and there are still more than that.")
                                .font(.title3)
                                .padding(.bottom)
                            Text("**Last but not least,** it is **okay** to fail.")
                                .font(.title3)
                            Text("**In fact,** you need to **fail a lot** to **learn**.")
                                .font(.title3)
                                .padding(.bottom)
                            Text("**\"Stay hungry, stay foolish\"**")
                                .font(.title3)
                        }
                        HStack{
                            Text("Press **the**")
                                .font(.title3)
                            Text("**blue**")
                                .font(.title3)
                                .foregroundColor(.blue)
                            Text("**button** below this text to restart the journey!")
                                .font(.title3)
                        }.padding(.vertical)
                        
                        VStack{
                            //MARK: Continue - Interact
                            Text("Repeat the Journey")
                                .bold()
                                .foregroundColor(.white)
                        }
                        .frame(width: 280, height: 40)
                        .background(
                            RoundedRectangle(cornerRadius: 8)
                                .fill(.blue)
                                .shadow(radius: 2))
                        .onTapGesture {
                            viewIndex = 1
                        }
                        
                    }.padding(.horizontal)
                }
                .frame(width: geo.size.width, height: geo.size.height * 1/2)
                .confettiCannon(counter: $counterFirework, num: 50, openingAngle: Angle(degrees: 0), closingAngle: Angle(degrees: 360), radius: 200)
            }
        }
        
    }
}

struct KeyboardView_Previews: PreviewProvider {
    static var previews: some View {
        KeyboardView(viewIndex: .constant(0))
    }
}
