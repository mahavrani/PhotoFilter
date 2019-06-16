
//  FilterCollectionViewCell.swift
//  PhotoFilter
//
//  Created by Maharani on 16/06/19.
//  Copyright © 2019 Maharani. All rights reserved.
//
//


import UIKit

class FilterCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var cellParentView: UIView!
    @IBOutlet weak var filterPreviewImage: UIImageView!
    var indexPath: IndexPath!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func isFilterSelected(){
        cellParentView.backgroundColor = cellParentView.backgroundColor?.withAlphaComponent(1)
    }
    
    func populateCell(with filteredImage:UIImage, at indexPath:IndexPath){
        cellParentView.backgroundColor = cellParentView.backgroundColor?.withAlphaComponent(0)
        filterPreviewImage.image = filteredImage
        self.indexPath = indexPath
    }

}
