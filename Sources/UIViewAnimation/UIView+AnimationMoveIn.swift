import UIKit

extension UIView {
    @objc public func animationMoveIn(duration: TimeInterval, subType: CATransitionSubtype) {
        animation(duration: duration, type: .moveIn, subType: subType)
    }
    
    @objc public func animationMoveInFromTop(duration: TimeInterval = .viewAminationDefaultDuration) {
        animationMoveIn(duration: duration, subType: .fromBottom)
    }
    
    @objc public func animationMoveInFromBottom(duration: TimeInterval = .viewAminationDefaultDuration) {
        animationMoveIn(duration: duration, subType: .fromTop)
    }
    
    @objc public func animationMoveInFromLeft(duration: TimeInterval = .viewAminationDefaultDuration) {
        animationMoveIn(duration: duration, subType: .fromLeft)
    }
    
    @objc public func animationMoveInFromRight(duration: TimeInterval = .viewAminationDefaultDuration) {
        animationMoveIn(duration: duration, subType: .fromRight)
    }
}
