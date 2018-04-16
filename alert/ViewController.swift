//
//  ViewController.swift
//  alert
//
//  Created by D7703_28 on 2018. 4. 16..
//  Copyright © 2018년 YDuChoi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func alert(_ sender: Any) {
        let alert = UIAlertController(title:"선택", message: "확인", preferredStyle: .alert)
        //alert 생성 제목,내용,중앙출력(.alert) or 하단출력(.actionSheet)
        let okAction = UIAlertAction(title: "확인", style: .default, handler: {(action:  UIAlertAction!) in self.view.backgroundColor = UIColor.red})
        //alert 액션 생성 제목,스타일 : 종료, 선택 후 액션
        let noAction = UIAlertAction(title: "취소", style: .cancel) {(action:  UIAlertAction!) in self.view.backgroundColor = UIColor.red}
        //후행 클로저)Trailing Closure
        alert.addAction(okAction)
        alert.addAction(noAction)
        //alert에 okAction생성
        self.present(alert, animated: true, completion: nil)
        //alert 출력
    }
    
}

