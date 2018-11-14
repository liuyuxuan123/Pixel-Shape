//
//  ShapeView.swift
//  PixelShapeView
//
//  Created by 刘宇轩 on 2018/11/14.
//  Copyright © 2018 yuxuanliu. All rights reserved.
//

import UIKit

// Abstract UIView
// Only for Adding Common Property
class ShapeView: UIView {
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    init(frame: CGRect, backColor: UIColor, overlapColor: UIColor) {
        self.backColor = backColor
        self.overlapColor = overlapColor
        
        super.init(frame: frame)
    }
    
    let shapeLayer = CAShapeLayer()
    let backColor : UIColor
    let overlapColor : UIColor
    
}
