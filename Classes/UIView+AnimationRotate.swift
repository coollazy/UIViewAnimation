import UIKit

extension UIView {
    @objc public func animationRotate(duration: TimeInterval = .viewAminationDefaultDuration) {
        animation(duration: duration, type: .rotate)
    }
}
