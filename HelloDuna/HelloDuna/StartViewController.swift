//
//  StartViewController.swift
//  HelloDuna
//
//  Created by Seungyun Kim on 2022/07/08.
//

import UIKit

class StartViewController: UIViewController {

    @IBOutlet weak var dataTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func sendData(_ sender: Any) {
        guard let vc = self.storyboard?.instantiateViewController(withIdentifier: "ResultViewController") as? ResultViewController else { return }
        
        vc.message = dataTextField.text        
        present(vc,animated: true, completion: nil)
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
