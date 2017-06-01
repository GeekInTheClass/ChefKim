//
//  Recipe_Data.swift
//  Recipick
//
//  Created by 김광남 on 2017. 5. 25..
//  Copyright © 2017년 ChefKim. All rights reserved.
//

import Foundation

// 소고기 무국
let Beefbureau = Recipe(id: 0001,
                        name: "소고기무국",
                        ingrediant: [Recipe.Ingrediant.Beef],
                        time: [Recipe.Time.H1],
                        situation: [Recipe.Situation.Breakfast,Recipe.Situation.Home,Recipe.Situation.Sick],
                        category: [Recipe.Category.Korean],
                        recipe_ingrediant: ["무 200g, 소고기 130g, 콩나물 180~200g, 대파1, 청량고추2, 다시마육수1.2L, 액젓1큰술, 소금, 후추, 식용유",
                                            "고기양념 : 고춧가루 3큰술, 마늘 1.5큰술, 맛술 1큰술, 국간장 2큰술, 후추 톡톡"],
                        recipe_contents: ["무는 먹기 좋은 크기로 나박나박 썰고 대파와 청량고추는 썰어주세요",
                                          "먹기 좋은 크기로 썰은 쇠고기에 위 분량의 양념대로 넣어 양념합니다.", "팬에 식용유를 두르고 고기를 넣어 중약불에 볶아줍니다",
                                          "고기가 슬쩍 익으면 무를 넣어 함께 볶아줍니다", "고기가 완벽하게 익으면 육수와 액젓 1큰술을 넣어 보글보글 끓여주세요",
                                          "무가 90%정도 익으면 콩나물을 넣어 국물에 잠기도록 정기를 해 준 후, 뚜껑을 열고 보글보글 끓여줍니다",
                                          "콩나물이 익으면 청양고추와 대파를 넣고 가볍게 섞어주고 마지막으로 소금과 후추의 간을 맞춰주면 소고기무국 황금레시피 완성이에요"])
//어묵국
let Fishpaste = Recipe(id: 0002,
                       name: "어묵국",
                       ingrediant: [Recipe.Ingrediant.FishCake],
                       time: [Recipe.Time.H1],
                       situation: [Recipe.Situation.Breakfast,Recipe.Situation.Home,Recipe.Situation.Sick, Recipe.Situation.Snack],
                       category: [Recipe.Category.Korean],
                       recipe_ingrediant: ["어묵 230g, 무 180g, 대파 1/2, 멸치육수 1.2L 이상, 청량고추",
                                           "고기양념 : 고춧가루 3큰술, 마늘 1.5큰술, 맛술 1큰술, 국간장 2큰술, 후추 톡톡"],
                       recipe_contents: ["무는 먹기 좋은 크기로 나박나박 썰고 대파와 청량고추는 썰어주세요",
                                         "먹기 좋은 크기로 썰은 쇠고기에 위 분량의 양념대로 넣어 양념합니다.",
                                         "팬에 식용유를 두르고 고기를 넣어 중약불에 볶아줍니다", "고기가 슬쩍 익으면 무를 넣어 함께 볶아줍니다",
                                         "고기가 완벽하게 익으면 육수와 액젓 1큰술을 넣어 보글보글 끓여주세요",
                                         "무가 90%정도 익으면 콩나물을 넣어 국물에 잠기도록 정기를 해 준 후, 뚜껑을 열고 보글보글 끓여줍니다",
                                         "콩나물이 익으면 청양고추와 대파를 넣고 가볍게 섞어주고 마지막으로 소금과 후추의 간을 맞춰주면 소고기무국 황금레시피 완성이에요"])

//야채피클
let PickledCucumber = Recipe(id: 0003,
                             name: "야채피클",
                             ingrediant: [Recipe.Ingrediant.Vege],
                             time: [Recipe.Time.M30],
                             situation: [Recipe.Situation.Breakfast,Recipe.Situation.Home],
                             category: [Recipe.Category.Western],
                             recipe_ingrediant: ["오이 4, 파프리카1, 당근1",
                                                 "소스 : 물 3컵, 식초 1.5컵, 설탕 1.5컵, 소금 1.5큰술, 피클링스파이스 1큰술, 월계수잎 2~3장"],
                             recipe_contents:["만들기에 앞서 유리병을 열탕소독해 물기를 싸악 말려 준비합니다",
                                              "오이, 당근, 파프리카는 깨끗하게 세척 후 가능하면 물기를 최대한 털어내고 먹기 좋은 크기로 썰어줍니다",
                                              "유리병에 최대한 차곡차곡하게 야채를 담아주세요",
                                              "위 분량의 소스 재료를 냄비에 담고 설탕이 녹을 정도로만 살짝 끓여줍니다",
                                              "뜨거운 상태의 소스를 재료가 잠길 정도로 부어줍니다",
                                              "실온에서 하루 정도 숙성 후 냉장고에 넣어 이삼일 후 먹으면 딱 맛있게 즐길 수 있어요"])
//김치볶음밥
let KimchiFriedRice = Recipe(id: 0004,
                             name: "김치볶음밥",
                             ingrediant: [Recipe.Ingrediant.Kimchi, Recipe.Ingrediant.Egg, Recipe.Ingrediant.Pork],
                             time: [Recipe.Time.M30],
                             situation: [Recipe.Situation.Breakfast,Recipe.Situation.Home, Recipe.Situation.Dinner],
                             category: [Recipe.Category.Korean],
                             recipe_ingrediant: ["재료",
                                                 "김치 150g, 햄 60g, 밥 1.3공기, 대파 1/2, 설탕 조금, 식용유, 고춧가루 1큰술, 간장 0.5~1큰술, 참기름 0.5큰술, 계란 1"],
                             recipe_contents: ["김치와 햄은 잘게 썰고 대파는 송송 썰어 줍니다",
                                               "팬에 식용유를 두르고 예열이 되면 썰어놓은 햄을 넣어 달달 볶아줍니다",
                                               "햄이 노릇노릇 해지기 시작하면 송송 썬 대파를 넣어 함께 볶아주세요",
                                               "향긋하게 파기름 향이 올라오면 김치, 고춧가루 1큰술, 설탕 0.3큰술을 넣어 볶아주세요",
                                               "취향에 따라 설탕량을 조절해 주세요",
                                               "김치가 살짝 숨이 죽으면 팬 한쪽으로 재료를 밀고 팬에 간장 0.5큰술을 부어 바글바글 끓으면 김치와 섞어 볶습니다",
                                               "김치가 적당히 볶아지면 불을 끄고 밥을 넣어 비비듯이 밥알을 풀어 섞어주세요",
                                               "밥이 고르게 비벼지면 다시 불을 켜 전체적으로 가볍게 볶아주고 참기름 0.5큰술로 향을 더해주면 백종원 김치볶음밥 완성입니다",
                                               "넉넉한 기름에 바삭하게 부쳐낸 반숙 계란후라이까지 올려야 진짜 완성이에요"])
//바지락 순두부찌개
let ClamSoftTofuStew = Recipe(id: 0005,
                              name: "바지락 순두부찌개",
                              ingrediant: [Recipe.Ingrediant.Clam, Recipe.Ingrediant.Egg],
                              time: [Recipe.Time.H1],
                              situation: [Recipe.Situation.Breakfast,Recipe.Situation.Home, Recipe.Situation.Dinner, Recipe.Situation.Sick],
                              category: [Recipe.Category.Korean],
                              recipe_ingrediant: ["순두부 1팩, 바지락 크게 한줌, 물(육수)300ml, 대파 1/2, 청양고추 1~2, 양파(소)1/3, 다진마늘 1.5큰술, 식용우, 고춧가루  2큰술, 국간장 0.5큰술, 액젓 1큰술, 소금, 후추"],
                              recipe_contents:["양파는 가늘게 채 썰고 대파는 어슷하게 썰어줍니다",
                                               "청양고추는 잘게 송송 썰어줍니다",
                                               "해감한 바지락은 가볍게 비벼주며 여러 번 행군 후 물기를 털어 준비합니다",
                                               "냄비에 식용유를 적당히 두르고 양파, 다진마늘 1.5큰술, 고춧가루 2큰술을 넣어 중양불에서 타지 않도록 달달 볶아주세요",
                                               "양파가 살짝 숨이 죽기 시작하면 물 300 ~ 350ml와 액젓 1큰술, 국간장 0.5큰술을 함께 넣어 끓여주세요",
                                               "국물이 끓으면 바지락을 넣어 입이 벌어질 정도로만 끓여줍니다",
                                               "바지락 입이 벌어지면 바로 순두부를 숟가락으로 크게크게 떠 넣어 함께 끓입니다",
                                               "다시 국물이 끓으면 대파와 청양고추를 넣고 마지막으로 소금과 후추를 조금씩 넣어 간을 맞춰주면 순두부찌개 끓이는법 완성입니다"])

//제육볶음
let FriedSpicyPork = Recipe(id: 0006,
                            name: "재육볶음",
                            ingrediant: [Recipe.Ingrediant.Pork],
                            time: [Recipe.Time.H3],
                            situation: [Recipe.Situation.Breakfast,Recipe.Situation.Home, Recipe.Situation.Dinner],
                            category: [Recipe.Category.Korean],
                            recipe_ingrediant: ["돼지앞다리살 600g, 양파(중소) 1, 대파 1/2, 청양고추 1, 홍고추 1, 고춧가루 1큰술, 올리고당 1큰술, 참기름 0.5큰술, 식용        유",
                                                "밑간 : 매실액 2큰술, 간장 3큰술, 다진마늘 1큰술, 후추 톡톡"],
                            recipe_contents: ["양념장 : 고춧가루 3큰술, 고추장 2큰술, 간장 1큰술, 맛술 1큰술, 설탕 1큰술, 다진마늘 1큰술, 생감가루 조금, 후추 톡톡",
                                              "불고기용 돼지고기는 키친타올을 이용해 핏물을 제거하고 먹기 좋은 크기로 썰어줍니다",
                                              "밑간 재료를 넣어 가볍게 버무리고 잠시 숙성시켜주세요",
                                              "재료 맛이 잘 어우러지도록 먼저, 양념재료를 더해 양념장을 만듭니다",
                                              "양파와 대파는 도톰하게 채 썰고 청양고추와 홍고추는 어슷하게 썰어주세요",
                                              "준비가 모두 끝나면 팬에 식용유를 살짝 두르고 밑간 한 돼지고기를 넣어 뭉치지 않도록 풀며 볶아주세요",
                                              "고기가 70%정도 익으면 양념장을 넣어 고르게 어우러지도록 잘 섞으며 볶습니다",
                                              "양념이 잘 어우러지면 이어서 손질한 채소들을 넣어 함께 볶아줍니다",
                                              "야채 숨이 살짝 죽으면 불을 강하게 올리고 색감과 윤기를 살리기 위해 고춧가루 1큰술, 올리고당 1큰술을 넣어 수분을 날리며 볶습니다",
                                              "모든 재료가 잘 어우러지면 참기름 0.5큰술을 넣어 향을 살려주고 마무리하면 제육볶음 황금레시피 완성입니다"])

//가지볶음
let FriedEggPlant = Recipe(id: 0007,
                           name: "가지볶음",
                           ingrediant: [Recipe.Ingrediant.Vege],
                           time: [Recipe.Time.H1],
                           situation: [Recipe.Situation.Breakfast,Recipe.Situation.Home, Recipe.Situation.Dinner, Recipe.Situation.Snack, Recipe.Situation.Diet],
                           category: [Recipe.Category.Korean],
                           recipe_ingrediant: ["가지 2, 양파(소) 1, 청양고추 1, 홍고추 1, 대파 1/2, 식용유, 고추기름, 두반장 2.5큰술, 굴소스 1큰술, 설탕 0.3 ~ 0.5큰술, 후추, 소금"],
                           recipe_contents: ["가지는 0.5cm 두께 정도로 얄팍하게 썰어줍니다",
                                             "양파는 먹기 좋은 크기로 썰고 대파는 잘게 송송 썰어주세요",
                                             "팬에 키친타올을 이용해 식용유를 바르듯이 얇게 코팅을 시키고 가지를 올려 앞뒤로 노릇하게 구워줍니다",
                                             "다시 팬에 식용유를 넉넉하게 두르고 대파를 넣어 달달 몪아 파기름을 만듭니다",
                                             "대파 숨이 죽고 향이 올라오면 양파, 청양고추, 홍고추를 넣어 함께 볶습니다",
                                             "양파가 슬쩍 익어가기 시작하면 구운 가지와 두반장 2.5큰술, 굴소스 1큰술 설탕 0.3 ~ 0.5 큰술을 넣어 고르게 섞으며 볶아주세요",
                                             "재료 숨이 조금 더 죽고 양념과 잘 어우러지도록 볶다가 후추를 살짝 넣어 마무리해주면 완성이에요"])

//봉골레파스타
let VongolePasta = Recipe(id: 0008,
                          name: "봉골레파스타",
                          ingrediant: [Recipe.Ingrediant.Clam],
                          time: [Recipe.Time.H1],
                          situation: [Recipe.Situation.Dinner,Recipe.Situation.Home,Recipe.Situation.Party],
                          category: [Recipe.Category.Western],
                          recipe_ingrediant: ["바지락 200g 1팩, 파스타 170g, 올리브오일, 다진마늘 3큰술, 건고추 1, 맛술 2큰술, 후추, 소금, 월계수잎 1 ~ 2장"],
                          recipe_contents: ["해감시킨 바지락은 바락바락 주물러 여러 번 헹궈 물기를 털어 준비합니다",
                                            "마른 고추는 짤막하게 똑똑 잘라주세요",
                                            "끓는 물에 소금을 넉넉하게 넣고 파스타를 넣어 적당히 삶아줍니다",
                                            "면이 삶아지는 동안 나머지 재료들을 볶아줍니다",
                                            "팬에 올리브오일을 넉넉하게 두르고 다진 마늘과 건고추, 월계수잎을 넣어 볶아주세요",
                                            "마늘의 고소한 향이 올라오면 손질한 바지락과 맛술 2큰술을 넣어 휘리릭 가볍게 섞어줍니다",
                                            "이어서 바로 뚜껑을 닫고 바지락 입이 벌어질 때까지 가열합니다",
                                            "바지락 입이 충분히 벌어지면 뚜껑을 열고 파스타와 면수 반국자를 넣어 고르게 섞으며 볶아주고 부족한 간은 소금으로 맞춰줍니다",
                                            "재료들이 잘 어우러지면 마지막으로 후추를 뿌려 마무리해주면 완성"])

//소고기미역국
let BeefSeaweedSoup = Recipe(id: 0009,
                             name: "소고기미역국",
                             ingrediant: [Recipe.Ingrediant.Beef],
                             time: [Recipe.Time.M30],
                             situation: [Recipe.Situation.Breakfast,Recipe.Situation.Home, Recipe.Situation.Dinner, Recipe.Situation.Snack, Recipe.Situation.Diet],
                             category: [Recipe.Category.Korean],
                             recipe_ingrediant: ["건미역 15g, 소고기 150g, 육수(물) 1.1L 이상, 참기름 1큰술, 다진마늘 1큰술, 국간장 1큰술, 멸치액젓 1클술, 참치액 1큰술, 소금"],
                             recipe_contents: ["밑간 : 국간장 1큰술, 후추 톡톡", "건미역에 물을 넉넉하게 부어 15 ~ 30분 정도 충분히 불려줍니다",
                                               "불린 미역은 가볍게 조물조물 주물러 물에 두세 번 헹궈내고 물기를 제거합니다",
                                               "소고기에 국간장 1큰술과 후추를 조금 넣어 밑간을 해주세요",
                                               "냄비에 참기름 1큰술을 두르고 고기를 넣어 가볍게 볶아줍니다",
                                               "핏기가 사라지면 물기를 제거한 미역과 국간장 1큰술을 넣어 함께 볶아주세요",
                                               "이어서 육수(물) 재료가 충분히 잠기도록 넉넉하게 부어 보글보글 끓입니다",
                                               "국물이 끓으면 다진마늘 1큰술, 액젓 1큰술, 참치액 1큰술을 추가로 넣어 끓여주세요",
                                               "다시 국물이 끓으면 중약불로 줄이고 뭉근하게 10분 정도 끓여준 후, 부족한 간은 소금으로 맞춰주면 미역국 맛있게 끓이믄법 완성이에요"])