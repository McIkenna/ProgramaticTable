//
//  ViewController.swift
//  Programatic
//
//  Created by New Account on 10/13/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
 
    

    var myTableView : UITableView = UITableView()
    var itemsToLoad : [String] =  ["Marmalade",
                                   "Ham",
                                   "Egg",
                                   "Bread",
                                   "Burrito",
                                   "Hot chocolate",
                                   "Bacon",
                                   "Donut",
                                   "Porridge",
                                   "Muffin",
                                   "Waffle",
                                   "Tomato",
                                   "Croissant",
                                   "Pancake",
                                   "Toast",
                                   "Breakfast sandwich",
                                   "Yogurt",
                                   "Cheese",
                                   "Milk",
                                   "Sausage",
                                   "Orange juice",
                                   "Breakfast cereal",
                                   "Coffee"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //view.backgroundColor = .blue
        let screenWidth = self.view.frame.size.width
        let screenHeight = self.view.frame.size.height
        
        myTableView.frame = CGRect(x: 0, y:0, width: screenWidth, height: screenHeight)
        myTableView.dataSource = self
        myTableView.register(UITableViewCell.self, forCellReuseIdentifier: "myTable")
        self.view.addSubview(myTableView)
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemsToLoad.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myTable", for: indexPath) as UITableViewCell
        cell.textLabel?.text = self.itemsToLoad[indexPath.row]
        cell.textLabel?.textColor = .white
        cell.backgroundColor = self.randColor()
        
        return cell
    }

    func randColor() -> UIColor{
        let blue = CGFloat(drand48())
        let red = CGFloat(drand48())
        let green = CGFloat(drand48())
        
        return UIColor(red:red,  green: green, blue: blue, alpha: 0.8)
    }
}

