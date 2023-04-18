//
//  SwiftUIView.swift
//  
//
//  Created by Kenny Jinhiro Wibowo on 13/04/23.
//

import SwiftUI

struct FirstProgramView: View {
    
    @Binding var viewIndex: Int
    @Binding var printedText: String
    
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
                            Text("print(\"\(printedText)\")")
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
                                Text("Output: \(printedText)")
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
                        }.frame(width: 100, height: 40)
                            .background(
                                RoundedRectangle(cornerRadius: 8)
                                    .fill(.gray)
                                    .shadow(radius: 2)
                            )
                    }.padding(.horizontal)
                }.frame(height: geo.size.height / 2)
                //MARK: Tutorial
                VStack{
                    VStack{
                        HStack{
                            Text("Your First Program!")
                                .font(.title)
                                .bold()
                        }
                        .padding(.bottom)
                        
                        Text("You have instructed a computer to do your instructions!")
                            .font(.title3)
                        
                        Text("**Computers** can do **anything** you can possibly imagine with a **good instruction!**")
                            .font(.title3)
                            .padding(.bottom)
                        
                        Text("Hence, let us learn the basics, which would definitely help you.")
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

struct FirstProgramView_Previews: PreviewProvider {
    static var previews: some View {
        FirstProgramView(viewIndex: .constant(0), printedText: .constant("Hello World!"))
    }
}
