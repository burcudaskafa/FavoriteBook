//
//  detailsView.swift
//  FavoriteBook
//
//  Created by Burcu Daşkafa on 9.05.2023.
//

import SwiftUI

struct detailsView: View {
    var chosenFavoriteElement : FavoriteElements
    var body: some View {
        VStack{
            Text(chosenFavoriteElement.name)
                .padding()
                .font(.largeTitle)
                .foregroundColor(.indigo)
                .bold()
            Image(chosenFavoriteElement.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding()
            Text(chosenFavoriteElement.description)
            
        }
    }
}

struct detailsView_Previews: PreviewProvider {
    static var previews: some View {
        detailsView(chosenFavoriteElement: stalker)
    }
}
