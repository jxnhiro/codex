//
//  SwiftUIView.swift
//  
//
//  Created by Kenny Jinhiro Wibowo on 12/04/23.
//

import SwiftUI

struct IntroView: View {
    
    @Binding var viewIndex: Int
    @Binding var printText: String
    
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
                            Text("")
                                .font(.system(.body, design:.monospaced))
                            Text("")
                                .font(.system(.body, design:.monospaced))
                            HStack{
                                Text("print(\"").font(.system(.body, design:.monospaced))
                                //TextBox
                                TextField("Programming is fun!", text: $printText)
                                    .textFieldStyle(RoundedBorderTextFieldStyle())
                                    .frame(width: 250)
                                    .font(.system(.body, design:.monospaced))
                                Text("\")")
                                    .font(.system(.body, design:.monospaced))
                            }
                            Text("")
                                .font(.system(.body, design:.monospaced))
                            Text("")
                                .font(.system(.body, design:.monospaced))
                            Text("")
                                .font(.system(.body, design:.monospaced))
                            Text("")
                                .font(.system(.body, design:.monospaced))
                            Text("")
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
                            //MARK: Run - Interact
                            Text("Run")
                                .bold()
                                .foregroundColor(.white)
                        }
                        .frame(width: 100, height: 40)
                        .background(
                            RoundedRectangle(cornerRadius: 8)
                                .fill(printText.isEmpty == true ? .gray : .blue)
                                .shadow(radius: 2)
                        )
                        .onTapGesture {
                            if (printText.isEmpty){
                                
                            }else{
                                viewIndex = viewIndex + 1
                            }
                        }
                    }.padding(.horizontal)
                }.frame(height: geo.size.height / 2)
                //MARK: Tutorial
                VStack{
                    VStack{
                        HStack{
                            Text("Welcome to Codex")
                                .font(.title)
                                .bold()
                        }
                        .padding(.bottom)
                        
                        Text("Do you know that you can instruct a computer on what to do?")
                            .font(.title3)
                        Text("There are many languages of instructions, and now we are using **Swift**!")
                            .padding(.bottom)
                            .font(.title3)
                        
                        VStack{
                            Text("Inside this **application** we will build **cool** programs with your instructions, **so follow on!**")
                                .font(.title3)
                                .padding(.bottom)
                        }
                        
                        Text("For introduction, line of instructions, are called a **code**.")
                            .font(.title3)
                        
                        Text("A **print function** is one of the instructions.")
                            .font(.title3)
                        Text("You could tell the computer to say whatever word you like, even numbers!")
                            .font(.title3)
                            .padding(.bottom)
                        HStack{
                            Text("Try writing anything in the box in the **print** function, then")
                        }.font(.title3)
                        HStack{
                            Text(" press **the**")
                                .font(.title3)
                            Text("**run**")
                                .font(.title3)
                                .foregroundColor(.blue)
                            Text("**button** to see the output!")
                                .font(.title3)
                        }
                        HStack{
                            Text("If the button is still")
                                .font(.title3)
                            Text("**gray**")
                                .font(.title3)
                                .foregroundColor(.gray)
                            Text("then you still have not done the instructions **properly.**")
                                .font(.title3)
                        }
                            .padding(.top)
                    }.padding(.horizontal)
                }.frame(height: geo.size.height / 2)
            }
        }
    }
}

struct IntroView_Previews: PreviewProvider {
    static var previews: some View {
        IntroView(viewIndex: .constant(0), printText: .constant("Programming is Fun!"))
    }
}
