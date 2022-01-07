//
//  cameraViewController.swift
//  lesson9 test
//
//  Created by book mac on 2022/01/06.
//

import UIKit

class cameraViewController: UIViewController, UIImagePickerControllerDelegate & UINavigationControllerDelegate {
    
    
    @IBOutlet weak var imageView: UIImageView!
    
    
    
    @IBAction func modoru(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
    //写真を撮影
    @IBAction func cameraActivationButtonAction(_ sender: Any) {
        let imagePicker = UIImagePickerController()
        imagePicker.sourceType = .camera
        imagePicker.delegate = self
        present(imagePicker, animated: true)
    }
   
    //撮った写真をimageViewに表示
    func imagePickerController(_ imagePicker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let pickedImage = info[.originalImage] as? UIImage {
            imageView.image = pickedImage
        }
        dismiss(animated: false)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        //色
        self.imageView.layer.borderColor = UIColor.blue.cgColor
        //線の太さ(太さ)
        self.imageView.layer.borderWidth = 3
        
        //新規作成の画面は常に画像なし
           imageView.image = UIImage(named: "gazoutukuri")
        
        // Do any additional setup after loading the view.
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
