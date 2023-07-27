//
//  DetailViewController.swift
//  table_view_controller
//
//  Created by 이태윤 on 2023/07/15.
//

import UIKit

class DetailViewController: UIViewController {
    
    var recieveitem = ""
    
    @IBOutlet var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = recieveitem
        // Do any additional setup after loading the view.
    }
    
    func recieveitem (_ message : String) {
        recieveitem = message
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
