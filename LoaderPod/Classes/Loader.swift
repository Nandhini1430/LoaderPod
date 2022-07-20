

//
//  Loader.swift
//  LoaderPod
//
//  Created by nandhini-pt5566 on 19/07/22.
//

import Foundation

public class Loader{
    
    public init(){}
    
    let alert=UIAlertController(title: nil, message: "Please wait...", preferredStyle: .alert)
    
    public func loader(color:UIColor)->(UIAlertController){
        
        
        let loadingIndicator=UIActivityIndicatorView(frame: CGRect(x: 10, y: 5, width: 50, height: 50))
        loadingIndicator.hidesWhenStopped=true
        if #available(iOS 13.0, *) {
            loadingIndicator.style=UIActivityIndicatorView.Style.medium
        } else {
            // Fallback on earlier versions
        }
        loadingIndicator.startAnimating()
        loadingIndicator.color = color
        alert.view.addSubview(loadingIndicator)
        return (alert)
    }
    
    public func stopLoader(loader:UIAlertController){
        DispatchQueue.main.asyncAfter(deadline: .now()+2){
            DispatchQueue.main.async{
                loader.dismiss(animated: true,completion: nil)
            }
        }
    }
}
