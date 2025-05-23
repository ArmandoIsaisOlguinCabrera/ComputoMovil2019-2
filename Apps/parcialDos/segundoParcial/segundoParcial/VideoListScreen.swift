//
//  ViewController.swift
//  segundoParcial
//
//  Created by Armando Isais Olguin Cabrera on 4/29/19.
//  Copyright © 2019 Armando Isais Olguin Cabrera. All rights reserved.
//

import UIKit

class VideoListScreen: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var videos: [Video] = []

    
    override func viewDidLoad() {
        super.viewDidLoad()
        videos = createArray()
    }
    
    
    func createArray() -> [Video] {
        
        let video1 = Video(image: #imageLiteral(resourceName: "abbey road"), title: "Abbey Road")
        let video2 = Video(image: #imageLiteral(resourceName: "white"), title: "White")
        let video3 = Video(image: #imageLiteral(resourceName: "revolver"), title: "Revolver")

        
    
        return [video1, video2, video3]
    }
}


extension VideoListScreen: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return videos.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let video = videos[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "VideoCell") as! VideoCell
        cell.setVideo(video: video)
        
        return cell
    }
}





