import UIKit

extension UIView {
    @objc public func animationReveal(duration: TimeInterval, subType: CATransitionSubtype) {
        animation(duration: duration, type: .reveal, subType: subType)
    }
    
    @objc public func animationRevealToTop(duration: TimeInterval = .viewAminationDefaultDuration) {
        animationReveal(duration: duration, subType: .fromTop)
    }
    
    @objc public func animationRevealToBottom(duration: TimeInterval = .viewAminationDefaultDuration) {
        animationReveal(duration: duration, subType: .fromBottom)
    }
    
    @objc public func animationRevealToLeft(duration: TimeInterval = .viewAminationDefaultDuration) {
        animationReveal(duration: duration, subType: .fromRight)
    }
    
    @objc public func animationRevealToRight(duration: TimeInterval = .viewAminationDefaultDuration) {
        animationReveal(duration: duration, subType: .fromLeft)
    }
}
