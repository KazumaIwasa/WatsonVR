//
//  SubTableViewController.swift
//  WatsonVR
//
//  Created by 岩佐和真 on 2018/03/15.
//  Copyright © 2018年 岩佐和真. All rights reserved.
//
import UIKit

class SubTableViewController: UITableViewController {
    
    // 解析結果はAppDelegateの変数に入っている
    private let appDelegate: AppDelegate = UIApplication.shared.delegate as! AppDelegate
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // MARK: - Table view data source
    
    /**
     セルの数を返す
     */
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.appDelegate.analyzedFaces.count
    }
    
    /**
     セルの項目をセット
     */
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let result = self.appDelegate.analyzedFaces[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "ResultCell", for: indexPath) as! ResultTableViewCell
        cell.setData(data: result)
        return cell
    }
}

