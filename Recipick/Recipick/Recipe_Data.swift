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

let Beefbureau = Recipe(id: "1",
                        name: "소고기무국",
                        ingrediant: [Recipe.Ingrediant.Beef],
                        time: Recipe.Time.H1,
                        situation: Recipe.Situation.Home,
                        category: Recipe.Category.Korean,
                        recipe_ingrediant: "test",
                        recipe_contents: "test")
//어묵국
let Fishpaste = Recipe(id: "2",
                       name: "어묵국",
                       ingrediant: [Recipe.Ingrediant.FishCake],
                       time: Recipe.Time.H1,
                       situation: Recipe.Situation.Breakfast,
                       category: Recipe.Category.Korean,
                       recipe_ingrediant: "test",
                       recipe_contents: "test")


//야채피클
let PickledCucumber = Recipe(id: "3",
                             name: "야채피클",
                             ingrediant: [Recipe.Ingrediant.Vege],
                             time: Recipe.Time.M30,
                             situation: Recipe.Situation.Home,
                             category: Recipe.Category.Western,
                             recipe_ingrediant: "test",
                             recipe_contents: "test")
//김치볶음밥
let KimchiFriedRice = Recipe(id: "4",
                             name: "김치볶음밥",
                             ingrediant: [Recipe.Ingrediant.Kimchi, Recipe.Ingrediant.Egg, Recipe.Ingrediant.Pork],
                             time: Recipe.Time.M30,
                             situation: Recipe.Situation.Home,
                             category: Recipe.Category.Korean,
                             recipe_ingrediant: "test",
                             recipe_contents: "test")

//바지락 순두부찌개
let ClamSoftTofuStew = Recipe(id: "5",
                              name: "바지락 순두부찌개",
                              ingrediant: [Recipe.Ingrediant.Clam, Recipe.Ingrediant.Egg],
                              time: Recipe.Time.H1,
                              situation: Recipe.Situation.Home,
                              category: Recipe.Category.Korean,
                              recipe_ingrediant: "test",
                              recipe_contents: "test")

//제육볶음
let FriedSpicyPork = Recipe(id: "6",
                            name: "재육볶음",
                            ingrediant: [Recipe.Ingrediant.Pork],
                            time: Recipe.Time.H3,
                            situation: Recipe.Situation.Dinner,
                            category: Recipe.Category.Korean,
                            recipe_ingrediant: "test",
                            recipe_contents: "test")

//가지볶음
let FriedEggPlant = Recipe(id: "7",
                           name: "가지볶음",
                           ingrediant: [Recipe.Ingrediant.Vege],
                           time: Recipe.Time.H1,
                           situation: Recipe.Situation.Home,
                           category: Recipe.Category.Korean,
                           recipe_ingrediant: "test",
                           recipe_contents: "test")

//봉골레파스타
let VongolePasta = Recipe(id: "8",
                          name: "봉골레파스타",
                          ingrediant: [Recipe.Ingrediant.Clam],
                          time: Recipe.Time.H1,
                          situation: Recipe.Situation.Dinner,
                          category: Recipe.Category.Western,
                          recipe_ingrediant: "test",
                          recipe_contents: "test")

//소고기미역국
let BeefSeaweedSoup = Recipe(id: "9",
                             name: "소고기미역국",
                             ingrediant: [Recipe.Ingrediant.Beef],
                             time: Recipe.Time.M30,
                             situation: Recipe.Situation.Home,
                             category: Recipe.Category.Korean,
                             recipe_ingrediant: "test",
                             recipe_contents: "test")
//매운감자조림
/*let Beefbureau = Recipe(id: "10",
                        name: "매운감자조림",
                        ingrediant: [Recipe.Ingrediant.Beef],
                        time: Recipe.Time.H1,
                        situation: Recipe.Situation.Home,
                        category: Recipe.Category.Korean,
                        recipe_ingrediant: "test",
                        recipe_contents: "test")*/

