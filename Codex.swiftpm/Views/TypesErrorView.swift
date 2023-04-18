//
//  TypesErrorView.swift
//  Codex
//
//  Created by Kenny Jinhiro Wibowo on 16/04/23.
//

import SwiftUI

struct TypesErrorView: View {
    @Binding var viewIndex: Int
    @Binding var myName: String
    @Binding var radiusWrongValue: String
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
                                Text("radius = \"")
                                    .font(.system(.body, design:.monospaced))
                                TextField("Radius", text: $radiusWrongValue)
                                    .textFieldStyle(RoundedBorderTextFieldStyle())
                                    .frame(width: 80)
                                    .font(.system(.body, design:.monospaced))
                                Text("\"")
                                    .font(.system(.body, design:.monospaced))
                            }
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
                                .fill(radiusWrongValue.isEmpty ? .gray : .blue)
                                .shadow(radius: 2)
                        )
                        .onTapGesture {
                            if (radiusWrongValue.isEmpty){
                                
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
                            Text("Amazing!")
                                .font(.title)
                                .bold()
                        }
                        .padding(.bottom)
                        Text("Remember though, there are still **more data types to explore**.")
                            .font(.title3)
                        Text("But, to get a grasp of **what data types are**, this exercise is a great introduction!")
                            .font(.title3)
                            .padding(.bottom)
                        
                        Text("As an example, **Char** is for a single letter.")
                            .font(.title3)
                        Text("**List** is for a collection of data values.")
                            .font(.title3)
                        Text("**Double** is for an extended storage of **Float**")
                            .font(.title3)
                        Text("All of these might be overwhelming but do not worry!")
                            .font(.title3)
                            .padding(.bottom)
                        Text("**You** will learn as you make a lot of programs on the get go!")
                            .font(.title3)
                            .padding(.bottom)
                        Text("**Now,** let's try assigning a variable with a **wrong** data type value.")
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

struct TypesErrorView_Previews: PreviewProvider {
    static var previews: some View {
        TypesErrorView(viewIndex: .constant(0), myName: .constant("Steve Jobs"), radiusWrongValue: .constant(""))
    }
}
