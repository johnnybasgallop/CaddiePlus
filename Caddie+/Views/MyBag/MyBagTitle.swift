//
//  Title.swift
//  Caddie+
//
//  Created by johnny basgallop on 23/08/2023.
//

import SwiftUI

struct MyBagTitle: View {
    var body: some View {
        
        HStack{
            
            Text("My Bag").font(.system(size: 45, weight: .bold))
                .padding(.leading, 25)
            
            Spacer()
            
            Button {
            print("settings button pressed")
            } label: {
                Image(systemName: "gearshape.fill").font(.system(size: 40))
                    .foregroundColor(.black)
            }
            .padding(.trailing, 25)
            
        }.frame(width: screenWidth, height: 100)
    }
}

struct MyBagTitle_Previews: PreviewProvider {
    static var previews: some View {
       MyBagTitle()
    }
}
