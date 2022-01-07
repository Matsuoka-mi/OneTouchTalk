//
//  View8.swift
//  lesson9 test
//
//  Created by book mac on 2021/12/12.
//

import UIKit
/////////////player
import AVFoundation
//////////////player 

class View8: UIViewController, UIGestureRecognizerDelegate, AVAudioPlayerDelegate {

    @IBOutlet weak var image8View: UIImageView!
    
 
    //forkey
    let userDefaults:UserDefaults = UserDefaults.standard

    var checkButtonArray = [Int]()

    var view8gazo: Int = 0
    var view9gazo: Int = 0

    var kido8: Int = 0
    
    ////////////////////////////////////
    ///誤作動防止のため、２点タップしたら戻るようにする　次は48 49行目
    ///classにUIGestureRecognizerDelegateを記入してから。
    let modorutap = UserDefaults.standard.bool(forKey: "modoruTapkey")
    var modoruButton1: Bool = false
    var modoruButton2: Bool = false
    
    //imageViewの上にTapGestureRecognizerを追加。storyboardの一番右の黄色いまるからコントロールを押しながら移動したい画面へドラッグ。できた矢印をクリックした状態で右カラムのIdentifierに好きな名前をつける。
    //TapGestureRecognizerのアイコンとソースコードをコントロールを押しながら接続し「Action」で名前をつけて下記のように記入すると、画像をタップで画面遷移できる。
    
    @IBAction func modoruButton1(_ sender: Any) {
        if modorutap == true {
            modoruButton1 = true
            print("1が押された後のmodoruButton1\(modoruButton1)")
            print("1が押された後のmodoruButton2\(modoruButton2)")
        }
    }
    
    @IBAction func modoruButton2(_ sender: Any) {
        if modoruButton1 == true{
            modoruButton2 = true
            print(modoruButton1)
            print(modoruButton2)
            // ①storyboardのインスタンス取得
                    let storyboard: UIStoryboard = self.storyboard!
             
                    // ②遷移先ViewControllerのインスタンス取得
                    let nextView = storyboard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
             
                    // ③画面遷移
            let vc = nextView
            vc.modalPresentationStyle = .fullScreen
                    self.present(nextView, animated: true, completion: nil)
        }
    }
    
    
    
    @IBAction func Tap8(_ sender: Any) {
        modoruButton1 = false
        modoruButton2 = false
        print("tap8押した")
        //輝度//////////////////////////////////////////////輝度////////////////
        if kido8 == 1 {
        UIScreen.main.brightness = 1    //輝度１。明るい。
            kido8 = 0
        
        }
        
        else{
        
            let data = UserDefaults.standard.object(forKey: "checkButtonArray")
             checkButtonArray = data as! [Int]
            /*          受け取った配列                */
            for checkNumber in checkButtonArray {
                
            if checkNumber == 9{
            
            
                //画面遷移////////////////////////////
                let nextView = self.storyboard?.instantiateViewController(withIdentifier: "View9") as! View9
                       
             
                nextView.view9gazo = self.view9gazo
                         
                         let vc = nextView
                         vc.modalPresentationStyle = .fullScreen
                         self.present(vc, animated: true, completion: nil)
                         
                         //           self.present(redView, animated: true, completion: nil)    //遷移の実行
                         
                         //画面遷移////////////////////////////
                    break
                }
            }
        }
    
    }
    
    //////////////player
    //レコーダーアプリの作り方から
   
    private func getURL8() -> URL{
    //    return FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        
        
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        let docsDirect = paths[0]
        let url = docsDirect.appendingPathComponent("sample8.m4a")
        return url
        
        
    }
    
    var audioPlayer: AVAudioPlayer!
    //レコーダーアプリの作り方から
    //////////////player
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //recorder app
        
        audioPlayer = try! AVAudioPlayer(contentsOf: getURL8())
        audioPlayer.delegate = self
        audioPlayer.play()
        
        //recorder app
        
        
        
        if UserDefaults.standard.integer(forKey: "LED8") == 1
        {
          //輝度//////////////////////////////////////////////輝度////////////////
          UIScreen.main.brightness = 0.1 //0.1の輝度（暗い）
            kido8 = 1
            
        }
        else{
            UIScreen.main.brightness = 1
            kido8 = 0
        }
        
        switch self.view8gazo{
        case 1 :
            image8View.image = UIImage(named: "black")
     
            
        case 2 :
            image8View.image = UIImage(named: "white")
     
            
        case 3 :
            image8View.image = UIImage(named: "red")
            
            
        case 4:
            image8View.image = UIImage(named: "blue")
        case 5:
            image8View.image = UIImage(named: "green")
        case 6:
            image8View.image = UIImage(named: "yellow")
            
        case 7:
            image8View.image = UIImage(named: "pink")
        case 8:
            image8View.image = UIImage(named: "orange")
        case 9:
            image8View.image = UIImage(named: "purple")
            
        default:
            image8View.image = UIImage(named: "gazounashi")
        
       
        }
        
        
        
        
        
        // ピンチを定義
               //let pinchGesture = UIPinchGestureRecognizer(target: self, action: #selector(PinchCodeViewController.pinchView(_:)))  //Swift2.2以前
               let pinchGesture = UIPinchGestureRecognizer(target: self, action: #selector(redViewController.pinchView(sender:)))  //Swift3
               // viewにピンチを登録
               self.view.addGestureRecognizer(pinchGesture)
               
        
        ////////////////////////////////////
        ///////////////////////////////////////
        ///////////////////////////////////////
        //ここから、誤作動防止のためのコード
        
        //長押しインスタンスを生成する
        let longPressGesture: UILongPressGestureRecognizer = UILongPressGestureRecognizer(
            target: self,
            action: #selector(self.longPressAction(_:))
        )
        //デリゲートをセット
        longPressGesture.delegate = self
        //viewにlongPressGestureを追加
        self.view.addGestureRecognizer(longPressGesture)
        //長押しここまで
        
        
        // ダブルタップジェスチャーの設定
        // タップジェスチャーを作成します。
        let doubleTapGesture = UITapGestureRecognizer(target: self, action: #selector(doubleTap(_:)))
        
        // ダブルタップで反応するように設定します。
        doubleTapGesture.numberOfTapsRequired = 2
        
        // ビューにジェスチャーを設定します。
        self.view.addGestureRecognizer(doubleTapGesture)
        
        ////////////////////////////////////
        //ここまで、誤作動防止のためのコード
           }
           
    
    ////////////////////////////////////
    //ここから、誤作動防止のためのコード
    
    //左上をタップした後に長押しをしたら、無効になり、右下をタップしても画面は戻らない
    
    @objc func longPressAction(_ sender: UILongPressGestureRecognizer) {
        if sender.state == .ended {
            //ここに、長押し終了時に実行したい処理を記載する
            print("長押し")
            modoruButton1 = false
            modoruButton2 = false
        }
    }
    
    //左上をタップした後にダブルタップをしたら、無効になり、右下をタップしても画面は戻らない
    @objc func doubleTap(_ gesture: UITapGestureRecognizer) {
        // ダブルタップされた時の処理を記述してください。
        print("ダブルタップ")
        modoruButton1 = false
        modoruButton2 = false
    }
    
    
    override func viewWillDisappear(_ animated: Bool) {
        //インストール直後に「はじめに」を押した時、配列内はnilなのでエラーが出るための処理。
        //一度、「じゅんび」画面に入って何も触らず再度「はじめに」を押した時も同様の処理をするためにviewWillDisappearに入れている
        let data = UserDefaults.standard.object(forKey: "checkButtonArray")
        if data != nil {
            checkButtonArray = data as! [Int]
        } else {
            checkButtonArray = UserDefaults.standard.object(forKey: "checkButtonArray") as! [Int]
        }
        
    }
    
    
    
    
    
           /// ピンチイン・ピンチアウト時に実行される
    @objc func pinchView(sender: UIPinchGestureRecognizer) {
               print("pinch")
               // ピンチイン・ピンチアウトの拡大縮小率
               print("scale: \(sender.scale)")
       
        if modorutap == false {
        // ①storyboardのインスタンス取得
                let storyboard: UIStoryboard = self.storyboard!
         
                // ②遷移先ViewControllerのインスタンス取得
                let nextView = storyboard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
         
        // ③画面遷移
let vc = nextView
vc.modalPresentationStyle = .fullScreen
        self.present(nextView, animated: true, completion: nil)

       // 1秒あたりのピンチの速度(read-only)
       print("velocity: \(sender.velocity)")
   }

    }
}

