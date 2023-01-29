//
//  FriendViewController.swift
//  Duna_UIKit_HW1
//
//  Created by Seungyun Kim on 2022/07/20.
//

import UIKit

class FriendViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var friendList: [ProfileModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
}

extension FriendViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friendList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "FriendTableViewCell", for: indexPath) as? FriendTableViewCell else { return UITableViewCell()}
        cell.setupCell()
    }
    
    
}

extension FriendViewController: UITableViewDelegate {
    
}
