//
//  SingleUserViewController.swift
//  JsonAPITask
//
//  Created by Disha patel on 6/18/24.
//

import UIKit

class SingleUserViewController: UIViewController {

    private var viewModel = SingleUserViewModel()
    @IBOutlet weak var userCreatedDate: UILabel!
    @IBOutlet weak var userGender: UILabel!
    @IBOutlet weak var userBirthYear: UILabel!
    @IBOutlet weak var userHeight: UILabel!
    @IBOutlet weak var userName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.fetchPerson()
        viewModel.reloadData = { [weak self] in
                    self?.updateUI()
        }
    }
}

// MARK: UPDATE UI
extension SingleUserViewController {
    func updateUI(){
        DispatchQueue.main.async {
            let person = self.viewModel.singleUser
            self.userName.text = person?.name
            self.userHeight.text = person?.height
            self.userBirthYear.text = person?.birth_year
            self.userGender.text = person?.gender
            self.userCreatedDate.text = self.formattedDate(from: person?.created ?? "No Value")
        }
    }
    
    private func formattedDate(from dateString: String) -> String? {
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSZ"
            guard let date = dateFormatter.date(from: dateString) else { return nil }
            dateFormatter.dateFormat = "yyyy-MM-dd"
            return dateFormatter.string(from: date)
        }
}
