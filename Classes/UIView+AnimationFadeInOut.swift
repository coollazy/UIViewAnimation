import UIKit

extension UIView {
    @objc public func animationFadeIn(duration: TimeInterval = .viewAminationDefaultDuration) {
        animation(duration: duration, type: .fade, fillMode:.forwards)
    }
    
    @objc public func animationFadeOut(duration: TimeInterval = .viewAminationDefaultDuration) {
        animation(duration: duration, type: .fade, fillMode: .backwards)
    }
}
