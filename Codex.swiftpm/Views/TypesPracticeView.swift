//
//  TypesPracticeView.swift
//  Codex
//
//  Created by Kenny Jinhiro Wibowo on 16/04/23.
//

import SwiftUI

struct TypesPracticeView: View {
    @Binding var viewIndex: Int
    @Binding var myName: String
    
    @State var intDataType: String = ""
    @State var floatDataType: String = ""
    @State var stringDataType: String = ""
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
                            HStack{
                                Text("let myName: ")
                                    .font(.system(.body, design:.monospaced))
                                TextField("", text: $stringDataType)
                                    .textFieldStyle(RoundedBorderTextFieldStyle())
                                    .frame(width: 80)
                                    .font(.system(.body, design:.monospaced))
                                Text(" = \"\(myName)\"")
                                    .font(.system(.body, design:.monospaced))
                            }
                            HStack{
                                Text("let pi: ")
                                    .font(.system(.body, design:.monospaced))
                                TextField("", text: $floatDataType)
                                    .textFieldStyle(RoundedBorderTextFieldStyle())
                                    .frame(width: 80)
                                    .font(.system(.body, design:.monospaced))
                                Text(" = 3.14")
                                    .font(.system(.body, design:.monospaced))
                                Text("//This is a constant.")
                                    .italic()
                                    .font(.system(.body, design:.monospaced))
                            }
                            HStack{
                                Text("var radius: ")
                                    .font(.system(.body, design:.monospaced))
                                TextField("", text: $intDataType)
                                    .textFieldStyle(RoundedBorderTextFieldStyle())
                                    .frame(width: 80)
                                    .font(.system(.body, design:.monospaced))
                                Text(" = 9")
                                    .font(.system(.body, design:.monospaced))
                                Text("//This is mutable.")
                                    .italic()
                                    .font(.system(.body, design:.monospaced))
                            }
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
                                .fill(stringDataType == "String" && floatDataType == "Float" && intDataType == "Int" ? .blue : .gray)
                                .shadow(radius: 2)
                        )
                        .onTapGesture {
                            if (stringDataType == "String" && floatDataType == "Float" && intDataType == "Int"){
                                viewIndex = viewIndex + 1
                            } else{
                                
                            }
                        }
                    }.padding(.horizontal)
                }.frame(height: geo.size.height / 2)
                //MARK: Tutorial
                VStack{
                    VStack{
                        HStack{
                            Text("Data Types: Fill in the Blanks!")
                                .font(.title)
                                .bold()
                        }
                        .padding(.bottom)
                        Text("Again, there are variable values which have the **\"\"** symbol on them.")
                            .font(.title3)
                        Text("There are variable values which do **not** have the **\"\"** symbol on them.")
                            .font(.title3)
                            .padding(.bottom)
                        Text("The ones which have quote symbol (*\"\"*) have **words**.")
                            .font(.title3)
                        
                        Text("Meanwhile, the ones which have no quote symbol have **numbers or decimals**.")
                            .font(.title3)
                            .padding(.bottom)
                        
                        
                        Text("Words as variable values are **String**")
                            .font(.title3)
                        Text("Numbers (without decimal) as variable values are **Int** (integers)")
                            .font(.title3)
                        Text("Numbers (**with** decimal) as variable values are **Float**")
                            .font(.title3)
                            .padding(.bottom)
                        VStack{
                            HStack{
                                Text("The **run** button will turn")
                                    .font(.title3)
                                Text("**blue**")
                                    .font(.title3)
                                    .foregroundColor(.blue)
                                Text("if you input the right words.")
                                    .font(.title3)
                            }.padding(.top)
                            HStack{
                                Text("The **run** button will turn")
                                    .font(.title3)
                                Text("**gray**")
                                    .font(.title3)
                                    .foregroundColor(.gray)
                                Text("if you input the wrong words.")
                                    .font(.title3)
                            }
                        }
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

struct TypesPracticeView_Previews: PreviewProvider {
    static var previews: some View {
        TypesPracticeView(viewIndex: .constant(0), myName: .constant("Steve Jobs"))
    }
}
