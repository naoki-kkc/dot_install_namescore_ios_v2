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
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if identifier == "showResult" {
            guard self.nameText.text != "" else{
                let alertController = UIAlertController(title: "Error", message: "Please enter your name", preferredStyle: .alert)
                let defaultAction = UIAlertAction(title:"OK", style: .default, handler:nil)
                alertController.addAction(defaultAction)
                self.present(alertController, animated: true, completion: nil)
                return false
            }
            return true
        }
        return true
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.nameText.text = ""
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let identifier = segue.identifier else {
            return
        }
        if identifier == "showResult" {
            let resultVC = segue.destination as! ResultViewController
            resultVC.myName = self.nameText.text!
            self.nameText.resignFirstResponder()
        }
        
    }
}

