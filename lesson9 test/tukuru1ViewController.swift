//
//  tukuru1ViewController.swift
//  lesson9 test
//
//  Created by book mac on 2021/11/25.
//

import UIKit



var iroNumber1: Int = 0
var iroNumber2: Int = 0
var iroNumber3: Int = 0
var iroNumber4: Int = 0
var iroNumber5: Int = 0
var iroNumber6: Int = 0
var iroNumber7: Int = 0
var iroNumber8: Int = 0
var iroNumber9: Int = 0

//写真があるかないか　１なら撮影した、０なら撮影してない
var syashin:Int = 0







class tukuru1ViewController: UIViewController {
    
   
    
    //////////////////画面遷移時に画像を渡すQiita
    var image: UIImage?
    //////////////////画面遷移時に画像を渡すQiitaここまで
    
    
    @IBOutlet weak var blackButton: UIButton!
    @IBOutlet weak var whiteButton: UIButton!
    @IBOutlet weak var redButton: UIButton!
    @IBOutlet weak var blueButton: UIButton!
    @IBOutlet weak var greenButton: UIButton!
    @IBOutlet weak var yellowButton: UIButton!
    @IBOutlet weak var pinkButton: UIButton!
    @IBOutlet weak var orangeButton: UIButton!
    @IBOutlet weak var purpleButton: UIButton!
    @IBOutlet weak var camera: UIButton!
    
    
    let blackB = UIImage(named: "blackButton")
    let blackb = UIImage(named: "unblackButton")
    let whiteB = UIImage(named: "whiteButton")
    let whiteb = UIImage(named: "unwhiteButton")
    let redB = UIImage(named: "redButton")
    let redb = UIImage(named: "unredButton")
    let blueB = UIImage(named: "blueButton")
    let blueb = UIImage(named: "unblueButton")
    let greenB = UIImage(named: "greenButton")
    let greenb = UIImage(named: "ungreenButton")
    let yellowB = UIImage(named: "yellowButton")
    let yellowb = UIImage(named: "unyellowButton")
    let pinkB = UIImage(named: "pinkButton")
    let pinkb = UIImage(named: "unpinkButton")
    let orangeB = UIImage(named: "orangeButton")
    let orangeb = UIImage(named: "unorangeButton")
    let purpleB = UIImage(named: "purpleButton")
    let purpleb = UIImage(named: "unpurpleButton")
    
    
    var checkButtonArray = [Int]()
    var tagNumber1:Int = 0
    var tagNumber2:Int = 0
    var tagNumber3:Int = 0
    var tagNumber4:Int = 0
    var tagNumber5:Int = 0
    var tagNumber6:Int = 0
    var tagNumber7:Int = 0
    var tagNumber8:Int = 0
    var tagNumber9:Int = 0
    
    
    var gazo1: Int = 0
    
    var plusminustag:Int = 0
    
    let syoukyo = 1
    
    //写真撮影から戻ってきたら１にする　1680行参照
    var modottekita: Int = 0
    
    //forkey
    let userDefaults:UserDefaults = UserDefaults.standard
    
    
    //  let defaults = NSUserDefaults.resetStandardUserDefaults()
    
    @IBOutlet weak var imageViewtukuru1: UIImageView!
    
    @IBAction func blackAction(_ sender: UIButton) {
        self.gazo1 = 1
        imageViewtukuru1.image = UIImage(named: "black")            //画像を黒くする
        
        
        //ボタンの画像の切り替え
        self.blackButton.setImage(blackB, for: .normal)
        self.whiteButton.setImage(whiteb, for: .normal)
        self.redButton.setImage(redb, for: .normal)
        self.blueButton.setImage(blueb, for: .normal)
        self.greenButton.setImage(greenb, for: .normal)
        self.yellowButton.setImage(yellowb, for: .normal)
        self.pinkButton.setImage(pinkb, for: .normal)
        self.orangeButton.setImage(orangeb, for: .normal)
        self.purpleButton.setImage(purpleb, for: .normal)
      
    
        
        
        //tukuruViewControllerのプラスマイナスボタンのタグの番号をplusminustagに入れている。
        switch plusminustag {
        //1番の画像のプラスマイナスボタンが押されて遷移してきた時
        case 1:
            //gazo1 は黒が押されたら１が入る。
            iroNumber1 = self.gazo1
            
            //ここで押したボタンによってiroNumber1に入る値が変わり、iro1　という名前で保存される
            userDefaults.set(iroNumber1 , forKey: "iro1")
            
            //tagNumber1 に押されたプラスマイナスボタンのタグによって入る値が変わる。押されたボタンと押されていないボタンが１か０で管理できる。1287行目参照
            
            self.tagNumber1 = 1
            
            //tagNumber1 は　tagNumber1 という名前で保存される
            userDefaults.set(self.tagNumber1 , forKey: "tagNumber1")
    
            userDefaults.set(syoukyo , forKey: "tagBool1")
            
            
           
            print("画像を消したときのtagBool1はtukuruで\(userDefaults.bool(forKey: "tagBool1"))")
            
        //２番の画像のプラスマイナスボタンが押されて遷移してきた時
        case 2:
            iroNumber2 = self.gazo1
            userDefaults.set(iroNumber2 , forKey: "iro2")
            self.tagNumber2 = 2
            userDefaults.set(self.tagNumber2 , forKey: "tagNumber2")
            
            userDefaults.set(syoukyo , forKey: "tagBool2")
            print("画像を消したときのtagBool2はtukuruで\(userDefaults.bool(forKey: "tagBool2"))")
        
            
            //3番の画像のプラスマイナスボタンが押されて遷移してきた時
            case 3:
                iroNumber3 = self.gazo1
                userDefaults.set(iroNumber3 , forKey: "iro3")
                self.tagNumber3 = 3
                userDefaults.set(self.tagNumber3 , forKey: "tagNumber3")
                
                userDefaults.set(syoukyo , forKey: "tagBool3")
                print("画像を消したときのtagBool3はtukuruで\(userDefaults.bool(forKey: "tagBool3"))")
            
             //4番の画像のプラスマイナスボタンが押されて遷移してきた時
            case 4:
                iroNumber4 = self.gazo1
                userDefaults.set(iroNumber4 , forKey: "iro4")
                self.tagNumber4 = 4
                userDefaults.set(self.tagNumber4 , forKey: "tagNumber4")
                
                userDefaults.set(syoukyo , forKey: "tagBool4")
                print("画像を消したときのtagBool4はtukuruで\(userDefaults.bool(forKey: "tagBool4"))")
            
            
             //5番の画像のプラスマイナスボタンが押されて遷移してきた時
            case 5:
                iroNumber5 = self.gazo1
                userDefaults.set(iroNumber5 , forKey: "iro5")
                self.tagNumber5 = 5
                userDefaults.set(self.tagNumber5 , forKey: "tagNumber5")
                
                userDefaults.set(syoukyo , forKey: "tagBool5")
                print("画像を消したときのtagBool5はtukuruで\(userDefaults.bool(forKey: "tagBool5"))")
            
            
            //6番の画像のプラスマイナスボタンが押されて遷移してきた時
           case 6:
               iroNumber6 = self.gazo1
               userDefaults.set(iroNumber6 , forKey: "iro6")
               self.tagNumber6 = 6
               userDefaults.set(self.tagNumber6 , forKey: "tagNumber6")
               
               userDefaults.set(syoukyo , forKey: "tagBool6")
               print("画像を消したときのtagBool6はtukuruで\(userDefaults.bool(forKey: "tagBool6"))")
            
            
            //7番の画像のプラスマイナスボタンが押されて遷移してきた時
           case 7:
               iroNumber7 = self.gazo1
               userDefaults.set(iroNumber7 , forKey: "iro7")
               self.tagNumber7 = 7
               userDefaults.set(self.tagNumber7 , forKey: "tagNumber7")
               
               userDefaults.set(syoukyo , forKey: "tagBool7")
               print("画像を消したときのtagBool7はtukuruで\(userDefaults.bool(forKey: "tagBool7"))")
            
            
            
            //8番の画像のプラスマイナスボタンが押されて遷移してきた時
           case 8:
               iroNumber8 = self.gazo1
               userDefaults.set(iroNumber8 , forKey: "iro8")
               self.tagNumber8 = 8
               userDefaults.set(self.tagNumber8 , forKey: "tagNumber8")
               
               userDefaults.set(syoukyo , forKey: "tagBool8")
               print("画像を消したときのtagBool8はtukuruで\(userDefaults.bool(forKey: "tagBool8"))")
            
            
            
        ////それ以外の画像のプラスマイナスボタンが押されて遷移してきた時
        default:
            iroNumber9 = self.gazo1
            userDefaults.set(iroNumber9 , forKey: "iro9")
            self.tagNumber9 = 9
            userDefaults.set(self.tagNumber9 , forKey: "tagNumber9")
            
            userDefaults.set(syoukyo , forKey: "tagBool9")
            print("画像を消したときのtagBool9はtukuruで\(userDefaults.bool(forKey: "tagBool9"))")
            
        }
       
       
        print("plusminusのたぐ\(plusminustag)")
        print("黒を押したときのtukuru1のiroNumberは\(iroNumber1)")
        print("黒を押したときのtukuru1のタグNumber1は\(tagNumber1)")
       print("黒を押したときのtukuru1のタグNumber2は\(tagNumber2)")
        print("黒を押したときのtukuru1のタグNumber3は\(tagNumber3)")
        print("黒を押したときのtukuru1のタグNumber4は\(tagNumber4)")
         print("黒を押したときのtukuru1のタグNumber5は\(tagNumber5)")
        
        
    }
    
    @IBAction func whiteAction(_ sender: UIButton) {
        
        self.gazo1 = 2
        imageViewtukuru1.image = UIImage(named: "white")
        
        
        //ボタンの画像の切り替え
        self.blackButton.setImage(blackb, for: .normal)
        self.whiteButton.setImage(whiteB, for: .normal)
        self.redButton.setImage(redb, for: .normal)
        self.blueButton.setImage(blueb, for: .normal)
        self.greenButton.setImage(greenb, for: .normal)
        self.yellowButton.setImage(yellowb, for: .normal)
        self.pinkButton.setImage(pinkb, for: .normal)
        self.orangeButton.setImage(orangeb, for: .normal)
        self.purpleButton.setImage(purpleb, for: .normal)
        
        
        //tukuruViewControllerのプラスマイナスボタンのタグの番号をplusminustagに入れている。
        switch plusminustag {
        //1番の画像のプラスマイナスボタンが押されて遷移してきた時
        case 1:
            iroNumber1 = self.gazo1
            userDefaults.set(iroNumber1 , forKey: "iro1")
            self.tagNumber1 = 1
            userDefaults.set(self.tagNumber1 , forKey: "tagNumber1")
            
            userDefaults.set(syoukyo , forKey: "tagBool1")
            print("画像を消したときのtagBool1はtukuruで\(userDefaults.bool(forKey: "tagBool1"))")
            
        //２番の画像のプラスマイナスボタンが押されて遷移してきた時
        case 2:
            iroNumber2 = self.gazo1
            userDefaults.set(iroNumber2 , forKey: "iro2")
            self.tagNumber2 = 2
            userDefaults.set(self.tagNumber2 , forKey: "tagNumber2")
            
            userDefaults.set(syoukyo , forKey: "tagBool2")
            print("画像を消したときのtagBool2はtukuruで\(userDefaults.bool(forKey: "tagBool2"))")
        
            
            //3番の画像のプラスマイナスボタンが押されて遷移してきた時
            case 3:
                iroNumber3 = self.gazo1
                userDefaults.set(iroNumber3 , forKey: "iro3")
                self.tagNumber3 = 3
                userDefaults.set(self.tagNumber3 , forKey: "tagNumber3")
                
                userDefaults.set(syoukyo , forKey: "tagBool3")
                print("画像を消したときのtagBool3はtukuruで\(userDefaults.bool(forKey: "tagBool3"))")
                        
            
            //4番の画像のプラスマイナスボタンが押されて遷移してきた時
           case 4:
               iroNumber4 = self.gazo1
               userDefaults.set(iroNumber4 , forKey: "iro4")
               self.tagNumber4 = 4
               userDefaults.set(self.tagNumber4 , forKey: "tagNumber4")
               
               userDefaults.set(syoukyo , forKey: "tagBool4")
               print("画像を消したときのtagBool4はtukuruで\(userDefaults.bool(forKey: "tagBool4"))")
           
           
            //5番の画像のプラスマイナスボタンが押されて遷移してきた時
           case 5:
               iroNumber5 = self.gazo1
               userDefaults.set(iroNumber5 , forKey: "iro5")
               self.tagNumber5 = 5
               userDefaults.set(self.tagNumber5 , forKey: "tagNumber5")
               
               userDefaults.set(syoukyo , forKey: "tagBool5")
               print("画像を消したときのtagBool5はtukuruで\(userDefaults.bool(forKey: "tagBool5"))")
           
           
           //6番の画像のプラスマイナスボタンが押されて遷移してきた時
          case 6:
              iroNumber6 = self.gazo1
              userDefaults.set(iroNumber6 , forKey: "iro6")
              self.tagNumber6 = 6
              userDefaults.set(self.tagNumber6 , forKey: "tagNumber6")
              
              userDefaults.set(syoukyo , forKey: "tagBool6")
              print("画像を消したときのtagBool6はtukuruで\(userDefaults.bool(forKey: "tagBool6"))")
           
           
           //7番の画像のプラスマイナスボタンが押されて遷移してきた時
          case 7:
              iroNumber7 = self.gazo1
              userDefaults.set(iroNumber7 , forKey: "iro7")
              self.tagNumber7 = 7
              userDefaults.set(self.tagNumber7 , forKey: "tagNumber7")
              
              userDefaults.set(syoukyo , forKey: "tagBool7")
              print("画像を消したときのtagBool7はtukuruで\(userDefaults.bool(forKey: "tagBool7"))")
           
           
           
           //8番の画像のプラスマイナスボタンが押されて遷移してきた時
          case 8:
              iroNumber8 = self.gazo1
              userDefaults.set(iroNumber8 , forKey: "iro8")
              self.tagNumber8 = 8
              userDefaults.set(self.tagNumber8 , forKey: "tagNumber8")
              
              userDefaults.set(syoukyo , forKey: "tagBool8")
              print("画像を消したときのtagBool8はtukuruで\(userDefaults.bool(forKey: "tagBool8"))")
            
            
            
            
        ////それ以外の画像のプラスマイナスボタンが押されて遷移してきた時
        default:
            iroNumber9 = self.gazo1
            userDefaults.set(iroNumber9 , forKey: "iro9")
            self.tagNumber9 = 9
            userDefaults.set(self.tagNumber9 , forKey: "tagNumber9")
            
            userDefaults.set(syoukyo , forKey: "tagBool9")
            print("画像を消したときのtagBool9はtukuruで\(userDefaults.bool(forKey: "tagBool9"))")
        }
        
        print("plusminusのたぐ\(plusminustag)")
        print("白を押したときのtukuru1のiroNumberは\(iroNumber1)")
        print("白を押したときのtukuru1のタグNumber1は\(tagNumber1)")
       print("白を押したときのtukuru1のタグNumber2は\(tagNumber2)")
        print("白を押したときのtukuru1のタグNumber3は\(tagNumber3)")
        print("白を押したときのtukuru1のタグNumber4は\(tagNumber4)")
         print("白を押したときのtukuru1のタグNumber5は\(tagNumber5)")
    }
    

    
    
    
    
    @IBAction func redAction(_ sender: UIButton){
        
        
        
        
        self.gazo1 = 3
        imageViewtukuru1.image = UIImage(named: "red")
        
        //ボタンの画像の切り替え
        self.blackButton.setImage(blackb, for: .normal)
        self.whiteButton.setImage(whiteb, for: .normal)
        self.redButton.setImage(redB, for: .normal)
        self.blueButton.setImage(blueb, for: .normal)
        self.greenButton.setImage(greenb, for: .normal)
        self.yellowButton.setImage(yellowb, for: .normal)
        self.pinkButton.setImage(pinkb, for: .normal)
        self.orangeButton.setImage(orangeb, for: .normal)
        self.purpleButton.setImage(purpleb, for: .normal)
        
        //tukuruViewControllerのプラスマイナスボタンのタグの番号をplusminustagに入れている。
        switch plusminustag {
        //1番の画像のプラスマイナスボタンが押されて遷移してきた時
        case 1:
            iroNumber1 = self.gazo1
            userDefaults.set(iroNumber1 , forKey: "iro1")
            self.tagNumber1 = 1
            userDefaults.set(self.tagNumber1 , forKey: "tagNumber1")
            
            userDefaults.set(syoukyo , forKey: "tagBool1")
            print("画像を消したときのtagBool1はtukuruで\(userDefaults.bool(forKey: "tagBool1"))")
            
        //２番の画像のプラスマイナスボタンが押されて遷移してきた時
        case 2:
            iroNumber2 = self.gazo1
            userDefaults.set(iroNumber2 , forKey: "iro2")
            self.tagNumber2 = 2
            userDefaults.set(self.tagNumber2 , forKey: "tagNumber2")
            
            userDefaults.set(syoukyo , forKey: "tagBool2")
            print("画像を消したときのtagBool2はtukuruで\(userDefaults.bool(forKey: "tagBool2"))")
        
            
            //3番の画像のプラスマイナスボタンが押されて遷移してきた時
            case 3:
                iroNumber3 = self.gazo1
                userDefaults.set(iroNumber3 , forKey: "iro3")
                self.tagNumber3 = 3
                userDefaults.set(self.tagNumber3 , forKey: "tagNumber3")
                
                userDefaults.set(syoukyo , forKey: "tagBool3")
                print("画像を消したときのtagBool3はtukuruで\(userDefaults.bool(forKey: "tagBool3"))")
                        
            
            //4番の画像のプラスマイナスボタンが押されて遷移してきた時
           case 4:
               iroNumber4 = self.gazo1
               userDefaults.set(iroNumber4 , forKey: "iro4")
               self.tagNumber4 = 4
               userDefaults.set(self.tagNumber4 , forKey: "tagNumber4")
               
               userDefaults.set(syoukyo , forKey: "tagBool4")
               print("画像を消したときのtagBool4はtukuruで\(userDefaults.bool(forKey: "tagBool4"))")
           
           
            //5番の画像のプラスマイナスボタンが押されて遷移してきた時
           case 5:
               iroNumber5 = self.gazo1
               userDefaults.set(iroNumber5 , forKey: "iro5")
               self.tagNumber5 = 5
               userDefaults.set(self.tagNumber5 , forKey: "tagNumber5")
               
               userDefaults.set(syoukyo , forKey: "tagBool5")
               print("画像を消したときのtagBool5はtukuruで\(userDefaults.bool(forKey: "tagBool5"))")
           
           
           //6番の画像のプラスマイナスボタンが押されて遷移してきた時
          case 6:
              iroNumber6 = self.gazo1
              userDefaults.set(iroNumber6 , forKey: "iro6")
              self.tagNumber6 = 6
              userDefaults.set(self.tagNumber6 , forKey: "tagNumber6")
              
              userDefaults.set(syoukyo , forKey: "tagBool6")
              print("画像を消したときのtagBool6はtukuruで\(userDefaults.bool(forKey: "tagBool6"))")
           
           
           //7番の画像のプラスマイナスボタンが押されて遷移してきた時
          case 7:
              iroNumber7 = self.gazo1
              userDefaults.set(iroNumber7 , forKey: "iro7")
              self.tagNumber7 = 7
              userDefaults.set(self.tagNumber7 , forKey: "tagNumber7")
              
              userDefaults.set(syoukyo , forKey: "tagBool7")
              print("画像を消したときのtagBool7はtukuruで\(userDefaults.bool(forKey: "tagBool7"))")
           
           
           
           //8番の画像のプラスマイナスボタンが押されて遷移してきた時
          case 8:
              iroNumber8 = self.gazo1
              userDefaults.set(iroNumber8 , forKey: "iro8")
              self.tagNumber8 = 8
              userDefaults.set(self.tagNumber8 , forKey: "tagNumber8")
              
              userDefaults.set(syoukyo , forKey: "tagBool8")
              print("画像を消したときのtagBool8はtukuruで\(userDefaults.bool(forKey: "tagBool8"))")
            
            
            
            
        ////それ以外の画像のプラスマイナスボタンが押されて遷移してきた時
        default:
            iroNumber9 = self.gazo1
            userDefaults.set(iroNumber9 , forKey: "iro9")
            self.tagNumber9 = 9
            userDefaults.set(self.tagNumber9 , forKey: "tagNumber9")
            
            userDefaults.set(syoukyo , forKey: "tagBool9")
            print("画像を消したときのtagBool9はtukuruで\(userDefaults.bool(forKey: "tagBool9"))")
        }

      
        print("赤を押したときのtukuru1のiroNumberは\(iroNumber1)")
        print("赤を押したときのtukuru1のタグNumber1は\(tagNumber1)")
        print("赤を押したときのtukuru1のタグNumber2は\(tagNumber2)")
        print("赤を押したときのtukuru1のタグNumber3は\(tagNumber3)")
    }
    
    
    @IBAction func blueAction(_ sender: UIButton) {
        
            self.gazo1 = 4
            imageViewtukuru1.image = UIImage(named: "blue")
            
            //ボタンの画像の切り替え
            self.blackButton.setImage(blackb, for: .normal)
            self.whiteButton.setImage(whiteb, for: .normal)
            self.redButton.setImage(redb, for: .normal)
            self.blueButton.setImage(blueB, for: .normal)
            self.greenButton.setImage(greenb, for: .normal)
            self.yellowButton.setImage(yellowb, for: .normal)
            self.pinkButton.setImage(pinkb, for: .normal)
            self.orangeButton.setImage(orangeb, for: .normal)
            self.purpleButton.setImage(purpleb, for: .normal)
            
            //tukuruViewControllerのプラスマイナスボタンのタグの番号をplusminustagに入れている。
            switch plusminustag {
            //1番の画像のプラスマイナスボタンが押されて遷移してきた時
            case 1:
                iroNumber1 = self.gazo1
                userDefaults.set(iroNumber1 , forKey: "iro1")
                self.tagNumber1 = 1
                userDefaults.set(self.tagNumber1 , forKey: "tagNumber1")
                
                userDefaults.set(syoukyo , forKey: "tagBool1")
                print("画像を消したときのtagBool1はtukuruで\(userDefaults.bool(forKey: "tagBool1"))")
                
            //２番の画像のプラスマイナスボタンが押されて遷移してきた時
            case 2:
                iroNumber2 = self.gazo1
                userDefaults.set(iroNumber2 , forKey: "iro2")
                self.tagNumber2 = 2
                userDefaults.set(self.tagNumber2 , forKey: "tagNumber2")
                
                userDefaults.set(syoukyo , forKey: "tagBool2")
                print("画像を消したときのtagBool2はtukuruで\(userDefaults.bool(forKey: "tagBool2"))")
            
                
                //3番の画像のプラスマイナスボタンが押されて遷移してきた時
                case 3:
                    iroNumber3 = self.gazo1
                    userDefaults.set(iroNumber3 , forKey: "iro3")
                    self.tagNumber3 = 3
                    userDefaults.set(self.tagNumber3 , forKey: "tagNumber3")
                    
                    userDefaults.set(syoukyo , forKey: "tagBool3")
                    print("画像を消したときのtagBool3はtukuruで\(userDefaults.bool(forKey: "tagBool3"))")
                            
                
                //4番の画像のプラスマイナスボタンが押されて遷移してきた時
               case 4:
                   iroNumber4 = self.gazo1
                   userDefaults.set(iroNumber4 , forKey: "iro4")
                   self.tagNumber4 = 4
                   userDefaults.set(self.tagNumber4 , forKey: "tagNumber4")
                   
                   userDefaults.set(syoukyo , forKey: "tagBool4")
                   print("画像を消したときのtagBool4はtukuruで\(userDefaults.bool(forKey: "tagBool4"))")
               
               
                //5番の画像のプラスマイナスボタンが押されて遷移してきた時
               case 5:
                   iroNumber5 = self.gazo1
                   userDefaults.set(iroNumber5 , forKey: "iro5")
                   self.tagNumber5 = 5
                   userDefaults.set(self.tagNumber5 , forKey: "tagNumber5")
                   
                   userDefaults.set(syoukyo , forKey: "tagBool5")
                   print("画像を消したときのtagBool5はtukuruで\(userDefaults.bool(forKey: "tagBool5"))")
               
               
               //6番の画像のプラスマイナスボタンが押されて遷移してきた時
              case 6:
                  iroNumber6 = self.gazo1
                  userDefaults.set(iroNumber6 , forKey: "iro6")
                  self.tagNumber6 = 6
                  userDefaults.set(self.tagNumber6 , forKey: "tagNumber6")
                  
                  userDefaults.set(syoukyo , forKey: "tagBool6")
                  print("画像を消したときのtagBool6はtukuruで\(userDefaults.bool(forKey: "tagBool6"))")
               
               
               //7番の画像のプラスマイナスボタンが押されて遷移してきた時
              case 7:
                  iroNumber7 = self.gazo1
                  userDefaults.set(iroNumber7 , forKey: "iro7")
                  self.tagNumber7 = 7
                  userDefaults.set(self.tagNumber7 , forKey: "tagNumber7")
                  
                  userDefaults.set(syoukyo , forKey: "tagBool7")
                  print("画像を消したときのtagBool7はtukuruで\(userDefaults.bool(forKey: "tagBool7"))")
               
               
               
               //8番の画像のプラスマイナスボタンが押されて遷移してきた時
              case 8:
                  iroNumber8 = self.gazo1
                  userDefaults.set(iroNumber8 , forKey: "iro8")
                  self.tagNumber8 = 8
                  userDefaults.set(self.tagNumber8 , forKey: "tagNumber8")
                  
                  userDefaults.set(syoukyo , forKey: "tagBool8")
                  print("画像を消したときのtagBool8はtukuruで\(userDefaults.bool(forKey: "tagBool8"))")
                
                
                
                
            ////それ以外の画像のプラスマイナスボタンが押されて遷移してきた時
            default:
                iroNumber9 = self.gazo1
                userDefaults.set(iroNumber9 , forKey: "iro9")
                self.tagNumber9 = 9
                userDefaults.set(self.tagNumber9 , forKey: "tagNumber9")
                
                userDefaults.set(syoukyo , forKey: "tagBool9")
                print("画像を消したときのtagBool9はtukuruで\(userDefaults.bool(forKey: "tagBool9"))")
            }

          
            print("青を押したときのtukuru1のiroNumberは\(iroNumber1)")
            print("青を押したときのtukuru1のタグNumber1は\(tagNumber1)")
            print("青を押したときのtukuru1のタグNumber2は\(tagNumber2)")
            print("青を押したときのtukuru1のタグNumber3は\(tagNumber3)")
        
       
    }
    
    
    @IBAction func greenAction(_ sender: UIButton) {
     
     self.gazo1 = 5
     imageViewtukuru1.image = UIImage(named: "green")
     
     //ボタンの画像の切り替え
     self.blackButton.setImage(blackb, for: .normal)
     self.whiteButton.setImage(whiteb, for: .normal)
     self.redButton.setImage(redb, for: .normal)
     self.blueButton.setImage(blueb, for: .normal)
     self.greenButton.setImage(greenB, for: .normal)
     self.yellowButton.setImage(yellowb, for: .normal)
     self.pinkButton.setImage(pinkb, for: .normal)
     self.orangeButton.setImage(orangeb, for: .normal)
     self.purpleButton.setImage(purpleb, for: .normal)
     
     //tukuruViewControllerのプラスマイナスボタンのタグの番号をplusminustagに入れている。
     switch plusminustag {
     //1番の画像のプラスマイナスボタンが押されて遷移してきた時
     case 1:
         iroNumber1 = self.gazo1
         userDefaults.set(iroNumber1 , forKey: "iro1")
         self.tagNumber1 = 1
         userDefaults.set(self.tagNumber1 , forKey: "tagNumber1")
         
         userDefaults.set(syoukyo , forKey: "tagBool1")
         print("画像を消したときのtagBool1はtukuruで\(userDefaults.bool(forKey: "tagBool1"))")
         
     //２番の画像のプラスマイナスボタンが押されて遷移してきた時
     case 2:
         iroNumber2 = self.gazo1
         userDefaults.set(iroNumber2 , forKey: "iro2")
         self.tagNumber2 = 2
         userDefaults.set(self.tagNumber2 , forKey: "tagNumber2")
         
         userDefaults.set(syoukyo , forKey: "tagBool2")
         print("画像を消したときのtagBool2はtukuruで\(userDefaults.bool(forKey: "tagBool2"))")
     
         
         //3番の画像のプラスマイナスボタンが押されて遷移してきた時
         case 3:
             iroNumber3 = self.gazo1
             userDefaults.set(iroNumber3 , forKey: "iro3")
             self.tagNumber3 = 3
             userDefaults.set(self.tagNumber3 , forKey: "tagNumber3")
             
             userDefaults.set(syoukyo , forKey: "tagBool3")
             print("画像を消したときのtagBool3はtukuruで\(userDefaults.bool(forKey: "tagBool3"))")
                     
         
         //4番の画像のプラスマイナスボタンが押されて遷移してきた時
        case 4:
            iroNumber4 = self.gazo1
            userDefaults.set(iroNumber4 , forKey: "iro4")
            self.tagNumber4 = 4
            userDefaults.set(self.tagNumber4 , forKey: "tagNumber4")
            
            userDefaults.set(syoukyo , forKey: "tagBool4")
            print("画像を消したときのtagBool4はtukuruで\(userDefaults.bool(forKey: "tagBool4"))")
        
        
         //5番の画像のプラスマイナスボタンが押されて遷移してきた時
        case 5:
            iroNumber5 = self.gazo1
            userDefaults.set(iroNumber5 , forKey: "iro5")
            self.tagNumber5 = 5
            userDefaults.set(self.tagNumber5 , forKey: "tagNumber5")
            
            userDefaults.set(syoukyo , forKey: "tagBool5")
            print("画像を消したときのtagBool5はtukuruで\(userDefaults.bool(forKey: "tagBool5"))")
        
        
        //6番の画像のプラスマイナスボタンが押されて遷移してきた時
       case 6:
           iroNumber6 = self.gazo1
           userDefaults.set(iroNumber6 , forKey: "iro6")
           self.tagNumber6 = 6
           userDefaults.set(self.tagNumber6 , forKey: "tagNumber6")
           
           userDefaults.set(syoukyo , forKey: "tagBool6")
           print("画像を消したときのtagBool6はtukuruで\(userDefaults.bool(forKey: "tagBool6"))")
        
        
        //7番の画像のプラスマイナスボタンが押されて遷移してきた時
       case 7:
           iroNumber7 = self.gazo1
           userDefaults.set(iroNumber7 , forKey: "iro7")
           self.tagNumber7 = 7
           userDefaults.set(self.tagNumber7 , forKey: "tagNumber7")
           
           userDefaults.set(syoukyo , forKey: "tagBool7")
           print("画像を消したときのtagBool7はtukuruで\(userDefaults.bool(forKey: "tagBool7"))")
        
        
        
        //8番の画像のプラスマイナスボタンが押されて遷移してきた時
       case 8:
           iroNumber8 = self.gazo1
           userDefaults.set(iroNumber8 , forKey: "iro8")
           self.tagNumber8 = 8
           userDefaults.set(self.tagNumber8 , forKey: "tagNumber8")
           
           userDefaults.set(syoukyo , forKey: "tagBool8")
           print("画像を消したときのtagBool8はtukuruで\(userDefaults.bool(forKey: "tagBool8"))")
         
         
         
         
     ////それ以外の画像のプラスマイナスボタンが押されて遷移してきた時
     default:
         iroNumber9 = self.gazo1
         userDefaults.set(iroNumber9 , forKey: "iro9")
         self.tagNumber9 = 9
         userDefaults.set(self.tagNumber9 , forKey: "tagNumber9")
         
         userDefaults.set(syoukyo , forKey: "tagBool9")
         print("画像を消したときのtagBool9はtukuruで\(userDefaults.bool(forKey: "tagBool9"))")
         
         
         
     }
        print("緑を押したときのtukuru1のiroNumberは\(iroNumber1)")
        print("緑を押したときのtukuru1のタグNumber1は\(tagNumber1)")
        print("緑を押したときのtukuru1のタグNumber2は\(tagNumber2)")
        print("緑を押したときのtukuru1のタグNumber3は\(tagNumber3)")
    
     
    }
    
    @IBAction func yellowAction(_ sender: UIButton) {
        
        self.gazo1 = 6
        imageViewtukuru1.image = UIImage(named: "yellow")
        
        //ボタンの画像の切り替え
        self.blackButton.setImage(blackb, for: .normal)
        self.whiteButton.setImage(whiteb, for: .normal)
        self.redButton.setImage(redb, for: .normal)
        self.blueButton.setImage(blueb, for: .normal)
        self.greenButton.setImage(greenb, for: .normal)
        self.yellowButton.setImage(yellowB, for: .normal)
        self.pinkButton.setImage(pinkb, for: .normal)
        self.orangeButton.setImage(orangeb, for: .normal)
        self.purpleButton.setImage(purpleb, for: .normal)
        
        //tukuruViewControllerのプラスマイナスボタンのタグの番号をplusminustagに入れている。
        switch plusminustag {
        //1番の画像のプラスマイナスボタンが押されて遷移してきた時
        case 1:
            iroNumber1 = self.gazo1
            userDefaults.set(iroNumber1 , forKey: "iro1")
            self.tagNumber1 = 1
            userDefaults.set(self.tagNumber1 , forKey: "tagNumber1")
            
            userDefaults.set(syoukyo , forKey: "tagBool1")
            print("画像を消したときのtagBool1はtukuruで\(userDefaults.bool(forKey: "tagBool1"))")
            
        //２番の画像のプラスマイナスボタンが押されて遷移してきた時
        case 2:
            iroNumber2 = self.gazo1
            userDefaults.set(iroNumber2 , forKey: "iro2")
            self.tagNumber2 = 2
            userDefaults.set(self.tagNumber2 , forKey: "tagNumber2")
            
            userDefaults.set(syoukyo , forKey: "tagBool2")
            print("画像を消したときのtagBool2はtukuruで\(userDefaults.bool(forKey: "tagBool2"))")
        
            
            //3番の画像のプラスマイナスボタンが押されて遷移してきた時
            case 3:
                iroNumber3 = self.gazo1
                userDefaults.set(iroNumber3 , forKey: "iro3")
                self.tagNumber3 = 3
                userDefaults.set(self.tagNumber3 , forKey: "tagNumber3")
                
                userDefaults.set(syoukyo , forKey: "tagBool3")
                print("画像を消したときのtagBool3はtukuruで\(userDefaults.bool(forKey: "tagBool3"))")
                        
            
            //4番の画像のプラスマイナスボタンが押されて遷移してきた時
           case 4:
               iroNumber4 = self.gazo1
               userDefaults.set(iroNumber4 , forKey: "iro4")
               self.tagNumber4 = 4
               userDefaults.set(self.tagNumber4 , forKey: "tagNumber4")
               
               userDefaults.set(syoukyo , forKey: "tagBool4")
               print("画像を消したときのtagBool4はtukuruで\(userDefaults.bool(forKey: "tagBool4"))")
           
           
            //5番の画像のプラスマイナスボタンが押されて遷移してきた時
           case 5:
               iroNumber5 = self.gazo1
               userDefaults.set(iroNumber5 , forKey: "iro5")
               self.tagNumber5 = 5
               userDefaults.set(self.tagNumber5 , forKey: "tagNumber5")
               
               userDefaults.set(syoukyo , forKey: "tagBool5")
               print("画像を消したときのtagBool5はtukuruで\(userDefaults.bool(forKey: "tagBool5"))")
           
           
           //6番の画像のプラスマイナスボタンが押されて遷移してきた時
          case 6:
              iroNumber6 = self.gazo1
              userDefaults.set(iroNumber6 , forKey: "iro6")
              self.tagNumber6 = 6
              userDefaults.set(self.tagNumber6 , forKey: "tagNumber6")
              
              userDefaults.set(syoukyo , forKey: "tagBool6")
              print("画像を消したときのtagBool6はtukuruで\(userDefaults.bool(forKey: "tagBool6"))")
           
           
           //7番の画像のプラスマイナスボタンが押されて遷移してきた時
          case 7:
              iroNumber7 = self.gazo1
              userDefaults.set(iroNumber7 , forKey: "iro7")
              self.tagNumber7 = 7
              userDefaults.set(self.tagNumber7 , forKey: "tagNumber7")
              
              userDefaults.set(syoukyo , forKey: "tagBool7")
              print("画像を消したときのtagBool7はtukuruで\(userDefaults.bool(forKey: "tagBool7"))")
           
           
           
           //8番の画像のプラスマイナスボタンが押されて遷移してきた時
          case 8:
              iroNumber8 = self.gazo1
              userDefaults.set(iroNumber8 , forKey: "iro8")
              self.tagNumber8 = 8
              userDefaults.set(self.tagNumber8 , forKey: "tagNumber8")
              
              userDefaults.set(syoukyo , forKey: "tagBool8")
              print("画像を消したときのtagBool8はtukuruで\(userDefaults.bool(forKey: "tagBool8"))")
            
            
            
            
        ////それ以外の画像のプラスマイナスボタンが押されて遷移してきた時
        default:
            iroNumber9 = self.gazo1
            userDefaults.set(iroNumber9 , forKey: "iro9")
            self.tagNumber9 = 9
            userDefaults.set(self.tagNumber9 , forKey: "tagNumber9")
            
            userDefaults.set(syoukyo , forKey: "tagBool9")
            print("画像を消したときのtagBool9はtukuruで\(userDefaults.bool(forKey: "tagBool9"))")
            
            
        }

        print("黄色を押したときのtukuru1のiroNumberは\(iroNumber1)")
        print("黄色を押したときのtukuru1のタグNumber1は\(tagNumber1)")
        print("黄色を押したときのtukuru1のタグNumber2は\(tagNumber2)")
        print("黄色を押したときのtukuru1のタグNumber3は\(tagNumber3)")
    
    }
    
    @IBAction func pinkAction(_ sender: UIButton) {
        
        self.gazo1 = 7
        imageViewtukuru1.image = UIImage(named: "pink")
        
        //ボタンの画像の切り替え
        self.blackButton.setImage(blackb, for: .normal)
        self.whiteButton.setImage(whiteb, for: .normal)
        self.redButton.setImage(redb, for: .normal)
        self.blueButton.setImage(blueb, for: .normal)
        self.greenButton.setImage(greenb, for: .normal)
        self.yellowButton.setImage(yellowb, for: .normal)
        self.pinkButton.setImage(pinkB, for: .normal)
        self.orangeButton.setImage(orangeb, for: .normal)
        self.purpleButton.setImage(purpleb, for: .normal)
        
        //tukuruViewControllerのプラスマイナスボタンのタグの番号をplusminustagに入れている。
        switch plusminustag {
        //1番の画像のプラスマイナスボタンが押されて遷移してきた時
        case 1:
            iroNumber1 = self.gazo1
            userDefaults.set(iroNumber1 , forKey: "iro1")
            self.tagNumber1 = 1
            userDefaults.set(self.tagNumber1 , forKey: "tagNumber1")
            
            userDefaults.set(syoukyo , forKey: "tagBool1")
            print("画像を消したときのtagBool1はtukuruで\(userDefaults.bool(forKey: "tagBool1"))")
            
            
            
        //２番の画像のプラスマイナスボタンが押されて遷移してきた時
        case 2:
            iroNumber2 = self.gazo1
            userDefaults.set(iroNumber2 , forKey: "iro2")
            self.tagNumber2 = 2
            userDefaults.set(self.tagNumber2 , forKey: "tagNumber2")
            
            userDefaults.set(syoukyo , forKey: "tagBool2")
            print("画像を消したときのtagBool2はtukuruで\(userDefaults.bool(forKey: "tagBool2"))")
        
            
            //3番の画像のプラスマイナスボタンが押されて遷移してきた時
            case 3:
                iroNumber3 = self.gazo1
                userDefaults.set(iroNumber3 , forKey: "iro3")
                self.tagNumber3 = 3
                userDefaults.set(self.tagNumber3 , forKey: "tagNumber3")
                
                userDefaults.set(syoukyo , forKey: "tagBool3")
                print("画像を消したときのtagBool3はtukuruで\(userDefaults.bool(forKey: "tagBool3"))")
                        
            
            //4番の画像のプラスマイナスボタンが押されて遷移してきた時
           case 4:
               iroNumber4 = self.gazo1
               userDefaults.set(iroNumber4 , forKey: "iro4")
               self.tagNumber4 = 4
               userDefaults.set(self.tagNumber4 , forKey: "tagNumber4")
               
               userDefaults.set(syoukyo , forKey: "tagBool4")
               print("画像を消したときのtagBool4はtukuruで\(userDefaults.bool(forKey: "tagBool4"))")
           
           
            //5番の画像のプラスマイナスボタンが押されて遷移してきた時
           case 5:
               iroNumber5 = self.gazo1
               userDefaults.set(iroNumber5 , forKey: "iro5")
               self.tagNumber5 = 5
               userDefaults.set(self.tagNumber5 , forKey: "tagNumber5")
               
               userDefaults.set(syoukyo , forKey: "tagBool5")
               print("画像を消したときのtagBool5はtukuruで\(userDefaults.bool(forKey: "tagBool5"))")
           
           
           //6番の画像のプラスマイナスボタンが押されて遷移してきた時
          case 6:
              iroNumber6 = self.gazo1
              userDefaults.set(iroNumber6 , forKey: "iro6")
              self.tagNumber6 = 6
              userDefaults.set(self.tagNumber6 , forKey: "tagNumber6")
              
              userDefaults.set(syoukyo , forKey: "tagBool6")
              print("画像を消したときのtagBool6はtukuruで\(userDefaults.bool(forKey: "tagBool6"))")
           
           
           //7番の画像のプラスマイナスボタンが押されて遷移してきた時
          case 7:
              iroNumber7 = self.gazo1
              userDefaults.set(iroNumber7 , forKey: "iro7")
              self.tagNumber7 = 7
              userDefaults.set(self.tagNumber7 , forKey: "tagNumber7")
              
              userDefaults.set(syoukyo , forKey: "tagBool7")
              print("画像を消したときのtagBool7はtukuruで\(userDefaults.bool(forKey: "tagBool7"))")
           
           
           
           //8番の画像のプラスマイナスボタンが押されて遷移してきた時
          case 8:
              iroNumber8 = self.gazo1
              userDefaults.set(iroNumber8 , forKey: "iro8")
              self.tagNumber8 = 8
              userDefaults.set(self.tagNumber8 , forKey: "tagNumber8")
              
              userDefaults.set(syoukyo , forKey: "tagBool8")
              print("画像を消したときのtagBool8はtukuruで\(userDefaults.bool(forKey: "tagBool8"))")
            
            
            
            
        ////それ以外の画像のプラスマイナスボタンが押されて遷移してきた時
        default:
            iroNumber9 = self.gazo1
            userDefaults.set(iroNumber9 , forKey: "iro9")
            self.tagNumber9 = 9
            userDefaults.set(self.tagNumber9 , forKey: "tagNumber9")
            
            userDefaults.set(syoukyo , forKey: "tagBool9")
            print("画像を消したときのtagBool9はtukuruで\(userDefaults.bool(forKey: "tagBool9"))")
            
            
        }

        print("ピンクを押したときのtukuru1のiroNumberは\(iroNumber1)")
        print("ピンクを押したときのtukuru1のタグNumber1は\(tagNumber1)")
        print("ピンクを押したときのtukuru1のタグNumber2は\(tagNumber2)")
        print("ピンクを押したときのtukuru1のタグNumber3は\(tagNumber3)")
    }
    
    @IBAction func orangeAction(_ sender: UIButton) {
        
        self.gazo1 = 8
        imageViewtukuru1.image = UIImage(named: "orange")
        
        //ボタンの画像の切り替え
        self.blackButton.setImage(blackb, for: .normal)
        self.whiteButton.setImage(whiteb, for: .normal)
        self.redButton.setImage(redb, for: .normal)
        self.blueButton.setImage(blueb, for: .normal)
        self.greenButton.setImage(greenb, for: .normal)
        self.yellowButton.setImage(yellowb, for: .normal)
        self.pinkButton.setImage(pinkb, for: .normal)
        self.orangeButton.setImage(orangeB, for: .normal)
        self.purpleButton.setImage(purpleb, for: .normal)
        
        //tukuruViewControllerのプラスマイナスボタンのタグの番号をplusminustagに入れている。
        switch plusminustag {
        //1番の画像のプラスマイナスボタンが押されて遷移してきた時
        case 1:
            iroNumber1 = self.gazo1
            userDefaults.set(iroNumber1 , forKey: "iro1")
            self.tagNumber1 = 1
            userDefaults.set(self.tagNumber1 , forKey: "tagNumber1")
            
            userDefaults.set(syoukyo , forKey: "tagBool1")
            print("画像を消したときのtagBool1はtukuruで\(userDefaults.bool(forKey: "tagBool1"))")
            
        //２番の画像のプラスマイナスボタンが押されて遷移してきた時
        case 2:
            iroNumber2 = self.gazo1
            userDefaults.set(iroNumber2 , forKey: "iro2")
            self.tagNumber2 = 2
            userDefaults.set(self.tagNumber2 , forKey: "tagNumber2")
            
            userDefaults.set(syoukyo , forKey: "tagBool2")
            print("画像を消したときのtagBool2はtukuruで\(userDefaults.bool(forKey: "tagBool2"))")
        
            
            //3番の画像のプラスマイナスボタンが押されて遷移してきた時
            case 3:
                iroNumber3 = self.gazo1
                userDefaults.set(iroNumber3 , forKey: "iro3")
                self.tagNumber3 = 3
                userDefaults.set(self.tagNumber3 , forKey: "tagNumber3")
                
                userDefaults.set(syoukyo , forKey: "tagBool3")
                print("画像を消したときのtagBool3はtukuruで\(userDefaults.bool(forKey: "tagBool3"))")
                        
            
            //4番の画像のプラスマイナスボタンが押されて遷移してきた時
           case 4:
               iroNumber4 = self.gazo1
               userDefaults.set(iroNumber4 , forKey: "iro4")
               self.tagNumber4 = 4
               userDefaults.set(self.tagNumber4 , forKey: "tagNumber4")
               
               userDefaults.set(syoukyo , forKey: "tagBool4")
               print("画像を消したときのtagBool4はtukuruで\(userDefaults.bool(forKey: "tagBool4"))")
           
           
            //5番の画像のプラスマイナスボタンが押されて遷移してきた時
           case 5:
               iroNumber5 = self.gazo1
               userDefaults.set(iroNumber5 , forKey: "iro5")
               self.tagNumber5 = 5
               userDefaults.set(self.tagNumber5 , forKey: "tagNumber5")
               
               userDefaults.set(syoukyo , forKey: "tagBool5")
               print("画像を消したときのtagBool5はtukuruで\(userDefaults.bool(forKey: "tagBool5"))")
           
           
           //6番の画像のプラスマイナスボタンが押されて遷移してきた時
          case 6:
              iroNumber6 = self.gazo1
              userDefaults.set(iroNumber6 , forKey: "iro6")
              self.tagNumber6 = 6
              userDefaults.set(self.tagNumber6 , forKey: "tagNumber6")
              
              userDefaults.set(syoukyo , forKey: "tagBool6")
              print("画像を消したときのtagBool6はtukuruで\(userDefaults.bool(forKey: "tagBool6"))")
           
           
           //7番の画像のプラスマイナスボタンが押されて遷移してきた時
          case 7:
              iroNumber7 = self.gazo1
              userDefaults.set(iroNumber7 , forKey: "iro7")
              self.tagNumber7 = 7
              userDefaults.set(self.tagNumber7 , forKey: "tagNumber7")
              
              userDefaults.set(syoukyo , forKey: "tagBool7")
              print("画像を消したときのtagBool7はtukuruで\(userDefaults.bool(forKey: "tagBool7"))")
           
           
           
           //8番の画像のプラスマイナスボタンが押されて遷移してきた時
          case 8:
              iroNumber8 = self.gazo1
              userDefaults.set(iroNumber8 , forKey: "iro8")
              self.tagNumber8 = 8
              userDefaults.set(self.tagNumber8 , forKey: "tagNumber8")
              
              userDefaults.set(syoukyo , forKey: "tagBool8")
              print("画像を消したときのtagBool8はtukuruで\(userDefaults.bool(forKey: "tagBool8"))")
            
            
            
            
        ////それ以外の画像のプラスマイナスボタンが押されて遷移してきた時
        default:
            iroNumber9 = self.gazo1
            userDefaults.set(iroNumber9 , forKey: "iro9")
            self.tagNumber9 = 9
            userDefaults.set(self.tagNumber9 , forKey: "tagNumber9")
            
            userDefaults.set(syoukyo , forKey: "tagBool9")
            print("画像を消したときのtagBool9はtukuruで\(userDefaults.bool(forKey: "tagBool9"))")
            
         
        }
        print("オレンジを押したときのtukuru1のiroNumberは\(iroNumber1)")
        print("オレンジを押したときのtukuru1のタグNumber1は\(tagNumber1)")
        print("オレンジを押したときのtukuru1のタグNumber2は\(tagNumber2)")
        print("オレンジを押したときのtukuru1のタグNumber3は\(tagNumber3)")
    }
    
    @IBAction func purpleAction(_ sender: UIButton) {
        
        self.gazo1 = 9
        imageViewtukuru1.image = UIImage(named: "purple")
        
        //ボタンの画像の切り替え
        self.blackButton.setImage(blackb, for: .normal)
        self.whiteButton.setImage(whiteb, for: .normal)
        self.redButton.setImage(redb, for: .normal)
        self.blueButton.setImage(blueb, for: .normal)
        self.greenButton.setImage(greenb, for: .normal)
        self.yellowButton.setImage(yellowb, for: .normal)
        self.pinkButton.setImage(pinkb, for: .normal)
        self.orangeButton.setImage(orangeb, for: .normal)
        self.purpleButton.setImage(purpleB, for: .normal)
        
        //tukuruViewControllerのプラスマイナスボタンのタグの番号をplusminustagに入れている。
        switch plusminustag {
        //1番の画像のプラスマイナスボタンが押されて遷移してきた時
        case 1:
            iroNumber1 = self.gazo1
            userDefaults.set(iroNumber1 , forKey: "iro1")
            self.tagNumber1 = 1
            userDefaults.set(self.tagNumber1 , forKey: "tagNumber1")
            
            userDefaults.set(syoukyo , forKey: "tagBool1")
            print("画像を消したときのtagBool1はtukuruで\(userDefaults.bool(forKey: "tagBool1"))")
            
        //２番の画像のプラスマイナスボタンが押されて遷移してきた時
        case 2:
            iroNumber2 = self.gazo1
            userDefaults.set(iroNumber2 , forKey: "iro2")
            self.tagNumber2 = 2
            userDefaults.set(self.tagNumber2 , forKey: "tagNumber2")
            
            userDefaults.set(syoukyo , forKey: "tagBool2")
            print("画像を消したときのtagBool2はtukuruで\(userDefaults.bool(forKey: "tagBool2"))")
        
            
            //3番の画像のプラスマイナスボタンが押されて遷移してきた時
            case 3:
                iroNumber3 = self.gazo1
                userDefaults.set(iroNumber3 , forKey: "iro3")
                self.tagNumber3 = 3
                userDefaults.set(self.tagNumber3 , forKey: "tagNumber3")
                
                userDefaults.set(syoukyo , forKey: "tagBool3")
                print("画像を消したときのtagBool3はtukuruで\(userDefaults.bool(forKey: "tagBool3"))")
                        
            
            //4番の画像のプラスマイナスボタンが押されて遷移してきた時
           case 4:
               iroNumber4 = self.gazo1
               userDefaults.set(iroNumber4 , forKey: "iro4")
               self.tagNumber4 = 4
               userDefaults.set(self.tagNumber4 , forKey: "tagNumber4")
               
               userDefaults.set(syoukyo , forKey: "tagBool4")
               print("画像を消したときのtagBool4はtukuruで\(userDefaults.bool(forKey: "tagBool4"))")
           
           
            //5番の画像のプラスマイナスボタンが押されて遷移してきた時
           case 5:
               iroNumber5 = self.gazo1
               userDefaults.set(iroNumber5 , forKey: "iro5")
               self.tagNumber5 = 5
               userDefaults.set(self.tagNumber5 , forKey: "tagNumber5")
               
               userDefaults.set(syoukyo , forKey: "tagBool5")
               print("画像を消したときのtagBool5はtukuruで\(userDefaults.bool(forKey: "tagBool5"))")
           
           
           //6番の画像のプラスマイナスボタンが押されて遷移してきた時
          case 6:
              iroNumber6 = self.gazo1
              userDefaults.set(iroNumber6 , forKey: "iro6")
              self.tagNumber6 = 6
              userDefaults.set(self.tagNumber6 , forKey: "tagNumber6")
              
              userDefaults.set(syoukyo , forKey: "tagBool6")
              print("画像を消したときのtagBool6はtukuruで\(userDefaults.bool(forKey: "tagBool6"))")
           
           
           //7番の画像のプラスマイナスボタンが押されて遷移してきた時
          case 7:
              iroNumber7 = self.gazo1
              userDefaults.set(iroNumber7 , forKey: "iro7")
              self.tagNumber7 = 7
              userDefaults.set(self.tagNumber7 , forKey: "tagNumber7")
              
              userDefaults.set(syoukyo , forKey: "tagBool7")
              print("画像を消したときのtagBool7はtukuruで\(userDefaults.bool(forKey: "tagBool7"))")
           
           
           
           //8番の画像のプラスマイナスボタンが押されて遷移してきた時
          case 8:
              iroNumber8 = self.gazo1
              userDefaults.set(iroNumber8 , forKey: "iro8")
              self.tagNumber8 = 8
              userDefaults.set(self.tagNumber8 , forKey: "tagNumber8")
              
              userDefaults.set(syoukyo , forKey: "tagBool8")
              print("画像を消したときのtagBool8はtukuruで\(userDefaults.bool(forKey: "tagBool8"))")
            
            
            
            
        ////それ以外の画像のプラスマイナスボタンが押されて遷移してきた時
        default:
            iroNumber9 = self.gazo1
            userDefaults.set(iroNumber9 , forKey: "iro9")
            self.tagNumber9 = 9
            userDefaults.set(self.tagNumber9 , forKey: "tagNumber9")
            
            userDefaults.set(syoukyo , forKey: "tagBool9")
            print("画像を消したときのtagBool9はtukuruで\(userDefaults.bool(forKey: "tagBool9"))")
            
           
        }
        print("紫を押したときのtukuru1のiroNumberは\(iroNumber1)")
        print("紫を押したときのtukuru1のタグNumber1は\(tagNumber1)")
        print("紫を押したときのtukuru1のタグNumber2は\(tagNumber2)")
        print("紫を押したときのtukuru1のタグNumber3は\(tagNumber3)")
        
        print("紫を押したときの tukuru1のiroNumber3\(iroNumber3)")
    }
    
    
    
    
    @IBAction func modoru(_ sender: UIButton) {
        
        /*  　　　　配列      */
         
         //tagNumberを記憶させる（画像を表示させないとき０。させるときは１にする）
        
  //      userDefaults.set(tagNumber1 , forKey: "tagNumber1")
  //      userDefaults.set(tagNumber2 , forKey: "tagNumber2")
  //       userDefaults.set(tagNumber3 , forKey: "tagNumber3")
        
        print("戻るを押したときのtukuru1のタグNumber1は\(userDefaults.integer(forKey: "tagNumber1"))")
        print("戻るを押したときのtukuru1のタグNumber2は\(userDefaults.integer(forKey: "tagNumber2"))")
        print("戻るを押したときのtukuru1のタグNumber3は\(userDefaults.integer(forKey: "tagNumber3"))")
        
    
        // checkButtonArrayにtrue だった　tagNumber を入れる
        
   //     checkButtonArray = [Int]()
        
        //tagNumber1 が　１だった場合は１の画像のプラスマイナスボタンが押されて、かつ色ボタンも押されたという事がわかる。１の時のみ１を配列に入れ、０の時は０を入れる。
        
        if userDefaults.integer(forKey: "tagNumber1") == 1{
            checkButtonArray += [userDefaults.integer(forKey: "tagNumber1")]
        }
        
        else {
            checkButtonArray += [0]
        }
      
      
        //例えば１のプラスマイナスは押されておらず、２だけ押された時の配列は[0,1]となっている。
       if userDefaults.integer(forKey: "tagNumber2") == 2{
            checkButtonArray += [userDefaults.integer(forKey: "tagNumber2")]
        }
        
        else {
            checkButtonArray += [0]
        }
        
        
        
        if userDefaults.integer(forKey: "tagNumber3") == 3{
            checkButtonArray += [userDefaults.integer(forKey: "tagNumber3")]
        }

        
        else {
            checkButtonArray += [0]
        }
        
        
        
        if userDefaults.integer(forKey: "tagNumber4") == 4{
            checkButtonArray += [userDefaults.integer(forKey: "tagNumber4")]
        }

        else {
            checkButtonArray += [0]
        }
        
        
        
        if userDefaults.integer(forKey: "tagNumber5") == 5{
            checkButtonArray += [userDefaults.integer(forKey: "tagNumber5")]
        }

        else {
            checkButtonArray += [0]
        }
        
        
        if userDefaults.integer(forKey: "tagNumber6") == 6{
            checkButtonArray += [userDefaults.integer(forKey: "tagNumber6")]
        }

        else {
            checkButtonArray += [0]
        }
        
        if userDefaults.integer(forKey: "tagNumber7") == 7{
            checkButtonArray += [userDefaults.integer(forKey: "tagNumber7")]
        }

        else {
            checkButtonArray += [0]
        }
        
        if userDefaults.integer(forKey: "tagNumber8") == 8{
            checkButtonArray += [userDefaults.integer(forKey: "tagNumber8")]
        }

        else {
            checkButtonArray += [0]
        }
        
        if userDefaults.integer(forKey: "tagNumber9") == 9{
            checkButtonArray += [userDefaults.integer(forKey: "tagNumber9")]
        }

        else {
            checkButtonArray += [0]
        }
        
        
        
        //戻るを押した時に配列を記憶させる
        userDefaults.set(checkButtonArray , forKey: "checkButtonArray")
        
        //昇順にソート
        checkButtonArray.sort { $0 < $1 }
        print("つくる１の戻るを押した時のチェックボックス配列\(checkButtonArray)")
        
        
        
       userDefaults.set(iroNumber1 , forKey: "iro1")
        
        
        
        //////////////////画面遷移時に画像を渡すQiita
        
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        
       
        
        // ②遷移先ViewControllerのインスタンス取得
     
        let nextVC = storyboard.instantiateViewController(withIdentifier: "tukuruViewController") as! tukuruViewController

                //satsueiのimage(画像データ)をtukuruViewControllerのimage(変数)に渡す
        nextVC.image = imageViewtukuru1.image

        nextVC.modalPresentationStyle = .fullScreen
        present(nextVC, animated: true, completion: nil)
        
        //////////////////画面遷移時に画像を渡すQiitaここまで
        
        
        
        
        //画面遷移////////////////////////////
        
        let tukuruView = self.storyboard?.instantiateViewController(withIdentifier: "tukuruViewController") as! tukuruViewController
                
       
        //フルスクリーン
        let vc = tukuruView
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true, completion: nil)
        
            sender.isSelected = !sender.isSelected;
        

     
        //画面遷移////////////////////////////
        
       
        print("戻るを押したときのtukuru1のiroNumber1\(iroNumber1)")
        print("戻るを押したときのtukuru1のiroNumber2\(iroNumber2)")
        print("戻るを押したときのtukuru1のiroNumber3\(iroNumber3)")
        print("戻るを押したときのtukuru1のiroNumber4\(iroNumber4)")
        print("戻るを押したときのtukuru1のiroNumber5\(iroNumber5)")
    }
    
    
    @IBAction func satsuei(_ sender: Any) {
        let cameraview = self.storyboard?.instantiateViewController(withIdentifier: "satsuei") as! satsuei
        
        //フルスクリーン
        let vc = cameraview
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true, completion: nil)
    }
    
    
    
    
    @IBAction func cameraTap(_ sender: Any) {
        
        
        let cameraview = self.storyboard?.instantiateViewController(withIdentifier: "cameraViewController") as! cameraViewController
        
        //フルスクリーン
        let vc = cameraview
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true, completion: nil)
        
    }
    
    @IBAction func cameraTapsaisyonohou(_ sender: Any) {
        let cameraview = self.storyboard?.instantiateViewController(withIdentifier: "camera") as! camera
        
        //フルスクリーン
        let vc = cameraview
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true, completion: nil)
        
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //色
        self.imageViewtukuru1.layer.borderColor = UIColor.blue.cgColor
        //線の太さ(太さ)
        self.imageViewtukuru1.layer.borderWidth = 3
        
        //画面遷移時のボタン
        self.blackButton.setImage(blackb, for: .normal)
        self.whiteButton.setImage(whiteb, for: .normal)
        self.redButton.setImage(redb, for: .normal)
        self.blueButton.setImage(blueb, for: .normal)
        self.greenButton.setImage(greenb, for: .normal)
        self.yellowButton.setImage(yellowb, for: .normal)
        self.pinkButton.setImage(pinkb, for: .normal)
        self.orangeButton.setImage(orangeb, for: .normal)
        self.purpleButton.setImage(purpleb, for: .normal)
        
        
        
        
        //cameraの画像
        
        //写真を撮影
        
        /*
        @IBAction func cameraActivationButtonAction(_ sender: Any) {
            let imagePicker = UIImagePickerController()
            imagePicker.sourceType = .camera
            imagePicker.delegate = self
            present(imagePicker, animated: true)
        }
       */
        
       
        //cameraの画像ここまで
        
        
        
    }
    
    //画面遷移して戻ってきても呼び出す
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        //写真撮影から戻ってきたときだけ１になる。写真以外の画面からきたときは０
       modottekita = 0
        
        
        
        //plusminustagの代わり。撮影画面に行ったらタグがないので。
        var satsueiNumber1: Int = 0
        var satsueiNumber2: Int = 0
        var satsueiNumber3: Int = 0
        var satsueiNumber4: Int = 0
        var satsueiNumber5: Int = 0
        var satsueiNumber6: Int = 0
        var satsueiNumber7: Int = 0
        var satsueiNumber8: Int = 0
        var satsueiNumber9: Int = 0
        
        var satsueiArray = [0, 0, 0, 0, 0, 0, 0, 0, 0]
        
        //tukuruViewControllerのプラスマイナスボタンのタグの番号をplusminustagに入れている。
        switch plusminustag {
        //1番の画像のプラスマイナスボタンが押されて遷移してきた時
        case 1:
         satsueiArray[0] = 1
           
                print(satsueiArray)
           
            
            
            //satsuei画面に行った時に、どのプラスマイナスタグを押されてきたのか記憶させておく
            satsueiNumber1 = 1
            userDefaults.set(satsueiNumber1 , forKey: "satsueiNumber1")
            
            print("satsueiNumber1は\(satsueiNumber1)")
            print("satsueiNumber2は\(satsueiNumber2)")
            
            
        //２番の画像のプラスマイナスボタンが押されて遷移してきた時
        case 2:
            satsueiArray[1] = 1
              
                   print(satsueiArray)
            
            //satsuei画面に行った時に、どのプラスマイナスタグを押されてきたのか記憶させておく
            satsueiNumber2 = 1
            userDefaults.set(satsueiNumber2 , forKey: "satsueiNumber2")
            
            print("satsueiNumber1は\(satsueiNumber1)")
            print("satsueiNumber2は\(satsueiNumber2)")
        
            
            //3番の画像のプラスマイナスボタンが押されて遷移してきた時
            case 3:
            satsueiArray[2] = 1
              
                   print(satsueiArray)
            
            //satsuei画面に行った時に、どのプラスマイナスタグを押されてきたのか記憶させておく
            satsueiNumber3 = 1
            userDefaults.set(satsueiNumber3 , forKey: "satsueiNumber3")
            
            print("satsueiNumber1は\(satsueiNumber1)")
            print("satsueiNumber3は\(satsueiNumber3)")
            
             //4番の画像のプラスマイナスボタンが押されて遷移してきた時
            case 4:
            satsueiArray[3] = 1
              
                   print(satsueiArray)
            
            //satsuei画面に行った時に、どのプラスマイナスタグを押されてきたのか記憶させておく
            satsueiNumber4 = 1
            userDefaults.set(satsueiNumber4 , forKey: "satsueiNumber4")
            
            print("satsueiNumber1は\(satsueiNumber1)")
            print("satsueiNumber4は\(satsueiNumber4)")
            
            
             //5番の画像のプラスマイナスボタンが押されて遷移してきた時
            case 5:
            satsueiArray[4] = 1
              
                   print(satsueiArray)
            
            //satsuei画面に行った時に、どのプラスマイナスタグを押されてきたのか記憶させておく
            satsueiNumber5 = 1
            userDefaults.set(satsueiNumber5 , forKey: "satsueiNumber5")
            
            print("satsueiNumber1は\(satsueiNumber1)")
            print("satsueiNumber5は\(satsueiNumber5)")
            
            
            //6番の画像のプラスマイナスボタンが押されて遷移してきた時
           case 6:
            satsueiArray[5] = 1
              
                   print(satsueiArray)
            //satsuei画面に行った時に、どのプラスマイナスタグを押されてきたのか記憶させておく
            satsueiNumber6 = 1
            userDefaults.set(satsueiNumber6 , forKey: "satsueiNumber6")
            
            print("satsueiNumber1は\(satsueiNumber1)")
            print("satsueiNumber6は\(satsueiNumber6)")
            
            
            //7番の画像のプラスマイナスボタンが押されて遷移してきた時
           case 7:
            satsueiArray[6] = 1
              
                   print(satsueiArray)
            //satsuei画面に行った時に、どのプラスマイナスタグを押されてきたのか記憶させておく
            satsueiNumber7 = 1
            userDefaults.set(satsueiNumber7 , forKey: "satsueiNumber7")
            
            print("satsueiNumber1は\(satsueiNumber1)")
            print("satsueiNumber7は\(satsueiNumber7)")
            
            
            
            //8番の画像のプラスマイナスボタンが押されて遷移してきた時
           case 8:
            satsueiArray[7] = 1
              
                   print(satsueiArray)
            
            //satsuei画面に行った時に、どのプラスマイナスタグを押されてきたのか記憶させておく
            satsueiNumber8 = 1
            userDefaults.set(satsueiNumber8 , forKey: "satsueiNumber8")
            
            print("satsueiNumber1は\(satsueiNumber1)")
            print("satsueiNumber8は\(satsueiNumber8)")
            
            //9番の画像のプラスマイナスボタンが押されて遷移してきた時
           case 9:
            satsueiArray[8] = 1
              
                   print(satsueiArray)
            
            //satsuei画面に行った時に、どのプラスマイナスタグを押されてきたのか記憶させておく
            satsueiNumber9 = 1
            userDefaults.set(satsueiNumber9 , forKey: "satsueiNumber9")
            
            print("satsueiNumber1は\(satsueiNumber1)")
            print("satsueiNumber2は\(satsueiNumber2)")
            print("satsueiNumber3は\(satsueiNumber3)")
            print("satsueiNumber4は\(satsueiNumber4)")
            print("satsueiNumber5は\(satsueiNumber5)")
            print("satsueiNumber6は\(satsueiNumber6)")
            print("satsueiNumber7は\(satsueiNumber7)")
            print("satsueiNumber8は\(satsueiNumber8)")
            print("satsueiNumber9は\(satsueiNumber9)")
            
            
            
        ////それ以外の画面から遷移してきた時
        default:
            modottekita = 1
            //他の画面からきたとき、前の記憶を保つ
            let userDefaultsSatsueiArray = userDefaults.array(forKey: "satsueiArray")
            print("戻ってきた時の撮影配列\(userDefaultsSatsueiArray)")
            
        }
        
        //写真撮影から戻ってきた時にも配列をセットしてしまうと配列全部０になる。
        if modottekita == 0{
       userDefaults.set(satsueiArray , forKey: "satsueiArray")
        }
        
        print("willdidが終わった時の記憶\(userDefaults.array(forKey: "satsueiArray"))")
        
        
        
        
        
        
        
        
        
        
        
        
       
        print("plusminusのたぐ\(plusminustag)")
   
     //新規作成の画面は常に画像なし
        imageViewtukuru1.image = UIImage(named: "gazoutukuri")
        
        self.gazo1 = 0
        //iroNumberが0
//        userDefaults.set(iroNumber , forKey: "iro1")                //iro1というキー
        print("viewWillAppear tukuru1のiroNumber1\(iroNumber1)")
        print("viewWillAppear tukuru1のiroNumber2\(iroNumber2)")
        print("viewWillAppear tukuru1のiroNumber3\(iroNumber3)")
        print("viewWillAppear tukuru1のiroNumber4\(iroNumber4)")
        
        //青にする(色)
        self.imageViewtukuru1.layer.borderColor = UIColor.blue.cgColor
        //線の太さ(太さ)
        self.imageViewtukuru1.layer.borderWidth = 2
        
        
        //遷移元から取得したimage(画像データ)をimageView2のimageに渡す
        imageViewtukuru1.image = image
        
        if image == nil{
            syashin = 0
            print("写真なし")
            
        }
        else {
            syashin = 1
            print("写真撮った")
        }
     
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

//singleton・・・一度入れた数値が、カラーが変わってもそのままなので変えたい。


   
    
    

