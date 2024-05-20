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
    
    @IBOutlet var countLabelList: [UILabel]!
    
    var count = [0, 0, 0, 0, 0, 0, 0, 0, 0]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationUI()
        configureUI()
    
    }

    func configureUI() {
        // buttonUI
        buttonUI(happyButton, image: "행복")
        buttonUI(loveButton, image: "사랑")
        buttonUI(likeButton, image: "좋아")
        buttonUI(embarrassButton, image: "당황")
        buttonUI(upsetButton, image: "속상")
        buttonUI(gloomyButton, image: "우울")
        buttonUI(boredButton, image: "심심")
        buttonUI(hungryButton, image: "배고파")
        buttonUI(sadButton, image: "슬퍼")
        
        // LabelUI
        labelUI(happyLabel, "행복해")
        labelUI(loveLabel, "사랑해")
        labelUI(likeLabel, "좋아해")
        labelUI(embarrassLabel, "당황해")
        labelUI(upsetLabel, "속상해")
        labelUI(gloomyLabel, "우울해")
        labelUI(boredLabel, "심심해")
        labelUI(hungryLabel, "배고파")
        labelUI(sadLabel, "슬퍼해")
        
        // countLabelUI
        countLabelUI(happyCountLabel)
        countLabelUI(loveCountLabel)
        countLabelUI(likeCountLabel)
        countLabelUI(embarrassCountLabel)
        countLabelUI(upsetCountLabel)
        countLabelUI(gloomyCountLabel)
        countLabelUI(boredCountLabel)
        countLabelUI(hungryCountLabel)
        countLabelUI(sadCountLabel)
    }
    
    
    func buttonUI(_ button: UIButton, image: String) {
        button.setImage(UIImage(named: image), for: .normal)
        button.backgroundColor = .clear
    }
    
    func labelUI(_ label: UILabel, _ text: String) {
        label.text = text
        label.textColor = .black
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 17)
    }
    
    func countLabelUI(_ countLabel: UILabel) {
        countLabel.text = "0"
        countLabel.textColor = .systemPink
        countLabel.textAlignment = .center
        countLabel.font = .systemFont(ofSize:  17)
    }
    
    func navigationUI() {
        
        title = "감정 다이어리"
        detailBarButtonItem.image = UIImage(systemName: "list.bullet")
    }
    
    @IBAction func emotionButtonClicked(_ sender: UIButton) {
        
        count[sender.tag] += 1
        countLabelList[sender.tag].text = "\(count[sender.tag])"
        
    }
}

