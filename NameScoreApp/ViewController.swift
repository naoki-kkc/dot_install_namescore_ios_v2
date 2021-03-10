//
//  ViewController.swift
//  NameScoreApp
//
//  Created by ginger893 on 2021/03/10.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let identifier = segue.identifier else {
            return
        }
        if identifier == "showResult" {
            let resultVC = segue.destination as! ResultViewController
            resultVC.myName = self.nameText.text!
        }
        
    }
}

