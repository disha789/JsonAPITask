//
//  MovieInfoViewController.swift
//  JsonAPITask
//
//  Created by Disha patel on 6/19/24.
//

import UIKit

class MovieInfoViewController: UIViewController {

    @IBOutlet weak var createdDate: UILabel!
    @IBOutlet weak var movieTitle: UILabel!
    @IBOutlet weak var transcodingTableView: UITableView!
    private var viewModel = MovieViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getCallBacktoViewModel()
        transcodingTableView.dataSource = self
        viewModel.fetchMovie()
    }
}

extension MovieInfoViewController {
    func getCallBacktoViewModel(){
        viewModel.reloadData = { [weak self] in
            self?.transcodingTableView.reloadData()
            self?.updateUI()
        }
    }
    
    func updateUI(){
        let movie = viewModel.movie?.first
        movieTitle.text = movie?.title
        createdDate.text = movie?.created_at
    }
}

extension MovieInfoViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.movie?.first?.transcodings.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: TableViewCellIdentifier.movieCell.rawValue, for: indexPath) as! MovieInfoTableViewCell
        let movie = viewModel.movie?.first?.transcodings[indexPath.row]
        cell.movieID.text = movie?.id
        cell.transcodingTitle.text = movie?.title
        cell.transcodingHeight.text = "\(movie?.height ?? 0)"
        return cell 
    }
}
