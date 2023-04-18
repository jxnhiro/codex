//
//  SwiftUIView.swift
//  
//
//  Created by Kenny Jinhiro Wibowo on 13/04/23.
//

import SwiftUI

struct VariablePrintView: View {
    
    @Binding var viewIndex: Int
    @Binding var printedName: String
    @Binding var myChangedName: String
    
    @State var variableName: String = ""
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
                            HStack{
                                Text("myName = \"")
                                    .font(.system(.body, design:.monospaced))
                                TextField("Tim Cook", text: $myChangedName)
                                    .textFieldStyle(RoundedBorderTextFieldStyle())
                                    .frame(width: 200)
                                    .font(.system(.body, design:.monospaced))
                                Text("\"")
                                    .font(.system(.body, design:.monospaced))
                            }
                            HStack{
                                Text("print(")
                                    .font(.system(.body, design:.monospaced))
                                TextField("myName", text: $variableName)
                                    .textFieldStyle(RoundedBorderTextFieldStyle())
                                    .frame(width: 80)
                                    .font(.system(.body, design:.monospaced))
                                Text(")")
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
                                Text("Output: \(printedName)")
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
                                    .fill(!myChangedName.isEmpty && variableName == "myName" ? .blue : .gray)
                                    .shadow(radius: 2)
                            )
                        .onTapGesture {
                            if (!myChangedName.isEmpty && variableName == "myName"){
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
                            Text("Mutable Variables!")
                                .font(.title)
                                .bold()
                        }
                        .padding(.bottom)
                        Text("Tada! You have **successfuly** printed **your name** from a variable!")
                            .font(.title3)
                            .padding(.bottom)
                        Text("Now, what is **mutable** and *immutable*?")
                            .font(.title3)
                            .padding(.bottom)
                        Text("**Fun Fact**: You can change **your name** in a **mutable variable**.")
                            .font(.title3)
                            
                        Text("**var** is the word to use to make a variable **mutable**.")
                            .font(.title3)
                            .padding(.bottom)
                        
                        
                        Text("Mutate means to **change**.")
                            .font(.title3)
                        Text("Try typing in someone else's name in the **variable**, in **myName** and print the **variable.**")
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

struct VariablePrintView_Previews: PreviewProvider {
    static var previews: some View {
        VariablePrintView(viewIndex: .constant(0), printedName: .constant("Steve Jobs"), myChangedName: .constant("Tim Cook"))
    }
}
