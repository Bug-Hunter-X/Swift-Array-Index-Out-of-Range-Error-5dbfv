let array = [1, 2, 3, 4, 5]
let index = 10

// Check if the index is within the valid range
if index >= 0 && index < array.count {
    let element = array[index]
    print(element) //This line will only execute if the index is valid
} else {
    print("Index out of range")
}

//Alternative solution using optional binding:
if let element = array[safe: index] {
    print(element)
} else {
    print("Index out of range")
}

//Extension for safe array access:

 extension Array {
    subscript (safe index: Int) -> Element? {
        guard index >= 0 && index < self.count else { return nil }
        return self[index]
    }
} 