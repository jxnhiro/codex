//
//  VariableErrorView.swift
//  Codex
//
//  Created by Kenny Jinhiro Wibowo on 13/04/23.
//

import SwiftUI

struct ImmutableVariableView: View {
    @Binding var viewIndex: Int
    @Binding var mySuperhero: String
    
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
                            Text("let superheroName = \"Superman\"")
                                .font(.system(.body, design:.monospaced))
                            HStack{
                                Text("superheroName = \"")
                                    .font(.system(.body, design:.monospaced))
                                TextField("Batman", text: $mySuperhero)
                                    .textFieldStyle(RoundedBorderTextFieldStyle())
                                    .frame(width: 200)
                                    .font(.system(.body, design:.monospaced))
                                Text("\"")
                                    .font(.system(.body, design:.monospaced))
                            }
                            Text("print(superheroName)")
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
                                    .fill(mySuperhero.isEmpty ? .gray : .blue)
                                    .shadow(radius: 2)
                            )
                        .onTapGesture {
                            if (mySuperhero.isEmpty){
                                
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
                            Text("Immutable Variables!")
                                .font(.title)
                                .bold()
                        }
                        .padding(.bottom)
                        
                        Text("In the last segment, we could initiate a mutable variable with **var**.")
                            .font(.title3)
                        
                        Text("**Immutable**, on the other hand, means **unchangable**.")
                            .font(.title3)
                            .padding(.bottom)
                        
                        
                        Text("**let** is the word to use to make a variable **immutable**.")
                            .font(.title3)
                        Text("Try typing in your favorite superhero in the **variable**, in **superheroName**")
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

struct ImmutableVariableView_Previews: PreviewProvider {
    static var previews: some View {
        ImmutableVariableView(viewIndex: .constant(0), mySuperhero: .constant("Batman"))
    }
}
