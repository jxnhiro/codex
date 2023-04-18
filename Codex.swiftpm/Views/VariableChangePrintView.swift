//
//  SwiftUIView.swift
//  
//
//  Created by Kenny Jinhiro Wibowo on 13/04/23.
//

import SwiftUI

struct VariableChangePrintView: View {
    
    @Binding var viewIndex: Int
    @Binding var printedName: String
    @Binding var myChangedName: String
    
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
                            Text("var myName = \"\(printedName)\"")
                                .font(.system(.body, design:.monospaced))
                            Text("myName = \"\(myChangedName)\"")
                                .font(.system(.body, design:.monospaced))
                            Text("print(myName)")
                                .font(.system(.body, design:.monospaced))
                            Text("")
                                .font(.system(.body, design:.monospaced))
                            Text("")
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
                                Text("Output: \(myChangedName)")
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
                        .onTapGesture {
                            
                        }
                    }.padding(.horizontal)
                }.frame(height: geo.size.height / 2)
                //MARK: Tutorial
                VStack{
                    VStack{
                        HStack{
                            Text("Mutable Variables!")
                                .font(.title)
                                .bold()
                        }
                        .padding(.bottom)
                        Text("Tada! You have **changed** and **printed** a different name from **myName**!")
                            .font(.title3)
                            .padding(.bottom)
                        Text("Again, **mutate** is to change.")
                            .font(.title3)
                        Text("And, the way to do change the inside of a variable, which is called a **value**")
                            .font(.title3)
                        
                        Text("is to **call the variable name**, which is **myName** and reassign a **value**.")
                            .font(.title3)
                            .padding(.bottom)
                        
                        
                        HStack{
                            Text("Alright, if you are ready, press **the**")
                                .font(.title3)
                            Text("**continue**")
                                .font(.title3)
                                .foregroundColor(.blue)
                            Text("**button** below to continue learning!")
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

struct VariableChangePrintView_Previews: PreviewProvider {
    static var previews: some View {
        VariableChangePrintView(viewIndex: .constant(0), printedName: .constant("Steve Jobs") , myChangedName: .constant("Tim Cook"))
    }
}
