//
//  FunctionsPrintView.swift
//  Codex
//
//  Created by Kenny Jinhiro Wibowo on 17/04/23.
//

import SwiftUI

struct FunctionsPrintView: View {
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
                            Text("")
                                .font(.system(.body, design:.monospaced))
                            Text("func sayHello() {")
                                .font(.system(.body, design:.monospaced))
                            Text("  var name: String = \"Steve Jobs\"")
                                .font(.system(.body, design:.monospaced))
                            Text("  var age: Int = 18")
                                .font(.system(.body, design:.monospaced))
                            Text("  var hobby: String = \"Design\"")
                                .font(.system(.body, design:.monospaced))
                            Text("  print(\"Hi, I'm \", name, \" I am \", age, \" years old.\"")
                                .font(.system(.body, design:.monospaced))
                            Text("}")
                                .font(.system(.body, design:.monospaced))
                            Text("")
                                .font(.system(.body, design:.monospaced))
                            Text("sayHello()")
                                .font(.system(.body, design:.monospaced))
                            Text("")
                                .font(.system(.body, design:.monospaced))
                        }
                    }
                    HStack{
                        VStack(){
                            HStack{
                                //MARK: Output
                                Text("Output: Hi, I'm Steve Jobs, I am 18 years old.")
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
                            Text("Functions!")
                                .font(.title)
                                .bold()
                        }
                        .padding(.bottom)
                        
                        Text("**Now**, you understand that functions **can be used to call a bunch of codes.**")
                            .font(.title3)
                        
                        Text("**Call an available function** and all the code inside the function will run.")
                            .font(.title3)
                            .padding(.bottom)
                        
                        Text("**Functions** don't only work with printing an output.")
                            .font(.title3)
                        Text("**Functions** could return a **String**, **Int**, **Float**, and others.")
                            .font(.title3)
                        Text("But, this sole introduction will give you what a function **does**.")
                            .font(.title3)
                            .padding(.bottom)
                        Text("Let's see an **example** of how functions work in a toggler.")
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
        }
    }
}

struct FunctionsPrintView_Previews: PreviewProvider {
    static var previews: some View {
        FunctionsPrintView(viewIndex: .constant(0))
    }
}
