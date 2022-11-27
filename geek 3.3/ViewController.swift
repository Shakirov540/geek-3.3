//
//  ViewController.swift
//  geek 3.3
//
//  Created by Айбек Шакиров on 24/11/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lessonTableiew: UITableView!
    
    var lessons: [String] = ["Home. Tokombaeva 21/1g.", "geektech. Ibraimova 103", "Frunze. chui 29", "XiaomiShop.Baitik batyra 67", "Apex. Baitik batyra 19", "Asia moll.Prospekmira3 ","Toefl center. Ahunaeva 105", "gas station. ynusaliva 107", "Vefa . Gorkogo 27", "Ala Arca . Masalieva 77", " ShopGun", "KGSport . Karalaeva 23" , "62 school . Syerkolova 1", "STO . Tyresbekova 8", " Byblic . Karaleva 3", "Tommi mol . Tokombaeva 17/2" , "Son Col . Shabdan batyra 37", "Akyn . Prospect mira 97/5"]
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.\\
        
        lessonTableiew.register(UITableViewCell.self, forCellReuseIdentifier: "lesson_cell")
    }


}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return lessons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell =  tableView.dequeueReusableCell(withIdentifier: "lesson_cell", for: indexPath)
        cell.textLabel?.text = lessons[indexPath.row]
        return cell
    }
    
    
    
    
}
