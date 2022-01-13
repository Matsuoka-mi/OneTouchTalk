//
//  onsei.swift
//  lesson9 test
//
//  Created by book mac on 2022/01/05.
//

//消すボタンを押すアラートのキャンセルを押しても消える件について。

import UIKit
import AVFoundation

//dispatchQueue型　順番に処理しない（警告の窓を出すのが消す処理の後になるとか、録音ボタンの表示が遅いとか）のに対応するためのもの
import Dispatch
let mainQueue = DispatchQueue.main
// 直列キュー / attibutes指定なし
//let dispatchQueue = DispatchQueue(label: "queue")





class onsei: UIViewController, AVAudioRecorderDelegate, AVAudioPlayerDelegate {
    
    //forkey
    let userDefaults:UserDefaults = UserDefaults.standard
    
    
    var isRecording = false
    var w: CGFloat = 0
    var h: CGFloat = 0
    let d: CGFloat = 50
    let l: CGFloat = 28
    
   
    
    //レコーダーアプリのサイト
    
    var audioRecorder: AVAudioRecorder!
    var audioPlayer: AVAudioPlayer!
    
    // var isRecording = false
    
    //レコーダーアプリのサイト
    
    //録音したかしてないか判別
    var rokuonshita:Int = 0
    //Tapが押されたら1が入る。1の時に録音ボタンが押されたら2になる
    
    var rokuonArray1:Int = 0
    var rokuonArray2:Int = 0
    var rokuonArray3:Int = 0
    var rokuonArray4:Int = 0
    var rokuonArray5:Int = 0
    var rokuonArray6:Int = 0
    var rokuonArray7:Int = 0
    var rokuonArray8:Int = 0
    var rokuonArray9:Int = 0
    
    
    
    //どの録音ボタンからきたか、番号がrokuonNumberに記憶されているのをrokuontapという名前に代入
    let rokuontap = UserDefaults.standard.integer(forKey: "rokuonNumber")
    
    
    @IBOutlet weak var reco: UIButton!
    @IBOutlet weak var BaseView: UIView!
    @IBOutlet weak var outer: UIView!
    @IBOutlet weak var inner: UIView!
    @IBOutlet weak var play: UIButton!
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var labelrokuonnashi: UILabel!
    
    
    
    var rokuA1 = UserDefaults.standard.integer(forKey: "rokuA1")
    var rokuA2 = UserDefaults.standard.integer(forKey: "rokuA2")
    var rokuA3 = UserDefaults.standard.integer(forKey: "rokuA3")
    var rokuA4 = UserDefaults.standard.integer(forKey: "rokuA4")
    var rokuA5 = UserDefaults.standard.integer(forKey: "rokuA5")
    var rokuA6 = UserDefaults.standard.integer(forKey: "rokuA6")
    var rokuA7 = UserDefaults.standard.integer(forKey: "rokuA7")
    var rokuA8 = UserDefaults.standard.integer(forKey: "rokuA8")
    var rokuA9 = UserDefaults.standard.integer(forKey: "rokuA9")
    
    var alertcansel:Int = 0
    var count:Int = 0
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //どの録音ボタンからきたか
        
        
        print("rokuontapは\(rokuontap)")
        
        //   labelrokuonnashi.backgroundColor = UIColor.lightGray
    }
    

    
    
    
    
    
    //viewWillAppear にすると、画面サイズによっては録音ボタンがずれる
    override func viewDidAppear(_ animated: Bool) {
        
        
        /*
         //あとで消す
         for i in 0...10 {
         DispatchQueue.main.async {
         print("Start: \(i)")
         //   sleep(1)
         }
         }
         //
         */
        
        
        //録音ボタン
        
        
        
        w = BaseView.frame.size.width
        h = BaseView.frame.size.height
        
        initRoundCorners()
        showStartButton()
        
        
        
        //録音ボタンここまで
        
        
        /*
         reco.frame = CGRect(x:75,y:75,width:50,height:50)
         reco.layer.masksToBounds = true
         reco.layer.cornerRadius = 25.0
         */
        
        switch rokuontap{
        case 1:
            
            if rokuonArray1 == 1 || rokuA1 == 1{
                kesuout.isEnabled = true
            }
            else{
                kesuout.isEnabled = false
            }
            
            
        case 2:
            
            if rokuonArray2 == 1 || rokuA2 == 1{
                kesuout.isEnabled = true
            }
            else{
                kesuout.isEnabled = false
            }
            
            
            
        case 3:
            
            if rokuonArray3 == 1 || rokuA3 == 1{
                kesuout.isEnabled = true
            }
            else{
                kesuout.isEnabled = false
            }
            
            
        case 4:
            
            if rokuonArray4 == 1 || rokuA4 == 1{
                kesuout.isEnabled = true
            }
            else{
                kesuout.isEnabled = false
            }
            
            
        case 5:
            
            if rokuonArray5 == 1 || rokuA5 == 1{
                kesuout.isEnabled = true
            }
            else{
                kesuout.isEnabled = false
            }
            
            
        case 6:
            
            if rokuonArray6 == 1 || rokuA6 == 1{
                kesuout.isEnabled = true
            }
            else{
                kesuout.isEnabled = false
            }
            
            
        case 7:
            
            if rokuonArray7 == 1 || rokuA7 == 1{
                kesuout.isEnabled = true
            }
            else{
                kesuout.isEnabled = false
            }
            
            
        case 8:
            
            if rokuonArray8 == 1 || rokuA8 == 1{
                kesuout.isEnabled = true
            }
            else{
                kesuout.isEnabled = false
            }
            
            
        default:
            if rokuonArray9 == 1 || rokuA9 == 1{
                kesuout.isEnabled = true
            }
            else{
                kesuout.isEnabled = false
            }
        }
        
    }
    
    
    //レコーダーアプリの作り方から
    
    private func getURL1() -> URL{
        //    return FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        
        
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        let docsDirect = paths[0]
        let url = docsDirect.appendingPathComponent("sample1.m4a")
        return url
        
    }
    
    private func getURL2() -> URL{
        //    return FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        
        
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        let docsDirect = paths[0]
        let url = docsDirect.appendingPathComponent("sample2.m4a")
        return url
        
        
    }
    
    private func getURL3() -> URL{
        //    return FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        
        
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        let docsDirect = paths[0]
        let url = docsDirect.appendingPathComponent("sample3.m4a")
        return url
    }
    
    
    private func getURL4() -> URL{
        //    return FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        
        
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        let docsDirect = paths[0]
        let url = docsDirect.appendingPathComponent("sample4.m4a")
        return url
    }
    
    
    private func getURL5() -> URL{
        //    return FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        
        
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        let docsDirect = paths[0]
        let url = docsDirect.appendingPathComponent("sample5.m4a")
        return url
    }
    
    
    private func getURL6() -> URL{
        //    return FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        
        
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        let docsDirect = paths[0]
        let url = docsDirect.appendingPathComponent("sample6.m4a")
        return url
    }
    
    private func getURL7() -> URL{
        //    return FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        
        
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        let docsDirect = paths[0]
        let url = docsDirect.appendingPathComponent("sample7.m4a")
        return url
    }
    
    private func getURL8() -> URL{
        //    return FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        
        
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        let docsDirect = paths[0]
        let url = docsDirect.appendingPathComponent("sample8.m4a")
        return url
    }
    
    private func getURL9() -> URL{
        //    return FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        
        
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        let docsDirect = paths[0]
        let url = docsDirect.appendingPathComponent("sample9.m4a")
        return url
    }
    
    
    
    //レコーダーアプリの作り方から
    
    
    //録音ボタンを押したとき
    
    @IBAction func recordButton(_ sender: Any) {
        
        
        labelrokuonnashi.text = ""
        
        
        
        if isRecording {
            UIView.animate(withDuration: 0.2) { [self] in
                
                self.showStartButton()
                
                
                
                //recorder app
                
                self.audioRecorder.stop()
                self.reco.setTitle("", for: .normal)
                label.text = "赤いボタンを押して録音スタート"
                self.play.isEnabled = true
                
                
                switch rokuontap {
                    
                    
                case 1:
                    if  rokuonArray1 == 1 || rokuA1 == 1{
                        kesuout.isEnabled = true
                    }
                    
                case 2:
                    if rokuonArray2 == 1 || rokuA2 == 1{
                        
                        kesuout.isEnabled = true
                    }
                    
                    
                    
                case 3:
                    
                    if rokuonArray3 == 1 || rokuA3 == 1{
                        kesuout.isEnabled = true
                        
                    }
                    
                    
                case 4:
                    
                    if rokuonArray4 == 1 || rokuA4 == 1{
                        kesuout.isEnabled = true
                        
                    }
                    
                    
                case 5:
                    
                    if rokuonArray5 == 1 || rokuA5 == 1{
                        kesuout.isEnabled = true
                    }
                    
                    
                case 6:
                    
                    if rokuonArray6 == 1 || rokuA6 == 1{
                        kesuout.isEnabled = true
                    }
                    
                    
                    
                case 7:
                    
                    if rokuonArray7 == 1 || rokuA7 == 1{
                        kesuout.isEnabled = true
                    }
                    
                    
                    
                case 8:
                    
                    if rokuonArray8 == 1 || rokuA8 == 1{
                        kesuout.isEnabled = true
                    }
                    
                    
                    
                    
                default:
                    if rokuonArray9 == 1 || rokuA9 == 1{
                        kesuout.isEnabled = true
                    }
                    
                    print("default")
                }
                /////////////////////////////////////////////////
                
                //recorder app
                
                
                //      self.reco.frame = CGRect(x:75,y:75,width:50,height:50)
                //      self.reco.layer.cornerRadius = 25
            }
        } else {
            UIView.animate(withDuration: 0.2) { [self] in
                
                self.showStopButton()
                label.text = "もう一度押すと録音終了"
                kesuout.isEnabled = false
                
                
                //recorder app
                let session = AVAudioSession.sharedInstance()
                try! session.setCategory(.playAndRecord)
                try! session.setActive(true)
                let settings = [
                    AVFormatIDKey: Int(kAudioFormatMPEG4AAC),
                    AVSampleRateKey: 44100,
                    AVNumberOfChannelsKey: 2,
                    AVEncoderAudioQualityKey: AVAudioQuality.high.rawValue
                ]
                //       self.audioRecorder = try! AVAudioRecorder(url: self.getURL1(), settings: settings)
                //        self.audioRecorder.delegate = self
                //        self.audioRecorder.record()
                //        reco.setTitle("", for: .normal)
                //        play.isEnabled = false
                
                
                //recorder app
                
                
                
                
                //押したボタンごとに保存するURLを変える
                
                
                
                switch rokuontap {
                case 1:
                    
                    self.audioRecorder = try! AVAudioRecorder(url: self.getURL1(), settings: settings)
                    self.audioRecorder.delegate = self
                    self.audioRecorder.record()
                    reco.setTitle("", for: .normal)
                    play.isEnabled = false
                    
                    
                    //録音がある
                    rokuonArray1 = 1
                    userDefaults.set(rokuonArray1 , forKey: "rokuA1")
                    
                    
                    
                    
                case 2:
                    
                    
                    self.audioRecorder = try! AVAudioRecorder(url: self.getURL2(), settings: settings)
                    self.audioRecorder.delegate = self
                    self.audioRecorder.record()
                    reco.setTitle("", for: .normal)
                    play.isEnabled = false
                    rokuonArray2 = 1
                    userDefaults.set(rokuonArray2 , forKey: "rokuA2")
                    
                    
                    
                case 3:
                    self.audioRecorder = try! AVAudioRecorder(url: self.getURL3(), settings: settings)
                    self.audioRecorder.delegate = self
                    self.audioRecorder.record()
                    reco.setTitle("", for: .normal)
                    play.isEnabled = false
                    rokuonArray3 = 1
                    userDefaults.set(rokuonArray3 , forKey: "rokuA3")
                    
                case 4:
                    self.audioRecorder = try! AVAudioRecorder(url: self.getURL4(), settings: settings)
                    self.audioRecorder.delegate = self
                    self.audioRecorder.record()
                    reco.setTitle("", for: .normal)
                    play.isEnabled = false
                    rokuonArray4 = 1
                    userDefaults.set(rokuonArray4 , forKey: "rokuA4")
                    
                case 5:
                    self.audioRecorder = try! AVAudioRecorder(url: self.getURL5(), settings: settings)
                    self.audioRecorder.delegate = self
                    self.audioRecorder.record()
                    reco.setTitle("", for: .normal)
                    play.isEnabled = false
                    rokuonArray5 = 1
                    userDefaults.set(rokuonArray5 , forKey: "rokuA5")
                    
                case 6:
                    self.audioRecorder = try! AVAudioRecorder(url: self.getURL6(), settings: settings)
                    self.audioRecorder.delegate = self
                    self.audioRecorder.record()
                    reco.setTitle("", for: .normal)
                    play.isEnabled = false
                    rokuonArray6 = 1
                    userDefaults.set(rokuonArray6 , forKey: "rokuA6")
                    
                    
                case 7:
                    self.audioRecorder = try! AVAudioRecorder(url: self.getURL7(), settings: settings)
                    self.audioRecorder.delegate = self
                    self.audioRecorder.record()
                    reco.setTitle("", for: .normal)
                    play.isEnabled = false
                    rokuonArray7 = 1
                    userDefaults.set(rokuonArray7 , forKey: "rokuA7")
                    
                case 8:
                    self.audioRecorder = try! AVAudioRecorder(url: self.getURL8(), settings: settings)
                    self.audioRecorder.delegate = self
                    self.audioRecorder.record()
                    reco.setTitle("", for: .normal)
                    play.isEnabled = false
                    rokuonArray8 = 1
                    userDefaults.set(rokuonArray8 , forKey: "rokuA8")
                    
                    
                default:
                    self.audioRecorder = try! AVAudioRecorder(url: self.getURL9(), settings: settings)
                    self.audioRecorder.delegate = self
                    self.audioRecorder.record()
                    reco.setTitle("", for: .normal)
                    play.isEnabled = false
                    rokuonArray9 = 1
                    userDefaults.set(rokuonArray9 , forKey: "rokuA9")
                    
                    //押したボタンごとに保存するURLを変えるここまで
                    
                    
                    
                    
                    //      self.reco.frame = CGRect(x:75+10,y:75+10,width:30,height:30)
                    //      self.reco.layer.cornerRadius = 3.0
                }
            }
        }
        isRecording = !isRecording
        
        
        /*
         let rokuA1 = UserDefaults.standard.integer(forKey: "rokuA1")
         let rokuA2 = UserDefaults.standard.integer(forKey: "rokuA2")
         let rokuA3 = UserDefaults.standard.integer(forKey: "rokuA3")
         let rokuA4 = UserDefaults.standard.integer(forKey: "rokuA4")
         let rokuA5 = UserDefaults.standard.integer(forKey: "rokuA5")
         let rokuA6 = UserDefaults.standard.integer(forKey: "rokuA6")
         let rokuA7 = UserDefaults.standard.integer(forKey: "rokuA7")
         let rokuA8 = UserDefaults.standard.integer(forKey: "rokuA8")
         let rokuA9 = UserDefaults.standard.integer(forKey: "rokuA9")
         */
        print("rokuonA1は\(rokuA1)")
        print("rokuonA2は\(rokuA2)")
        print("rokuonA3は\(rokuA3)")
        print("rokuonA4は\(rokuA4)")
        print("rokuonA5は\(rokuA5)")
        print("rokuonA6は\(rokuA6)")
        print("rokuonA7は\(rokuA7)")
        print("rokuonA8は\(rokuA8)")
        print("rokuonA9は\(rokuA9)")
        
    }
    
    
    
    
    
    @IBOutlet weak var playout: UIButton!
    
    
    @IBAction func playButton(_ sender: Any) {
        print("playボタンを押した時のrokuonArray2\(rokuonArray2)")
        print("playボタンを押したrokuonA2は\(rokuA2)")
        //recorder app
        
        switch rokuontap {
        case 1:
            
            print("再生を押したrokuonA1は\(rokuA1)")
            
            
            //rokuonArray1 だけだと画面遷移後は消えている。
            //rokuA1(userdefaultsでrokuonArray1を記憶させた値の呼び出し）だけだと、画面遷移後は正常に動くが、録音後すぐ聞こうとすると反映前？なのか、録音されていないことになる。なのでORにしてどっちか１なら再生するようにした。）
            if  rokuonArray1 == 1 || rokuA1 == 1{
                audioPlayer = try! AVAudioPlayer(contentsOf: getURL1())
                audioPlayer.delegate = self
                audioPlayer.play()
            }
            else{
                labelrokuonnashi.text = "録音されてません"
            }
            
        case 2:
            if rokuonArray2 == 1 || rokuA2 == 1{
                
                audioPlayer = try! AVAudioPlayer(contentsOf: getURL2())
                audioPlayer.delegate = self
                audioPlayer.play()
                
            }
            else{
                
                labelrokuonnashi.text = "録音されてません"
            }
            
        case 3:
            if  rokuonArray3 == 1 || rokuA3 == 1{
                audioPlayer = try! AVAudioPlayer(contentsOf: getURL3())
                audioPlayer.delegate = self
                audioPlayer.play()
            }
            else{
                labelrokuonnashi.text = "録音されてません"
            }
            
        case 4:
            if  rokuonArray4 == 1 || rokuA4 == 1{
                audioPlayer = try! AVAudioPlayer(contentsOf: getURL4())
                audioPlayer.delegate = self
                audioPlayer.play()
            }
            else{
                labelrokuonnashi.text = "録音されてません"
            }
            
        case 5:
            if  rokuonArray5 == 1 || rokuA5 == 1{
                audioPlayer = try! AVAudioPlayer(contentsOf: getURL5())
                audioPlayer.delegate = self
                audioPlayer.play()
            }
            else{
                labelrokuonnashi.text = "録音されてません"
            }
            
        case 6:
            if  rokuonArray6 == 1 || rokuA6 == 1{
                audioPlayer = try! AVAudioPlayer(contentsOf: getURL6())
                audioPlayer.delegate = self
                audioPlayer.play()
            }
            else{
                labelrokuonnashi.text = "録音されてません"
            }
        case 7:
            if  rokuonArray7 == 1 || rokuA7 == 1{
                audioPlayer = try! AVAudioPlayer(contentsOf: getURL7())
                audioPlayer.delegate = self
                audioPlayer.play()
            }
            else{
                labelrokuonnashi.text = "録音されてません"
            }
            
        case 8:
            if  rokuonArray8 == 1 || rokuA8 == 1{
                audioPlayer = try! AVAudioPlayer(contentsOf: getURL8())
                audioPlayer.delegate = self
                audioPlayer.play()
            }
            else{
                labelrokuonnashi.text = "録音されてません"
            }
            
        default:
            if  rokuonArray9 == 1 || rokuA9 == 1{
                audioPlayer = try! AVAudioPlayer(contentsOf: getURL9())
                audioPlayer.delegate = self
                audioPlayer.play()
                
            }
            else{
                labelrokuonnashi.text = "録音されてません"
            }
            //recorder app
            
        }
        
    }
    
    @IBAction func modoru(_ sender: Any) {
        
        
        self.dismiss(animated: true, completion: nil)
        
        
    }
    
    @IBOutlet weak var kesuout: UIButton!
    
    
    @IBAction func kesu(_ sender: Any) {
        
        /*
         //  for i in 0...10 {
         DispatchQueue.main.async {
         print("Start: \(i)")
         sleep(1)
         }
         }
         */
        
        
        
        
        //      DispatchQueue.main.async {
        //      doMultiAsyncProcess()
        //      }
        /*
         //あとで消す
         for i in 0...10 {
         DispatchQueue.main.async {
         print("Start: \(i)")
         //   sleep(1)
         }
         }
         //
         
         
         
         
         
         var i = 0
         var j = 0
         hoge: for i in 0...2 {
         print("i: \(i)")
         fuga: for j in 10...11 {
         print("j: \(j)")
         break hoge
         }
         }
         
         
         */
        
        
        //   hoge: for i in 0...2 {
        //           print("i: \(i)")
        
        
        //      if i < 1 {
        //     fuga: for j in 10...11 {
        //              print("hoge ifの中のi: \(i)")
        
        
        
        
        // アラートダイアログを生成
        let alertController = UIAlertController(title: "確認",
                                                message: "録音した音を消しても良いですか？",
                                                preferredStyle: UIAlertController.Style.alert)
        // OKボタンがタップされた時の処理
        let okAction = UIAlertAction(title: "消す",
                                     style: UIAlertAction.Style.default, handler: { [self] action in
            // OKボタンがタップされた時の処理
  
            print("OKボタンがタップされた")
  
            //消す処理
            
            //警告窓ここから
            
            switch self.rokuontap{
                
            case 1:
                print("１を消す処理がはじまります")
                
                
                //110  241 　録音中は消すボタンをfalse
                if rokuonArray1 == 1 || self.rokuA1 == 1{
                    
                    rokuonArray1 = 0
                    userDefaults.set(rokuonArray1 , forKey: "rokuA1")
                    rokuA1 = UserDefaults.standard.integer(forKey: "rokuA1")
                    try! FileManager.default.removeItem(at: getURL1())
                    kesuout.isEnabled = false
                    print("消すボタンを押して処理後のrokuonArray1\(rokuonArray1)")
                    print("消すボタンを押して処理後のrokuA2\(rokuA1)")
                    
                }
                
                print("１を消しました")
                
            case 2:
                //110  241 　録音中は消すボタンをfalse
                if rokuonArray2 == 1 || rokuA2 == 1{
                    
                    rokuonArray2 = 0
                    userDefaults.set(rokuonArray2 , forKey: "rokuA2")
                    rokuA2 = UserDefaults.standard.integer(forKey: "rokuA2")
                    try! FileManager.default.removeItem(at: getURL2())
                    kesuout.isEnabled = false
                    print("消すボタンを押して処理後のrokuonArray2\(rokuonArray2)")
                    print("消すボタンを押して処理後のrokuA2\(rokuA2)")
                    
                }
                
                
                
                
                
                
            case 3:
                //110  241 　録音中は消すボタンをfalse
                if rokuonArray3 == 1 || rokuA3 == 1{
                    
                    rokuonArray3 = 0
                    userDefaults.set(rokuonArray3 , forKey: "rokuA3")
                    rokuA3 = UserDefaults.standard.integer(forKey: "rokuA3")
                    try! FileManager.default.removeItem(at: getURL3())
                    kesuout.isEnabled = false
                    print("消すボタンを押して処理後のrokuonArray3\(rokuonArray3)")
                    print("消すボタンを押して処理後のrokuA3\(rokuA3)")
                    
                }
                
            case 4:
                //110  241 　録音中は消すボタンをfalse
                if rokuonArray4 == 1 || rokuA4 == 1{
                    
                    rokuonArray4 = 0
                    userDefaults.set(rokuonArray4 , forKey: "rokuA4")
                    rokuA4 = UserDefaults.standard.integer(forKey: "rokuA4")
                    try! FileManager.default.removeItem(at: getURL4())
                    kesuout.isEnabled = false
                    print("消すボタンを押して処理後のrokuonArray4\(rokuonArray4)")
                    print("消すボタンを押して処理後のrokuA4\(rokuA4)")
                    
                }
                
                
            case 5:
                //110  241 　録音中は消すボタンをfalse
                if rokuonArray5 == 1 || rokuA5 == 1{
                    
                    rokuonArray5 = 0
                    userDefaults.set(rokuonArray5 , forKey: "rokuA5")
                    rokuA5 = UserDefaults.standard.integer(forKey: "rokuA5")
                    try! FileManager.default.removeItem(at: getURL5())
                    kesuout.isEnabled = false
                    print("消すボタンを押して処理後のrokuonArray5\(rokuonArray5)")
                    print("消すボタンを押して処理後のrokuA5\(rokuA5)")
                    
                }
                
                
            case 6:
                //110  241 　録音中は消すボタンをfalse
                if rokuonArray6 == 1 || rokuA6 == 1{
                    
                    rokuonArray6 = 0
                    userDefaults.set(rokuonArray6 , forKey: "rokuA6")
                    rokuA6 = UserDefaults.standard.integer(forKey: "rokuA6")
                    try! FileManager.default.removeItem(at: getURL6())
                    kesuout.isEnabled = false
                    print("消すボタンを押して処理後のrokuonArray6\(rokuonArray6)")
                    print("消すボタンを押して処理後のrokuA6\(rokuA6)")
                    
                }
                
            case 7:
                //110  241 　録音中は消すボタンをfalse
                if rokuonArray7 == 1 || rokuA7 == 1{
                    
                    rokuonArray7 = 0
                    userDefaults.set(rokuonArray7 , forKey: "rokuA7")
                    rokuA7 = UserDefaults.standard.integer(forKey: "rokuA7")
                    try! FileManager.default.removeItem(at: getURL7())
                    kesuout.isEnabled = false
                    print("消すボタンを押して処理後のrokuonArray7\(rokuonArray7)")
                    print("消すボタンを押して処理後のrokuA7\(rokuA7)")
                    
                }
                
                
            case 8:
                //110  241 　録音中は消すボタンをfalse
                if rokuonArray8 == 1 || rokuA8 == 1{
                    
                    rokuonArray8 = 0
                    userDefaults.set(rokuonArray8 , forKey: "rokuA8")
                    rokuA8 = UserDefaults.standard.integer(forKey: "rokuA8")
                    try! FileManager.default.removeItem(at: getURL8())
                    kesuout.isEnabled = false
                    print("消すボタンを押して処理後のrokuonArray8\(rokuonArray8)")
                    print("消すボタンを押して処理後のrokuA8\(rokuA8)")
                    
                }
                
                
                
                
                
            default:
                
                //110  241 　録音中は消すボタンをfalse
                if rokuonArray9 == 1 || rokuA9 == 1{
                    
                    rokuonArray9 = 0
                    userDefaults.set(rokuonArray9 , forKey: "rokuA9")
                    rokuA9 = UserDefaults.standard.integer(forKey: "rokuA9")
                    try! FileManager.default.removeItem(at: getURL9())
                    kesuout.isEnabled = false
                    print("消すボタンを押して処理後のrokuonArray9\(rokuonArray9)")
                    print("消すボタンを押して処理後のrokuA9\(rokuA9)")
                    
                    
                }
                
            }
         print("消すOKを押した時の処理終わりました")
            
            //警告窓ここまで
            
            //消す処理
            
           
             
        })
        // OKボタンを追加
        alertController.addAction(okAction)
        
        // CANCELボタンがタップされた時の処理
        let cancelButton = UIAlertAction(title: "キャンセル",
                                         style: UIAlertAction.Style.cancel, handler: { action in
            // CANCELボタンがタップされた時の処理
           
            print("CANCELボタンがタップされた")

            
        })
        // CANCELボタンを追加
        alertController.addAction(cancelButton)
        // アラートダイアログを表示
        present(alertController, animated: true, completion: nil)
        
        
        // アラートダイアログを生成ここまで
        
   
        
    }
    
    
    
    
    
    
    func initRoundCorners(){
        reco.layer.masksToBounds = true
        outer.layer.masksToBounds = true
        outer.layer.cornerRadius = 31
        outer.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        
        inner.layer.masksToBounds = true
        inner.layer.cornerRadius = 29
        inner.backgroundColor = #colorLiteral(red: 0.1298420429, green: 0.1298461258, blue: 0.1298439503, alpha: 1)
        
    }
    
    func showStartButton() {
        reco.frame = CGRect(x:(w-d)/2,y:(h-d)/2,width:d,height:d)
        reco.layer.cornerRadius = d/2
        reco.backgroundColor = #colorLiteral(red: 0.9962499738, green: 0.0006352620549, blue: 0.03101656213, alpha: 1)
    }
    
     
     
    func showStopButton() {
        reco.frame = CGRect(x:(w-l)/2,y:(h-l)/2,width:l,height:l)
        reco.layer.cornerRadius = 3.0
        reco.backgroundColor = #colorLiteral(red: 0.9962499738, green: 0.0006352620549, blue: 0.03101656213, alpha: 1)
        
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


