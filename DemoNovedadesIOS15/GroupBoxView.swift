//
//  GroupBoxView.swift
//  DemoNovedadesIOS15
//
//  Created by Aguid Ramirez Sanchez on 01/03/24.
//

import SwiftUI

struct GroupBoxView: View {
    var body: some View {
        ZStack{
            Color.blue.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            GroupBox("Clientes y Proveedores"){
                
                GroupBox("Cliente") {
                    Text("Roberto").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    Text("email@hotmail.com")
                    Text("tel: 228892293")
                }
                GroupBox("Proveedores") {
                    Text("Juan Carso").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    Text("juancarso@hotmail.com")
                    Text("tel: 9832322322")
                }
                
            }
            .padding(.all)
        }
    }
}

#Preview {
    GroupBoxView()
}
