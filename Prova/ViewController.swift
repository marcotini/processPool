//
//  ViewController.swift
//  Prova
//
//  Created by marco on 23/03/21.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKUIDelegate, WKNavigationDelegate {

    static let processPool = WKProcessPool()

    weak var navigationDelegate: WKNavigationDelegate?
    @IBOutlet var webViewHome: WKWebView!
    
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        webConfiguration.processPool = ViewController.processPool
        webViewHome = WKWebView(frame: .zero, configuration: webConfiguration)
        webViewHome.uiDelegate = self
        
        view = webViewHome
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = URL(string: "https://www.google.it/search?q=marco+tini")
        let request = URLRequest(url: url!)
        webViewHome.load(request)
    }
}
