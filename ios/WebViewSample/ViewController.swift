//
//  ViewController.swift
//  WebViewSample
//
//  Created by Masahiko Okada on 2015/10/05.
//
//

import UIKit

class ViewController: UIViewController, UIWebViewDelegate {

    @IBOutlet weak var mainWebView: UIWebView!

    // var URL_STRING = "https://github.com/"
    var URL_STRING = "http://localhost:8000/index.html"

    override func viewDidLoad() {
        super.viewDidLoad()

        // URL をリクエスト
        let url = NSURL(string: URL_STRING)
        let req = NSURLRequest(URL: url!)

        // WebView にリクエスト投げてもらう
        mainWebView.loadRequest(req)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

