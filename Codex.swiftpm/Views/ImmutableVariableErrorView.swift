//
//  ImmutableVariableErrorView.swift
//  Codex
//
//  Created by Kenny Jinhiro Wibowo on 14/04/23.
//

import SwiftUI

struct ImmutableVariableErrorView: View {
    @Binding var viewIndex: Int
    @Binding var mySuperhero: String
    
    @State var inPage: Bool = false
    @State var offset = 200.0
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
                            ForEach((1...3), id: \.self){
                                num in
                                Text("\(num)")
                                    .font(.system(.body, design:.monospaced))
                            }
                            Text("4")
                                .font(.system(.body, design:.monospaced))
                                .foregroundColor(.white)
                                .background(
                                    Circle()
                                        .fill(.red)
                                        .frame(width: 24, height: 24)
                                        .onAppear{
                                            inPage = true
                                        }
                                        .scaleEffect(!inPage ? 0.8:1)
                                        .animation(Animation.easeIn, value: inPage)
                                    
                                )
                            ForEach((5...10), id: \.self){
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
                                Text("superheroName = \"\(mySuperhero)\"")
                                    .font(.system(.body, design:.monospaced))
                                Spacer()
                                //MARK: Slide animation
                                Text(" ERROR: '\(mySuperhero)' is a let constant. ")
                                    .font(.system(size: 12, design: .monospaced))
                                    .foregroundColor(.white)
                                    .background(RoundedRectangle(cornerRadius: 4).fill(.red)
                                        .frame(height: 24))
                                    .padding(.trailing, 8)
                                    .onAppear{
                                        offset = 0
                                    }
                                    .offset(x: offset, y: 0.0)
                                    .animation(Animation.easeIn, value: offset)
                                
                                
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
                                Text("ERROR: '\(mySuperhero)' is a let constant.")
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
                            Text("Uh Oh!")
                                .font(.title)
                                .bold()
                        }
                        .padding(.bottom)
                        
                        Text("Since **superheroName** is **immutable**, error is produced if we try to change the **value**!")
                            .font(.title3)
                            .padding(.bottom)
                        
                        Text("**Important**: Use immutable variables for unchangable values.")
                            .font(.title3)
                        Text("An example of an immutable variable or **constant** would be **pi** (π).")
                            .font(.title3)
                        
                        HStack{
                            Text("Press **the**")
                                .font(.title3)
                            Text("**continue**")
                                .font(.title3)
                                .foregroundColor(.blue)
                            Text("**button** below this text to continue learning!")
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

struct ImmutableVariableErrorView_Previews: PreviewProvider {
    static var previews: some View {
        ImmutableVariableErrorView(viewIndex: .constant(0), mySuperhero: .constant("Batman"))
    }
}
