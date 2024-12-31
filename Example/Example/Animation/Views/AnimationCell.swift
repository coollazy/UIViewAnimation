import LZUIKit
import LZFluent
import RxSwift
import UIViewAnimation

class AnimationCell: UICollectionViewCell {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var animatedButton: UIButton!
    
    private let disposeBag = DisposeBag()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        setBackgroundColor(.clear)
        
        contentView
            .setBackgroundColor(.white)
            .setCornerLength(10)
        
        titleLabel
            .setTextColor(.darkGray)
            .setFontSize(12)
            .setFontWeight(.semibold)
            .setBackgroundColor(.clear)
            .setTextAlignment(.center)
        
        animatedButton
            .setTitle("Show")
            .setTitleColor(.white)
            .setFontSize(10)
            .setFontWeight(.bold)
            .setBackgroundColor(.gray)
            .setCornerLength(5)
        
        animatedButton.rx.tap
            .subscribe(onNext: { [weak self]_ in
                self?.showAnimation()
            })
            .disposed(by: disposeBag)
    }
}

extension AnimationCell {
    func showAnimation() {
        switch titleLabel.text {
            
        case "Move in from top":
            animationMoveInFromTop()
        case "Move in from bottom":
            animationMoveInFromBottom()
        case "Move in from left":
            animationMoveInFromLeft()
        case "Move in from right":
            animationMoveInFromRight()
            
        case "Push from top":
            animationPushFromTop()
        case "Push from bottom":
            animationPushFromBottom()
        case "Push from left":
            animationPushFromLeft()
        case "Push from right":
            animationPushFromRight()
            
        case "Reveal to top":
            animationRevealToTop()
        case "Reveal to bottom":
            animationRevealToBottom()
        case "Reveal to left":
            animationRevealToLeft()
        case "Reveal to right":
            animationRevealToRight()
            
        case "Cube from top":
            animationCubeFromTop()
        case "Cube from bottom":
            animationCubeFromBottom()
        case "Cube from left":
            animationCubeFromLeft()
        case "Cube from right":
            animationCubeFromRight()
            
        case "Flip from top":
            animationFlipFromTop()
        case "Flip from bottom":
            animationFlipFromBottom()
        case "Flip from left":
            animationFlipFromLeft()
        case "Flip from right":
            animationFlipFromRight()
            
        case "Rotate":
            animationRotate()
            
        case "PageCurl":
            animationPageCurl()
        default:
            break
        }
    }
}
