//
//  MovieCollectionViewCell.swift
//  Netflix Clone
//
//  Created by Duy Nguyễn on 27/06/2023.
//

import UIKit
import Reusable

final class MovieCollectionViewCell: UICollectionViewCell, NibReusable {

    @IBOutlet private var containerView: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        configView()
    }
    
    private func configView() {
        containerView.backgroundColor = .red
    }
}
