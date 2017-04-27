//
//  CustomView.swift
//  InterfaceBuilderExemplo
//
//  Created by admin on 4/26/17.
//  Copyright © 2017 Rlzsystem. All rights reserved.
//

import UIKit
import QuartzCore

@IBDesignable
class CustomView: UIView {

    var backgroundLayer: CAShapeLayer!
    var lineWidth: Double = 0.0
    
    // Func que desenha o grafico
    override func layoutSubviews() {
        super.layoutSubviews()
        
        lineWidth = Double(self.frame.size.width)/2
        
        if !(backgroundLayer != nil) {
            backgroundLayer = CAShapeLayer()
            layer.addSublayer(backgroundLayer)
            
            
            let rect = CGRect().insetBy(dx: CGFloat(lineWidth / 2.0), dy: CGFloat(lineWidth / 2.0))
            
            let path = UIBezierPath(ovalIn: rect)
            
            backgroundLayer.path = path.cgPath
            
            backgroundLayer.fillColor = nil
            backgroundLayer.lineWidth = CGFloat(lineWidth)
            backgroundLayer.strokeColor = UIColor(white: 0.5, alpha: 0.3).cgColor
        }
        
        backgroundLayer.frame = layer.bounds
        
    }
    

}
