//
//  ViewController.swift
//  DemoAppOFAddView
//
//  Created by Monish Chopra on 08/09/20.
//  Copyright © 2020 Monish Chopra. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    @IBOutlet weak var selectedView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        selectedView.roundCorners([.topLeft, .topRight], radius: 33)
        
        
        
    }

  
}





extension UIView {

/// Round UIView selected corners
///
/// - Parameters:
///   - corners: selected corners to round
///   - radius: round amount
func roundCorners(_ corners: UIRectCorner, radius: CGFloat) {
    let path = UIBezierPath(roundedRect: self.bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
    let mask = CAShapeLayer()
    mask.path = path.cgPath
    self.layer.mask = mask
}

}
