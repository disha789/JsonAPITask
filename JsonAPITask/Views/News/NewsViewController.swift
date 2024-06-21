//
//  NewsViewController.swift
//  JsonAPITask
//
//  Created by Disha patel on 6/19/24.
//

import UIKit

class NewsViewController: UIViewController {
    @IBOutlet weak var newsTableView: UITableView!
    private var viewModel = NewsViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        newsTableView.dataSource = self
        //newsTableView.delegate = self
        getCallBacktoNewsViewModel()
        viewModel.fetchNews()
    }
}

extension NewsViewController {
    func getCallBacktoNewsViewModel(){
        viewModel.reloadData = { [weak self] in
            self?.newsTableView.reloadData()
        }
    }
}

extension NewsViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.news?.articles.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: TableViewCellIdentifier.newsCell.rawValue, for: indexPath) as! NewsTableViewCell
        let news = viewModel.news?.articles[indexPath.row]
        cell.newsTitle.text = news?.title
        cell.authorTitle.text = news?.author ?? "N/A"
        cell.sourceName.text = news?.source?.name
        
        if let imageUrlString = news?.urlToImage, let imageUrl = URL(string: imageUrlString) {
            URLSession.shared.dataTask(with: imageUrl) { data, response, error in
                guard let data = data, error == nil else {
                    DispatchQueue.main.async {
                        cell.newsImage.image = UIImage(systemName: "newspaper")
                    }
                    return
                }
                DispatchQueue.main.async {
                    cell.newsImage.image = UIImage(data: data)
                }
            }.resume()
        } else {
            cell.newsImage.image = UIImage(systemName: "newspaper")
        }
        return cell
    }
}
