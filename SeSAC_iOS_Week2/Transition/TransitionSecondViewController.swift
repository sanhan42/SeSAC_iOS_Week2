//
//  TransitionSecondViewController.swift
//  SeSAC_iOS_Week2
//
//  Created by 한상민 on 2022/07/15.
//

import UIKit

class TransitionSecondViewController: UIViewController {
    @IBOutlet weak var mottoTextView: UITextView!
    /*
     1. 앱 키면 데이터를 가지고 와서 텍스트 뷰에 보여주어야 함.
     2. 바뀐 데이터를 저장해주어야 함.
     => UserDefault
     */
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("TransitionSecondView",#function)
        /*
        if UserDefaults.standard.string(forKey: "nickname") != nil {
            // 가져오기
            mottoTextView.text = UserDefaults.standard.string(forKey: "nickname")} else {
                mottoTextView.text = "고래밥"
            } */
        mottoTextView.text = UserDefaults.standard.string(forKey: "nickname") ?? "고래밥"
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("TransitionSecondView",#function)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("TransitionSecondView",#function)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("TransitionSecondView",#function)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("TransitionSecondView",#function)
    }
    
    @IBAction func saveButtonClicked(_ sender: UIButton) {
        UserDefaults.standard.set(mottoTextView.text, forKey: "nickname")
        print("저장되었습니다.")
        // UserDefaults.standard.removeObject(forKey: <#T##String#>) // 지우기
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
