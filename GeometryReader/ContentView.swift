//
//  ContentView.swift
//  GeometryReader
//
//  Created by cmStudent on 2022/05/05.
//

import SwiftUI

struct ContentView: View {
    
    @AppStorage("private_memo1") var memo_private1 = ""
    @AppStorage("private_memo2") var memo_private2 = ""
    @AppStorage("private_memo3") var memo_private3 = ""
    
    @AppStorage("private_work1") var memo_work1 = ""
    @AppStorage("private_work2") var memo_work2 = ""
    @AppStorage("private_work3") var memo_work3 = ""
    
    @AppStorage("private_other1") var memo_other1 = ""
    @AppStorage("private_other2") var memo_other2 = ""
    @AppStorage("private_other3") var memo_other3 = ""
    
    var body: some View {
        GeometryReader{ geometry in
            ScrollView(.vertical, showsIndicators: true) {
                VStack {
                    Text("プライベートメモ")
                    ScrollView(.horizontal) {
                        HStack {
                            RoundedRectangle(cornerRadius: 20)
                                .frame(width: geometry.size.width / 1.5, height: geometry.size.height/3)
                                .foregroundColor(.blue)
                                .overlay(
                                    TextEditor(text: $memo_private1)
                                        .frame(width: 200, height: 170)
                                        .foregroundColor(.white)
                                        
                                    )
                            
                            RoundedRectangle(cornerRadius: 20)
                                .frame(width: geometry.size.width / 1.5, height: geometry.size.height/3)
                                .foregroundColor(.blue)
                                .overlay(
                                    TextEditor(text: $memo_private2)
                                        .frame(width: 200, height: 170)
                                        .foregroundColor(.white)
                                        
                                    )
                            
                            RoundedRectangle(cornerRadius: 20)
                                .frame(width: geometry.size.width / 1.5, height: geometry.size.height/3)
                                .foregroundColor(.blue)
                                .overlay(
                                    TextEditor(text: $memo_private3)
                                        .frame(width: 200, height: 170)
                                        .foregroundColor(.white)
                                        
                                    )
                        }
                    }.onAppear(){
                        UITextView.appearance().backgroundColor = .clear
                    }
                    Text("仕事メモ")
                    ScrollView(.horizontal) {
                        HStack {
                            RoundedRectangle(cornerRadius: 20)
                                .frame(width: geometry.size.width / 1.5, height: geometry.size.height/3)
                                .foregroundColor(.red)
                                .overlay(
                                    TextEditor(text: $memo_work1)
                                        .frame(width: 200, height: 170)
                                        .foregroundColor(.white)
                                        
                                    )
                            
                            RoundedRectangle(cornerRadius: 20)
                                .frame(width: geometry.size.width / 1.5, height: geometry.size.height/3)
                                .foregroundColor(.red)
                                .overlay(
                                    TextEditor(text: $memo_work2)
                                        .frame(width: 200, height: 170)
                                        .foregroundColor(.white)
                                        
                                    )
                            
                            RoundedRectangle(cornerRadius: 20)
                                .frame(width: geometry.size.width / 1.5, height: geometry.size.height/3)
                                .foregroundColor(.red)
                                .overlay(
                                    TextEditor(text: $memo_work3)
                                        .frame(width: 200, height: 170)
                                        .foregroundColor(.white)
                                        
                                    )
                        }
                    }
                    Text("その他")
                    ScrollView(.horizontal) {
                        HStack {
                            RoundedRectangle(cornerRadius: 20)
                                .frame(width: geometry.size.width / 1.5, height: geometry.size.height/3)
                                .foregroundColor(.yellow)
                                .overlay(
                                    TextEditor(text: $memo_other1)
                                        .frame(width: 200, height: 170)
                                        .foregroundColor(.white)
                                        
                                    )
                            
                            RoundedRectangle(cornerRadius: 20)
                                .frame(width: geometry.size.width / 1.5, height: geometry.size.height/3)
                                .foregroundColor(.yellow)
                                .overlay(
                                    TextEditor(text: $memo_other2)
                                        .frame(width: 200, height: 170)
                                        .foregroundColor(.white)
                                        
                                    )
                            
                            RoundedRectangle(cornerRadius: 20)
                                .frame(width: geometry.size.width / 1.5, height: geometry.size.height/3)
                                .foregroundColor(.yellow)
                                .overlay(
                                    TextEditor(text: $memo_other3)
                                        .frame(width: 200, height: 170)
                                        .foregroundColor(.white)
                                        
                                    )
                        }
                    }
                }
                .padding()
                .frame(width: UIScreen.main.bounds.width)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
