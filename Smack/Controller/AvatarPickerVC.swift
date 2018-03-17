//
//  AvatarPickerVC.swift
//  Smack
//
//  Created by Adrian Setniewski on 17.03.2018.
//  Copyright © 2018 Adrian Setniewski. All rights reserved.
//

import UIKit

class AvatarPickerVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource{

    @IBOutlet weak var segmentControl: UISegmentedControl!
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self

        // Do any additional setup after loading the view.
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "avatarCell", for: indexPath) as? AvatarCell {
            return cell
        }
        return AvatarCell()
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 28
    }
    
    @IBAction func segmentControlValueChanged(_ sender: Any) {
    }
    
    @IBAction func backBtnPressed(_ sender: Any) {
    dismiss(animated: true, completion: nil)
    }
    
}
