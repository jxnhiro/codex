//
//  SwiftUIView.swift
//  
//
//  Created by Kenny Jinhiro Wibowo on 13/04/23.
//

import SwiftUI

struct VariableView: View {
    
    @Binding var viewIndex: Int
    @Binding var myName: String
    
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
                            HStack{
                                Text("var myName = \"")
                                    .font(.system(.body, design:.monospaced))
                                TextField("Steve Jobs", text: $myName)
                                    .textFieldStyle(RoundedBorderTextFieldStyle())
                                    .frame(width: 200)
                                    .font(.system(.body, design:.monospaced))
                                Text("\"")
                                    .font(.system(.body, design:.monospaced))
                            }
                            Text("print(myname)")
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
                                    .fill(myName.isEmpty ? .gray : .blue)
                                    .shadow(radius: 2)
                            )
                        .onTapGesture {
                            if (myName.isEmpty){
                                
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
                            Text("Variables!")
                                .font(.title)
                                .bold()
                        }
                        .padding(.bottom)
                        
                        Text("Variables sound like a fancy word, but it is basically a **container**.")
                            .font(.title3)
                        
                        Text("You can store **numbers**, **words**, even **symbols** in them.")
                            .font(.title3)
                            .padding(.bottom)
                        
                        
                        Text("Let's start by **printing** a variable.")
                            .font(.title3)
                        Text("Type in your name in the **variable**, in **myName**")
                            .font(.title3)
                        
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

struct VariableView_Previews: PreviewProvider {
    static var previews: some View {
        VariableView(viewIndex: .constant(0), myName: .constant("Steve Jobs"))
    }
}
