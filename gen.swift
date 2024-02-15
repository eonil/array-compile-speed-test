import Foundation

let path = "./best.txt"
let input = try Data(contentsOf: URL(fileURLWithPath: path))

do {
    let output = "let test: [UInt8] = [\(input.map { b in String(b) }.joined(separator: ","))]"
    try! output.data(using: .utf8)!.write(to: URL(fileURLWithPath: "./a.swift"))
}

do {
    let output = "let test = [UInt8](arrayLiteral: \(input.map { b in String(b) }.joined(separator: ",")))"
    try! output.data(using: .utf8)!.write(to: URL(fileURLWithPath: "./b.swift"))
}
