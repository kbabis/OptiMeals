public struct Recipe {
    public let name: String
    public let description: String
    public let source: RecipeSource
    public let isFavorite: Bool
    public let steps: [String]
    public let image: String
    public let portionCount: Int
    public let type: MealType
    public let dish: Dish
    
    public init(
        name: String,
        description: String,
        source: RecipeSource,
        isFavorite: Bool,
        steps: [String],
        image: String,
        portionCount: Int,
        type: MealType,
        dish: Dish)
    {
        self.name = name
        self.description = description
        self.source = source
        self.isFavorite = isFavorite
        self.steps = steps
        self.image = image
        self.portionCount = portionCount
        self.type = type
        self.dish = dish
    }
}
