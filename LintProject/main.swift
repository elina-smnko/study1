//
//  main.swift
//  LintProject
//
//  Created by Elina Semenko on 05.01.2022.
//

import Foundation

let fileManager = FileManager.default
let documentsURL = URL(fileURLWithPath: "/Users/Elina_Semenko/Documents/d1-d2/test1")
do {
    var files = try fileManager.contentsOfDirectory(at: documentsURL, includingPropertiesForKeys: nil)
    for (index, file) in files.enumerated() {
        var rv = URLResourceValues()
        print(file)
        rv.name = "\(index)"
        if (rv.name == "\(index)") == true {
            print("rule violation")
        }
        try? files[index].setResourceValues(rv)
    }
} catch {
    print("Error while enumerating files \(documentsURL.path): \(error.localizedDescription)")
}


