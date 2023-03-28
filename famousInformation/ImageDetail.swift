//
//  ImageDetail.swift
//  famousInformation
//
//  Created by Eyüphan Akkaya on 28.03.2023.
//

import SwiftUI

struct ImageDetail: View {
    var image : Image
    var body: some View {
            image
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white,lineWidth: 5)).shadow(radius: 12)
            
    }
}

struct ImageDetail_Previews: PreviewProvider {
    static var previews: some View {
        ImageDetail(image: Image("jeff"))
    }
}
