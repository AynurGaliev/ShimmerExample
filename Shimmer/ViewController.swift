//
//  ViewController.swift
//  Shimmer
//
//  Created by Galiev Aynur on 31.01.16.
//  Copyright © 2016 FlatStack. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var shimmerView: FBShimmeringView!
    
    override func loadView() {
        super.loadView()
        let label = UILabel()
        label.frame = self.shimmerView.bounds
        label.text = "Some Text"
        label.font = UIFont.systemFontOfSize(50.0, weight: UIFontWeightUltraLight)
        label.textAlignment = NSTextAlignment.Center
        label.textColor = UIColor.whiteColor()
        shimmerView.contentView = label
        shimmerView.shimmeringHighlightLength = 0.7
        shimmerView.shimmeringOpacity = 0.9
        shimmerView.shimmeringSpeed = 150
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.shimmerView.shimmering = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

