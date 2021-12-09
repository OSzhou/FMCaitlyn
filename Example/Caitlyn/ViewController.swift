//
//  ViewController.swift
//  Caitlyn
//
//  Created by Zhouheng on 12/06/2021.
//  Copyright (c) 2021 Zhouheng. All rights reserved.
//

import UIKit
import Caitlyn

class ViewController: UIViewController {

    private var faceTracker: FaceTracker?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        faceTracker = FaceTracker(delegate: self)
        faceTracker?.fluidUpdateInterval(interval: 0.1)
        
//        evTracker?.previewLayer.add(to: view).layout { make in
//            make.center.equalToSuperview()
//        }
        let layer = faceTracker?.previewLayer
        layer?.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height)
        view.layer.addSublayer(layer!)
        
        
        view.addSubview(distanceLabel)
        distanceLabel.frame.size = CGSize(width: 500, height: 500)
        distanceLabel.center = view.center
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - lazy loading
    private lazy var distanceLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 30)
        label.textColor = .cyan
        label.textAlignment = .center
        return label
    }()
}

extension ViewController: FaceTrackerDelegate {
    func faceIsTracked(faceRect: CGRect, andDistance distance: CGFloat, isCIDetector: Bool) {
//        print("distance --- \(distance)")
        distanceLabel.text = "距离：\(distance) 厘米"
    }
    
    func fluentUpdateDistance(distance: CGFloat, isCIDetector: Bool) {
        
    }
    
    func hasNoFace(isCIDetector: Bool) {
        
    }
}
