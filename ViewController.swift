//
//  ViewController.swift
//  CKEditorExample
//
//  Created by Tobias Oho on 20.10.16.
//  Copyright © 2016 Tobias Oho. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    @IBOutlet weak var webView: WKWebView!
    
    var toolBar = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let path = Bundle.main.path(forResource: "index", ofType: "html")
        webView.scrollView.isScrollEnabled = true
        webView.scrollView.bounces = false
        
        
        let fileHtml = try! NSString(contentsOfFile: path!, encoding: String.Encoding.utf8.rawValue)
        
        
        webView.loadHTMLString(fileHtml as String, baseURL: NSURL.fileURL(withPath: path!))
        
     
        
        print("view did load done")
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }

    
    

}

