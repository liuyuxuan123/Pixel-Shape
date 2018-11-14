//
//  BottomRightRectangle.swift
//  PixelShapeView
//
//  Created by 刘宇轩 on 2018/11/14.
//  Copyright © 2018 yuxuanliu. All rights reserved.
//

import UIKit

class BottomRightRectangleShapeView: ShapeView {

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override init(frame: CGRect, backColor: UIColor, overlapColor: UIColor) {
        super.init(frame: frame, backColor: backColor, overlapColor: overlapColor)
        
        shapeLayer.frame = self.bounds
        shapeLayer.lineWidth = 2.0
        shapeLayer.fillColor = backColor.cgColor
        let shapeLayerBound = CGRect(x: self.center.x,
                           y: self.center.y,
                           width: self.bounds.size.width / 2,
                           height:self.bounds.size.height / 2)
        
        shapeLayer.path = UIBezierPath(rect: shapeLayerBound).cgPath
        
        self.layer.addSublayer(shapeLayer)
        
    }

}
