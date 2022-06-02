import UIKit
import AVFoundation

class ViewController: UIViewController {
    //ボタンのUIを変更できるようにする。
    @IBOutlet var drumButton : UIButton!
    
    let drumSoundPlayer = try!AVAudioPlayer(data: NSDataAsset(name: "drumSound")!.data)
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func touchDownDrumButton(){
        //ボタンにイメージを入れる
        drumButton.setImage(UIImage(named:"drumPlayingImage"), for: .normal)
        //再生時間を０に戻す
        drumSoundPlayer.currentTime = 0
    
        drumSoundPlayer.play()
    }
    @IBAction func touchUpDrumButton(){
        drumButton.setImage(UIImage(named:"drumImage"), for: .normal)
    }
    
}

