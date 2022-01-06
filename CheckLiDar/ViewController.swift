//
//  ViewController.swift
//  CheckLiDar
//
//  Created by Angel Dev on 1/6/22.
//

import UIKit
import ARKit

class ViewController: UIViewController {

//    var supportLiDAR: Bool? = nil
    @IBOutlet weak var lblStatus: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblStatus.text = "LiDAR is supported here"
        
        let supportLiDAR = ARWorldTrackingConfiguration.supportsSceneReconstruction(.mesh)
        guard supportLiDAR else {
            print("LiDAR isn't supported here")
            lblStatus.text = "LiDAR isn't supported here, please use another device."
            return
        }
    }


}

