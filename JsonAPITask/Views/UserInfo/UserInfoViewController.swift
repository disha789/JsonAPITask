//
//  UserInfoViewController.swift
//  JsonAPITask
//
//  Created by Disha patel on 6/18/24.
//

import UIKit

class UserInfoViewController: UIViewController {
    
    @IBOutlet weak var userInfoTableView: UITableView!
    private var viewModel = UserInfoViewModel()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewModelCallBack()
        userInfoTableView.dataSource = self
        viewModel.fetchUsers()
    }
}

// MARK: UserInfoViewModel 
extension UserInfoViewController {
    private func setupViewModelCallBack() {
        viewModel.reloadData = { [weak self] in
            self?.userInfoTableView.reloadData()
        }
    }
}

// MARK: TableView DataSource
extension UserInfoViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.getUserCount()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: TableViewCellIdentifier.userInfoCell.rawValue, for: indexPath) as! UserInfoTableViewCell
        let obj = viewModel.getUserFor(row: indexPath.row)
        cell.setUp(userInfo: obj)
        return cell
    }
}
