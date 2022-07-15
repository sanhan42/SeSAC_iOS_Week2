//
//  SearchViewController.swift
//  SeSAC_iOS_Week2
//
//  Created by 한상민 on 2022/07/14.
//

import UIKit

class SearchViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //DateFormatter: 알아보기 쉬운 날짜 + 시간대 (yyyy MM dd Hh mm ss)
        let format = DateFormatter()
        format.dateFormat = "M월 d일, yy년"
        
        let result = format.string(from: Date())
        print(result, Date())
        let word = "3월 2일, 19년"
        let dataResult = format.date(from: word)
        print(dataResult)
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
