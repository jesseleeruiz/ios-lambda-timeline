//
//  CameraView.swift
//  LambdaTimeline
//
//  Created by Jesse Ruiz on 12/4/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit
import AVFoundation

class CameraView: UIView {

    override class var layerClass: AnyClass {
            return AVCaptureVideoPreviewLayer.self
        }
        
        var videoPlayerView: AVCaptureVideoPreviewLayer {
            return layer as! AVCaptureVideoPreviewLayer
        }
        
        var session: AVCaptureSession? {
            get { return videoPlayerView.session }
            set { videoPlayerView.session = newValue }
        }
    }
