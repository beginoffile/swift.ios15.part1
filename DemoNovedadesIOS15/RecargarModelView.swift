//
//  DescargarModelView.swift
//  DemoNovedadesIOS15
//
//  Created by Aguid Ramirez Sanchez on 01/03/24.
//

import Foundation

@MainActor
class RecargarModelView: ObservableObject{
    @Published var datosModelo: [Datos] = []
    
    func fetch() async{
        do{
            guard let url = URL(string: "https://jsonplaceholder.typicode.com/users") else {return}
            let (data,_) = try await URLSession.shared.data(from: url)
            let datos = try JSONDecoder().decode([Datos].self, from: data)
            self.datosModelo = datos
        }catch let error as NSError{
            print("error", error.localizedDescription)
        }
    }
}
