//
//  ViewController.swift
//  HTMLSraping
//
//  Created by Colimasoft on 02/03/22.
//

import UIKit
import SwiftSoup
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        do {
            //let htmlUrl = URL(string: "https://developer.apple.com")
            //let html = try String(contentsOf: htmlUrl!)
            let html = "<!DOCTYPE html><html lang=‘en’><head><meta charset=‘UTF-8’><title>Document</title></head><body><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p class=‘parrafo’>Este es mi segundo párrafo</p><a href=‘www.apple.com’>Este es un vinculo a Apple</a><ul><li>item 1</li><li>item 2</li><li>item 3</li></ul></body></html>"
            
            let doc: Document = try SwiftSoup.parse(html)
            //print(doc)
            let parrafo: Element = try doc.select("p").first()!
            print(try parrafo.text())
            
        } catch let error as NSError {
            print("Algo salio mal", error)
        }
    }


}

