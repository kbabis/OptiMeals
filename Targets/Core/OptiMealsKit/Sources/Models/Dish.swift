public struct Dish {
    public let glycemicLoad: Int
    public let glycemicIndex: Int
    public let additionalCalorieTips: [CalorieTip]
    public let calories: Int
    public let macronutrients: Macronutrients
    public let ingredients: [Ingredient] // remember about the shopping list
    public let micronutrients: [Micronutrient: Int]
}
