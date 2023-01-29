//
//  ResultViewController.swift
//  HelloDuna
//
//  Created by Seungyun Kim on 2022/07/08.
//

import UIKit

class ResultViewController: UIViewController {
    @IBOutlet weak var resultLabel: UILabel!
    var message: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLabel()
        // Do any additional setup after loading the view.
    }
    
    func setupLabel() {
        if let message = message {
            resultLabel.text = message
            resultLabel.textColor = .red
        }
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
