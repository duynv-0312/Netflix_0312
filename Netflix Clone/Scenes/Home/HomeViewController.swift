//
//  HomeViewController.swift
//  Netflix Clone
//
//  Created by Duy Nguyễn on 26/06/2023.
//

import UIKit

class HomeViewController: BaseViewController, Bindable {
    var viewModel: HomeViewModel!
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        configView()
    }
    
    private func configView() {
        tableView.delegate = self
        tableView.dataSource = self
        
    }
}

extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    
}
