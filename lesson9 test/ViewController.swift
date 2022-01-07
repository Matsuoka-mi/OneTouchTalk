//
//  ViewController.swift
//  lesson9 test/Users/bookmac/Desktop/Tech/iphone/lesson9/lesson9 test11_24/lesson9 test/ViewController.swift
//
//  Created by book mac on 2021/11/23.
//

import UIKit

//////////////test player あとで消す
import AVFoundation
//////////////test player あとで消すここまで

class ViewController: UIViewController, AVAudioPlayerDelegate {
    
    //forkey
    let userDefaults:UserDefaults = UserDefaults.standard
 
    
    var ViewControllergazo1: Int = 0
    var ViewControllergazo2: Int = 0
    var ViewControllergazo3: Int = 0
    var ViewControllergazo4: Int = 0
    var ViewControllergazo5: Int = 0
    var ViewControllergazo6: Int = 0
    var ViewControllergazo7: Int = 0
    var ViewControllergazo8: Int = 0
    var ViewControllergazo9: Int = 0
    
    var checkButtonArray = [Int]()
   
    
    //////////////test player あとで消す
    var audioPlayer: AVAudioPlayer!
    
    
    //レコーダーアプリの作り方から
   
    private func getURL() -> URL{
    //    return FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        
        
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        let docsDirect = paths[0]
        let url = docsDirect.appendingPathComponent("sample2.m4a")
        return url
        
        
    }
    
    //レコーダーアプリの作り方から
    
    @IBOutlet weak var player: UIButton!
    @IBAction func play(_ sender: Any) {
        
        
           
            //recorder app
            
            audioPlayer = try! AVAudioPlayer(contentsOf: getURL())
            audioPlayer.delegate = self
            audioPlayer.play()
            
            //recorder app
            
        
    }
    
    
    
    
    
    //////////////test player あとで消すここまで
    
    /*   10へ           */
    var test:Int = 0
   
    @IBAction func ronriwa(_ sender: Any) {
        test = 2
        if test == 1 || test == 2 || test == 3{
            print("論理和")
    }
    }
    
//    @IBOutlet weak var button10: UIButton!
    
/*    @IBAction func button10(_ sender: Any) {
        
        //画面遷移////////////////////////////
        let nextView = self.storyboard?.instantiateViewController(withIdentifier: "View10") as! View10
               
     
                 
                 let vc = nextView
                 vc.modalPresentationStyle = .fullScreen
                 self.present(vc, animated: true, completion: nil)
                 
                 //           self.present(redView, animated: true, completion: nil)    //遷移の実行
                 
                 //画面遷移////////////////////////////
        
    }
 */
    
    /*   10へ ここまで          */
    
    
    
    
    
    
   
    
    //画面の戻り方案内画像
    @IBOutlet weak var Touch: UIImageView!
    @IBOutlet weak var Pinch: UIImageView!
    

    @IBOutlet weak var hazimeru: UIButton!
    @IBOutlet weak var settei: UIButton!
    @IBOutlet weak var tukuru: UIButton!
    
    
    @IBAction func hazimeru(_ sender: UIButton) {
        
        //画面遷移////////////////////////////
        let FirstView = self.storyboard?.instantiateViewController(withIdentifier: "FirstViewController") as! FirstViewController
        //    FirstView.Firstgazo = self.ViewControllergazo1
        FirstView.Firstgazo1 = UserDefaults.standard.integer(forKey: "iro1")
        FirstView.Firstgazo2 = UserDefaults.standard.integer(forKey: "iro2")
        FirstView.Firstgazo3 = UserDefaults.standard.integer(forKey: "iro3")
        
        FirstView.Firstgazo4 = UserDefaults.standard.integer(forKey: "iro4")
        FirstView.Firstgazo5 = UserDefaults.standard.integer(forKey: "iro5")
        FirstView.Firstgazo6 = UserDefaults.standard.integer(forKey: "iro6")
        FirstView.Firstgazo7 = UserDefaults.standard.integer(forKey: "iro7")
        FirstView.Firstgazo8 = UserDefaults.standard.integer(forKey: "iro8")
        FirstView.Firstgazo9 = UserDefaults.standard.integer(forKey: "iro9")
        
       //インストール後すぐに「はじめる」を押した時
        let data = UserDefaults.standard.object(forKey: "checkButtonArray")
        
        // チェックボックスの配列がnilではないときの処理
        if data != nil {
       
    //        checkButtonArray = data as! [Int]
            checkButtonArray = UserDefaults.standard.object(forKey: "checkButtonArray") as! [Int]
           
            //       let values = [0, 0, 0, 0, 6]
            //配列の要素が全部０かどうか
                   let isAllEvenNumber = checkButtonArray.allSatisfy { $0 == 0 } // isAllEvenNumber == true

            print("全部ゼロかどうか\(isAllEvenNumber)")
            
            if isAllEvenNumber {
                // ①storyboardのインスタンス取得
                let storyboard: UIStoryboard = self.storyboard!
                
                // ②遷移先ViewControllerのインスタンス取得
                let nextView = storyboard.instantiateViewController(withIdentifier: "viewLast") as! LastViewController
                
                // ③画面遷移
                
                // 遷移方法にフルスクリーンを指定
                let vc = nextView
                vc.modalPresentationStyle = .fullScreen
                self.present(vc, animated: true, completion: nil)
                //self.present(nextView, animated: true, completion: nil)
               
             // checkButtonArray = [1]
            }
            
            else {
                
                // ③画面遷移
                
                // 遷移方法にフルスクリーンを指定
                let vc = FirstView
                vc.modalPresentationStyle = .fullScreen
                self.present(vc, animated: true, completion: nil)
                //self.present(nextView, animated: true, completion: nil)
               
             // checkButtonArray = [1]
            }
        }
        else{
            // ①storyboardのインスタンス取得
            let storyboard: UIStoryboard = self.storyboard!
            
            // ②遷移先ViewControllerのインスタンス取得
            let nextView = storyboard.instantiateViewController(withIdentifier: "viewLast") as! LastViewController
            
            // ③画面遷移
            
            // 遷移方法にフルスクリーンを指定
            let vc = nextView
            vc.modalPresentationStyle = .fullScreen
            self.present(vc, animated: true, completion: nil)
        
        }
        
    }
           /*          受け取った配列
            for checkNumber in checkButtonArray {
                print("checkButtonArray for文\(checkNumber)")
                */
       
                /*
                switch checkNumber {
                    
                //０の時
                    case 0:
                        iroNumber1 = self.gazo1
                        userDefaults.set(iroNumber1 , forKey: "iro1")
                        
                    
                //1の時
                case 1:
                    iroNumber1 = self.gazo1
                    userDefaults.set(iroNumber1 , forKey: "iro1")
                    
                //２の時
                case 2:
                    iroNumber2 = self.gazo1
                    userDefaults.set(iroNumber2 , forKey: "iro2")
                
                ////それ以外の時
                default:
                    iroNumber3 = self.gazo1
                    userDefaults.set(iroNumber3 , forKey: "iro3")
                }
                
               */
                
       
    
    @IBAction func zyunban(_ sender: UIButton) {
        
        
        /*          受け取った配列                */
        for checkNumber in checkButtonArray {
            
            if checkNumber == 3{
                print("Viewの3です")
            }
        }
        
        
        
        //「じゅんび」に色の値を渡す
        let zyunView = self.storyboard?.instantiateViewController(withIdentifier: "zyunbanViewController") as! zyunbanViewController
        zyunView.gazouzyun1 = self.ViewControllergazo1
        zyunView.gazouzyun2 = self.ViewControllergazo2
        zyunView.gazouzyun3 = self.ViewControllergazo3
        zyunView.gazouzyun4 = self.ViewControllergazo4
        zyunView.gazouzyun5 = self.ViewControllergazo5
        zyunView.gazouzyun6 = self.ViewControllergazo6
        zyunView.gazouzyun7 = self.ViewControllergazo7
        zyunView.gazouzyun8 = self.ViewControllergazo8
        zyunView.gazouzyun9 = self.ViewControllergazo9
        
        
        // 遷移方法にフルスクリーンを指定
        let vc = zyunView
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true, completion: nil)
        
        sender.isSelected = !sender.isSelected;
        
        //   self.present(zyunView, animated: true, completion: nil)    //遷移の実行
        sender.isSelected = !sender.isSelected;
        
    }
    
    @IBAction func tukuru(_ sender: UIButton) {
        
        
        
        /* あとで消すここから*/
        for checkNumber in checkButtonArray {
            print("checkButtonArray for文\(checkNumber)")
           
        }
        
        
        
        
        // 全ての値が偶数が判定する
    //    let values = [2, 4, 6, 8, 11]
        
        /* あとで消す 全ての要素が０か確認*/
        let values = [0, 0, 0, 0, 6]
        let isAllEvenNumber = values.allSatisfy { $0 == 0 } // isAllEvenNumber == true

        print(isAllEvenNumber)
        
        /* あとで消す　全ての要素が０か確認　ここまで*/
        
        // 全ての値が５文字以上か判定する
        let names = ["Sofia", "Camilla", "Martina", "Mateo", "Nicolás"]
        let allHaveAtLeastFive = names.allSatisfy({ $0.count >= 5 }) // allHaveAtLeastFive == true
        print(allHaveAtLeastFive)
        /* あとで消すここまで*/
        
        
        
        // ①storyboardのインスタンス取得
        let storyboard: UIStoryboard = self.storyboard!
        
        // ②遷移先ViewControllerのインスタンス取得
        let nextView = storyboard.instantiateViewController(withIdentifier: "tukuruViewController") as! tukuruViewController
        
        // ③画面遷移
        // 遷移方法にフルスクリーンを指定
        let vc = nextView
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true, completion: nil)
        
        sender.isSelected = !sender.isSelected;
        
        
        //     self.present(nextView, animated: true, completion: nil)
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        hazimeru.layer.cornerRadius = 20.0
        settei.layer.cornerRadius = 20.0
        tukuru.layer.cornerRadius = 20.0
        
        Touch.image = UIImage(named: "Touch")
        Pinch.image = UIImage(named: "Pinch")
    
        
        
        
       
        /*画面の明るさ*/  /*画面の明るさ*/  /*画面の明るさ*/  /*画面の明るさ*/
        
       
        UIScreen.main.brightness = 0.5    //輝度１。明るい。
       
        
        print("はじめにの画面のtag1の明るさはLED1\(UserDefaults.standard.integer(forKey: "LED1"))")
        print("はじめにの画面のtag1の明るさはLED2\(UserDefaults.standard.integer(forKey: "LED2"))")
        print("はじめにの画面のtag1の明るさはLED3\(UserDefaults.standard.integer(forKey: "LED3"))")
        
        
       
        
        //インストール直後に「はじめに」を押した時、配列内はnilなのでエラーが出るための処理。
        //一度、「じゅんび」画面に入って何も触らず再度「はじめに」を押した時も同様の処理をするためにviewWillDisappearに入れている
    
       
        let data = UserDefaults.standard.object(forKey: "checkButtonArray")
        if data != nil {
       
            checkButtonArray = data as! [Int]
        } else {
            
            
           
          checkButtonArray = [1]
            
            
        }
        
        
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
   
    
    
}

