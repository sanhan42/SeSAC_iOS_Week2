//
//  SegmentedViewController.swift
//  SeSAC_iOS_Week2
//
//  Created by 한상민 on 2022/07/12.
//

import UIKit

enum MusicType :Int {
    case all
    case korea
    case other
}

class SegmentedViewController: UIViewController {
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var segmentControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // 열거형 사용 예시
    @IBAction func segmentControlValuedChanged(_ sender: UISegmentedControl) {
        if segmentControl.selectedSegmentIndex == MusicType.all.rawValue {
            resultLabel.text = "첫번째 세그먼트 선택"
        } else if segmentControl.selectedSegmentIndex == 1 {
            resultLabel.text = "두번째 세그먼트 선택"
        } else if segmentControl.selectedSegmentIndex == 2 {
            resultLabel.text = "세번째 세그먼트 선택"
        } else {
            resultLabel.text = "오류"
        }
    }
}
