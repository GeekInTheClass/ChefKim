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
                        recipe_contents: "test",
                        photo : ["https://firebasestorage.googleapis.com/v0/b/shefkim-d0b57.appspot.com/o/Bears.jpg?alt=media&token=1d176878-0b65-4f98-9eec-5c638209088c"])
//어묵국
let Fishpaste = Recipe(id: "0002",
                       name: "어묵국",
                       ingrediant: [Recipe.Ingrediant.FishCake],
                       time: Recipe.Time.H1,
                       situation: Recipe.Situation.Breakfast,
                       category: Recipe.Category.Korean,
                       recipe_ingrediant: "test",
                       recipe_contents: "test",
                       photo : ["https://firebasestorage.googleapis.com/v0/b/shefkim-d0b57.appspot.com/o/Recipe008%2FRecipe008.0.jpg?alt=media&token=818a6815-5117-44eb-ad96-505bc30cf94b"])


//야채피클
let PickledCucumber = Recipe(id: "0003",
                             name: "야채피클",
                             ingrediant: [Recipe.Ingrediant.Vege],
                             time: Recipe.Time.M30,
                             situation: Recipe.Situation.Home,
                             category: Recipe.Category.Western,
                             recipe_ingrediant: "test",
                             recipe_contents: "test",
                             photo : ["https://firebasestorage.googleapis.com/v0/b/shefkim-d0b57.appspot.com/o/%E1%84%8B%E1%85%A3%E1%84%8E%E1%85%A2%E1%84%91%E1%85%B5%E1%84%8F%E1%85%B3%E1%86%AF.jpg?alt=media&token=d9d4396e-9d58-4836-a83e-d0be3a0114ab"])
//김치볶음밥
let KimchiFriedRice = Recipe(id: "0004",
                             name: "김치볶음밥",
                             ingrediant: [Recipe.Ingrediant.Kimchi, Recipe.Ingrediant.Egg, Recipe.Ingrediant.Pork],
                             time: Recipe.Time.M30,
                             situation: Recipe.Situation.Home,
                             category: Recipe.Category.Korean,
                             recipe_ingrediant: "test",
                             recipe_contents: "test",
                             photo : ["https://firebasestorage.googleapis.com/v0/b/shefkim-d0b57.appspot.com/o/%E1%84%80%E1%85%B5%E1%86%B7%E1%84%8E%E1%85%B5%E1%84%87%E1%85%A9%E1%86%A9%E1%84%8B%E1%85%B3%E1%86%B7%E1%84%87%E1%85%A1%E1%86%B8.jpg?alt=media&token=7c2405bb-84ff-43ff-8948-fc4644a37f25"])

//바지락 순두부찌개
let ClamSoftTofuStew = Recipe(id: "0005",
                              name: "바지락 순두부찌개",
                              ingrediant: [Recipe.Ingrediant.Clam, Recipe.Ingrediant.Egg],
                              time: Recipe.Time.H1,
                              situation: Recipe.Situation.Home,
                              category: Recipe.Category.Korean,
                              recipe_ingrediant: "test",
                              recipe_contents: "test",
                              photo : ["https://firebasestorage.googleapis.com/v0/b/shefkim-d0b57.appspot.com/o/%E1%84%87%E1%85%A1%E1%84%8C%E1%85%B5%E1%84%85%E1%85%A1%E1%86%A8%E1%84%89%E1%85%AE%E1%86%AB%E1%84%83%E1%85%AE%E1%84%87%E1%85%AE%E1%84%8D%E1%85%B5%E1%84%80%E1%85%A2.jpg?alt=media&token=a5cc3a46-6668-4bdb-a774-758bf0aec120"])

//제육볶음
let FriedSpicyPork = Recipe(id: "0006",
                            name: "재육볶음",
                            ingrediant: [Recipe.Ingrediant.Pork],
                            time: Recipe.Time.H3,
                            situation: Recipe.Situation.Dinner,
                            category: Recipe.Category.Korean,
                            recipe_ingrediant: "test",
                            recipe_contents: "test",
                            photo:["https://firebasestorage.googleapis.com/v0/b/shefkim-d0b57.appspot.com/o/%E1%84%8C%E1%85%A6%E1%84%8B%E1%85%B2%E1%86%A8%E1%84%87%E1%85%A9%E1%86%A9%E1%84%8B%E1%85%B3%E1%86%B7.jpg?alt=media&token=368c13d1-bcd8-4d73-9974-321cbc9b053a"])

//가지볶음
let FriedEggPlant = Recipe(id: "0007",
                           name: "가지볶음",
                           ingrediant: [Recipe.Ingrediant.Vege],
                           time: Recipe.Time.H1,
                           situation: Recipe.Situation.Home,
                           category: Recipe.Category.Korean,
                           recipe_ingrediant: "test",
                           recipe_contents: "test",
                           photo: ["https://firebasestorage.googleapis.com/v0/b/shefkim-d0b57.appspot.com/o/%E1%84%80%E1%85%A1%E1%84%8C%E1%85%B5%E1%84%87%E1%85%A9%E1%86%A9%E1%84%8B%E1%85%B3%E1%86%B7.jpg?alt=media&token=bf99ab58-6ff3-416a-8916-5407b3c5c751"])

//봉골레파스타
let VongolePasta = Recipe(id: "0008",
                          name: "봉골레파스타",
                          ingrediant: [Recipe.Ingrediant.Clam],
                          time: Recipe.Time.H1,
                          situation: Recipe.Situation.Dinner,
                          category: Recipe.Category.Western,
                          recipe_ingrediant: "test",
                          recipe_contents: "test",
                          photo:"https://firebasestorage.googleapis.com/v0/b/shefkim-d0b57.appspot.com/o/%E1%84%87%E1%85%A9%E1%86%BC%E1%84%80%E1%85%A9%E1%86%AF%E1%84%85%E1%85%A6%E1%84%91%E1%85%A1%E1%84%89%E1%85%B3%E1%84%90%E1%85%A1.jpg?alt=media&token=5ee5e7f8-7616-4f79-82d6-e1b3b5a4d949")

//소고기미역국
let BeefSeaweedSoup = Recipe(id: "0009",
                             name: "소고기미역국",
                             ingrediant: [Recipe.Ingrediant.Beef],
                             time: Recipe.Time.M30,
                             situation: Recipe.Situation.Home,
                             category: Recipe.Category.Korean,
                             recipe_ingrediant: "test",
                             recipe_contents: "test",
                             photo: ["https://firebasestorage.googleapis.com/v0/b/shefkim-d0b57.appspot.com/o/%E1%84%89%E1%85%A9%E1%84%80%E1%85%A9%E1%84%80%E1%85%B5%E1%84%86%E1%85%B5%E1%84%8B%E1%85%A7%E1%86%A8%E1%84%80%E1%85%AE%E1%86%A8.jpg?alt=media&token=3c357125-f0dc-4c97-aa71-2ae908b79303"])

//베이컨볶음밥
let Recipe10 = Recipe(id: "10", name: "베이컨볶음밥", ingrediant: [Recipe.Ingrediant.Pork], time: Recipe.Time.M30, situation: Recipe.Situation.Breakfast, category: Recipe.Category.Korean, recipe_ingrediant: "test", recipe_contents: "test", photo: ["https://firebasestorage.googleapis.com/v0/b/shefkim-d0b57.appspot.com/o/%E1%84%87%E1%85%A6%E1%84%8B%E1%85%B5%E1%84%8F%E1%85%A5%E1%86%AB%E1%84%87%E1%85%A9%E1%86%A9%E1%84%8B%E1%85%B3%E1%86%B7%E1%84%87%E1%85%A1%E1%86%B8.jpg?alt=media&token=118f0f60-93b1-4b80-99b7-c7a35af7048f"])

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
