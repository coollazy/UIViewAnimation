import Foundation
import RxSwift

class AnimationViewModel {
    let loadData = PublishSubject<()>()
    
    let items: Observable<[AnimationItem]>
    
    init() {
        items = loadData
            .map({ _ in
                [
                    AnimationItem(title: "Move in from top"),
                    AnimationItem(title: "Move in from bottom"),
                    AnimationItem(title: "Move in from left"),
                    AnimationItem(title: "Move in from right"),
                    AnimationItem(title: "Push from top"),
                    AnimationItem(title: "Push from bottom"),
                    AnimationItem(title: "Push from left"),
                    AnimationItem(title: "Push from right"),
                    AnimationItem(title: "Reveal to top"),
                    AnimationItem(title: "Reveal to bottom"),
                    AnimationItem(title: "Reveal to left"),
                    AnimationItem(title: "Reveal to right"),
                    AnimationItem(title: "Cube from top"),
                    AnimationItem(title: "Cube from bottom"),
                    AnimationItem(title: "Cube from left"),
                    AnimationItem(title: "Cube from right"),
                    AnimationItem(title: "Flip from top"),
                    AnimationItem(title: "Flip from bottom"),
                    AnimationItem(title: "Flip from left"),
                    AnimationItem(title: "Flip from right"),
                    AnimationItem(title: "Rotate"),
                    AnimationItem(title: "PageCurl"),
                ]
            })
            .observeOn(MainScheduler.instance)
            .share()
    }
}
