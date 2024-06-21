//
//  MealsViewController.swift
//  JsonAPITask
//
//  Created by Disha patel on 6/19/24.
//

import UIKit

class MealsViewController: UIViewController {

    @IBOutlet weak var mealsTableView: UITableView!
    private var viewModel = MealsViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mealsTableView.dataSource = self
        mealsTableView.delegate = self
        getCallBacktoMealsViewModel()
        viewModel.fetchMeal()
    }
}

extension MealsViewController {
    func getCallBacktoMealsViewModel(){
        viewModel.reloadData = { [weak self] in
            self?.mealsTableView.reloadData()
        }
    }
}

extension MealsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.meals?.meals.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: TableViewCellIdentifier.mealsCell.rawValue, for: indexPath) as! MealsTableViewCell
        let meals = viewModel.meals?.meals[indexPath.row]
        cell.mealName.text = meals?.strMeal
        cell.mealDescription.text = meals?.strInstructions
        
        if let imageUrlString = meals?.strMealThumb, let imageUrl = URL(string: imageUrlString) {
            URLSession.shared.dataTask(with: imageUrl) { data, response, error in
                guard let data = data, error == nil else {
                    DispatchQueue.main.async {
                        cell.mealImage.image = UIImage(named: "newspaper")
                    }
                    return
                }
                DispatchQueue.main.async {
                    cell.mealImage.image = UIImage(data: data)
                }
            }.resume()
        } else {
            cell.mealImage.image = UIImage(named: "newspaper")
        }
        
        return cell
    }
}

extension MealsViewController: UITableViewDelegate{
    
}
