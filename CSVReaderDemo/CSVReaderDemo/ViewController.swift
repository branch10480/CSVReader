//
//  ViewController.swift
//  CSVReaderDemo
//
//  Created by Toshiharu Imaeda on 2023/05/08.
//

import UIKit
import CSVReader

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        guard let csvPath = Bundle.main.path(forResource: "data", ofType: "csv") else {
            print("File is not found.")
            return
        }

        do {
            let data = try CSVReader.read(fileString: csvPath)
            print("---------- Success! ----------")
            print(data)

            let converted = data.map{ $0[0] }
            print("Converted:", converted)
        } catch(let e) {
            print("---------- Failure! ----------")
            print(e.localizedDescription)
        }
    }


}

