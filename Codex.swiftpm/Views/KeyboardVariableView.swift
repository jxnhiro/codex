//
//  KeyboardVariableView.swift
//  Codex
//
//  Created by Kenny Jinhiro Wibowo on 18/04/23.
//

import SwiftUI

struct KeyboardVariableView: View {
    @Binding var viewIndex: Int
    
    @State var firstIf: String = ""
    @State var firstEqualsTo: String = ""
    @State var firstElse: String = ""
    @State var secondIf: String = ""
    @State var secondEqualsTo: String = ""
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
                            Text("var textBox: String = \"\"")
                                .font(.system(.body, design:.monospaced))
                            HStack{
                                Text("")
                                    .font(.system(.body, design:.monospaced))
                                TextField("", text: $firstIf)
                                    .textFieldStyle(RoundedBorderTextFieldStyle())
                                    .frame(width: 60)
                                    .font(.system(.body, design:.monospaced))
                                Text("keyPressed ")
                                    .font(.system(.body, design:.monospaced))
                                TextField("", text: $firstEqualsTo)
                                    .textFieldStyle(RoundedBorderTextFieldStyle())
                                    .frame(width: 80)
                                    .font(.system(.body, design:.monospaced))
                                Text("\"a\" {")
                                    .font(.system(.body, design:.monospaced))
                            }
                            Text("  textBox = textBox + \"a\"")
                                .font(.system(.body, design:.monospaced))
                            Text("}")
                                .font(.system(.body, design:.monospaced))
                            HStack{
                                Text("")
                                    .font(.system(.body, design:.monospaced))
                                TextField("", text: $firstElse)
                                    .textFieldStyle(RoundedBorderTextFieldStyle())
                                    .frame(width: 60)
                                    .font(.system(.body, design:.monospaced))
                                TextField("", text: $secondIf)
                                    .textFieldStyle(RoundedBorderTextFieldStyle())
                                    .frame(width: 60)
                                    .font(.system(.body, design:.monospaced))
                                Text("keyPressed")
                                    .font(.system(.body, design:.monospaced))
                                TextField("", text: $secondEqualsTo)
                                    .textFieldStyle(RoundedBorderTextFieldStyle())
                                    .frame(width: 80)
                                    .font(.system(.body, design:.monospaced))
                                Text("\"b\" {")
                                    .font(.system(.body, design:.monospaced))
                            }
                            Text("  textBox = textBox + \"b\"")
                                .font(.system(.body, design:.monospaced))
                            Text("}")
                                .font(.system(.body, design:.monospaced))
                            HStack{
                                Text("else if keyPressed == \"c\" {")
                                    .font(.system(.body, design:.monospaced))
                            }
                            Text("  textBox = textBox + \"c\"")
                                .font(.system(.body, design:.monospaced))
                            Text("}")
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
                                .fill(firstIf == "if" && firstEqualsTo == "==" && firstElse == "else" && secondIf == "if" && secondEqualsTo == "==" ? .blue : .gray)
                                .shadow(radius: 2)
                        )
                        .onTapGesture {
                            if (firstIf == "if" && firstEqualsTo == "==" && firstElse == "else" && secondIf == "if" && secondEqualsTo == "=="){
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
                            Text("Fix the Mini Keyboard!")
                                .font(.title)
                                .bold()
                        }
                        .padding(.bottom)
                        
                        Text("**IMPORTANT:** Leave the **else** for the backspace.")
                            .font(.title3)
                        
                        Text("**Only put if and else if** for each keyPressed for **a, b, and c.**")
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

struct KeyboardVariableView_Previews: PreviewProvider {
    static var previews: some View {
        KeyboardVariableView(viewIndex: .constant(0))
    }
}
