//
//  FunctionsView.swift
//  Codex
//
//  Created by Kenny Jinhiro Wibowo on 17/04/23.
//

import SwiftUI

struct FunctionsView: View {
    @Binding var viewIndex: Int
    
    @State var functionVariable: String = ""
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
                            HStack{
                                Text("")
                                TextField("sayHello()", text: $functionVariable)
                                    .textFieldStyle(RoundedBorderTextFieldStyle())
                                    .frame(width: 180)
                                    .font(.system(.body, design:.monospaced))
                            }
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
                                    .fill(functionVariable == "sayHello()" ? .blue : .gray)
                                    .shadow(radius: 2)
                        )
                        .onTapGesture{
                            if (functionVariable == "sayHello()"){
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
                            Text("Functions!")
                                .font(.title)
                                .bold()
                        }
                        .padding(.bottom)
                        
                        Text("**Functions** are basically compacted code.")
                            .font(.title3)
                        
                        Text("**Call the function** and all the code inside the function will run.")
                            .font(.title3)
                            .padding(.bottom)
                        
                        Text("Let's try calling a **simple** function.")
                            .font(.title3)
                        Text("Call the function by **it's name followed with a ()**.")
                            .font(.title3)
                            .padding(.bottom)
                        Text("In this case, type **'sayHello()'** in the field and run the program.")
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

struct FunctionsView_Previews: PreviewProvider {
    static var previews: some View {
        FunctionsView(viewIndex: .constant(0))
    }
}
