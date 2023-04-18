//
//  TypesView.swift
//  Codex
//
//  Created by Kenny Jinhiro Wibowo on 16/04/23.
//

import SwiftUI

struct TypesView: View {
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
                                .italic()
                                .font(.system(.body, design:.monospaced))
                            Text("")
                                .font(.system(.body, design:.monospaced))
                            Text("let programTitle: String = \"Circle O'Meter\"")
                                .font(.system(.body, design:.monospaced))
                            HStack{
                                Text("let pi: Float = 3.14")
                                    .font(.system(.body, design:.monospaced))
                                Text("//This is a constant.")
                                    .italic()
                                    .font(.system(.body, design:.monospaced))
                            }
                            HStack{
                                Text("var diameter: Int = 18")
                                    .font(.system(.body, design:.monospaced))
                                Text("//This is mutable.")
                                    .italic()
                                    .font(.system(.body, design:.monospaced))
                            }
                            HStack{
                                Text("var area: Float = pi * Float(diameter)")
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
                        .onTapGesture {
                            
                        }
                    }.padding(.horizontal)
                }.frame(height: geo.size.height / 2)
                //MARK: Tutorial
                VStack{
                    VStack{
                        HStack{
                            Text("Data Types!")
                                .font(.title)
                                .bold()
                        }
                        .padding(.bottom)
                        Text("There are variable values which have the **\"\"** symbol on them.")
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
                            Text("We could also cover a variable with a datatype to **force it** into the **datatype we want**.")
                                .font(.title3)
                                .padding(.bottom)
                            HStack{
                                Text("These are fairly new so let's practice and")
                                    .font(.title3)
                                Text("continue")
                                    .font(.title3)
                                    .foregroundColor(.blue)
                            }
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

struct TypesView_Previews: PreviewProvider {
    static var previews: some View {
        TypesView(viewIndex: .constant(0))
    }
}
