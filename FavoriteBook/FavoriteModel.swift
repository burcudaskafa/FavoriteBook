//
//  FavoriteModel.swift
//  FavoriteBook
//
//  Created by Burcu Daşkafa on 9.05.2023.
//

import Foundation

struct FavoriteModel : Identifiable {
    var id = UUID()
    var title : String
    var elements : [FavoriteElements]
}

struct FavoriteElements : Identifiable {
    var id = UUID()
    var name : String
    var imageName : String
    var description : String
}

let ghostBc = FavoriteElements(name: "GhostBC", imageName: "ghostbc", description: "No 1 Music Band")
let nickcave = FavoriteElements(name: "Nick Cave", imageName: "nick", description: "No 2 Music Band")
let volbeat = FavoriteElements(name: "Volbeat", imageName: "volbeat", description: "No 3 Music Band")

let FavoriteBands = FavoriteModel(title: "Favorite Bands", elements: [ghostBc , nickcave , volbeat])

let stalker = FavoriteElements(name: "Stalker", imageName: "stalker", description: "No 1 Movie")
let dune = FavoriteElements(name: "dune", imageName: "dune", description: "No 2 Movie")
let godfather = FavoriteElements(name: "The Godfather", imageName: "godfather", description: "No 3 Movie")

let FavoriteMovies = FavoriteModel(title: "Favorite Movies", elements: [stalker, dune , godfather])

let myFavs = [FavoriteBands, FavoriteMovies]
