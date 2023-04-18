//
//  TypesErrorPrintView.swift
//  Codex
//
//  Created by Kenny Jinhiro Wibowo on 17/04/23.
//

import SwiftUI

struct TypesErrorPrintView: View {
    @Binding var viewIndex: Int
    @Binding var myName: String
    @Binding var radiusWrongValue: String
    
    @State var offset = 200.0
    @State var inPage: Bool = false
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
                            ForEach((1...6), id: \.self){
                                num in
                                Text("\(num)")
                                    .font(.system(.body, design:.monospaced))
                            }
                            Text("7")
                                .foregroundColor(.white)
                                .font(.system(.body, design: .monospaced))
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
                            ForEach((8...11), id: \.self){
                                num in
                                Text("\(num)")
                                    .font(.system(.body, design:.monospaced))
                            }
                        }.frame(width: 90)
                        List{
                            Text("")
                                .italic()
                                .font(.system(.body, design:.monospaced))
                            Text("")
                                .font(.system(.body, design:.monospaced))
                            Text("let myName: String = \"\(myName)\"")
                                .font(.system(.body, design:.monospaced))
                            HStack{
                                Text("let pi: Float = 3.14")
                                    .font(.system(.body, design:.monospaced))
                                Text("//This is a constant.")
                                    .italic()
                                    .font(.system(.body, design:.monospaced))
                            }
                            HStack{
                                Text("var radius: Int = 9")
                                    .font(.system(.body, design:.monospaced))
                                Text("//This is mutable.")
                                    .italic()
                                    .font(.system(.body, design:.monospaced))
                            }
                            Text("")
                                .font(.system(.body, design:.monospaced))
                            HStack{
                                Text("radius = \"\(radiusWrongValue)\"")
                                    .font(.system(.body,
                                                  design: .monospaced))
                                Spacer()
                                //MARK: Slide animation
                                Text(" ERROR: Cannot assign value of 'String' to 'Int'")
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
                            HStack{
                                Text("radius = 4")
                                    .font(.system(.body, design:.monospaced))
                                Text("//This is the correct way.")
                                    .italic()
                                    .font(.system(.body, design:.monospaced))
                            }
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
                                Text("Output: Cannot assign value of 'String' to 'Int'")
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
                        Text("You can only reassign values which are the same type as what it is assigned to.")
                            .font(.title3)
                        Text("The right way to re-assign 'radius' can be seen in **Line 7**.")
                            .font(.title3)
                            .padding(.bottom)
                        
                        Text("**Int** variables should be given **Int** values.")
                            .font(.title3)
                        Text("**String** variables should be given **String** values.")
                            .font(.title3)
                        Text("**Float** variables should be given **Float** values.")
                            .font(.title3)
                            .padding(.bottom)
                        Text("This is **the best practice** a programmer should do!")
                            .font(.title3)
                        Text("Each datatype has its own purpose and is handled differently within a program.")
                            .font(.title3)
                            .padding(.top)
                        
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
                            
                        }.padding(.top)
                        
                    }.padding(.horizontal)
                }.frame(height: geo.size.height / 2)
            }
        }
    }
}

struct TypesErrorPrintView_Previews: PreviewProvider {
    static var previews: some View {
        TypesErrorPrintView(viewIndex: .constant(0), myName: .constant("Steve Jobs"), radiusWrongValue: .constant("Radius"))
    }
}
