//
//  ContentView.swift
//  Swift UI Test
//
//  Created by Đặng Nhật Quân on 6/25/20.
//  Copyright © 2020 Đặng Nhật Quân. All rights reserved.
//

import SwiftUI

let dark = Color("Dark")
let white = Color.white

struct ContentView: View {
    var body: some View{
        Home()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Home : View {
    @State var darkMode = true
    @State var color = white
    var body: some View{
        ZStack{
            ( darkMode ? dark : white ).edgesIgnoringSafeArea(.all)
            
            Toggle(isOn: $darkMode) {
                Text(darkMode ? "Dark" : "Light")
                .foregroundColor(darkMode ? white : dark)
            }.padding()
           
        }
       
    }
    
    
    
}

