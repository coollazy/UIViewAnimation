import UIKit
import UIViewAnimation
import RxSwift
import RxDataSources
import LZFluent

class ViewController: UIViewController {
    @IBOutlet weak var collectionView: UICollectionView!
    
    private let disposeBag = DisposeBag()
    private let viewModel = AnimationViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.setBackgroundColor(.lightGray)
        
        initializeCollectionView()
        binding()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        viewModel.loadData.onNext(())
    }
    
    private func initializeCollectionView() {
        collectionView
            .setBackgroundColor(.lightGray)
            .setRegister(.init(nibName: "AnimationCell", bundle: nil), forCellWithReuseIdentifier: "AnimationCell")
            .setCollectionViewLayout(UICollectionViewFlowLayout())
            .setDelegate(self)
    }
    
    private func binding() {
        viewModel.items
            .bind(to: collectionView.rx.items(cellIdentifier: "AnimationCell", cellType: AnimationCell.self)) { (row,item,cell) in
                cell.configure(item: item)
            }
            .disposed(by: disposeBag)
    }
}

extension ViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = collectionView.bounds.width
        let size = (width - 4 * 3)  / 4
        return .init(width: size, height: size)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        .zero
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        4
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        0
    }
}

