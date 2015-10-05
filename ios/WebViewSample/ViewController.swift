//
//  ViewController.swift
//  WebViewSample
//
//  Created by Masahiko Okada on 2015/10/05.
//
//

import UIKit
import AudioToolbox

class ViewController: UIViewController, UIWebViewDelegate {

    @IBOutlet weak var mainWebView: UIWebView!

    var URL_STRING = "https://moqada.github.io/mobile-webview-example/"
    // var URL_STRING = "http://localhost:8000/index.html"

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

    func webView(webView: UIWebView, shouldStartLoadWithRequest request: NSURLRequest, navigationType: UIWebViewNavigationType) -> Bool {
        let url = request.URL
        let scheme = url!.scheme

        // myscheme の場合は何か処理
        if scheme == "myscheme" {
            AudioServicesPlayAlertSound(SystemSoundID(kSystemSoundID_Vibrate))
            return false
        }

        // myscheme 以外はスルー
        return true
    }


}

