//
//  ResultTableViewController.swift
//  WatsonVR
//
//  Created by 岩佐和真 on 2018/03/15.
//  Copyright © 2018年 岩佐和真. All rights reserved.
//

import UIKit

class ResultTableViewCell: UITableViewCell {
    
    @IBOutlet weak var faceImageView: UIImageView!
    @IBOutlet weak var genderNameLabel: UILabel!
    @IBOutlet weak var genderScoreLabel: UILabel!
    @IBOutlet weak var ageRangeLabel: UILabel!
    @IBOutlet weak var ageScoreLabel: UILabel!
    @IBOutlet weak var identityLabel: UILabel!
    
    /**
     セルの内容をセット
     - parameter data: 解析結果
     */
    func setData(data: AnalyzedFace) {
        self.faceImageView.image = data.image
        if let gender = data.gender {
            self.genderNameLabel.text = "性別：" + gender
        }
        if let genderScore = data.genderScore {
            self.genderScoreLabel.text = "　　　確信度：" + genderScore + "%"
        }
        var ageRangeText = "年齢："
        if let ageMin = data.ageMin {
            ageRangeText += ageMin + "才以上 "
        }
        if let ageMax = data.ageMax {
            ageRangeText += ageMax + "才以下"
        }
        self.ageRangeLabel.text = ageRangeText
        if let ageScore = data.ageScore {
            self.ageScoreLabel.text = "　　　確信度：" + ageScore + "%"
        }
        self.identityLabel.text = data.identity
    }
    
}

