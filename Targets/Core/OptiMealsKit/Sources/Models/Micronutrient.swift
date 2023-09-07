public enum Micronutrient: Hashable {
    case vitamin(Vitamin)
    case mineral(Mineral)
    case fattyAcid(FattyAcid)
    case aminoAcid(AminoAcid)
    
    public enum Vitamin {
        case a
        case b1
        case b2
        case b3
        case b5
        case b6
        case b7
        case b9
        case b12
        case c
        case d
        case e
        case k
    }
    
    public enum Mineral {
        case calcium
        case iron
        case magnesium
        case copper
        case iodine
        case manganese
        case phosphorus
        case potassium
        case selenium
        case sodium
        case zinc
    }
    
    public enum FattyAcid {
        case omega3
        case omega6
        case omega9
    }
    
    public enum AminoAcid {
        case tryptophan
        case threonine
        case isoleucine
        case leucine
        case lysine
        case methionine
        case phenylalanine
        case valine
        case histidine
        case tyrosine
        case cysteine
    }
}
