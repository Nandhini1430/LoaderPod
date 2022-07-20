

//
//  ViewController.swift
//  loader
//
//  Created by nandhini-pt5566 on 18/07/22.
//

import UIKit
import LoaderPod

class ViewController: UIViewController {

    let loader=Loader()
    var loaderView:UIAlertController!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func changeColor(_ sender: UIButton) {
        loaderView=loader.loader(color: .systemPink)
        present(loaderView, animated: true, completion: nil)
        loader.stopLoader(loader: loaderView)
    }

    
}

