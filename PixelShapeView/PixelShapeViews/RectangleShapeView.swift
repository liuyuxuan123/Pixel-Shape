//
//  RectangleShapeView.swift
//  PixelShapeView
//
//  Created by 刘宇轩 on 2018/11/14.
//  Copyright © 2018 yuxuanliu. All rights reserved.
//

import UIKit

class RectangleShapeView: ShapeView {
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override init(frame: CGRect, backColor: UIColor, overlapColor: UIColor) {
        super.init(frame: frame, backColor: backColor, overlapColor: overlapColor)
        
        shapeLayer.frame = self.bounds
        shapeLayer.lineWidth = 2.0
        shapeLayer.fillColor = overlapColor.cgColor
        shapeLayer.backgroundColor = backColor.cgColor
        
        shapeLayer.path = UIBezierPath(rect: shapeLayer.bounds).cgPath
        self.layer.addSublayer(shapeLayer)
        
    }


}
