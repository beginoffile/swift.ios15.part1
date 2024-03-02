//
//  ImagenView.swift
//  DemoNovedadesIOS15
//
//  Created by Aguid Ramirez Sanchez on 01/03/24.
//

import SwiftUI

struct ImagenView: View {
    var body: some View {
        ZStack{
            AsyncImage(url: URL(string: "https://cdn.pixabay.com/photo/2015/01/28/22/20/bookkeeping-615384_1280.jpg")){ image in
                image.resizable()
                
            } placeholder: {
                Color.red
            }
            Text("Nombre de la imagen")
                .font(.title)
                .padding()
                .background(.ultraThinMaterial)
        }
    }
}

#Preview {
    ImagenView()
}
