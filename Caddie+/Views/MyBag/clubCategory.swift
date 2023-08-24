//
//  clubCategory.swift
//  Caddie+
//
//  Created by johnny basgallop on 23/08/2023.
//

import SwiftUI


struct clubCategory: View {
    
    var title : String
    var DataSet : [(name: String, image: String)]
    
    var body: some View {
        VStack{
            Text(title).font(.system(size: 20, weight: .semibold))
                .foregroundColor(.gray)
            
            HStack{
//                ForEach item in DataSet, return one of these...
                club(DataSet: DataSet)
            }
        }
    }
}




struct clubCategory_Previews: PreviewProvider {
    static var previews: some View {
        clubCategory(title: "Drivers and Woods", DataSet: [("Driver", "https://firebasestorage.googleapis.com/v0/b/argraves-d9111.appspot.com/o/thumbnails%2FCupAndSaucer.png?alt=media&token=5320dc0c-fd7a-4998-9de9-cf8a8db2f3dc")])
    }
}
