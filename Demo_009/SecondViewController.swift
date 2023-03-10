//
//  SecondViewController.swift
//  Demo_009
//
//  Created by 鄭淳澧 on 2021/7/17.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var myMiddleImageView: UIImageView!
    @IBOutlet weak var myBottomImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 取用 Asset 的 Gif 圖，將之顯示於 myBottomImageView
        guard let data = NSDataAsset(name: "q8bTGuy-2")?.data else { return }
        let cfData = data as CFData
        CGAnimateImageDataWithBlock(cfData, nil) { (_, cgImage, _) in
            self.myBottomImageView.image = UIImage(cgImage: cgImage)
        }
    }
    
    // 回上一頁的動作
    @IBAction func dismissTapped(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
//    @IBAction func goBacktoMain(segue: UIStoryboardSegue) {
//        if let controller = storyboard?.instantiateViewController(withIdentifier: "Main") {
//            present(controller, animated: true, completion: nil)
//            print("going back")
//        }
//    }
    
    
}
