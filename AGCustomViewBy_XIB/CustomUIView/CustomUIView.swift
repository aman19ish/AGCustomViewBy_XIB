//
//  CustomUIView.swift
//  AGCustomViewBy_XIB
//
//  Created by Aman Gupta on 11/10/17.
//  Copyright © 2017 aman19ish. All rights reserved.
//

import UIKit

class CustomUIView: UIView {

    //MARK: - IBOutlets
    @IBOutlet var custumView: UIView!

    //MARK: - UIView Overided methods
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    
    override init(frame: CGRect) {
        // Call super init
        super.init(frame: frame)
        
        // 3. Setup view from .xib file
        configureXIB()
    }
    
    required init?(coder aDecoder: NSCoder) {
        // 1. setup any properties here
        
        // 2. call super.init(coder:)
        super.init(coder: aDecoder)
        
        // 3. Setup view from .xib file
        configureXIB()
    }
    
    //MARK: - Custom Methods
    func configureXIB() {
        custumView = configureNib()
        
        // use bounds not frame or it'll be offset
        custumView.frame = bounds
        
        // Make the flexible view
        custumView.autoresizingMask = [UIViewAutoresizing.flexibleWidth, UIViewAutoresizing.flexibleHeight]
        // Adding custom subview on top of our view (over any custom drawing > see note below)
        addSubview(custumView)
    }
    
    func configureNib() -> UIView {
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: "CustomUIView", bundle: bundle)
        let view = nib.instantiate(withOwner: self, options: nil)[0] as! UIView
        return view
    }
}
