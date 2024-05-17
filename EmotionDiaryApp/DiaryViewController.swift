//
//  ViewController.swift
//  EmotionDiaryApp
//
//  Created by YJ on 5/17/24.
//

import UIKit

class DiaryViewController: UIViewController {

    
    @IBOutlet var detailBarButtonItem: UIBarButtonItem!
    
    @IBOutlet var happyButton: UIButton!
    @IBOutlet var happyLabel: UILabel!
    @IBOutlet var happyCountLabel: UILabel!
    
    @IBOutlet var loveButton: UIButton!
    @IBOutlet var loveLabel: UILabel!
    @IBOutlet var loveCountLabel: UILabel!
    
    @IBOutlet var likeButton: UIButton!
    @IBOutlet var likeLabel: UILabel!
    @IBOutlet var likeCountLabel: UILabel!
    
    @IBOutlet var embarrassButton: UIButton!
    @IBOutlet var embarrassLabel: UILabel!
    @IBOutlet var embarrassCountLabel: UILabel!
    
    @IBOutlet var upsetButton: UIButton!
    @IBOutlet var upsetLabel: UILabel!
    @IBOutlet var upsetCountLabel: UILabel!
    
    @IBOutlet var gloomyButton: UIButton!
    @IBOutlet var gloomyLabel: UILabel!
    @IBOutlet var gloomyCountLabel: UILabel!
    
    @IBOutlet var boredButton: UIButton!
    @IBOutlet var boredLabel: UILabel!
    @IBOutlet var boredCountLabel: UILabel!
    
    @IBOutlet var hungryButton: UIButton!
    @IBOutlet var hungryLabel: UILabel!
    @IBOutlet var hungryCountLabel: UILabel!
    
    @IBOutlet var sadButton: UIButton!
    @IBOutlet var sadLabel: UILabel!
    @IBOutlet var sadCountLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureUI()
        addCount()
     
    }

    func configureUI() {
        
        title = "감정 다이어리"
        
        detailBarButtonItem.image = UIImage(systemName: "list.bullet")
        
        // happy
        happyButton.setImage(UIImage(named: "행복"), for: .normal)
        happyButton.backgroundColor = .clear
        
        happyLabel.text = "행복해"
        happyLabel.textColor = .black
        happyLabel.textAlignment = .center
        happyLabel.font = .systemFont(ofSize: 17)
        
        happyCountLabel.text = "0"
        happyCountLabel.textColor = .systemPink
        happyCountLabel.textAlignment = .center
        happyCountLabel.font = .systemFont(ofSize:  17)
        
        // love
        loveButton.setImage(UIImage(named: "사랑"), for: .normal)
        loveButton.backgroundColor = .clear
        
        loveLabel.text = "사랑해"
        loveLabel.textColor = .black
        loveLabel.textAlignment = .center
        loveLabel.font = .systemFont(ofSize: 17)
        
        loveCountLabel.text = "0"
        loveCountLabel.textColor = .systemPink
        loveCountLabel.textAlignment = .center
        loveCountLabel.font = .systemFont(ofSize:  17)
        
        
        // like
        likeButton.setImage(UIImage(named: "좋아"), for: .normal)
        likeButton.backgroundColor = .clear
        
        likeLabel.text = "좋아해"
        likeLabel.textColor = .black
        likeLabel.textAlignment = .center
        likeLabel.font = .systemFont(ofSize: 17)
        
        likeCountLabel.text = "0"
        likeCountLabel.textColor = .systemPink
        likeCountLabel.textAlignment = .center
        likeCountLabel.font = .systemFont(ofSize:  17)
        
        // embarrass
        embarrassButton.setImage(UIImage(named: "당황"), for: .normal)
        embarrassButton.backgroundColor = .clear
        
        embarrassLabel.text = "당황해"
        embarrassLabel.textColor = .black
        embarrassLabel.textAlignment = .center
        embarrassLabel.font = .systemFont(ofSize: 17)
        
        embarrassCountLabel.text = "0"
        embarrassCountLabel.textColor = .systemPink
        embarrassCountLabel.textAlignment = .center
        embarrassCountLabel.font = .systemFont(ofSize:  17)
        
        // upset
        upsetButton.setImage(UIImage(named: "속상"), for: .normal)
        upsetButton.backgroundColor = .clear
    
        upsetLabel.text = "속상해"
        upsetLabel.textColor = .black
        upsetLabel.textAlignment = .center
        upsetLabel.font = .systemFont(ofSize: 17)
        
        upsetCountLabel.text = "0"
        upsetCountLabel.textColor = .systemPink
        upsetCountLabel.textAlignment = .center
        upsetCountLabel.font = .systemFont(ofSize:  17)
        
        // gloomy
        gloomyButton.setImage(UIImage(named: "우울"), for: .normal)
        gloomyButton.backgroundColor = .clear
        
        gloomyLabel.text = "당황해"
        gloomyLabel.textColor = .black
        gloomyLabel.textAlignment = .center
        gloomyLabel.font = .systemFont(ofSize: 17)
        
        gloomyCountLabel.text = "0"
        gloomyCountLabel.textColor = .systemPink
        gloomyCountLabel.textAlignment = .center
        gloomyCountLabel.font = .systemFont(ofSize:  17)
        
        // bored
        boredButton.setImage(UIImage(named: "심심"), for: .normal)
        boredButton.backgroundColor = .clear
        
        boredLabel.text = "심심해"
        boredLabel.textColor = .black
        boredLabel.textAlignment = .center
        boredLabel.font = .systemFont(ofSize: 17)
        
        boredCountLabel.text = "0"
        boredCountLabel.textColor = .systemPink
        boredCountLabel.textAlignment = .center
        boredCountLabel.font = .systemFont(ofSize:  17)
        
        // hungry
        hungryButton.setImage(UIImage(named: "배고파"), for: .normal)
        hungryButton.backgroundColor = .clear
        
        hungryLabel.text = "배고파"
        hungryLabel.textColor = .black
        hungryLabel.textAlignment = .center
        hungryLabel.font = .systemFont(ofSize: 17)
        
        hungryCountLabel.text = "0"
        hungryCountLabel.textColor = .systemPink
        hungryCountLabel.textAlignment = .center
        hungryCountLabel.font = .systemFont(ofSize:  17)
        
        // sad
        sadButton.setImage(UIImage(named: "슬퍼"), for: .normal)
        sadButton.backgroundColor = .clear
        
        sadLabel.text = "슬퍼해"
        sadLabel.textColor = .black
        sadLabel.textAlignment = .center
        sadLabel.font = .systemFont(ofSize: 17)
        
        sadCountLabel.text = "0"
        sadCountLabel.textColor = .systemPink
        sadCountLabel.textAlignment = .center
        sadCountLabel.font = .systemFont(ofSize:  17)
        
    }
    
    func addCount() {
        
    }

}

