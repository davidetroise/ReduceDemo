let numbers = [1, 4, 6, 8]

var sum = 0
for number in numbers {
    sum += number
}
sum

var sum2 = 0
numbers.forEach { number in
    sum2 += number
}
sum2

let reduce = numbers.reduce(0) { partialResult, number in
    partialResult + number
}

let reduce2 = numbers.reduce(0, +)
let reduce3 = numbers.reduce(1, *)

let n = 6
let factorial = (1...n).reduce(1, *)

let cities = ["Rome", "New York", "Tokyo"]
let reduce4 = cities.reduce(0) { partialResult, city in
    partialResult + city.count
}

let reduce5 = cities.reduce(into: 0) { partialResult, city in
    partialResult += city.count
}

let text = "Apple MacBook Pro"
let reduce6: [String: Int] = text.reduce(into: [:]) { counts, letter in
    counts[letter.lowercased(), default: 0] += 1
}
