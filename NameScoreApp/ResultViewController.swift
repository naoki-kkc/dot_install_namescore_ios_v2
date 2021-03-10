//
//  ResultViewController.swift
//  NameScoreApp
//
//  Created by ginger893 on 2021/03/11.
//

import UIKit

class ResultViewController: UIViewController {
    
    var myName: String = ""
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.nameLabel.text = "\(self.myName)'s score is ..."
        
        self.scoreLabel.text = String(arc4random_uniform(101))
        
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
