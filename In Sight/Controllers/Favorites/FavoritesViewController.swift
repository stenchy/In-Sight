//
//  FavoritesViewController.swift
//  In Sight
//
//  Created by Christian Iñigo De Leon Alvarez on 09/01/2019.
//  Copyright © 2019 Freelancer. All rights reserved.
//

import UIKit

class FavoritesViewController: UIViewController {
    let galleryVC = GalleryViewController.generateFromStoryboard(galleryType: .favorites)
    override func viewDidLoad() {
        super.viewDidLoad()
        loadPhotoGallery()
    }
    func loadPhotoGallery() {
        galleryVC.view.autoresizingMask = [.flexibleWidth,
                                           .flexibleHeight]
        galleryVC.view.frame = view.bounds
        addChild(galleryVC)
        view.addSubview(galleryVC.view)
        galleryVC.didMove(toParent: self)
    }
}
