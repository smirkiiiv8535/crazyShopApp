//
//  AdViewController.swift
//  crazyShopApp
//
//  Created by 林祐辰 on 2020/4/23.
//  Copyright © 2020 smirkiiiv. All rights reserved.
//

import UIKit

class AdViewController: UIViewController {

    @IBOutlet weak var renderImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        startSlideShow()
    }
       
    func startSlideShow(){
    
    let loadPic = [UIImage(named: "percent.png")!,UIImage(named:"jersey.png")!, UIImage(named:"shoes.png")! ,UIImage(named:"acces.png")!]

    // var showPic: [UIImage] = []
        
//    for i in 0...loadPic.count-1{
//    showPic.append(UIImage(named:loadPic[i])!)
//    }
//      renderImage.animationImages = showPic
        renderImage.animationImages = loadPic
        renderImage.animationDuration = 60
        renderImage.animationRepeatCount = 0
        renderImage.startAnimating()
   }
    
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
