//
//  ContentView.swift
//  Caddie+
//
//  Created by johnny basgallop on 10/08/2023.
//

import SwiftUI
import FirebaseCore
import FirebaseAuth

var screenWidth = UIScreen.main.bounds.size.width
var screenHeight = UIScreen.main.bounds.size.height


struct ContentView: View {
    
    var body: some View {
    
            TabView {
                MyBag()
                    .tabItem {
                    Image(systemName: "bag")
                    Text("MyBag")
                    }
                
                Round()
                    .tabItem {
                    Image(systemName: "figure.golf")
                    Text("Play")
                    }
                
                Yardages()
                    .tabItem {
                    Image(systemName: "list.bullet.clipboard")
                    Text("Yardages")
                    }
                
            }
        
        
    }
}





struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
