//
//  Binable.swift
//  Netflix Clone
//
//  Created by Duy Nguyễn on 26/06/2023.
//

import UIKit

public protocol Bindable: AnyObject {
    associatedtype ViewModel
    
    var viewModel: ViewModel! { get set }
}

public extension Bindable where Self: UIViewController {
    func bindViewModel(to model: Self.ViewModel) {
        viewModel = model
        loadViewIfNeeded()
    }
}

