//
//  ElseIfPrintView.swift
//  Codex
//
//  Created by Kenny Jinhiro Wibowo on 18/04/23.
//

import SwiftUI

struct ElseIfPrintView: View {
    @Binding var viewIndex: Int
    
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
                            Text("var color: String = \"blue\"")
                                .font(.system(.body, design:.monospaced))
                            
                            Text("if (color == \"blue\") {")
                                .font(.system(.body, design: .monospaced))
                            Text("  print(\"Blue!\")")
                                .font(.system(.body, design:.monospaced))
                            Text("}")
                                .font(.system(.body, design:.monospaced))
                            Text("else if (color == \"green\") {")
                                .font(.system(.body, design:.monospaced))
                            Text("  print(\"Green!\")")
                                .font(.system(.body, design:.monospaced))
                            Text("}")
                                .font(.system(.body, design:.monospaced))
                            Text("else {")
                                .font(.system(.body, design:.monospaced))
                            Text("  print(\"Red!\")")
                                .font(.system(.body, design:.monospaced))
                            Text("}")
                                .font(.system(.body, design:.monospaced))
                        }
                    }
                    HStack{
                        VStack(){
                            HStack{
                                //MARK: Output
                                Text("Output: Blue!")
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
                                .fill(.gray)
                                .shadow(radius: 2)
                        )
                        .onTapGesture{
                            
                        }
                    }.padding(.horizontal)
                }.frame(height: geo.size.height / 2)
                //MARK: Tutorial
                VStack{
                    VStack{
                        HStack{
                            Text("Correct!")
                                .font(.title)
                                .bold()
                        }
                        .padding(.bottom)
                        VStack{
                            Text("**Wow! You have come so far!**")
                                .font(.title3)
                            Text("You have learnt so much about the basics of **programming**.")
                                .font(.title3)
                            Text("**Variables**, **data types**, **functions**, and **conditions**.")
                                .font(.title3)
                                .padding(.bottom)
                            Text("**Programming** has so much to uncover, and it will be fun!")
                                .font(.title3)
                        }.padding(.bottom)
                        
                        Text("For the last project, we will make a **mini keyboard**.")
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
                }.frame(height: geo.size.height / 2)
            }
        }
    }
}

struct ElseIfPrintView_Previews: PreviewProvider {
    static var previews: some View {
        ElseIfPrintView(viewIndex: .constant(0))
    }
}
