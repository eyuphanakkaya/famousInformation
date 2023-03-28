//
//  ContentView.swift
//  famousInformation
//
//  Created by Eyüphan Akkaya on 27.03.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List(celebrityArray) {cel in
                NavigationLink(destination:
                                DetailView(selectCel: cel)
                , label: {
                    Text(cel.name)
                })
            }
        }
            

        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
