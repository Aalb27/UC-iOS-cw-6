//
//  diarypage.swift
//  cw6-t2
//
//  Created by Abdulaziz Albalool on 19/09/2022.
//

import SwiftUI

struct diarypage: View {
    
    @State var diarybackground: Color
    var body: some View {
        ZStack{
            diarybackground
                .ignoresSafeArea()
        Text("welcome")
    }
}
}
struct diarypage_Previews: PreviewProvider {
    static var previews: some View {
        diarypage(diarybackground: .yellow)
    }
}
