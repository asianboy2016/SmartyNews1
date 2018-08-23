//
//  Segment.swift
//  WBSegmentControl
//
//  Created by 王继荣 on 7/28/16.
//  Copyright © 2016 CocoaPods. All rights reserved.
//

import UIKit

open class TextSegment: NSObject, WBSegmentContentProtocol {
    
    open var text: String!
    open var otherAttr: String!
    
    open var type: WBSegmentType {
        return WBSegmentType.text(text)
    }
    
    public init(text: String, otherAttr: String = "") {
        super.init()
        
        self.text = text
        self.otherAttr = otherAttr
    }
}

open class IconSegment: NSObject, WBSegmentContentProtocol {
    
    open var icon: UIImage!
    
    open var type: WBSegmentType {
        return WBSegmentType.icon(icon)
    }
    
    public init(icon: UIImage) {
        super.init()
        
        self.icon = icon
    }
}
