//
//  Home.swift
//  JSON
//
//  Created by Yery Castro on 19/2/23.
//

import SwiftUI

struct Home: View {
    
    @EnvironmentObject var login : PostViewModel
    @StateObject var json = Modelo1ViewModel()
    
    var body: some View {
        NavigationView {
            if json.datosModelo.isEmpty {
                ProgressView()
            } else {
                List(json.datosModelo, id: \.id) { item in
                    VStack(alignment: .leading) {
                        Text(item.name)
                        Text(item.email)
                    }
                }.navigationBarTitle("JSON")
                    .navigationBarItems(leading: Button(action: {
                        UserDefaults.standard.removeObject(forKey: "sesion")
                        login.authenticated = 0
                    }) {
                        Text("Salir")
                    }, trailing:
                        NavigationLink(destination: Home2()) {
                        Text("Siguiente")
                    }
                    )
            }
                
        }
    }
}


