//
//  DetailView.swift
//  famousInformation
//
//  Created by Eyüphan Akkaya on 28.03.2023.
//

import SwiftUI

struct DetailView: View {
    var selectCel : Celebrity
    var body: some View {
        VStack {
            MapView(coordinate: selectCel.coordinateLocaiton)
                .frame(height: UIScreen.main.bounds.height * 0.3)
                .offset(y : UIScreen.main.bounds.height * -0.2)
                .edgesIgnoringSafeArea(.top)
            ImageDetail(image: Image(selectCel.imageName))
                .frame(height: UIScreen.main.bounds.height * 0.2)
                .offset(y: UIScreen.main.bounds.height * -0.32)
            
            HStack{
                Text(selectCel.name)
                    .foregroundColor(.black)
                    .font(.title)
                    .bold()
                Spacer()
                Text(selectCel.birthDay)
                    .foregroundColor(.black)
                    .bold()
                    
            }.offset(y : UIScreen.main.bounds.height * -0.3)
            HStack {
                Text(selectCel.job)
                    .foregroundColor(.black)
                    .bold()
                Spacer()
                Text(selectCel.city)
                    .foregroundColor(.black)
                    .bold()
                
            }.offset(y : UIScreen.main.bounds.height * -0.3)
            HStack {
                Text(selectCel.statement)
                    .bold()
                    .foregroundColor(.black)
                    .offset(y : UIScreen.main.bounds.height * -0.2)
            }
        }
        
        
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(selectCel: addCel5)
    }
}
