//
//  TrackDetailsViewController.swift
//  TrackListAppNew
//
//  Created by Sergey Kosichkin on 15.12.2022.
//

import UIKit

class TrackDetailsViewController: UIViewController {

    @IBOutlet var imageCover: UIImageView!
    @IBOutlet var trackNameLabel: UILabel!
    @IBOutlet var trackArtistLabel: UILabel!
    
    @IBOutlet var backgroundImageView: UIImageView!
    
    @IBOutlet var playButton: UIButton!
    
    var track: Track!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let config = UIImage.SymbolConfiguration(
            pointSize: 50, weight: .medium, scale: .default)
        let image = UIImage(systemName: "play.fill", withConfiguration: config)
        playButton.setImage(image, for: .normal)
        
        
        backgroundImageView.image = UIImage(named: track.title)
        
        let blurEffect = UIBlurEffect(style: UIBlurEffect.Style.systemThickMaterialDark)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = view.bounds
        blurEffectView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        view.insertSubview(blurEffectView, at: 1)
        
        imageCover.image = UIImage(named: track.title)
        trackNameLabel.text = track.song
        trackArtistLabel.text = track.artist
        
    }
    override func viewWillAppear(_ animated: Bool) {
        imageCover.layer.cornerRadius = imageCover.bounds.height * 0.05
    }

}
