import Foundation

public class CSVReader {
    public static func read(fileString: String?) throws -> [[String]] {
        guard let fileString else { return [] }
        let csvString = try String(contentsOfFile: fileString, encoding: String.Encoding.utf8)
        let rows = csvString.trimmingCharacters(in: .whitespacesAndNewlines).components(separatedBy: "\n")
        return rows.map{ $0.components(separatedBy: ",") }
    }
}
