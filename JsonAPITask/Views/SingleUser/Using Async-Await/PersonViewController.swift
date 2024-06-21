//
//  PersonViewController.swift
//  JsonAPITask
//
//  Created by Disha patel on 6/20/24.
//

import UIKit

class PersonViewController: UIViewController {

    var viewModel = PersonViewModel()
    var person: SingleUserInfo?
    
    @IBOutlet weak var userCreatedDate: UILabel!
    @IBOutlet weak var userGender: UILabel!
    @IBOutlet weak var userBirthYear: UILabel!
    @IBOutlet weak var userHeight: UILabel!
    @IBOutlet weak var userName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadData()

    }
    
}
extension PersonViewController {
    func loadData(){
        Task {
            do {
                let output = try await viewModel.fetchData()
                if let output = output {
                    person = output
                    DispatchQueue.main.async {
                        self.updateUI()
                    }
                }
            } catch {
                print(ServerErrors.dataLoadingError.rawValue)
            }
        }
    }
}

extension PersonViewController {
    func updateUI(){
        guard let person = person else {return}
        userName.text = person.name
        userHeight.text = person.height
        userBirthYear.text = person.birth_year
        userGender.text = person.gender
        userCreatedDate.text = self.formattedDate(from: person.created ?? "No Value")
    }
    
    
    private func formattedDate(from dateString: String) -> String? {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSZ"
        guard let date = dateFormatter.date(from: dateString) else { return nil }
        dateFormatter.dateFormat = "yyyy-MM-dd"
        return dateFormatter.string(from: date)
    }
    
}
