//
//  satsuei.swift
//  lesson9 test
//
//  Created by book mac on 2022/01/06.
//

import UIKit


 
class satsuei: UIViewController, UIImagePickerControllerDelegate,
UINavigationControllerDelegate{
   
    
    
    @IBOutlet var cameraView : UIImageView!
    @IBOutlet var label : UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = "[カメラ]をタップしてね"
        
    }
    
    // カメラの撮影開始
    @IBAction func startCamera(_ sender : Any) {
        
        //カメラを使うことを宣言
        let sourceType:UIImagePickerController.SourceType =
            UIImagePickerController.SourceType.camera
        
        // カメラが利用可能かチェック
        if UIImagePickerController.isSourceTypeAvailable(
            UIImagePickerController.SourceType.camera){
            // インスタンスの作成
            let cameraPicker = UIImagePickerController()
            cameraPicker.sourceType = sourceType
            cameraPicker.delegate = self
            //ここまでで、カメラ機能であるUIImagePickerControllerを操作
            //以下の一行でカメラを起動
            self.present(cameraPicker, animated: true, completion: nil)
            
        }
        else{
            label.text = "カメラが使えません"
            
        }
    }
    
    //　撮影が完了時した時に呼ばれる　保存とカメラの再開
    func imagePickerController(_ imagePicker: UIImagePickerController,
            didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]){
        
        if let pickedImage = info[.originalImage]
            as? UIImage {
            
            cameraView.contentMode = .scaleAspectFit
            cameraView.image = pickedImage
            
        }
 
        //閉じる処理　初期画面に戻るよう指示
        imagePicker.dismiss(animated: true, completion: nil)
        label.text = "[保存]をタップしてね"
        
    }
    
    // 撮影がキャンセルされた時に呼ばれる
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true, completion: nil)
        label.text = "キャンセル"
    }
    
    
    // 写真を保存
    @IBAction func savePicture(_ sender : Any) {
        let image:UIImage! = cameraView.image
        
        if image != nil {
            UIImageWriteToSavedPhotosAlbum(
                image,
                self,
                #selector(satsuei.image(_:didFinishSavingWithError:contextInfo:)),
                nil)
        }
        else{
            label.text = "画像がないよ!"
        }
        
    }
    
    // 書き込み完了結果の受け取り
    @objc func image(_ image: UIImage,
                     didFinishSavingWithError error: NSError!,
                     contextInfo: UnsafeMutableRawPointer) {
        
        if error != nil {
            print(error.code)
            label.text = "保存しっぱいしました!"
        }
        else{
            label.text = "保存しました"
        }
    }
    
    // アルバムを表示
    @IBAction func showAlbum(_ sender : Any) {
        let sourceType:UIImagePickerController.SourceType =
            UIImagePickerController.SourceType.photoLibrary
        
        if UIImagePickerController.isSourceTypeAvailable(
            UIImagePickerController.SourceType.photoLibrary){
            // インスタンスの作成
            let cameraPicker = UIImagePickerController()
            cameraPicker.sourceType = sourceType
            cameraPicker.delegate = self
            self.present(cameraPicker, animated: true, completion: nil)
            
            label.text = "[カメラ]をタップしてね"
        }
        else{
            label.text = "エラーです"
            
        }
        
    }
    @IBAction func modoru(_ sender: Any) {
        
        //////////////////画面遷移時に画像を渡すQiita
        
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        
       
        
        // ②遷移先ViewControllerのインスタンス取得
     
        let nextVC = storyboard.instantiateViewController(withIdentifier: "tukuru1ViewController") as! tukuru1ViewController

                //satsueiのimage(画像データ)をtukuru1ViewControllerのimage(変数)に渡す
        nextVC.image = cameraView.image

        nextVC.modalPresentationStyle = .fullScreen
        present(nextVC, animated: true, completion: nil)
        
        //////////////////画面遷移時に画像を渡すQiitaここまで
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
