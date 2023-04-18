//
//  ElseIfView.swift
//  Codex
//
//  Created by Kenny Jinhiro Wibowo on 18/04/23.
//

import SwiftUI

struct ElseIfView: View {
    @Binding var viewIndex: Int
    
    @State var firstIf: String = ""
    @State var firstElse: String = ""
    @State var firstEqualsTo: String = ""
    @State var secondEqualsTo: String = ""
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
                            Text("var color: String = \"blue\"")
                                .font(.system(.body, design:.monospaced))
                            HStack{
                                Text("")
                                TextField("if", text: $firstIf)
                                    .textFieldStyle(RoundedBorderTextFieldStyle())
                                    .frame(width: 40)
                                    .font(.system(.body, design:.monospaced))
                                Text(" (color")
                                    .font(.system(.body, design: .monospaced))
                                TextField("==", text: $firstEqualsTo)
                                    .textFieldStyle(RoundedBorderTextFieldStyle())
                                    .frame(width: 40)
                                    .font(.system(.body, design:.monospaced))
                                Text("\"blue\") {")
                                    .font(.system(.body, design:.monospaced))
                            }
                            Text("  print(\"Blue!\")")
                                .font(.system(.body, design:.monospaced))
                            Text("}")
                                .font(.system(.body, design:.monospaced))
                            HStack{
                                Text("else if (color")
                                    .font(.system(.body, design:.monospaced))
                                TextField("==", text: $secondEqualsTo)
                                    .textFieldStyle(RoundedBorderTextFieldStyle())
                                    .frame(width: 40)
                                    .font(.system(.body, design:.monospaced))
                                Text("\"green\") {")
                                    .font(.system(.body, design:.monospaced))
                            }
                            Text("  print(\"Green!\")")
                                .font(.system(.body, design:.monospaced))
                            Text("}")
                                .font(.system(.body, design:.monospaced))
                            HStack{
                                Text("")
                                    .font(.system(.body, design:.monospaced))
                                TextField("else", text: $firstElse)
                                    .textFieldStyle(RoundedBorderTextFieldStyle())
                                    .frame(width: 80)
                                    .font(.system(.body, design:.monospaced))
                                Text("{")
                                    .font(.system(.body, design:.monospaced))
                            }
                            Text("print(\"Red!\")")
                                .font(.system(.body, design:.monospaced))
                            Text("}")
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
                                .fill(firstIf == "if" && firstElse == "else" && firstEqualsTo == "==" && secondEqualsTo == "==" ? .blue : .gray)
                                .shadow(radius: 2)
                        )
                        .onTapGesture{
                            if (firstIf == "if" && firstElse == "else" && firstEqualsTo == "==" && secondEqualsTo == "=="){
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
                            Text("Else If!")
                                .font(.title)
                                .bold()
                        }
                        .padding(.bottom)
                        VStack{
                            Text("**In the scenario above, there are **more than 2 criterias.**")
                                .font(.title3)
                            Text("If the color is blue, we want to print 'Blue!'.")
                                .font(.title3)
                            Text("If the color is green, we want to print 'Green!'.")
                                .font(.title3)
                            Text("Other than that, we want to print 'Red!'.")
                                .font(.title3)
                        }.padding(.bottom)
                        
                        Text("To add another criteria other than **if** and **else**, use **else if**")
                            .font(.title3)
                        
                        Text("Complete the code in the blanks!")
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
                        }.padding(.bottom)
                        HStack{
                            Text("If you are done, press **the**")
                                .font(.title3)
                            Text("**run**")
                                .font(.title3)
                                .foregroundColor(.blue)
                            Text("**button** to see the output!")
                                .font(.title3)
                        }
                    }.padding(.horizontal)
                }.frame(height: geo.size.height / 2)
            }
        }
    }
}

struct ElseIfView_Previews: PreviewProvider {
    static var previews: some View {
        ElseIfView(viewIndex: .constant(0))
    }
}
