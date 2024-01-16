//
//  RecommendBeerViewController.swift
//  SeSAC4RandomBeers
//
//  Created by Minho on 1/16/24.
//

import UIKit
import Alamofire
import Kingfisher
import SkeletonView

class RecommendBeerViewController: UIViewController {

    var beer: Beer? {
        didSet {
            hideSkeleton()
            configureView()
        }
    }
    
    @IBOutlet weak var recommendMessageLabel: UILabel!
    @IBOutlet weak var beerImageView: UIImageView!
    @IBOutlet weak var beerNameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var recommendNewBeerButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        recommendMessageLabel.isSkeletonable = true
        beerImageView.isSkeletonable = true
        beerNameLabel.isSkeletonable = true
        descriptionLabel.isSkeletonable = true
        
        showSkeleton()
        requestBeerInfo()
    }
    
    func configureView() {
        recommendMessageLabel.text = "오늘은 이 맥주를 추천합니다!"
        
        if let beer {
            print("맥주 정보 로드에 성공했습니다.")
            let url = URL(string: beer.image_url)
            beerImageView.kf.setImage(with: url)
            
            beerNameLabel.text = beer.name
            
            descriptionLabel.numberOfLines = 0
            descriptionLabel.text = beer.description
        } else {
            print("맥주 정보가 로드되지 않았습니다.")
        }
    }

    func requestBeerInfo() {
        let url = "https://api.punkapi.com/v2/beers/random"
        
        AF.request(url)
            .validate(statusCode: 200..<300)
            .responseDecodable(of: [Beer].self) { response in
                switch response.result {
                case .success(let success):
//                    dump(success)
                    
                    self.beer = success[0]
                    
                case .failure(let failure):
                    print(failure, "확보실패")
                }
            }
    }
    
    @IBAction func didRecommendNewBeerButtonTapped(_ sender: UIButton) {
        showSkeleton()
        requestBeerInfo()
    }
    
    
    func showSkeleton() {
        recommendMessageLabel.showAnimatedGradientSkeleton()
        beerImageView.showAnimatedGradientSkeleton()
        beerNameLabel.showAnimatedGradientSkeleton()
        descriptionLabel.showAnimatedGradientSkeleton()
    }
    
    func hideSkeleton() {
        recommendMessageLabel.hideSkeleton()
        beerImageView.hideSkeleton()
        beerNameLabel.hideSkeleton()
        descriptionLabel.hideSkeleton()
    }
}
