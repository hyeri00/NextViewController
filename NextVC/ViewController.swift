//
//  ViewController.swift
//  NextVC
//
//  Created by 혜리 on 2022/11/04.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: 코드로 화면 이동
    // 1) 코드로 화면 이동 (다음 화면이 코드로 작성 되어 있을 때만 가능한 방법)
    @IBAction func codeNextButtonTapped(_ sender: Any) {
        let firstVC = FirstViewController()
        firstVC.someString = "아기상어"
        firstVC.modalPresentationStyle = .fullScreen
        present(firstVC, animated: true, completion: nil)
    }
    
    // MARK: 코드로 스토리보드 생성하여 화면 이동
    // 2) 코드로 스토리보드 객체를 생성해서, 화면 이동
    @IBAction func storyboardWithCodeButtonTapped(_ sender: Any) {
        guard let secondVC = storyboard?.instantiateViewController(withIdentifier: "secondVC") as? SecondViewController else { return }
        secondVC.someString = "아빠상어"
//        secondVC.mainLabel.text = "아빠상어" // 이렇게 작성하면 안 됨
        present(secondVC, animated: true, completion: nil)
    }
     
    // MARK: 스토리보드로 화면 이동
    // 3) 스토리보드에서의 화면 이동 (간접 세그웨이)
    @IBAction func storyboardWithSegueButtonTapped(_ sender: Any) {
        performSegue(withIdentifier: "toThirdVC", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toThirdVC" {
            let thirdVC = segue.destination as! ThirdViewController    // ThirdViewController에 접근이 됨
            // 데이터 전달
            thirdVC.someString = "엄마상어"
        }
        
        if segue.identifier == "toFourthVC" {
            let fourthVC = segue.destination as! FourthViewController
            fourthVC.someString = "뚜룰뚜둗"
        }
    }
    
    // 조건에 따라 세그웨이를 실행할지 말지
    // 버튼에서 직접적으로 연결 했을 때만 사용해야하며 실행 됨 (직접 세그웨이)
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
//        if true {
//            return false
//        } else {
            return true
//        }
    }
}

