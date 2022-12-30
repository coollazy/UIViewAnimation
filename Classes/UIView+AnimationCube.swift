import UIKit

extension UIView {
    @objc public func animationCube(duration: TimeInterval, subType: CATransitionSubtype) {
        animation(duration: duration, type: .cube, subType: subType)
    }
    
    @objc public func animationCubeFromTop(duration: TimeInterval = .viewAminationDefaultDuration) {
        animationCube(duration: duration, subType: .fromBottom)
    }
    
    @objc public func animationCubeFromBottom(duration: TimeInterval = .viewAminationDefaultDuration) {
        animationCube(duration: duration, subType: .fromTop)
    }
    
    @objc public func animationCubeFromLeft(duration: TimeInterval = .viewAminationDefaultDuration) {
        animationCube(duration: duration, subType: .fromLeft)
    }
    
    @objc public func animationCubeFromRight(duration: TimeInterval = .viewAminationDefaultDuration) {
        animationCube(duration: duration, subType: .fromRight)
    }
}
