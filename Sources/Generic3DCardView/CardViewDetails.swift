//
// Generic3DCardView
// Created by Chetan Aggarwal.


import Foundation
import SwiftUI

public struct CardViewDetails {
    
    var backgroundImage: String
    var characterImage: String
    var backgroundFrame: Frame
    var overlayFrame: Frame
    var overlayBlur: CGFloat
    var characterOffset: Point
    var characterFrame: Frame
    var viewBackgroundColor: Color
    
    public struct Frame {
        let width: CGFloat
        let height: CGFloat
        
        public init(width: CGFloat, height: CGFloat) {
            self.width = width
            self.height = height
        }
    }
    
    public struct Point {
        let x: CGFloat
        let y: CGFloat
        
        public init(x: CGFloat, y: CGFloat) {
            self.x = x
            self.y = y
        }
    }
    
    public init(backgroundImage: String, characterImage: String, backgroundFrame: Frame, overlayFrame: Frame, overlayBlur: CGFloat, characterOffset: Point, characterFrame: Frame, viewBackgroundColor: Color) {
        self.backgroundImage = backgroundImage
        self.characterImage = characterImage
        self.backgroundFrame = backgroundFrame
        self.overlayFrame = overlayFrame
        self.overlayBlur = overlayBlur
        self.characterOffset = characterOffset
        self.characterFrame = characterFrame
        self.viewBackgroundColor = viewBackgroundColor
    }
}
