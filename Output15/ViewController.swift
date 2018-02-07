//
//  ViewController.swift
//  Output15
//
//  Created by Victor Idongesit on 13/12/2017.
//  Copyright © 2017 Victor Idongesit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var gestureSheet: UIImageView!
    @IBOutlet weak var gestureTypeLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        gestureSheet.isUserInteractionEnabled = true
        let tapGestureRecogniser = UITapGestureRecognizer(target: self, action: #selector(gestureDetected))
        tapGestureRecogniser.name = "tap"
        let doubleTapGestureRecogniser = UITapGestureRecognizer(target: self, action: #selector(gestureDetected))
        doubleTapGestureRecogniser.numberOfTapsRequired = 2
        doubleTapGestureRecogniser.name = "doubleTap"
        let pinchGestureRecognizer = UIPinchGestureRecognizer(target: self, action: #selector(gestureDetected))
        pinchGestureRecognizer.name = "pinch"
        let rotationGestureRecognizer = UIRotationGestureRecognizer(target: self, action: #selector(gestureDetected))
        rotationGestureRecognizer.name = "rotation"
        let longPressGestureRecognizer = UILongPressGestureRecognizer(target: self, action: #selector(gestureDetected))
        longPressGestureRecognizer.name = "longPress"
        gestureSheet.addGestureRecognizer(tapGestureRecogniser)
        gestureSheet.addGestureRecognizer(doubleTapGestureRecogniser)
        gestureSheet.addGestureRecognizer(pinchGestureRecognizer)
        gestureSheet.addGestureRecognizer(rotationGestureRecognizer)
        gestureSheet.addGestureRecognizer(longPressGestureRecognizer)
    }
    @IBAction func gestureDetected(recognizer: UIGestureRecognizer) {
        if let gestureName = recognizer.name {
            switch gestureName {
                case "tap": gestureTypeLabel.text = "You just tapped"
                case "doubleTap": gestureTypeLabel.text = "You double tapped"
                case "swipeRight": gestureTypeLabel.text = "You just swiped right"
                case "swipeLeft": gestureTypeLabel.text = "You just swiped left"
                case "swipeUp": gestureTypeLabel.text = "You just swiped up"
                case "swipeDown": gestureTypeLabel.text = "You just swiped down"
                case "pinch": gestureTypeLabel.text = "You just pinched"
                case "rotation": gestureTypeLabel.text = "You just rotated"
                case "longPress": gestureTypeLabel.text = "You just long pressed"
                case "pan": gestureTypeLabel.text = "You just panned"
                default: gestureTypeLabel.text = "Unrecognized Gesture"
            }
        } else {
            gestureTypeLabel.text = "Unrecognized Gesture"
        }
    }
}

