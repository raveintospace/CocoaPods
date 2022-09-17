//
//  ViewController.swift
//  CocoaPods
//
//  Created by Uri on 17/9/22.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    private lazy var view1: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.blue
        return view
    }()
    
    private lazy var view2: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.purple
        return view
    }()
    
    private lazy var view3: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.green
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        layout()
    }
    
    private func layout() {
        view.addSubview(view1)
        view1.snp.makeConstraints { (maker) in
            maker.width.equalTo(100)
            maker.height.equalTo(100)
            maker.centerX.equalToSuperview().offset(-50)
            maker.centerY.equalToSuperview()
        }
        
        view.addSubview(view2)
        view2.snp.makeConstraints { (maker) in
            maker.width.equalTo(40)
            maker.height.equalTo(40)
            maker.left.equalTo(view1.snp.right)
            maker.top.equalTo(view1.snp.top)
            
        }
        
    }


}

