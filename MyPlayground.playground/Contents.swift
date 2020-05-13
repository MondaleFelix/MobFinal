
func flyAway(finalStage: String){
    print("\(finalStage) emerged, flying away... ")
}

func metamorphosis(initialStage:String, completion: (String) -> Void){
    print("Caterpillar creates cocoon.")
    // They stay inside for up to 21 days.
    for _ in 1...21 {
        print("\(initialStage) inside cocoon")
    }
    completion("🦋")
}

metamorphosis(initialStage:"🐛", completion: flyAway)
