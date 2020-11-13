//
//  ViewController.swift
//  FlickrSearch_1
//
//  Created by 江柏毅 on 2020/11/6.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var searchContent: UITextField!
    @IBOutlet var searchPage: UITextField!
    @IBOutlet var searchButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        searchButton.isEnabled = false
        searchButton.backgroundColor = UIColor.systemGray
        
        
        searchContent.addTarget(self, action: #selector(onClickChange), for: .editingChanged)
        searchPage.addTarget(self, action: #selector(onClickChange), for: .editingChanged)
        
        searchButton.addTarget(self, action: #selector(onClick), for: .touchDown)
        
    }
    @objc func onClick(){
        print("touchDown")
    }

    
    @objc func onClickChange() {
        if searchContent.hasText && searchPage.hasText{
            searchButton.isEnabled = true
            searchButton.backgroundColor = UIColor.systemBlue
        }
        else{
            searchButton.isEnabled = false
        }
    
    }
    
}

