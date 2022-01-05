import UIKit
import AVFoundation
class camera: UIViewController, UIImagePickerControllerDelegate & UINavigationControllerDelegate {


    var captureSession = AVCaptureSession()

    //カメラの画質の決定
    func setupCaptureSession() {
        captureSession.sessionPreset = AVCaptureSession.Preset.photo
    }

    //カメラデバイスそのものを管理するオブジェクトの作成
    //メインカメラの管理オブジェクトの作成
    var mainCamera: AVCaptureDevice?
    //インカメの管理オブジェクトの作成
    var innnerCamera: AVCaptureDevice?
    //現在使用しているカメラデバイスの管理オブジェクトの作成
    var currentDevice: AVCaptureDevice?

    @IBOutlet weak var cameraButton: UIButton!
    


    func setupDevice() {
        //カメラデバイスのプロパティ設定
        let deviceDiscoverySession = AVCaptureDevice.DiscoverySession(deviceTypes: [AVCaptureDevice.DeviceType.builtInWideAngleCamera], mediaType: AVMediaType.video, position: AVCaptureDevice.Position.unspecified
        )

        //プロパティの条件を満たしたカメラデバイスの取得
        let devices = deviceDiscoverySession.devices
        

        for device in devices {
            if device.position == AVCaptureDevice.Position.back {
                mainCamera = device
            }else if device.position == AVCaptureDevice.Position.front{
                innnerCamera = device
            }
        }
        //起動時のカメラを設定
        currentDevice = mainCamera

    }

    //キャプチャー出力データを受け付けるオブジェクト
    var photoOutput : AVCapturePhotoOutput?

    //入出力データの設定
    func setupInputOutput(){
        do {
            //
            let captureDeviceInput = try AVCaptureDeviceInput(device: currentDevice!)
            //
            captureSession.addInput(captureDeviceInput)
            //
            photoOutput = AVCapturePhotoOutput()
            //
            photoOutput!.setPreparedPhotoSettingsArray([AVCapturePhotoSettings(format: [AVVideoCodecKey : AVVideoCodecKey])], completionHandler: nil)
            captureSession.addOutput(photoOutput!)
        }catch{
            print(error)
        }
    }

    //
    var cameraPreviewLayer : AVCaptureVideoPreviewLayer?

    //
    func setupPreviewLayer() {
            // 指定したAVCaptureSessionでプレビューレイヤを初期化
            self.cameraPreviewLayer = AVCaptureVideoPreviewLayer(session: captureSession)
            // プレビューレイヤが、カメラのキャプチャーを縦横比を維持した状態で、表示するように設定
            self.cameraPreviewLayer?.videoGravity = AVLayerVideoGravity.resizeAspectFill
            // プレビューレイヤの表示の向きを設定
            self.cameraPreviewLayer?.connection?.videoOrientation = AVCaptureVideoOrientation.portrait

            self.cameraPreviewLayer?.frame = view.frame
            self.view.layer.insertSublayer(self.cameraPreviewLayer!, at: 0)
        }

    func styleCaptureButton(){
        cameraButton.layer.borderColor = UIColor.white.cgColor
        cameraButton.layer.borderWidth = 5
        cameraButton.clipsToBounds = true
        cameraButton.layer.cornerRadius = min(cameraButton.frame.width, cameraButton.frame.height) / 2
    }

    
    @IBAction func cameraButton_TouchUpInside(_ sender: Any) {
   
        let settings = AVCapturePhotoSettings()
        //フラッシュの設定
        settings.flashMode = .auto
        //カメラの手ブレ補正
 //       settings.isAutoStillImageStabilizationEnabled = true
        //撮影された画像をdelegateメソッドで処理
        self.photoOutput?.capturePhoto(with: settings, delegate: self as AVCapturePhotoCaptureDelegate)
    }

    @IBAction func cancel(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        setupCaptureSession()
        setupDevice()
        setupInputOutput()
        setupPreviewLayer()
        captureSession.startRunning()

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

extension camera: AVCapturePhotoCaptureDelegate{
    //撮影した画像データが生成された時に呼び出されるdelegateメソッド
    func photoOutput(_ output: AVCapturePhotoOutput, didFinishProcessingPhoto photo: AVCapturePhoto, error: Error?) {
        if let imageData = photo.fileDataRepresentation(){
            //Data型をUIImageオブジェクトに変換
            let uiImage = UIImage(data: imageData)
            //写真ライブラリーに画像を保存
            UIImageWriteToSavedPhotosAlbum(uiImage!, nil, nil, nil)
        }
    }
}
