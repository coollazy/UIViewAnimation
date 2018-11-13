//
//  UIView+CATransitionAdditions.swift
//
//  Created by ven.wu
//  Copyright © 2018年 ven1984. All rights reserved.
//

import UIKit

extension TimeInterval {
    static let viewAminationDefaultDuration = 0.3
}

extension CATransitionType {
    static let cube = CATransitionType(rawValue: "cube")
    static let flip = CATransitionType(rawValue: "flip")
    static let rotate = CATransitionType(rawValue: "rotate")
    static let pageCurl = CATransitionType(rawValue: "pageCurl")
}

// MARK: - Animation private method
extension UIView {
    fileprivate func animation(duration:TimeInterval, type:CATransitionType, subType:CATransitionSubtype? = nil, timingFunationName:CAMediaTimingFunctionName = .linear, fillMode:CAMediaTimingFillMode = .forwards, isRemovingOnCompletion: Bool = true) {
        let animation:CATransition = CATransition()
        animation.duration = duration
        animation.type = type
        animation.subtype = subType
        animation.timingFunction = CAMediaTimingFunction(name: timingFunationName)
        animation.fillMode = fillMode
        animation.isRemovedOnCompletion = isRemovingOnCompletion
        layer.add(animation, forKey: "animation")
    }
}

// MARK: - Fade In Out
extension UIView {
    @objc public func animationFadeIn() {
        animation(duration: .viewAminationDefaultDuration, type: .fade, fillMode:.forwards)
    }
    
    @objc public func animationFadeOut() {
        animation(duration: .viewAminationDefaultDuration, type: .fade, fillMode: .backwards)
    }
}

// MARK: - Move In
extension UIView {
    @objc public func animationMoveIn(duration:TimeInterval, subType:CATransitionSubtype) {
        animation(duration: duration, type: .moveIn, subType: subType)
    }
    
    @objc public func animationMoveInFromTop() {
        animationMoveIn(duration: .viewAminationDefaultDuration, subType: .fromBottom)
    }
    
    @objc public func animationMoveInFromBottom() {
        animationMoveIn(duration: .viewAminationDefaultDuration, subType: .fromTop)
    }
    
    @objc public func animationMoveInFromLeft() {
        animationMoveIn(duration: .viewAminationDefaultDuration, subType: .fromLeft)
    }
    
    @objc public func animationMoveInFromRight() {
        animationMoveIn(duration: .viewAminationDefaultDuration, subType: .fromRight)
    }
}

// MARK: - Push
extension UIView {
    @objc public func animationPush(duration:TimeInterval, subType:CATransitionSubtype) {
        animation(duration: duration, type: .push, subType: subType)
    }
    
    @objc public func animationPushFromTop() {
        animationPush(duration: .viewAminationDefaultDuration, subType: .fromBottom)
    }
    
    @objc public func animationPushFromBottom() {
        animationPush(duration: .viewAminationDefaultDuration, subType: .fromTop)
    }
    
    @objc public func animationPushFromLeft() {
        animationPush(duration: .viewAminationDefaultDuration, subType: .fromLeft)
    }
    
    @objc public func animationPushFromRight() {
        animationPush(duration: .viewAminationDefaultDuration, subType: .fromRight)
    }
}

// MARK: - Reveal
extension UIView {
    @objc public func animationReveal(duration:TimeInterval, subType:CATransitionSubtype) {
        animation(duration: duration, type: .reveal, subType: subType)
    }
    
    @objc public func animationRevealFromTop() {
        animationReveal(duration: .viewAminationDefaultDuration, subType: .fromBottom)
    }
    
    @objc public func animationRevealFromBottom() {
        animationReveal(duration: .viewAminationDefaultDuration, subType: .fromTop)
    }
    
    @objc public func animationRevealFromLeft() {
        animationReveal(duration: .viewAminationDefaultDuration, subType: .fromLeft)
    }
    
    @objc public func animationRevealFromRight() {
        animationReveal(duration: .viewAminationDefaultDuration, subType: .fromRight)
    }
}

// MARK: - Cube
extension UIView {
    @objc public func animationCube(duration:TimeInterval, subType:CATransitionSubtype) {
        animation(duration: duration, type: .cube, subType: subType)
    }
    
    @objc public func animationCubeFromTop() {
        animationCube(duration: .viewAminationDefaultDuration, subType: .fromBottom)
    }
    
    @objc public func animationCubeFromBottom() {
        animationCube(duration: .viewAminationDefaultDuration, subType: .fromTop)
    }
    
    @objc public func animationCubeFromLeft() {
        animationCube(duration: .viewAminationDefaultDuration, subType: .fromLeft)
    }
    
    @objc public func animationCubeFromRight() {
        animationCube(duration: .viewAminationDefaultDuration, subType: .fromRight)
    }
}

// MARK: - Flip
extension UIView {
    @objc public func animationFlip(duration:TimeInterval, subType:CATransitionSubtype) {
        animation(duration: duration, type: .flip, subType: subType)
    }
    
    @objc public func animationFlipFromTop() {
        animationFlip(duration: .viewAminationDefaultDuration, subType: .fromBottom)
    }
    
    @objc public func animationFlipFromBottom() {
        animationFlip(duration: .viewAminationDefaultDuration, subType: .fromTop)
    }
    
    @objc public func animationFlipFromLeft() {
        animationFlip(duration: .viewAminationDefaultDuration, subType: .fromLeft)
    }
    
    @objc public func animationFlipFromRight() {
        animationFlip(duration: .viewAminationDefaultDuration, subType: .fromRight)
    }
}

// MARK: - Rotate
extension UIView {
    @objc public func animationRotate(duration:TimeInterval, subType:CATransitionSubtype) {
        animation(duration: duration, type: .rotate, subType: subType)
    }
    
    @objc public func animationRotateFromTop() {
        animationRotate(duration: .viewAminationDefaultDuration, subType: .fromBottom)
    }
    
    @objc public func animationRotateFromBottom() {
        animationRotate(duration: .viewAminationDefaultDuration, subType: .fromTop)
    }
    
    @objc public func animationRotateFromLeft() {
        animationRotate(duration: .viewAminationDefaultDuration, subType: .fromLeft)
    }
    
    @objc public func animationRotateFromRight() {
        animationRotate(duration: .viewAminationDefaultDuration, subType: .fromRight)
    }
}

// MARK: - PageCurl
extension UIView {
    @objc public func animationPageCurl(duration:TimeInterval, subType:CATransitionSubtype) {
        animation(duration: duration, type: .pageCurl, subType: subType)
    }
    
    @objc public func animationPageCurlFromTop() {
        animationPageCurl(duration: .viewAminationDefaultDuration, subType: .fromBottom)
    }
    
    @objc public func animationPageCurlFromBottom() {
        animationPageCurl(duration: .viewAminationDefaultDuration, subType: .fromTop)
    }
    
    @objc public func animationPageCurlFromLeft() {
        animationPageCurl(duration: .viewAminationDefaultDuration, subType: .fromLeft)
    }
    
    @objc public func animationPageCurlFromRight() {
        animationPageCurl(duration: .viewAminationDefaultDuration, subType: .fromRight)
    }
}
