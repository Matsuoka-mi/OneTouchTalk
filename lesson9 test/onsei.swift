//
//  onsei.swift
//  lesson9 test
//
//  Created by book mac on 2022/01/05.
//

import UIKit
import AVFoundation

class onsei: UIViewController, AVAudioRecorderDelegate, AVAudioPlayerDelegate {
    
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
    
    
    @IBOutlet weak var reco: UIButton!
    @IBOutlet weak var BaseView: UIView!
    @IBOutlet weak var outer: UIView!
    @IBOutlet weak var inner: UIView!
    @IBOutlet weak var play: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        w = BaseView.frame.size.width
               h = BaseView.frame.size.height

               initRoundCorners()
               showStartButton()
        
        
        /*
        reco.frame = CGRect(x:75,y:75,width:50,height:50)
        reco.layer.masksToBounds = true
        reco.layer.cornerRadius = 25.0
        */
        
    }
    
    
    //レコーダーアプリの作り方から
   
    private func getURL() -> URL{
    //    return FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        
        
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        let docsDirect = paths[0]
        let url = docsDirect.appendingPathComponent("sample.m4a")
        return url
        
        
    }
    
    //レコーダーアプリの作り方から
    
    
    
    @IBAction func recordButton(_ sender: Any) {
    
        if isRecording {
            UIView.animate(withDuration: 0.2) { [self] in
               
                self.showStartButton()
                
                
                
                //recorder app
                
                self.audioRecorder.stop()
                self.reco.setTitle("", for: .normal)
                self.play.isEnabled = true
                
                //recorder app
                
                
          //      self.reco.frame = CGRect(x:75,y:75,width:50,height:50)
          //      self.reco.layer.cornerRadius = 25
            }
        } else {
            UIView.animate(withDuration: 0.2) { [self] in
             
                self.showStopButton()
                
                
                
                
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
                self.audioRecorder = try! AVAudioRecorder(url: self.getURL(), settings: settings)
                self.audioRecorder.delegate = self
                self.audioRecorder.record()
                reco.setTitle("", for: .normal)
                play.isEnabled = false
                //recorder app
                
                
          //      self.reco.frame = CGRect(x:75+10,y:75+10,width:30,height:30)
          //      self.reco.layer.cornerRadius = 3.0
                
            }
        }
        isRecording = !isRecording
    }
    
    @IBAction func playButton(_ sender: Any) {
       
        //recorder app
        
        audioPlayer = try! AVAudioPlayer(contentsOf: getURL())
        audioPlayer.delegate = self
        audioPlayer.play()
        
        //recorder app
        
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
        }
        
        func showStopButton() {
            reco.frame = CGRect(x:(w-l)/2,y:(h-l)/2,width:l,height:l)
            reco.layer.cornerRadius = 3.0
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
