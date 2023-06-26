//
//  TabBarViewController.swift
//  Netflix Clone
//
//  Created by Duy Nguyễn on 26/06/2023.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        creatTabBar()
    }
    
    private func creatTabBar() {
        tabBar.tintColor = .label
        
        let homeNavigationController = BaseNavigationController()
        let homeVM = HomeViewModel()
        let homeVC = HomeViewController()
        homeVC.bindViewModel(to: homeVM)
        homeVC.tabBarItem = TabBarItems.home.item
        homeNavigationController.viewControllers = [homeVC]
        
        let upcomingNavigationController = BaseNavigationController()
        let upcomingVM = UpcomingViewModel()
        let upcomingVC = UpcomingViewController()
        upcomingVC.bindViewModel(to: upcomingVM)
        upcomingVC.tabBarItem = TabBarItems.upcoming.item
        upcomingNavigationController.viewControllers = [upcomingVC]
        
        let searchNavigationController = BaseNavigationController()
        let searchVM = SearchViewModel()
        let searchVC = SearchViewController()
        searchVC.bindViewModel(to: searchVM)
        searchVC.tabBarItem = TabBarItems.search.item
        searchNavigationController.viewControllers = [searchVC]
        
        let downloadNavigationController = BaseNavigationController()
        let downloadVM = DownloadViewModel()
        let downloadVC = DownloadViewController()
        downloadVC.bindViewModel(to: downloadVM)
        downloadVC.tabBarItem = TabBarItems.download.item
        downloadNavigationController.viewControllers = [downloadVC]
        
        viewControllers = [homeNavigationController, upcomingNavigationController, searchNavigationController, downloadNavigationController]
    }
}
