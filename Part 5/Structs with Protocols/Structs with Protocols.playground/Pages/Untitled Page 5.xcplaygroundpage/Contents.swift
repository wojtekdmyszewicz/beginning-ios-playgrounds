struct NutritionItem:Comparable {
    let name:String
    let calories:Int
}
func ==(lhs: NutritionItem, rhs: NutritionItem) -> Bool {
    return lhs.calories == rhs.calories
}

func <(lhs: NutritionItem, rhs: NutritionItem) -> Bool {
    return lhs.calories < rhs.calories
}

let soda = NutritionItem(name: "soda", calories: 200)
let entireBagOfTortillaChips = NutritionItem(name: "entire bag of tortilla chips", calories: 1039)
let donut = NutritionItem(name: "donut", calories: 200)

soda > entireBagOfTortillaChips
soda == donut
