//
//  ResturauntCell.swift
//  Yelp
//
//  Created by ARG Lab on 2/18/18.
//  Copyright © 2018 Timothy Lee. All rights reserved.
//

import UIKit

class ResturauntCell: UITableViewCell {

    @IBOutlet weak var page_image: UIImageView!
    @IBOutlet weak var resturaunt: UILabel!
    @IBOutlet weak var mileage: UILabel!
    @IBOutlet weak var review: UIImageView!
    @IBOutlet weak var reviews: UILabel!
    @IBOutlet weak var address: UILabel!
    @IBOutlet weak var food_type: UILabel!
    @IBOutlet weak var price: UILabel!
    
    var business : Business!{
        didSet{
            resturaunt.text = business.name
            page_image.setImageWith(business.imageURL!)
            mileage.text  = business.distance
            address.text = business.address
            food_type.text = business.categories
            reviews.text = String(describing: business.reviewCount!) + " Reviews"
            review.setImageWith(business.ratingImageURL!)
            resturaunt.preferredMaxLayoutWidth = resturaunt.frame.size.width
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        page_image.layer.cornerRadius = 6
        page_image.clipsToBounds = true
        resturaunt.preferredMaxLayoutWidth = resturaunt.frame.size.width
        
    }
    
    override func layoutSubviews() {
        resturaunt.preferredMaxLayoutWidth = resturaunt.frame.size.width
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
