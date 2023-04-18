//
//  CircleFixView.swift
//  Codex
//
//  Created by Kenny Jinhiro Wibowo on 15/04/23.
//

import SwiftUI

struct CircleFixView: View {
    
    @Binding var viewIndex: Int
    
    @State var firstVariableKeyword: String = ""
    @State var secondVariableKeyword: String = ""
    
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
                            Text("//The initiation for Circle O' Meter")
                                .italic()
                                .font(.system(.body, design:.monospaced))
                            Text("")
                                .font(.system(.body, design:.monospaced))
                            Text("let programTitle = \"Circle O'Meter\"")
                                .font(.system(.body, design:.monospaced))
                            HStack{
                                Text("")
                                TextField("", text: $firstVariableKeyword)
                                    .textFieldStyle(RoundedBorderTextFieldStyle())
                                    .frame(width: 60)
                                    .font(.system(.body, design:.monospaced))
                                Text("pi = 3.14")
                                    .font(.system(.body, design:.monospaced))
                                Text("//This is a constant.")
                                    .italic()
                                    .font(.system(.body, design:.monospaced))
                            }
                            HStack{
                                Text("")
                                TextField("", text: $secondVariableKeyword)
                                    .textFieldStyle(RoundedBorderTextFieldStyle())
                                    .frame(width: 60)
                                    .font(.system(.body, design:.monospaced))
                                Text("diameter = 18")
                                    .font(.system(.body, design:.monospaced))
                                Text("//This is mutable.")
                                    .italic()
                                    .font(.system(.body, design:.monospaced))
                            }
                            HStack{
                                Text("var area = pi * diameter")
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
                        }
                    }
                    HStack{
                        VStack(){
                            HStack{
                                //MARK: Output
                                Text("Output: ")
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
                        }
                        .frame(width: 100, height: 40)
                        .background(
                            RoundedRectangle(cornerRadius: 8)
                                .fill(firstVariableKeyword == "let" && secondVariableKeyword == "var" ? .blue : .gray)
                                .shadow(radius: 2)
                        )
                        .onTapGesture {
                            if(firstVariableKeyword == "let" && secondVariableKeyword == "var" ){
                                viewIndex = viewIndex + 1
                            }else{
                                
                            }
                        }
                    }.padding(.horizontal)
                }.frame(height: geo.size.height / 2)
                //MARK: Tutorial
                VStack{
                    VStack{
                        HStack{
                            Text("Let's Fix the Circle O' Meter!")
                                .font(.title)
                                .bold()
                        }
                        .padding(.bottom)
                        
                        Text("The broken program could **successfully** illustrate a circle.")
                            .font(.title3)
                        
                        Text("**But,** the program **could not compute** the area of the circle.")
                            .font(.title3)
                            .padding(.bottom)
                        
                        Text("There are several tips to help you:")
                            .font(.title3)
                            .padding(.bottom)
                        Text("**Pi** or π, is **always** 3.14 **pi** is a **constant.**")
                            .font(.title3)
                        Text("**Diameter**, is optional, **but if its 0**, the circle would not have any area.**")
                            .font(.title3)
                        HStack{
                            Text("The **run** button will turn")
                                .font(.title3)
                            Text("**blue**")
                                .font(.title3)
                                .foregroundColor(.blue)
                            Text("if you input the right words.")
                                .font(.title3)
                        }.padding(.top)
                        HStack{
                            Text("The **run** button will turn")
                                .font(.title3)
                            Text("**gray**")
                                .font(.title3)
                                .foregroundColor(.gray)
                            Text("if you input the wrong words.")
                                .font(.title3)
                        }
                        HStack{
                            Text("If you are done, press **the**")
                                .font(.title3)
                            Text("**run**")
                                .font(.title3)
                                .foregroundColor(.blue)
                            Text("**button** to see the output!")
                                .font(.title3)
                        }.padding(.top)
                        
                    }.padding(.horizontal)
                }.frame(height: geo.size.height / 2)
            }
        }
    }
}

struct CircleFixView_Previews: PreviewProvider {
    static var previews: some View {
        CircleFixView(viewIndex: .constant(0))
    }
}
