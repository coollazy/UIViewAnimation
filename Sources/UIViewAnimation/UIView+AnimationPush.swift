import UIKit

extension UIView {
    @objc public func animationPush(duration: TimeInterval, subType: CATransitionSubtype) {
        animation(duration: duration, type: .push, subType: subType)
    }
    
    @objc public func animationPushFromTop(duration: TimeInterval = .viewAminationDefaultDuration) {
        animationPush(duration: duration, subType: .fromBottom)
    }
    
    @objc public func animationPushFromBottom(duration: TimeInterval = .viewAminationDefaultDuration) {
        animationPush(duration: duration, subType: .fromTop)
    }
    
    @objc public func animationPushFromLeft(duration: TimeInterval = .viewAminationDefaultDuration) {
        animationPush(duration: duration, subType: .fromLeft)
    }
    
    @objc public func animationPushFromRight(duration: TimeInterval = .viewAminationDefaultDuration) {
        animationPush(duration: duration, subType: .fromRight)
    }
}
