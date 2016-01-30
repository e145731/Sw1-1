import UIKit
import AVFoundation

class ViewController : UIViewController{
    
    var player:AVAudioPlayer = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let audioPath = NSBundle.mainBundle().pathForResource("BGM", ofType: "mp3")!
        do{
            try player = AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: audioPath))
            player.play()
            print("Music play")
        }catch{
            print("Music stop")
        }
    }


}