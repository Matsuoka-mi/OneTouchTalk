//
//  View9.swift
//  lesson9 test
//
//  Created by book mac on 2021/12/12.
//

import UIKit
/////////////player
import AVFoundation
//////////////player 

class View9: UIViewController, UIGestureRecognizerDelegate, AVAudioPlayerDelegate {
    
    @IBOutlet weak var image9View: UIImageView!
    
    
    //forkey
    let userDefaults:UserDefaults = UserDefaults.standard
    
    //録音したかどうか
    let rokuA9 = UserDefaults.standard.integer(forKey: "rokuA9")

    var checkButtonArray = [Int]()
    
    var kido9: Int = 0
   
    var view9gazo: Int = 0
    
    ////////////////////////////////////
    ///誤作動防止のため、２点タップしたら戻るようにする　次は48 49行目
    ///classにUIGestureRecognizerDelegateを記入してから。
    let modorutap = UserDefaults.standard.bool(forKey: "modoruTapkey")
    var modoruButton1: Bool = false
    var modoruButton2: Bool = false
    
    
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
    
    
    
    
    @IBAction func Tap9(_ sender: Any) {
        print("tap9押した")
        modoruButton1 = false
        modoruButton2 = false
  
        //輝度//////////////////////////////////////////////輝度////////////////
        if kido9 == 1 {
        UIScreen.main.brightness = 1    //輝度１。明るい。
            kido9 = 0
        
        }
        
        else{
        
            // ①storyboardのインスタンス取得
   //                 let storyboard: UIStoryboard = self.storyboard!
             
                    // ②遷移先ViewControllerのインスタンス取得
            let ViewController = self.storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController
            
            
                    // ③画面遷移
            
            // 遷移方法にフルスクリーンを指定
            let vc = ViewController
            vc.modalPresentationStyle = .fullScreen
            self.present(vc, animated: true, completion: nil)
    //                self.present(nextView, animated: true, completion: nil)
            
            
        }
    
        
    }
    
    //////////////player
    //レコーダーアプリの作り方から
   
    private func getURL9() -> URL{
    //    return FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        
        
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        let docsDirect = paths[0]
        let url = docsDirect.appendingPathComponent("sample9.m4a")
        return url
        
        
    }
    
    var audioPlayer: AVAudioPlayer!
    //レコーダーアプリの作り方から
    //////////////player
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //recorder app
        if rokuA9 == 0{
        print("録音ありません")
        }
            else{
        audioPlayer = try! AVAudioPlayer(contentsOf: getURL9())
        audioPlayer.delegate = self
        audioPlayer.play()
        
        //recorder app
            }
        
        if UserDefaults.standard.integer(forKey: "LED9") == 1{
          //輝度//////////////////////////////////////////////輝度////////////////
          UIScreen.main.brightness = 0.1 //0.1の輝度（暗い）
            kido9 = 1
            
        }
        else{
            UIScreen.main.brightness = 1
            kido9 = 0
        }
        
        switch self.view9gazo{
        case 1 :
            image9View.image = UIImage(named: "black")
     
            
        case 2 :
            image9View.image = UIImage(named: "white")
     
            
        case 3 :
            image9View.image = UIImage(named: "red")
            
        case 4:
            image9View.image = UIImage(named: "blue")
        case 5:
            image9View.image = UIImage(named: "green")
        case 6:
            image9View.image = UIImage(named: "yellow")
            
        case 7:
            image9View.image = UIImage(named: "pink")
        case 8:
            image9View.image = UIImage(named: "orange")
        case 9:
            image9View.image = UIImage(named: "purple")
            
            
            
        default:
            image9View.image = UIImage(named: "gazounashi")
       
        }
        
        
        
        
        
        
        
        
   //     image3View.image = UIImage(named: "green")
        
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
            checkButtonArray = [1]
        }
        
    }
    
    
    
    
    
           /// ピンチイン・ピンチアウト時に実行される
    @objc func pinchView(sender: UIPinchGestureRecognizer) {
      
        if modorutap == false {
        // ①storyboardのインスタンス取得
                let storyboard: UIStoryboard = self.storyboard!
         
                // ②遷移先ViewControllerのインスタンス取得
                let nextView = storyboard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
         
                // ③画面遷移
        // 遷移方法にフルスクリーンを指定
        let vc = nextView
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true, completion: nil)
        
       
             
           }
    
      

        // Do any additional setup after loading the view.
    }

}
