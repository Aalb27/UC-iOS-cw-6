//
//  ContentView.swift
//  cw6-t1
//
//  Created by Abdulaziz Albalool on 19/09/2022.
//

import SwiftUI


struct studentdetails: Identifiable {
    let id = UUID()
    var name: String
    var age: Int
    var year: Int
    
}
struct ContentView: View {
    
 @State var students = [studentdetails(name: "sarah fahad", age: 20, year: 2), studentdetails(name: "nourah mohammed", age: 22, year: 4), studentdetails(name: "rashed ali", age: 18, year: 1)]
   
    var body: some View {
        ZStack{
           (Color.red)
                .ignoresSafeArea()
        VStack{
            Spacer()
            Image("st")
                .resizable()
                .scaledToFit()
             Spacer()
            Text("سجل الطلبة")
            ScrollView(.vertical){
          ForEach(students) { student in
              Text(student.name)
              Text("\(student.year)")
              Text("\(student.age)")
              Divider()         } }
            HStack{
                Image(systemName: "info")
                
                Text("عدد الطلاب المسجلين\( students.count)")
                
                    
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
