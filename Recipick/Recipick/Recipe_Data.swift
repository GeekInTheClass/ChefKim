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

//베이컨볶음밥
let Recipe10 = Recipe(id: "10", name: "베이컨볶음밥", ingrediant: [Recipe.Ingrediant.Pork], time: Recipe.Time.M30, situation: Recipe.Situation.Breakfast, category: Recipe.Category.Korean, recipe_ingrediant: "test", recipe_contents: "test")

let Recipe11 = Recipe(id: "11", name:  "계절 쭈꾸미 달래 덮밥", ingrediant: [Recipe.Ingrediant.Squid], time: Recipe.Time.H1, situation: Recipe.Situation.Dinner, category: Recipe.Category.Korean, recipe_ingrediant: "test", recipe_contents: "test")

let Recipe12 = Recipe(id: "12", name: "깐풍우동", ingrediant: [Recipe.Ingrediant.Chicken], time: Recipe.Time.H1, situation: Recipe.Situation.Party, category: Recipe.Category.Korean, recipe_ingrediant: "test", recipe_contents: "test")

let Recipe13 = Recipe(id: "13", name: "백종원 감자짜글이", ingrediant: [Recipe.Ingrediant.Potato], time: Recipe.Time.H1, situation: Recipe.Situation.Home, category: Recipe.Category.Korean, recipe_ingrediant: "test", recipe_contents: "test")

let Recipe14 = Recipe(id: "14", name: "그릴후랑크&팬케이크", ingrediant: [Recipe.Ingrediant.Pork], time: Recipe.Time.M30, situation: Recipe.Situation.Breakfast, category: Recipe.Category.Western, recipe_ingrediant: "test", recipe_contents: "test")

let Recipe15 = Recipe(id: "15", name: "토마토파스타", ingrediant: [Recipe.Ingrediant.Vege], time: Recipe.Time.H1, situation: Recipe.Situation.Party, category: Recipe.Category.Western, recipe_ingrediant: "test", recipe_contents: "test")

let Recipe16 = Recipe(id: "16", name: "치킨버섯커리", ingrediant: [Recipe.Ingrediant.Chicken], time: Recipe.Time.H3, situation: Recipe.Situation.Home, category: Recipe.Category.Japanese, recipe_ingrediant: "test", recipe_contents: "test")

let Recipe17 = Recipe(id: "17", name: "피나콜라다", ingrediant: [Recipe.Ingrediant.Yogurt], time: Recipe.Time.M30, situation: Recipe.Situation.Sugar, category: Recipe.Category.Dessert, recipe_ingrediant: "test", recipe_contents: "test")

let Recipe18 = Recipe(id: "18", name: "돈까스", ingrediant: [Recipe.Ingrediant.Pork], time: Recipe.Time.H1, situation: Recipe.Situation.Dinner, category: Recipe.Category.Japanese, recipe_ingrediant: "test", recipe_contents: "test")

let Recipe19 = Recipe(id: "19", name: "규동", ingrediant: [Recipe.Ingrediant.Egg,Recipe.Ingrediant.Beef], time: Recipe.Time.H1, situation: Recipe.Situation.Home, category: Recipe.Category.Japanese, recipe_ingrediant: "test", recipe_contents: "test")

let Recipe20 = Recipe(id: "20", name: "참치김치볶음밥", ingrediant: [Recipe.Ingrediant.Fish, Recipe.Ingrediant.Kimchi], time: Recipe.Time.M30, situation: Recipe.Situation.Diet, category: Recipe.Category.Korean, recipe_ingrediant: "test", recipe_contents: "test")

let Recipe21 = Recipe(id: "21", name: "감자전", ingrediant: [Recipe.Ingrediant.Potato], time: Recipe.Time.H1, situation: Recipe.Situation.Snack, category: Recipe.Category.Korean, recipe_ingrediant: "test", recipe_contents: "test")

let Recipe22 = Recipe(id: "22", name: "냉면", ingrediant: [Recipe.Ingrediant.Egg, Recipe.Ingrediant.Vege], time: Recipe.Time.M30, situation: Recipe.Situation.Summer, category: Recipe.Category.Korean, recipe_ingrediant: "test", recipe_contents: "test")

let Recipe23 = Recipe(id: "23", name: "바지락마늘볶음밥", ingrediant: [Recipe.Ingrediant.Vege, Recipe.Ingrediant.Clam], time: Recipe.Time.M30, situation: Recipe.Situation.Home, category: Recipe.Category.Korean, recipe_ingrediant: "test", recipe_contents: "test")

let Recipe24 = Recipe(id: "24", name: "콘햄치즈", ingrediant: [Recipe.Ingrediant.Pork, Recipe.Ingrediant.Cheese], time: Recipe.Time.M10, situation: Recipe.Situation.Snack, category: Recipe.Category.Global, recipe_ingrediant: "test", recipe_contents: "test")

let Recipe25 = Recipe(id: "25", name: "참치마요", ingrediant: [Recipe.Ingrediant.Fish, Recipe.Ingrediant.Rice], time: Recipe.Time.M30, situation: Recipe.Situation.Home, category: Recipe.Category.Global, recipe_ingrediant: "test", recipe_contents: "test")

let Recipe26 = Recipe(id: "26", name: "스팸동", ingrediant: [Recipe.Ingrediant.Pork, Recipe.Ingrediant.Rice], time: Recipe.Time.M30, situation: Recipe.Situation.Home, category: Recipe.Category.Japanese, recipe_ingrediant: "test", recipe_contents: "test")

let Recipe27 = Recipe(id: "27", name: "어묵볶음", ingrediant: [Recipe.Ingrediant.FishCake], time: Recipe.Time.H2, situation: Recipe.Situation.Home, category: Recipe.Category.Korean, recipe_ingrediant: "test", recipe_contents: "test")

let Recipe28 = Recipe(id: "28", name: "소고기 장조림", ingrediant: [Recipe.Ingrediant.Beef, Recipe.Ingrediant.Egg], time: Recipe.Time.Day, situation: Recipe.Situation.Home, category: Recipe.Category.Korean, recipe_ingrediant: "test", recipe_contents: "test")

let Recipe29 = Recipe(id: "29", name: "짜사이 무침", ingrediant: [Recipe.Ingrediant.Vege], time: Recipe.Time.M30, situation: Recipe.Situation.Breakfast, category: Recipe.Category.Chinese, recipe_ingrediant: "test", recipe_contents: "test")

let Recipe30 = Recipe(id: "30", name: "프랑스 체리 클라푸티", ingrediant: [Recipe.Ingrediant.Cheese], time: Recipe.Time.H2, situation: Recipe.Situation.Party, category: Recipe.Category.Western, recipe_ingrediant: "test", recipe_contents: "test")
