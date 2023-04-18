//
//  IfGradeView.swift
//  Codex
//
//  Created by Kenny Jinhiro Wibowo on 17/04/23.
//

import SwiftUI

struct IfGradeView: View {
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
                            Text("")
                                .font(.system(.body, design:.monospaced))
                            Text("if (grade > 60) {")
                                .font(.system(.body, design:.monospaced))
                            Text("  print(\"Pass\")")
                                .font(.system(.body, design:.monospaced))
                            Text("}")
                                .font(.system(.body, design:.monospaced))
                            Text("else {")
                                .font(.system(.body, design:.monospaced))
                            Text("  print(\"Fail\")")
                                .font(.system(.body, design:.monospaced))
                            Text("}")
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
                            Text("If and Else!")
                                .font(.title)
                                .bold()
                        }
                        .padding(.bottom)
                        
                        Text("**The code above** translates the teacher's statements into code.")
                            .font(.title3)
                        Text("**As long as the code inside the if brackets are true,** the code inside it will run.")
                            .font(.title3)
                        Text("**If the code inside the if brackets are false,** the code in the else block will run.")
                            .font(.title3)
                        Text("**Now,** have already seen two comparison symbols.")
                            .font(.title3)
                        Text("**>** which is **more than**")
                            .font(.title3)
                        
                        Text("**==** which is **equal to**")
                            .font(.title3)
                            .padding(.bottom)
                        VStack{
                            Text("**We** will focus to **==**, but there are several important ones to introduce.")
                                .font(.title3)
                            Text("**!=** means not equal to")
                                .font(.title3)
                            Text("**<** means less than")
                                .font(.title3)
                            Text("**&&** means and")
                                .font(.title3)
                            Text("**||** means or")
                                .font(.title3)
                            Text("**and much more.**")
                                .font(.title3)
                        }.padding(.bottom)
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

struct IfGradeView_Previews: PreviewProvider {
    static var previews: some View {
        IfGradeView(viewIndex: .constant(0))
    }
}
