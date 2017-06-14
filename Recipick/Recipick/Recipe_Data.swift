//
//  Recipe_Data.swift
//  Recipick
//
//  Created by 김광남 on 2017. 5. 25..
//  Copyright © 2017년 ChefKim. All rights reserved.
//
import Foundation

var recipeList:[Recipe] = []

var g_RecipeData = [String:Recipe]()
var g_RecipeArray = [Recipe]()

// 소고기 무국

let Beefbureau = Recipe(id: "0001",
                        name: "소고기무국",
                        ingrediant: [Recipe.Ingrediant.Beef],
                        time: Recipe.Time.H1,
                        situation: Recipe.Situation.Home,
                        category: Recipe.Category.Korean,
                        recipe_ingrediant: "test",
                        recipe_contents: "test")
//어묵국
let Fishpaste = Recipe(id: "0002",
                       name: "어묵국",
                       ingrediant: [Recipe.Ingrediant.FishCake],
                       time: Recipe.Time.H1,
                       situation: Recipe.Situation.Breakfast,
                       category: Recipe.Category.Korean,
                       recipe_ingrediant: "test",
                       recipe_contents: "test")


//야채피클
let PickledCucumber = Recipe(id: "0003",
                             name: "야채피클",
                             ingrediant: [Recipe.Ingrediant.Vege],
                             time: Recipe.Time.M30,
                             situation: Recipe.Situation.Home,
                             category: Recipe.Category.Western,
                             recipe_ingrediant: "test",
                             recipe_contents: "test")
//김치볶음밥
let KimchiFriedRice = Recipe(id: "0004",
                             name: "김치볶음밥",
                             ingrediant: [Recipe.Ingrediant.Kimchi, Recipe.Ingrediant.Egg, Recipe.Ingrediant.Pork],
                             time: Recipe.Time.M30,
                             situation: Recipe.Situation.Home,
                             category: Recipe.Category.Korean,
                             recipe_ingrediant: "test",
                             recipe_contents: "test")

//바지락 순두부찌개
let ClamSoftTofuStew = Recipe(id: "0005",
                              name: "바지락 순두부찌개",
                              ingrediant: [Recipe.Ingrediant.Clam, Recipe.Ingrediant.Egg],
                              time: Recipe.Time.H1,
                              situation: Recipe.Situation.Home,
                              category: Recipe.Category.Korean,
                              recipe_ingrediant: "test",
                              recipe_contents: "test")

//제육볶음
let FriedSpicyPork = Recipe(id: "0006",
                            name: "재육볶음",
                            ingrediant: [Recipe.Ingrediant.Pork],
                            time: Recipe.Time.H3,
                            situation: Recipe.Situation.Dinner,
                            category: Recipe.Category.Korean,
                            recipe_ingrediant: "test",
                            recipe_contents: "test")

//가지볶음
let FriedEggPlant = Recipe(id: "0007",
                           name: "가지볶음",
                           ingrediant: [Recipe.Ingrediant.Vege],
                           time: Recipe.Time.H1,
                           situation: Recipe.Situation.Home,
                           category: Recipe.Category.Korean,
                           recipe_ingrediant: "test",
                           recipe_contents: "test")

//봉골레파스타
let VongolePasta = Recipe(id: "0008",
                          name: "봉골레파스타",
                          ingrediant: [Recipe.Ingrediant.Clam],
                          time: Recipe.Time.H1,
                          situation: Recipe.Situation.Dinner,
                          category: Recipe.Category.Western,
                          recipe_ingrediant: "test",
                          recipe_contents: "test")

//소고기미역국
let BeefSeaweedSoup = Recipe(id: "0009",
                             name: "소고기미역국",
                             ingrediant: [Recipe.Ingrediant.Beef],
                             time: Recipe.Time.M30,
                             situation: Recipe.Situation.Home,
                             category: Recipe.Category.Korean,
                             recipe_ingrediant: "test",
                             recipe_contents: "test")

