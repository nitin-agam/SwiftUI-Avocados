//
//  RecipesHeader.swift
//  Avocados
//
//  Created by Nitin Aggarwal on 05/12/22.
//

import SwiftUI

struct RecipesHeader: Identifiable {
    var id = UUID()
    var image: String
    var headline: String
    var subheadline: String
}

let recipesHeaders: [RecipesHeader] = [
    RecipesHeader(image: "avocado-slice-1", headline: "Avocados", subheadline: "Avocados are a powerhouse ingredient at any meal for anyone."),
    RecipesHeader(image: "avocado-slice-2", headline: "Healthy", subheadline: "Avocados are good for us and they can be part of our healthy diet."),
    RecipesHeader(image: "avocado-slice-3", headline: "Nutrients", subheadline: "Avocados have a surprising amount and diversity of vitamins and minerals."),
    RecipesHeader(image: "avocado-slice-4", headline: "Delicious", subheadline: "Craving more guacamole? Find the best guacamole recipes in the app."),
    RecipesHeader(image: "avocado-slice-5", headline: "Tasty", subheadline: "Avocados are a good source of natural fiber, which making you feel full."),
    RecipesHeader(image: "avocado-slice-6", headline: "Recipes", subheadline: "Enjoy these carefully handpicked avocado recipes for every occasion!")
]
