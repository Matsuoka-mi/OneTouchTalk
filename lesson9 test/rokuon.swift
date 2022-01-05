//
//  rokuon.swift
//  lesson9 test
//
//  Created by book mac on 2022/01/05.
//

import UIKit
import AVFoundation

class rokuon: UIViewController, AVAudioRecorderDelegate, AVAudioPlayerDelegate {

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
    
    @IBOutlet weak var recordButton: UIButton!
    @IBOutlet weak var baseView: UIView!
    
    @IBOutlet weak var playButton: UIButton!
    
  
    @IBOutlet weak var outerCircle: UIView!
    @IBOutlet weak var innerCircle: UIView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        w = baseView.frame.size.width
              h = baseView.frame.size.height

              initRoundCorners()
       //       showStartButton()
              
           
 //       recordButton.frame = CGRect(x:75,y:75,width:50,height:50)
//       recordButton.layer.cornerRadius = 25.0
//        recordButton.layer.masksToBounds = true
        
    }

    //レコーダーアプリの作り方から
   
    private func getURL() -> URL {
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        let docsDirect = paths[0]
        let url = docsDirect.appendingPathComponent("sample.m4a")
        return url
    }
    
    //レコーダーアプリの作り方から
    
    @IBAction func recordButtonTapped(_ sender: Any) {
   
        if isRecording {
                   UIView.animate(withDuration: 0.2) {
    //                   self.showStartButton()
                    
                    //recorder app
                    
                    self.audioRecorder.stop()
                    self.recordButton.setTitle("", for: .normal)
                    self.playButton.isEnabled = true
                    
                    //recorder app
                    
                    
                   }
               } else {
                   UIView.animate(withDuration: 0.2) {
          //             self.showStopButton()
                    
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
                    self.recordButton.setTitle("", for: .normal)
                    self.playButton.isEnabled = false
                    
                    //recorder app
                    
                   }
               }
               isRecording = !isRecording
           }
    
    
    @IBAction func playButtonAction(_ sender: Any) {
        
        audioPlayer = try! AVAudioPlayer(contentsOf: getURL())
        audioPlayer.delegate = self
        audioPlayer.play()
        
    }
    
           func initRoundCorners(){
               recordButton.layer.masksToBounds = true
            
            recordButton.layer.masksToBounds = true

               /*
               
                outerCircle.layer.masksToBounds = true
                outerCircle.layer.cornerRadius = 31
                outerCircle.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)

                innerCircle.layer.masksToBounds = true
                innerCircle.layer.cornerRadius = 29
                innerCircle.backgroundColor = #colorLiteral(red: 0.1298420429, green: 0.1298461258, blue: 0.1298439503, alpha: 1)
               
               */
           }
           
   /*       func showStartButton() {
               recordButton.frame = CGRect(x:(w-d)/2,y:(h-d)/2,width:d,height:d)
               recordButton.layer.cornerRadius = d/2
           }
           
           func showStopButton() {
               recordButton.frame = CGRect(x:(w-l)/2,y:(h-l)/2,width:l,height:l)
               recordButton.layer.cornerRadius = 3.0
           }
*/
           
       }
