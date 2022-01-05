//
//  tukuru1ViewController.swift
//  lesson9 test
//
//  Created by book mac on 2021/11/25.
//

import UIKit

//forkey
var iroNumber1: Int = 0
var iroNumber2: Int = 0
var iroNumber3: Int = 0
var iroNumber4: Int = 0
var iroNumber5: Int = 0
var iroNumber6: Int = 0
var iroNumber7: Int = 0
var iroNumber8: Int = 0
var iroNumber9: Int = 0




class tukuru1ViewController: UIViewController {
    
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
        
        if userDefaults.integer(forKey: "tagNumber1") == 1{
            checkButtonArray += [userDefaults.integer(forKey: "tagNumber1")]
        }
        
        else {
            checkButtonArray += [0]
        }
      
        
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
        //画面遷移////////////////////////////
        
        let tukuruView = self.storyboard?.instantiateViewController(withIdentifier: "tukuruViewController") as! tukuruViewController
                
        //色の値（iroNumber)をtukuruViewControllerに渡す
  //      tukuruView.gazou1 = iroNumber1
  //      tukuruView.gazou2 = iroNumber2
  //      tukuruView.gazou3 = iroNumber3
        
//        tukuruView.gazou = UserDefaults.standard.integer(forKey: "iro1")
        
        //フルスクリーン
        let vc = tukuruView
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true, completion: nil)
        
            sender.isSelected = !sender.isSelected;
        
//        self.present(tukuruView, animated: true, completion: nil)    //遷移の実行
     
        //画面遷移////////////////////////////
        
       
        print("戻るを押したときのtukuru1のiroNumber1\(iroNumber1)")
        print("戻るを押したときのtukuru1のiroNumber2\(iroNumber2)")
        print("戻るを押したときのtukuru1のiroNumber3\(iroNumber3)")
        print("戻るを押したときのtukuru1のiroNumber4\(iroNumber4)")
        print("戻るを押したときのtukuru1のiroNumber5\(iroNumber5)")
    }
    
    
    @IBAction func cameraTap(_ sender: Any) {
        
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
        
        self.blackButton.setImage(blackb, for: .normal)
        self.whiteButton.setImage(whiteb, for: .normal)
        self.redButton.setImage(redb, for: .normal)
        self.blueButton.setImage(blueb, for: .normal)
        self.greenButton.setImage(greenb, for: .normal)
        self.yellowButton.setImage(yellowb, for: .normal)
        self.pinkButton.setImage(pinkb, for: .normal)
        self.orangeButton.setImage(orangeb, for: .normal)
        self.purpleButton.setImage(purpleb, for: .normal)
        
        
        
    }
    
    //画面遷移して戻ってきても呼び出す
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
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


   
    
    

