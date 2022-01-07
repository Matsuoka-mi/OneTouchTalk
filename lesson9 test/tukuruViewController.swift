//
//  zyunbanViewController.swift
//  lesson9 test
//
//  Created by book mac on 2021/11/23.
//

import UIKit

class tukuruViewController: UIViewController {
    
    //////////////////画面遷移時に画像を渡すQiita
    var image: UIImage?
    //////////////////画面遷移時に画像を渡すQiitaここまで
    
    @IBOutlet weak var tukuimageView1: UIImageView!
    @IBOutlet weak var tukuimageView2: UIImageView!
    @IBOutlet weak var tukuimageView3: UIImageView!
    @IBOutlet weak var tukuimageView4: UIImageView!
    @IBOutlet weak var tukuimageView5: UIImageView!
    @IBOutlet weak var tukuimageView6: UIImageView!
    @IBOutlet weak var tukuimageView7: UIImageView!
    @IBOutlet weak var tukuimageView8: UIImageView!
    @IBOutlet weak var tukuimageView9: UIImageView!
    
    
    @IBOutlet weak var plusminus1: UIButton!
    @IBOutlet weak var plusminus2: UIButton!
    @IBOutlet weak var plusminus3: UIButton!
    @IBOutlet weak var plusminus4: UIButton!
    @IBOutlet weak var plusminus5: UIButton!
    @IBOutlet weak var plusminus6: UIButton!
    @IBOutlet weak var plusminus7: UIButton!
    @IBOutlet weak var plusminus8: UIButton!
    @IBOutlet weak var plusminus9: UIButton!
    
    
    
    @IBOutlet weak var kido1: UIButton!
    @IBOutlet weak var kido2: UIButton!
    @IBOutlet weak var kido3: UIButton!
    
    var gazou1:Int = 0
    var gazou2:Int = 0
    var gazou3:Int = 0
    var gazou4:Int = 0
    var gazou5:Int = 0
    var gazou6:Int = 0
    var gazou7:Int = 0
    var gazou8:Int = 0
    var gazou9:Int = 0
    
    
    var tagNumber1:Int = 0
    var tagNumber2:Int = 0
    var tagNumber3:Int = 0
    var tagNumber4:Int = 0
    var tagNumber5:Int = 0
    var tagNumber6:Int = 0
    var tagNumber7:Int = 0
    var tagNumber8:Int = 0
    var tagNumber9:Int = 0
    
    
    
    var checkButtonArray = [Int]()
    var satsueiArray = [0, 0, 0, 0, 0, 0, 0, 0, 0]
    var number:Int = 0
    
  
    
    
    //forkey
    let userDefaults:UserDefaults = UserDefaults.standard
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        iroNumber1 = userDefaults.integer(forKey: "iro1")
        //      self.gazou1 = iroNumber1
      
        print("gazou1は\(self.gazou1)")
        
        //画像１の枠線の変更
        //青にする(色)
        self.tukuimageView1.layer.borderColor = UIColor.blue.cgColor
        //線の太さ(太さ)
        self.tukuimageView1.layer.borderWidth = 2
        
        //画像２の枠線の変更
        //青にする(色)
        self.tukuimageView2.layer.borderColor = UIColor.blue.cgColor
        //線の太さ(太さ)
        self.tukuimageView2.layer.borderWidth = 2
        
        //画像３の枠線の変更
        //青にする(色)
        self.tukuimageView3.layer.borderColor = UIColor.blue.cgColor
        //線の太さ(太さ)
        self.tukuimageView3.layer.borderWidth = 2
        
        //画像4の枠線の変更
        //青にする(色)
        self.tukuimageView4.layer.borderColor = UIColor.blue.cgColor
        //線の太さ(太さ)
        self.tukuimageView4.layer.borderWidth = 2
        
        //画像5の枠線の変更
        //青にする(色)
        self.tukuimageView5.layer.borderColor = UIColor.blue.cgColor
        //線の太さ(太さ)
        self.tukuimageView5.layer.borderWidth = 2
        
        //画像6の枠線の変更
        //青にする(色)
        self.tukuimageView6.layer.borderColor = UIColor.blue.cgColor
        //線の太さ(太さ)
        self.tukuimageView6.layer.borderWidth = 2
        
        
        //画像7の枠線の変更
        //青にする(色)
        self.tukuimageView7.layer.borderColor = UIColor.blue.cgColor
        //線の太さ(太さ)
        self.tukuimageView7.layer.borderWidth = 2
        
        //画像8の枠線の変更
        //青にする(色)
        self.tukuimageView8.layer.borderColor = UIColor.blue.cgColor
        //線の太さ(太さ)
        self.tukuimageView8.layer.borderWidth = 2
        
        //画像9の枠線の変更
        //青にする(色)
        self.tukuimageView9.layer.borderColor = UIColor.blue.cgColor
        //線の太さ(太さ)
        self.tukuimageView9.layer.borderWidth = 2
        
        
        
    }
    
    //forkey
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
      
        
        
        //アプリを再起動してもiro1の色を表示する
        //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        iroNumber1 = userDefaults.integer(forKey: "iro1")
        //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        
        
        if iroNumber1 == 0{
            //もし、iroNumberが0(「画像はありません」)ならボタンをプラスにする
            self.plusminus1.setImage(UIImage(systemName: "plus.circle.fill"), for: .normal);
        }
        else{
            //「画像がありません」以外ならボタンをマイナスにする
            self.plusminus1.setImage(UIImage(systemName: "minus.circle.fill"), for: .normal)
        }
        print("プラスを押す前のtukuruのiroNumber1は\(iroNumber1)")
        
        
        
        //アプリを再起動してもiro2の色を表示する
        ////////////////////////////////////////////////////////////////////////////////////////////////////////
        iroNumber2 = userDefaults.integer(forKey: "iro2")
        self.gazou2 = iroNumber2
        //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        
        if iroNumber2 == 0{
            //もし、iroNumber2が0(「画像はありません」)ならボタンをプラスにする
            self.plusminus2.setImage(UIImage(systemName: "plus.circle.fill"), for: .normal);
        }
        else{
            //「画像がありません」以外ならボタンをマイナスにする
            self.plusminus2.setImage(UIImage(systemName: "minus.circle.fill"), for: .normal)
        }
        print("プラスを押す前のtukuruのiroNumber2は\(iroNumber2)")
        
        
        //アプリを再起動してもiro3の色を表示する
        ////////////////////////////////////////////////////////////////////////////////////////////////////////
        iroNumber3 = userDefaults.integer(forKey: "iro3")
        self.gazou3 = iroNumber3
        //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        
        if iroNumber3 == 0{
            //もし、iroNumber3が0(「画像はありません」)ならボタンをプラスにする
            self.plusminus3.setImage(UIImage(systemName: "plus.circle.fill"), for: .normal);
        }
        else{
            //「画像がありません」以外ならボタンをマイナスにする
            self.plusminus3.setImage(UIImage(systemName: "minus.circle.fill"), for: .normal)
        }
        print("プラスを押す前のtukuruのiroNumber3は\(iroNumber3)")
        
        
        //アプリを再起動してもiro4の色を表示する
        ////////////////////////////////////////////////////////////////////////////////////////////////////////
        iroNumber4 = userDefaults.integer(forKey: "iro4")
        self.gazou4 = iroNumber4
        //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        
        if iroNumber4 == 0{
            //もし、iroNumber4が0(「画像はありません」)ならボタンをプラスにする
            self.plusminus4.setImage(UIImage(systemName: "plus.circle.fill"), for: .normal);
        }
        else{
            //「画像がありません」以外ならボタンをマイナスにする
            self.plusminus4.setImage(UIImage(systemName: "minus.circle.fill"), for: .normal)
        }
        print("プラスを押す前のtukuruのiroNumber4は\(iroNumber4)")
        
        
        //アプリを再起動してもiro5の色を表示する
        ////////////////////////////////////////////////////////////////////////////////////////////////////////
        iroNumber5 = userDefaults.integer(forKey: "iro5")
        self.gazou5 = iroNumber5
        //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        
        if iroNumber5 == 0{
            //もし、iroNumber5が0(「画像はありません」)ならボタンをプラスにする
            self.plusminus5.setImage(UIImage(systemName: "plus.circle.fill"), for: .normal);
        }
        else{
            //「画像がありません」以外ならボタンをマイナスにする
            self.plusminus5.setImage(UIImage(systemName: "minus.circle.fill"), for: .normal)
        }
        print("プラスを押す前のtukuruのiroNumber5は\(iroNumber5)")
        
        
        //アプリを再起動してもiro6の色を表示する
        ////////////////////////////////////////////////////////////////////////////////////////////////////////
        iroNumber6 = userDefaults.integer(forKey: "iro6")
        self.gazou6 = iroNumber6
        //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        
        if iroNumber6 == 0{
            //もし、iroNumber6が0(「画像はありません」)ならボタンをプラスにする
            self.plusminus6.setImage(UIImage(systemName: "plus.circle.fill"), for: .normal);
        }
        else{
            //「画像がありません」以外ならボタンをマイナスにする
            self.plusminus6.setImage(UIImage(systemName: "minus.circle.fill"), for: .normal)
        }
        print("プラスを押す前のtukuruのiroNumber6は\(iroNumber6)")
        
        
        //アプリを再起動してもiro7の色を表示する
        ////////////////////////////////////////////////////////////////////////////////////////////////////////
        iroNumber7 = userDefaults.integer(forKey: "iro7")
        self.gazou7 = iroNumber7
        //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        
        if iroNumber7 == 0{
            //もし、iroNumber7が0(「画像はありません」)ならボタンをプラスにする
            self.plusminus7.setImage(UIImage(systemName: "plus.circle.fill"), for: .normal);
        }
        else{
            //「画像がありません」以外ならボタンをマイナスにする
            self.plusminus7.setImage(UIImage(systemName: "minus.circle.fill"), for: .normal)
        }
        print("プラスを押す前のtukuruのiroNumber7は\(iroNumber7)")
        
        //アプリを再起動してもiro8の色を表示する
        ////////////////////////////////////////////////////////////////////////////////////////////////////////
        iroNumber8 = userDefaults.integer(forKey: "iro8")
        self.gazou8 = iroNumber8
        //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        
        if iroNumber8 == 0{
            //もし、iroNumber8が0(「画像はありません」)ならボタンをプラスにする
            self.plusminus8.setImage(UIImage(systemName: "plus.circle.fill"), for: .normal);
        }
        else{
            //「画像がありません」以外ならボタンをマイナスにする
            self.plusminus8.setImage(UIImage(systemName: "minus.circle.fill"), for: .normal)
        }
        print("プラスを押す前のtukuruのiroNumber8は\(iroNumber8)")
        
        
        //アプリを再起動してもiro9の色を表示する
        ////////////////////////////////////////////////////////////////////////////////////////////////////////
        iroNumber9 = userDefaults.integer(forKey: "iro9")
        self.gazou9 = iroNumber9
        //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        
        if iroNumber9 == 0{
            //もし、iroNumber9が0(「画像はありません」)ならボタンをプラスにする
            self.plusminus9.setImage(UIImage(systemName: "plus.circle.fill"), for: .normal);
        }
        else{
            //「画像がありません」以外ならボタンをマイナスにする
            self.plusminus9.setImage(UIImage(systemName: "minus.circle.fill"), for: .normal)
        }
        print("プラスを押す前のtukuruのiroNumber9は\(iroNumber9)")
        
        
        
        
        
        
        switch iroNumber1 {
        case 1:
            tukuimageView1.image = UIImage(named: "black")
        case 2:
            tukuimageView1.image = UIImage(named: "white")
        case 3:
            tukuimageView1.image = UIImage(named: "red")
            
        case 4:
            tukuimageView1.image = UIImage(named: "blue")
        case 5:
            tukuimageView1.image = UIImage(named: "green")
        case 6:
            tukuimageView1.image = UIImage(named: "yellow")
            
        case 7:
            tukuimageView1.image = UIImage(named: "pink")
        case 8:
            tukuimageView1.image = UIImage(named: "orange")
        case 9:
            tukuimageView1.image = UIImage(named: "purple")
            

        default:
            tukuimageView1.image = UIImage(named: "purasudegazoutukutte")
        }
        
        
        switch iroNumber2 {
        case 1:
            tukuimageView2.image = UIImage(named: "black")
        case 2:
            tukuimageView2.image = UIImage(named: "white")
        case 3:
            tukuimageView2.image = UIImage(named: "red")
            
        case 4:
            tukuimageView2.image = UIImage(named: "blue")
        case 5:
            tukuimageView2.image = UIImage(named: "green")
        case 6:
            tukuimageView2.image = UIImage(named: "yellow")
            
        case 7:
            tukuimageView2.image = UIImage(named: "pink")
        case 8:
            tukuimageView2.image = UIImage(named: "orange")
        case 9:
            tukuimageView2.image = UIImage(named: "purple")
           
        default:
            tukuimageView2.image = UIImage(named: "purasudegazoutukutte")
        }
        
        switch iroNumber3 {
        case 1:
            tukuimageView3.image = UIImage(named: "black")
        case 2:
            tukuimageView3.image = UIImage(named: "white")
        case 3:
            tukuimageView3.image = UIImage(named: "red")
            
        case 4:
            tukuimageView3.image = UIImage(named: "blue")
        case 5:
            tukuimageView3.image = UIImage(named: "green")
        case 6:
            tukuimageView3.image = UIImage(named: "yellow")
            
        case 7:
            tukuimageView3.image = UIImage(named: "pink")
        case 8:
            tukuimageView3.image = UIImage(named: "orange")
        case 9:
            tukuimageView3.image = UIImage(named: "purple")
            
        default:
            tukuimageView3.image = UIImage(named: "purasudegazoutukutte")
        }
        
        switch iroNumber4 {
        case 1:
            tukuimageView4.image = UIImage(named: "black")
        case 2:
            tukuimageView4.image = UIImage(named: "white")
        case 3:
            tukuimageView4.image = UIImage(named: "red")
            
        case 4:
            tukuimageView4.image = UIImage(named: "blue")
        case 5:
            tukuimageView4.image = UIImage(named: "green")
        case 6:
            tukuimageView4.image = UIImage(named: "yellow")
            
        case 7:
            tukuimageView4.image = UIImage(named: "pink")
        case 8:
            tukuimageView4.image = UIImage(named: "orange")
        case 9:
            tukuimageView4.image = UIImage(named: "purple")
            
        default:
            tukuimageView4.image = UIImage(named: "purasudegazoutukutte")
        }
        
        switch iroNumber5 {
        case 1:
            tukuimageView5.image = UIImage(named: "black")
        case 2:
            tukuimageView5.image = UIImage(named: "white")
        case 3:
            tukuimageView5.image = UIImage(named: "red")
            
        case 4:
            tukuimageView5.image = UIImage(named: "blue")
        case 5:
            tukuimageView5.image = UIImage(named: "green")
        case 6:
            tukuimageView5.image = UIImage(named: "yellow")
            
        case 7:
            tukuimageView5.image = UIImage(named: "pink")
        case 8:
            tukuimageView5.image = UIImage(named: "orange")
        case 9:
            tukuimageView5.image = UIImage(named: "purple")
            
        default:
            tukuimageView5.image = UIImage(named: "purasudegazoutukutte")
        }
        
        
        switch iroNumber6 {
        case 1:
            tukuimageView6.image = UIImage(named: "black")
        case 2:
            tukuimageView6.image = UIImage(named: "white")
        case 3:
            tukuimageView6.image = UIImage(named: "red")
            
        case 4:
            tukuimageView6.image = UIImage(named: "blue")
        case 5:
            tukuimageView6.image = UIImage(named: "green")
        case 6:
            tukuimageView6.image = UIImage(named: "yellow")
            
        case 7:
            tukuimageView6.image = UIImage(named: "pink")
        case 8:
            tukuimageView6.image = UIImage(named: "orange")
        case 9:
            tukuimageView6.image = UIImage(named: "purple")
            
        default:
            tukuimageView6.image = UIImage(named: "purasudegazoutukutte")
        }
        
        switch iroNumber7 {
        case 1:
            tukuimageView7.image = UIImage(named: "black")
        case 2:
            tukuimageView7.image = UIImage(named: "white")
        case 3:
            tukuimageView7.image = UIImage(named: "red")
            
        case 4:
            tukuimageView7.image = UIImage(named: "blue")
        case 5:
            tukuimageView7.image = UIImage(named: "green")
        case 6:
            tukuimageView7.image = UIImage(named: "yellow")
            
        case 7:
            tukuimageView7.image = UIImage(named: "pink")
        case 8:
            tukuimageView7.image = UIImage(named: "orange")
        case 9:
            tukuimageView7.image = UIImage(named: "purple")
            
        default:
            tukuimageView7.image = UIImage(named: "purasudegazoutukutte")
        }
        
        switch iroNumber8 {
        case 1:
            tukuimageView8.image = UIImage(named: "black")
        case 2:
            tukuimageView8.image = UIImage(named: "white")
        case 3:
            tukuimageView8.image = UIImage(named: "red")
            
        case 4:
            tukuimageView8.image = UIImage(named: "blue")
        case 5:
            tukuimageView8.image = UIImage(named: "green")
        case 6:
            tukuimageView8.image = UIImage(named: "yellow")
            
        case 7:
            tukuimageView8.image = UIImage(named: "pink")
        case 8:
            tukuimageView8.image = UIImage(named: "orange")
        case 9:
            tukuimageView8.image = UIImage(named: "purple")
            
        default:
            tukuimageView8.image = UIImage(named: "purasudegazoutukutte")
        }
        
        switch iroNumber9 {
        case 1:
            tukuimageView9.image = UIImage(named: "black")
        case 2:
            tukuimageView9.image = UIImage(named: "white")
        case 3:
            tukuimageView9.image = UIImage(named: "red")
            
        case 4:
            tukuimageView9.image = UIImage(named: "blue")
        case 5:
            tukuimageView9.image = UIImage(named: "green")
        case 6:
            tukuimageView9.image = UIImage(named: "yellow")
            
        case 7:
            tukuimageView9.image = UIImage(named: "pink")
        case 8:
            tukuimageView9.image = UIImage(named: "orange")
        case 9:
            tukuimageView9.image = UIImage(named: "purple")
            
        default:
            tukuimageView9.image = UIImage(named: "purasudegazoutukutte")
        }
        
    }
    
    //なぜかDidWillDisappearでは表示されないので。
    override func viewDidAppear(_ animated: Bool) {
        
        let userDefaultsSatsueiArray = userDefaults.array(forKey: "satsueiArray")
        print("tukuru画面の時の撮影配列\(userDefaultsSatsueiArray)")
        
        //この中に１があるかどうかチェックし、あった場合はそれが何番目かを取り出せばどの番号の枠に画像を遷移したら良いか分かる
        
        //インストール後すぐに「つくる」を押した時、いきなり５６８行目だと[Int]でエラーになるので↓この行を入れるとsatsueiAにnilが入ってエラーにならない。
        let satsueiA = UserDefaults.standard.object(forKey: "satsueiArray")
        
        // チェックボックスの配列がnilではないときの処理
        if satsueiA != nil {
        
        // as! [Int]がないとfirstIndex の行でエラーになる
        let satsueiA = UserDefaults.standard.array(forKey: "satsueiArray") as! [Int]
        
       
        print("tukuruViewが受け取った配列\(satsueiA)")
        
       //satsueiA配列の中に１があったら、それが何番目かをnumberの中に入れて表示
        if let numberA = satsueiA.firstIndex(where: {$0 == 1}) {
            print(numberA) //2
            number = numberA
            print("numberは\(number)")
        }
        }
        
        
        
        //写真を撮ってない(image == nil)の時は「画像を作ってね」を表示しsyashin = 0にする
        
        if image == nil{
            syashin = 0
            tukuimageView1.image = UIImage(named: "purasudegazoutukutte")
            print("写真なし")
            
        }
        else {
            //写真を撮った時はsyashin = 1にして、
            syashin = 1
            print("写真撮った")
        }
        
        //////////////////画面遷移時に画像を渡すQiita
        //遷移元から取得したimage(画像データ)をimageViewのimageに渡す
        //number の数字：何番目の＋ボタンを押したか（押したら配列の要素１）それが配列の何番目か。
        
            switch number{
            case 0 :
                //配列の要素１番目は「０」
                print("写真ありの時の１枠")
                tukuimageView1.image = image
                print("写真ありの時の１枠終わり")
               
            
            case 1 :
                print("写真ありの時の１枠")
                tukuimageView2.image = image
                print("写真ありの時の１枠終わり")
                
                
            case 2 :
                print("写真ありの時の１枠")
                tukuimageView3.image = image
                print("写真ありの時の１枠終わり")
                
            case 3 :
                print("写真ありの時の１枠")
                tukuimageView4.image = image
                print("写真ありの時の１枠終わり")
               
            
            case 4 :
                print("写真ありの時の１枠")
                tukuimageView5.image = image
                print("写真ありの時の１枠終わり")
                
                
            case 5 :
                print("写真ありの時の１枠")
                tukuimageView6.image = image
                print("写真ありの時の１枠終わり")
                
            case 6 :
                print("写真ありの時の１枠")
                tukuimageView7.image = image
                print("写真ありの時の１枠終わり")
               
            
            case 7 :
                print("写真ありの時の１枠")
                tukuimageView8.image = image
                print("写真ありの時の１枠終わり")
                
                
           
            default:
                tukuimageView9.image = image
                //////////////////画面遷移時に画像を渡すQiitaここまで
                
        }
        
    }
    
    @IBAction func plusminusTap(_ sender: UIButton) {
        
        switch sender.tag {
        case 1:
        
        //タッチするとプラスボタンがマイナスに。
        if iroNumber1 == 0 {
            
            //iroNumber が０（画像がない表示）なら、ボタンはプラスからマイナスに変更
            self.plusminus1.setImage(UIImage(systemName: "minus.circle.fill"), for: .normal);
            
            //「iroNumber1（１番の画像枠）の値」を”iro1"の名前で保存　黒なら iro1 = 1
            userDefaults.set(iroNumber1 , forKey: "iro1")
            
            
           
            //画面遷移
            // ①storyboardのインスタンス取得
            let storyboard: UIStoryboard = self.storyboard!
            
            // ②遷移先ViewControllerのインスタンス取得
            let nextView = storyboard.instantiateViewController(withIdentifier: "tukuru1ViewController") as! tukuru1ViewController
                   
            //tagの値をtukuru1ViewControllerに渡す
            //tukuru1ViewControllerのplusminustag という名前の変数に、sender.tag(1を押したら1）の値を入れたもの
            print("タグ\(sender.tag)")
            nextView.plusminustag = sender.tag
           
           
            // ③画面遷移
            let vc = nextView
            vc.modalPresentationStyle = .fullScreen
            self.present(vc, animated: true, completion: nil)
            
            sender.isSelected = !sender.isSelected;
            
        }
        //    self.present(nextView, animated: true, completion: nil)
        else{
            //画像があるなら、「画像がない」画像に変更し、ボタンはマイナスからプラスに変更
            iroNumber1 = 0
            tukuimageView1.image = UIImage(named: "gazounashi")
            self.plusminus1.setImage(UIImage(systemName: "plus.circle.fill"), for: .normal);
            userDefaults.set(iroNumber1 , forKey: "iro1")
            
            //tagNumberを０にして記憶させる（zyunbanViewControllerで画像を表示させない番号。させるときは１にする）
            self.tagNumber1 = 0
            userDefaults.set(tagNumber1 , forKey: "tagNumber1")
            
         
            
        }
        
        case 2:
            //タッチするとプラスボタンがマイナスに、点灯した電球が消えた電球になる。
            if iroNumber2 == 0 {
                
                //iroNumber が０（画像がない表示）なら、ボタンはプラスからマイナスに変更
                self.plusminus2.setImage(UIImage(systemName: "minus.circle.fill"), for: .normal);
                userDefaults.set(iroNumber2 , forKey: "iro2")
                
                //       self.kido.setImage(UIImage(systemName: "lightbulb.slash"), for: .normal);
                //        self.kido.setImage(UIImage(systemName: "lightbulb.fill"), for: .selected)
                
                //画面遷移
                // ①storyboardのインスタンス取得
                let storyboard: UIStoryboard = self.storyboard!
                
                // ②遷移先ViewControllerのインスタンス取得
                let nextView = storyboard.instantiateViewController(withIdentifier: "tukuru1ViewController") as! tukuru1ViewController
                
                
                //tagの値をtukuru1ViewControllerに渡す
                print("タグ\(sender.tag)")
                nextView.plusminustag = sender.tag
                
                // ③画面遷移
                let vc = nextView
                vc.modalPresentationStyle = .fullScreen
                self.present(vc, animated: true, completion: nil)
                
                sender.isSelected = !sender.isSelected;
                
            }
            //    self.present(nextView, animated: true, completion: nil)
            else{
                //画像があるなら、「画像がない」画像に変更し、ボタンはマイナスからプラスに変更
                iroNumber2 = 0
                tukuimageView2.image = UIImage(named: "gazounashi")
                self.plusminus2.setImage(UIImage(systemName: "plus.circle.fill"), for: .normal);
                userDefaults.set(iroNumber2 , forKey: "iro2")
                
                //tagNumberを０にして記憶させる（zyunbanViewControllerで画像を表示させない番号。させるときは１にする）
                self.tagNumber2 = 0
                userDefaults.set(tagNumber2 , forKey: "tagNumber2")
                
          
            }
            
        case 3:
            //タッチするとプラスボタンがマイナスに、点灯した電球が消えた電球になる。
            if iroNumber3 == 0 {
                
                //iroNumber が０（画像がない表示）なら、ボタンはプラスからマイナスに変更
                self.plusminus3.setImage(UIImage(systemName: "minus.circle.fill"), for: .normal);
                userDefaults.set(iroNumber3 , forKey: "iro3")
                
                //       self.kido1.setImage(UIImage(systemName: "lightbulb.slash"), for: .normal);
                //        self.kido1.setImage(UIImage(systemName: "lightbulb.fill"), for: .selected)
                
                //画面遷移
                // ①storyboardのインスタンス取得
                let storyboard: UIStoryboard = self.storyboard!
                
                // ②遷移先ViewControllerのインスタンス取得
                let nextView = storyboard.instantiateViewController(withIdentifier: "tukuru1ViewController") as! tukuru1ViewController
                
                
                //tagの値をtukuru1ViewControllerに渡す
                print("タグ\(sender.tag)")
                nextView.plusminustag = sender.tag
                
                
                // ③画面遷移
                let vc = nextView
                vc.modalPresentationStyle = .fullScreen
                self.present(vc, animated: true, completion: nil)
                
                sender.isSelected = !sender.isSelected;
                
            }
            //    self.present(nextView, animated: true, completion: nil)
            else{
                //画像があるなら、「画像がない」画像に変更し、ボタンはマイナスからプラスに変更
                iroNumber3 = 0
                tukuimageView3.image = UIImage(named: "gazounashi")
                self.plusminus3.setImage(UIImage(systemName: "plus.circle.fill"), for: .normal);
                userDefaults.set(iroNumber3 , forKey: "iro3")
               
                //tagNumberを０にして記憶させる（zyunbanViewControllerで画像を表示させない番号。させるときは１にする）
                self.tagNumber3 = 0
                userDefaults.set(tagNumber3 , forKey: "tagNumber3")
                
            
                
            }
            
            
            
        case 4:
            //タッチするとプラスボタンがマイナスに、点灯した電球が消えた電球になる。
            if iroNumber4 == 0 {
                
                //iroNumber が０（画像がない表示）なら、ボタンはプラスからマイナスに変更
                self.plusminus4.setImage(UIImage(systemName: "minus.circle.fill"), for: .normal);
                userDefaults.set(iroNumber4 , forKey: "iro4")
                
                //       self.kido1.setImage(UIImage(systemName: "lightbulb.slash"), for: .normal);
                //        self.kido1.setImage(UIImage(systemName: "lightbulb.fill"), for: .selected)
                
                //画面遷移
                // ①storyboardのインスタンス取得
                let storyboard: UIStoryboard = self.storyboard!
                
                // ②遷移先ViewControllerのインスタンス取得
                let nextView = storyboard.instantiateViewController(withIdentifier: "tukuru1ViewController") as! tukuru1ViewController
                
                
                //tagの値をtukuru1ViewControllerに渡す
                print("タグ\(sender.tag)")
                nextView.plusminustag = sender.tag
                
                
                // ③画面遷移
                let vc = nextView
                vc.modalPresentationStyle = .fullScreen
                self.present(vc, animated: true, completion: nil)
                
                sender.isSelected = !sender.isSelected;
                
            }
            //    self.present(nextView, animated: true, completion: nil)
            else{
                //画像があるなら、「画像がない」画像に変更し、ボタンはマイナスからプラスに変更
                iroNumber4 = 0
                tukuimageView4.image = UIImage(named: "gazounashi")
                self.plusminus4.setImage(UIImage(systemName: "plus.circle.fill"), for: .normal);
                userDefaults.set(iroNumber4 , forKey: "iro4")
               
                //tagNumberを０にして記憶させる（zyunbanViewControllerで画像を表示させない番号。させるときは１にする）
                self.tagNumber4 = 0
                userDefaults.set(tagNumber4 , forKey: "tagNumber4")
                
            
                
            }
            
            
            
            
        case 5:
            //タッチするとプラスボタンがマイナスに、点灯した電球が消えた電球になる。
            if iroNumber5 == 0 {
                
                //iroNumber が０（画像がない表示）なら、ボタンはプラスからマイナスに変更
                self.plusminus5.setImage(UIImage(systemName: "minus.circle.fill"), for: .normal);
                userDefaults.set(iroNumber5 , forKey: "iro5")
                
                //       self.kido.setImage(UIImage(systemName: "lightbulb.slash"), for: .normal);
                //        self.kido.setImage(UIImage(systemName: "lightbulb.fill"), for: .selected)
                
                //画面遷移
                // ①storyboardのインスタンス取得
                let storyboard: UIStoryboard = self.storyboard!
                
                // ②遷移先ViewControllerのインスタンス取得
                let nextView = storyboard.instantiateViewController(withIdentifier: "tukuru1ViewController") as! tukuru1ViewController
                
                
                //tagの値をtukuru1ViewControllerに渡す
                print("タグ\(sender.tag)")
                nextView.plusminustag = sender.tag
                
                // ③画面遷移
                let vc = nextView
                vc.modalPresentationStyle = .fullScreen
                self.present(vc, animated: true, completion: nil)
                
                sender.isSelected = !sender.isSelected;
                
            }
            //    self.present(nextView, animated: true, completion: nil)
            else{
                //画像があるなら、「画像がない」画像に変更し、ボタンはマイナスからプラスに変更
                iroNumber5 = 0
                tukuimageView5.image = UIImage(named: "gazounashi")
                self.plusminus5.setImage(UIImage(systemName: "plus.circle.fill"), for: .normal);
                userDefaults.set(iroNumber5 , forKey: "iro5")
                
                //tagNumberを０にして記憶させる（zyunbanViewControllerで画像を表示させない番号。させるときは１にする）
                self.tagNumber5 = 0
                userDefaults.set(tagNumber5 , forKey: "tagNumber5")
                
          
            }
            
            
        case 6:
            //タッチするとプラスボタンがマイナスに、点灯した電球が消えた電球になる。
            if iroNumber6 == 0 {
                
                //iroNumber が０（画像がない表示）なら、ボタンはプラスからマイナスに変更
                self.plusminus6.setImage(UIImage(systemName: "minus.circle.fill"), for: .normal);
                userDefaults.set(iroNumber6 , forKey: "iro6")
                
                //       self.kido.setImage(UIImage(systemName: "lightbulb.slash"), for: .normal);
                //        self.kido.setImage(UIImage(systemName: "lightbulb.fill"), for: .selected)
                
                //画面遷移
                // ①storyboardのインスタンス取得
                let storyboard: UIStoryboard = self.storyboard!
                
                // ②遷移先ViewControllerのインスタンス取得
                let nextView = storyboard.instantiateViewController(withIdentifier: "tukuru1ViewController") as! tukuru1ViewController
                
                
                //tagの値をtukuru1ViewControllerに渡す
                print("タグ\(sender.tag)")
                nextView.plusminustag = sender.tag
                
                // ③画面遷移
                let vc = nextView
                vc.modalPresentationStyle = .fullScreen
                self.present(vc, animated: true, completion: nil)
                
                sender.isSelected = !sender.isSelected;
                
            }
            //    self.present(nextView, animated: true, completion: nil)
            else{
                //画像があるなら、「画像がない」画像に変更し、ボタンはマイナスからプラスに変更
                iroNumber6 = 0
                tukuimageView6.image = UIImage(named: "gazounashi")
                self.plusminus6.setImage(UIImage(systemName: "plus.circle.fill"), for: .normal);
                userDefaults.set(iroNumber6 , forKey: "iro6")
                
                //tagNumberを０にして記憶させる（zyunbanViewControllerで画像を表示させない番号。させるときは１にする）
                self.tagNumber6 = 0
                userDefaults.set(tagNumber6 , forKey: "tagNumber6")
                
          
            }
            
            
        case 7:
            //タッチするとプラスボタンがマイナスに、点灯した電球が消えた電球になる。
            if iroNumber7 == 0 {
                
                //iroNumber が０（画像がない表示）なら、ボタンはプラスからマイナスに変更
                self.plusminus7.setImage(UIImage(systemName: "minus.circle.fill"), for: .normal);
                userDefaults.set(iroNumber7 , forKey: "iro7")
                
                //       self.kido.setImage(UIImage(systemName: "lightbulb.slash"), for: .normal);
                //        self.kido.setImage(UIImage(systemName: "lightbulb.fill"), for: .selected)
                
                //画面遷移
                // ①storyboardのインスタンス取得
                let storyboard: UIStoryboard = self.storyboard!
                
                // ②遷移先ViewControllerのインスタンス取得
                let nextView = storyboard.instantiateViewController(withIdentifier: "tukuru1ViewController") as! tukuru1ViewController
                
                
                //tagの値をtukuru1ViewControllerに渡す
                print("タグ\(sender.tag)")
                nextView.plusminustag = sender.tag
                
                // ③画面遷移
                let vc = nextView
                vc.modalPresentationStyle = .fullScreen
                self.present(vc, animated: true, completion: nil)
                
                sender.isSelected = !sender.isSelected;
                
            }
            //    self.present(nextView, animated: true, completion: nil)
            else{
                //画像があるなら、「画像がない」画像に変更し、ボタンはマイナスからプラスに変更
                iroNumber7 = 0
                tukuimageView7.image = UIImage(named: "gazounashi")
                self.plusminus7.setImage(UIImage(systemName: "plus.circle.fill"), for: .normal);
                userDefaults.set(iroNumber7 , forKey: "iro7")
                
                //tagNumberを０にして記憶させる（zyunbanViewControllerで画像を表示させない番号。させるときは１にする）
                self.tagNumber7 = 0
                userDefaults.set(tagNumber7 , forKey: "tagNumber7")
                
          
            }
            
            
        case 8:
            //タッチするとプラスボタンがマイナスに、点灯した電球が消えた電球になる。
            if iroNumber8 == 0 {
                
                //iroNumber が０（画像がない表示）なら、ボタンはプラスからマイナスに変更
                self.plusminus8.setImage(UIImage(systemName: "minus.circle.fill"), for: .normal);
                userDefaults.set(iroNumber8 , forKey: "iro8")
                
                //       self.kido.setImage(UIImage(systemName: "lightbulb.slash"), for: .normal);
                //        self.kido.setImage(UIImage(systemName: "lightbulb.fill"), for: .selected)
                
                //画面遷移
                // ①storyboardのインスタンス取得
                let storyboard: UIStoryboard = self.storyboard!
                
                // ②遷移先ViewControllerのインスタンス取得
                let nextView = storyboard.instantiateViewController(withIdentifier: "tukuru1ViewController") as! tukuru1ViewController
                
                
                //tagの値をtukuru1ViewControllerに渡す
                print("タグ\(sender.tag)")
                nextView.plusminustag = sender.tag
                
                // ③画面遷移
                let vc = nextView
                vc.modalPresentationStyle = .fullScreen
                self.present(vc, animated: true, completion: nil)
                
                sender.isSelected = !sender.isSelected;
                
            }
            //    self.present(nextView, animated: true, completion: nil)
            else{
                //画像があるなら、「画像がない」画像に変更し、ボタンはマイナスからプラスに変更
                iroNumber8 = 0
                tukuimageView8.image = UIImage(named: "gazounashi")
                self.plusminus8.setImage(UIImage(systemName: "plus.circle.fill"), for: .normal);
                userDefaults.set(iroNumber8 , forKey: "iro8")
                
                //tagNumberを０にして記憶させる（zyunbanViewControllerで画像を表示させない番号。させるときは１にする）
                self.tagNumber8 = 0
                userDefaults.set(tagNumber8 , forKey: "tagNumber8")
                
          
            }
            
            
            
        default:
            //タッチするとプラスボタンがマイナスに、点灯した電球が消えた電球になる。
            if iroNumber9 == 0 {
                
                //iroNumber が０（画像がない表示）なら、ボタンはプラスからマイナスに変更
                self.plusminus9.setImage(UIImage(systemName: "minus.circle.fill"), for: .normal);
                userDefaults.set(iroNumber9 , forKey: "iro9")
                
                //       self.kido1.setImage(UIImage(systemName: "lightbulb.slash"), for: .normal);
                //        self.kido1.setImage(UIImage(systemName: "lightbulb.fill"), for: .selected)
                
                //画面遷移
                // ①storyboardのインスタンス取得
                let storyboard: UIStoryboard = self.storyboard!
                
                // ②遷移先ViewControllerのインスタンス取得
                let nextView = storyboard.instantiateViewController(withIdentifier: "tukuru1ViewController") as! tukuru1ViewController
                
                
                //tagの値をtukuru1ViewControllerに渡す
                print("タグ\(sender.tag)")
                nextView.plusminustag = sender.tag
                
                
                // ③画面遷移
                let vc = nextView
                vc.modalPresentationStyle = .fullScreen
                self.present(vc, animated: true, completion: nil)
                
                sender.isSelected = !sender.isSelected;
                
            }
            //    self.present(nextView, animated: true, completion: nil)
            else{
                //画像があるなら、「画像がない」画像に変更し、ボタンはマイナスからプラスに変更
                iroNumber9 = 0
                tukuimageView9.image = UIImage(named: "gazounashi")
                self.plusminus9.setImage(UIImage(systemName: "plus.circle.fill"), for: .normal);
                userDefaults.set(iroNumber9 , forKey: "iro9")
               
                //tagNumberを０にして記憶させる（zyunbanViewControllerで画像を表示させない番号。させるときは１にする）
                self.tagNumber9 = 0
                userDefaults.set(tagNumber9 , forKey: "tagNumber9")
                
            
                
            }
        }
        
    }
    
    
    
    @IBAction func modoru(_ sender: UIButton) {
        
        
        
        /*  　　　　配列         */
        //checkButtonArrayにtrue だった　tagNumber を入れる
        
        checkButtonArray = [Int]()
        
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
        print("戻るを押した時のチェックボックス配列\(checkButtonArray)")
        
        
        
        //画面遷移////////////////////////////
        //色の値を渡す
        let View = self.storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        
        //    View.ViewControllergazo = self.gazou
        
        View.ViewControllergazo1 = UserDefaults.standard.integer(forKey: "iro1")
        View.ViewControllergazo2 = UserDefaults.standard.integer(forKey: "iro2")
        View.ViewControllergazo3 = UserDefaults.standard.integer(forKey: "iro3")
        
        View.ViewControllergazo4 = UserDefaults.standard.integer(forKey: "iro4")
        View.ViewControllergazo5 = UserDefaults.standard.integer(forKey: "iro5")
        View.ViewControllergazo6 = UserDefaults.standard.integer(forKey: "iro6")
        
        View.ViewControllergazo7 = UserDefaults.standard.integer(forKey: "iro7")
        View.ViewControllergazo8 = UserDefaults.standard.integer(forKey: "iro8")
        View.ViewControllergazo9 = UserDefaults.standard.integer(forKey: "iro9")
        
        
        let vc = View
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true, completion: nil)
        
        sender.isSelected = !sender.isSelected;
        //       self.present(View, animated: true, completion: nil)    //遷移の実行
        
        //画面遷移////////////////////////////
        
        
    }
    
}


