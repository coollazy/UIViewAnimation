import UIKit

extension TimeInterval {
    public static let viewAminationDefaultDuration = 0.5
}

extension CATransitionType {
    static let cube = CATransitionType(rawValue: "cube")
    static let flip = CATransitionType(rawValue: "flip")
    static let rotate = CATransitionType(rawValue: "rotate")
    static let pageCurl = CATransitionType(rawValue: "pageCurl")
}

// MARK: - Animation private method
extension UIView {
    @objc open func animation(
        duration: TimeInterval,
        type: CATransitionType,
        subType: CATransitionSubtype? = nil,
        timingFunationName: CAMediaTimingFunctionName = .linear,
        fillMode: CAMediaTimingFillMode = .forwards,
        isRemovingOnCompletion: Bool = true) {
        let animation: CATransition = CATransition()
        animation.duration = duration
        animation.type = type
        animation.subtype = subType
        animation.timingFunction = CAMediaTimingFunction(name: timingFunationName)
        animation.fillMode = fillMode
        animation.isRemovedOnCompletion = isRemovingOnCompletion
        layer.add(animation, forKey: "animation")
    }
}
