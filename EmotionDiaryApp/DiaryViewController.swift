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
     
    }

    func configureUI() {
        
        title = "감정 다이어리"
        
        
    }

}

