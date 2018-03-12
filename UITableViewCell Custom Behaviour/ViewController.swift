//
//  ViewController.swift
//  UITableViewCell Custom Behaviour
//
//  Created by Asher Ahsan on 12/03/2018.
//  Copyright © 2018 com.taimoor. All rights reserved.
//

import UIKit

class ViewController: UITableViewController, SwiftTableViewCellDelegate {
    
    var items = ["car","bike", "ship", "tractor"]
    
    

   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> TableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        cell.label.text = "This is cell number \(indexPath.row)"
        cell.delegate = self
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
    
    func swiftyTableViewCellDidTapHeart(_ sender: TableViewCell) {
        
        guard let tappedIndexPath = tableView.indexPath(for: sender) else { return }
        
        print(tappedIndexPath.row)
        print("Heart", sender, tappedIndexPath)
        
        // "Love" this item
        //        items[tappedIndexPath.row].love()
    }
    
    func swiftyTableViewCellDidTapTrash(_ sender: TableViewCell) {
        guard let tappedIndexPath = tableView.indexPath(for: sender) else { return }
        
        print(tappedIndexPath.row)
        print("Trash", sender, tappedIndexPath)
        
        // Delete the row
        //        items.remove(at: tappedIndexPath.row)
        //        tableView.deleteRows(at: [tappedIndexPath], with: .automatic)
    }
    
    
    
    
    
}

