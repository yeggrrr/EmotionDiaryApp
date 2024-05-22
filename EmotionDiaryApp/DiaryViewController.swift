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
    
    @IBOutlet var resetButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initializeDataList(reset: false)
        navigationUI()
        configureUI()
    }
    
    func initializeDataList(reset: Bool) {
        if reset {
            UserDefaults.standard.removeObject(forKey: "count")
        }
        
        DataStorage.shared.dataList = fetchData()
        for i in 0..<countLabelList.count {
            countLabelList[i].text = "\(DataStorage.shared.dataList[i])"
        }
    }
    
    func fetchData() -> [Int] {
        let initialArray = Array<Int>.init(repeating: 0, count: 9)
        guard let count = UserDefaults.standard.array(forKey: "count") as? [Int] else { return initialArray }
        return count
    }
    
    func configureUI() {
        // buttonUI
        happyButton.setCustomImage("행복")
        loveButton.setCustomImage("사랑")
        likeButton.setCustomImage("좋아")
        embarrassButton.setCustomImage("당황")
        upsetButton.setCustomImage("속상")
        gloomyButton.setCustomImage("우울")
        boredButton.setCustomImage("심심")
        hungryButton.setCustomImage("배고파")
        sadButton.setCustomImage("슬퍼")
        
        // LabelUI
        happyLabel.setCustomTitle("행복해")
        loveLabel.setCustomTitle("사랑해")
        likeLabel.setCustomTitle("좋아해")
        embarrassLabel.setCustomTitle("당황해")
        upsetLabel.setCustomTitle("속상해")
        gloomyLabel.setCustomTitle("우울해")
        boredLabel.setCustomTitle("심심해")
        hungryLabel.setCustomTitle("배고파")
        sadLabel.setCustomTitle("슬퍼해")
        
        // countLabelUI
        [happyCountLabel, loveCountLabel, likeCountLabel, embarrassCountLabel, upsetCountLabel, gloomyCountLabel, boredCountLabel, hungryCountLabel, sadCountLabel].forEach {
            $0.setCutomCount()
        }
        
        resetButton.setTitle("reset", for: .normal)
        resetButton.setTitleColor(.systemRed, for: .normal)
    }
    
    func navigationUI() {
        title = "감정 다이어리"
        detailBarButtonItem.image = UIImage(systemName: "list.bullet")
    }
    
    @IBAction func emotionButtonClicked(_ sender: UIButton) {
        let index = sender.tag
        DataStorage.shared.dataList[index] += 1
        countLabelList[index].text = "\(DataStorage.shared.dataList[index])"
        
        let emotionCount = DataStorage.shared.dataList
        UserDefaults.standard.setValue(emotionCount, forKey: "count")
    }
    
    @IBAction func resetButtonClicked(_ sender: UIButton) {
        initializeDataList(reset: true)
    }
}

extension UIButton {
    func setCustomImage(_ imageName: String) {
        setImage(UIImage(named: imageName), for: .normal)
        backgroundColor = .clear
    }
}

extension UILabel {
    func setCustomTitle(_ title: String) {
        text = title
        textColor = .black
        textAlignment = .center
        font = .systemFont(ofSize: 17)
    }
    
    func setCutomCount() {
        textColor = .systemPink
        textAlignment = .center
        font = .systemFont(ofSize:  17)
    }
}
