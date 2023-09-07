public struct Macronutrients {
    public let protein: Int
    public let fat: Int
    public let carbohydrates: Int
    public let fiber: Int
    
    public init(protein: Int, fat: Int, carbohydrates: Int, fiber: Int) {
        self.protein = protein
        self.fat = fat
        self.carbohydrates = carbohydrates
        self.fiber = fiber
    }
}
