//
//  ContentView.swift
//  FavoriteBook
//
//  Created by Burcu Daşkafa on 9.05.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
        List {
            
                ForEach(myFavs) {
                    favorite in Section( header: Text(favorite.title)) {
                        ForEach(favorite.elements){element in
                            NavigationLink(destination: detailsView(chosenFavoriteElement: element)) {
                                Text(element.name)
                            }
                            
                        }
                    }
                }
        }.navigationTitle(Text("Favorite Book"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
