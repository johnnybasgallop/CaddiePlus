//
//  club.swift
//  Caddie+
//
//  Created by johnny basgallop on 23/08/2023.
//

import SwiftUI

struct club : View {
    var DataSet : [(name: String, image: String)]
    var body: some View{
        
        Button {
            print("pressed \(DataSet[0].name)")
        } label: {
            VStack{
                  
                      AsyncImage(url: URL(string: DataSet[0].image)) { image in
                                image
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    
                            } placeholder: {
                                Color.gray
                            }
                          .frame(width: 150, height: 150)
                          .font(.system(size: 50))
                          .foregroundColor(.black)

                      
                
                
                      Text(DataSet[0].name)
                          .font(.headline)
                          .foregroundColor(.black)
                          .padding(.bottom, 30)
                          
                  
              }
            .frame(width: 200, height: 200)
            .cornerRadius(20)
            .overlay(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(.black, lineWidth: 2)
            )
        }

        
     
    }
}


struct club_Previews: PreviewProvider {
    static var previews: some View {
        club(DataSet: [("Driver", "https://firebasestorage.googleapis.com/v0/b/argraves-d9111.appspot.com/o/thumbnails%2FCupAndSaucer.png?alt=media&token=5320dc0c-fd7a-4998-9de9-cf8a8db2f3dc")])
    }
}
