//
//  TabBarItems.swift
//  Netflix Clone
//
//  Created by Duy Nguyễn on 26/06/2023.
//

import UIKit

enum TabBarItems {
    case home
    case upcoming
    case search
    case download
    
    var item: UITabBarItem {
        switch self {
        case .home:
            return UITabBarItem(title: "Home",
                                image: UIImage(systemName: "house"),
                                selectedImage: UIImage(systemName: "house.fill"))
        case .upcoming:
            return UITabBarItem(title: "Upcoming",
                                image: UIImage(systemName: "play.circle"),
                                selectedImage: UIImage(systemName: "play.fill"))
        case .search:
            return UITabBarItem(title: "Search",
                                image: UIImage(systemName: "magnifyingglass"),
                                selectedImage: UIImage(systemName: "magnifyingglass"))
        case .download:
            return UITabBarItem(title: "Download",
                                image: UIImage(systemName: "arrow.down.to.line"),
                                selectedImage: UIImage(systemName: "arrow.down.to.line"))
        }
    }
}


