//
//  TestimonialCollectionViewController.swift
//  designcode
//
//  Created by Naelah on 29/09/2018.
//  Copyright © 2018 Ideate. All rights reserved.
//

import UIKit


class TestimonialViewController: UIViewController {
    @IBOutlet weak var testimonialCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        testimonialCollectionView.delegate = self
        testimonialCollectionView.dataSource = self
//    self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)

    }
    
}

extension TestimonialViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return testimonials.count
    }
    

  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "testimonialCell", for: indexPath) as! testimonialCollectionViewCell
    
        let testimonial = testimonials[indexPath.row]
        
        cell.testimonialLabel.text = testimonial["text"]
        cell.user.text = testimonial["name"]
        cell.jobLabel.text = testimonial["job"]
        cell.avatar.image = UIImage(named: testimonial["avatar"]!)
    
        return cell
    }

}
