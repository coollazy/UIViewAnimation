import UIKit

extension UIView {
    @objc public func animationFlip(duration: TimeInterval, subType: CATransitionSubtype) {
        animation(duration: duration, type: .flip, subType: subType)
    }
    
    @objc public func animationFlipFromTop(duration: TimeInterval = .viewAminationDefaultDuration) {
        animationFlip(duration: duration, subType: .fromBottom)
    }
    
    @objc public func animationFlipFromBottom(duration: TimeInterval = .viewAminationDefaultDuration) {
        animationFlip(duration: duration, subType: .fromTop)
    }
    
    @objc public func animationFlipFromLeft(duration: TimeInterval = .viewAminationDefaultDuration) {
        animationFlip(duration: duration, subType: .fromLeft)
    }
    
    @objc public func animationFlipFromRight(duration: TimeInterval = .viewAminationDefaultDuration) {
        animationFlip(duration: duration, subType: .fromRight)
    }
}
