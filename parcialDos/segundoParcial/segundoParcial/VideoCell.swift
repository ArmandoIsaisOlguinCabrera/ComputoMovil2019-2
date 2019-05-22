//
//  ViewController.swift
//  segundoParcial
//
//  Created by Armando Isais Olguin Cabrera on 4/29/19.
//  Copyright © 2019 Armando Isais Olguin Cabrera. All rights reserved.
//

import UIKit

class VideoCell: UITableViewCell {

    @IBOutlet weak var videoImageView: UIImageView!
    @IBOutlet weak var videoTitleLabel: UILabel!
    
    func setVideo(video: Video) {
        videoImageView.image = video.image
        videoTitleLabel.text = video.title
    }
    
}
