//
//  HeroHeaderView.swift
//  Netflix Clone
//
//  Created by Duy Nguyễn on 27/06/2023.
//

import UIKit

class HeroHeaderView: UIView {

    @IBOutlet weak var heroImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        configView()
    }
    
    private func configView() {
        print("--------")
        heroImage.contentMode = .scaleAspectFill
        heroImage.clipsToBounds = true
        heroImage.image = UIImage(named: "anh")
        
    }
}
