import UIKit

let puzzleInput = Puzzle.input
let puzzleInputLines = puzzleInput.components(separatedBy: "\n")
var total: Int = 0
for line in puzzleInputLines {
    guard let intFromString = Int(line.dropFirst()) else { fatalError("no int from line: \(line)") }
    if line.hasPrefix("+") {
        total += intFromString
    } else {
        total -= intFromString
    }
}
print(total)
