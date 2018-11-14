//
//  ViewController.swift
//  PixelShapeView
//
//  Created by 刘宇轩 on 2018/11/14.
//  Copyright © 2018 yuxuanliu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var selectionSegmentControl: UISegmentedControl!
    @IBOutlet weak var displayView: UIView!
    var currenetIndex: Int {
        return selectionSegmentControl.selectedSegmentIndex
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        if self.displayView.subviews.count == 0 {
            let rectangleShapeView = RectangleShapeView(frame: self.displayView.bounds,
                                                        backColor: UIColor.randomChineseTraditionColor(),
                                                        overlapColor: UIColor.randomChineseTraditionColor())
            self.displayView.addSubview(rectangleShapeView)
        }
    }
    
    
    @IBAction func selectNewShape(_ sender: UISegmentedControl) {
        print(self.displayView.subviews.count)
        self.displayView.subviews.last?.removeFromSuperview()
        
        switch currenetIndex {
        case 0:
            let rectangleShapeView = RectangleShapeView(frame: self.displayView.bounds,
                                                        backColor: UIColor.randomChineseTraditionColor(),
                                                        overlapColor: UIColor.randomChineseTraditionColor())
            self.displayView.addSubview(rectangleShapeView)
        case 1:
            let bottomRightRectangleShapeView = BottomRightRectangleShapeView(frame: self.displayView.bounds,
                                                                     backColor: UIColor.randomChineseTraditionColor(),
                                                                     overlapColor: UIColor.randomChineseTraditionColor())
            self.displayView.addSubview(bottomRightRectangleShapeView)
        default:
            break
        }
    }
}

