//
//  DarkModeLightModeView.swift
//  Codex
//
//  Created by Kenny Jinhiro Wibowo on 17/04/23.
//

import SwiftUI

struct DarkModeLightModeView: View {
    @Binding var viewIndex: Int
    @State var toggle: Bool = false
    var body: some View {
        GeometryReader{ geo in
            VStack{
                //MARK: Compiler
                VStack{
                    HStack{
                        Spacer()
                        Circle()
                            .foregroundColor(.red)
                            .frame(width: 10, height: 10)
                        Circle()
                            .foregroundColor(.gray)
                            .frame(width: 10, height: 10)
                        Circle()
                            .foregroundColor(.green)
                            .frame(width: 10, height: 10)
                    }.padding(.trailing)
                        .padding(.top, 12)
                    HStack{
                        List{
                            ForEach((1...10), id: \.self){
                                num in
                                Text("\(num)")
                                    .font(.system(.body, design:.monospaced))
                            }
                        }.frame(width: 90)
                        List{
                            Text("")
                                .font(.system(.body, design:.monospaced))
                            Text("var toggleDirection: String = \"left\"")
                                .font(.system(.body, design:.monospaced))
                            Text("")
                                .font(.system(.body, design:.monospaced))
                            Text("if (toggleDirection == \"left\") {")
                                .font(.system(.body, design:.monospaced))
                            Text("  turnScreenLight()")
                                .font(.system(.body, design:.monospaced))
                            Text("}")
                                .font(.system(.body, design:.monospaced))
                            Text("else {")
                                .font(.system(.body, design:.monospaced))
                            Text("  turnScreenDark()")
                                .font(.system(.body, design:.monospaced))
                            Text("}")
                                .font(.system(.body, design:.monospaced))
                            Text("")
                                .font(.system(.body, design:.monospaced))
                        }
                    }
                    HStack{
                        VStack(){
                            HStack{
                                //MARK: Output
                                Text("Output:")
                                    .font(.system(.body, design:.monospaced))
                                
                                Spacer()
                            }.padding(.leading, 12)
                        }.frame(width: 675, height: 40)
                            .background(
                                RoundedRectangle(cornerRadius: 8)
                                    .stroke(.gray)
                                    .shadow(radius: 2)
                            )
                        Spacer()
                        VStack{
                            //MARK: Run
                            Text("Run")
                                .bold()
                                .foregroundColor(.white)
                        }.frame(width: 100, height: 40)
                            .background(
                                RoundedRectangle(cornerRadius: 8)
                                    .fill(.gray)
                                    .shadow(radius: 2)
                            )
                    }.padding(.horizontal)
                }.frame(height: geo.size.height / 2)
                //MARK: Tutorial
                VStack{
                    VStack{
                        HStack{
                            Spacer()
                            Text("Try the Slider!")
                                .font(.title)
                                .bold()
                            Toggle("", isOn: $toggle)
                                .frame(width: 60)
                            Spacer()
                        }
                        .padding(.bottom)
                        
                        Text("**Each time** the toggler is used, a function is **called**.")
                            .font(.title3)
                        Text("**If** the **toggler** is on the left, it will turn light mode, **else**, it will turn dark mode.")
                            .font(.title3)
                        Text("With this program, you could also see a new word in the code environment, **if** and **else**.")
                            .font(.title3)
                            .padding(.bottom)
                        VStack{
                            Text("**IMPORTANT:** Usually, we know what functions do without looking at how it works.")
                                .font(.title3)
                            Text("That is exactly how you should name a function, with showing what it does in the name.")
                                .font(.title3)
                                .padding(.bottom)
                            Text("Back to if and else, **if** and **else** are both very simple to use.")
                                .font(.title3)
                            Text("For example, something a teacher would say would be:")
                                .font(.title3)
                                .padding(.top)
                            Text("\"Your exam score should be above 60 to pass, or **else** you **fail.**\"")
                                .font(.title3)
                        }.padding(.bottom)
                        
                        Text("Let's **translate** it together to code!")
                            .font(.title3)
                        HStack{
                            Text("Press **the**")
                                .font(.title3)
                            Text("**continue**")
                                .font(.title3)
                                .foregroundColor(.blue)
                            Text("**button** below this text to continue learning!")
                                .font(.title3)
                        }
                        
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
                }.frame(height: geo.size.height / 2)
            }
        }.preferredColorScheme(toggle ? .dark : .light)
    }
}

struct DarkModeLightModeView_Previews: PreviewProvider {
    static var previews: some View {
        DarkModeLightModeView(viewIndex: .constant(0))
    }
}
