//
//  TestimonialCollectionViewController.swift
//  designcode
//
//  Created by Naelah on 29/09/2018.
//  Copyright © 2018 Ideate. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class TestimonialCollectionViewController: UICollectionViewController {
    @IBOutlet weak var testimonialCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        testimonialCollectionView.delegate = self
        testimonialCollectionView.dataSource = self
//    self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)

    }

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return testimonials.count
    }


    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "testimonialCell", for: indexPath) as! testimonialCollectionViewCell
    
        let testimonial = testimonials[indexPath.row]
        
        cell.testimonialLabel.text = testimonial["text"]
        cell.user.text = testimonial["name"]
        cell.jobLabel.text = testimonial["job"]
        cell.avatar.image = UIImage(named: testimonial["avatar"]!)
    
        return cell
    }


}
