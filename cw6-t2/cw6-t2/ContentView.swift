//
//  ContentView.swift
//  cw6-t2
//
//  Created by Abdulaziz Albalool on 19/09/2022.
//

import SwiftUI

struct ContentView: View {
    let backgrounds = [Color.red, Color.green, Color.yellow, Color.purple]
@State var what = ""
    @State var diarybackground = Color.black
    var body: some View {
        NavigationView{
        
        ZStack{
            VStack{
                Spacer()
                Spacer()
                Spacer()
                Text("اختر اللون المفضل")
                HStack{
                    ForEach(backgrounds, id:\.self ){ background in Circle().fill(background)
                            .onTapGesture {
                            diarybackground = background
                            }
                    }
                    .navigationTitle("دفتر اليوميات")
                }
                
            TextField("اكتب اسمك", text: $what)
                NavigationLink(destination: diarypage(diarybackground: diarybackground), label:{ Text("SAVE")})
                               
  Spacer()
                Spacer()
                    .padding()
        
        
        
        
        
            }
        }
    }
}
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
