//
//  AsyncAWaitView.swift
//  DemoNovedadesIOS15
//
//  Created by Aguid Ramirez Sanchez on 01/03/24.
//

import SwiftUI

struct Datos: Decodable, Identifiable{
    var id : Int
    var name : String
    var username : String
}



struct AsyncAWaitView: View {
    @State private var datos = [
    Datos(id: 0, name: "Jorge", username: "George")
    ]
    
    /*
    func fetch(){
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/users") else {return}
        URLSession.shared.dataTask(with: url){data,_,_ in
            guard let data = data else {return}
            do{
                let json = try JSONDecoder().decode([Modelo1].self, from: data)
                DispatchQueue.main.async{
                    self.datosModelo = json
                }
            }catch let error as NSError{
                print("Error en el json", error.localizedDescription)
            }
            
        }.resume()
    }
    */

    func recargar() async{
        do{
            guard let url = URL(string: "https://jsonplaceholder.typicode.com/users") else {return}
            let (data,_) = try await URLSession.shared.data(from: url)
            datos = try JSONDecoder().decode([Datos].self, from: data)
        }catch let error as NSError{
            print("error", error.localizedDescription)
        }
    }
    
    
    var body: some View {
        NavigationView{
            List(datos){item in
                VStack(alignment: .leading){
                    Text(item.name).font(.headline)
                    Text(item.username).font(.subheadline)
                    
                }
            }.navigationTitle("Lista")
//                .task {
//                    await recargar()
//                }
                .refreshable {
                    await recargar()
                }
        }
    }
}

#Preview {
    AsyncAWaitView()
}
