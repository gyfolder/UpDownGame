//
//  ViewController.swift
//  UpDownGame
//
//  Created by pleased on 2021/03/06.
//

import UIKit

class ViewController: UIViewController {
    
    var randomValue: Int = 0
    var tryCount:Int = 0
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var tryCountlabel: UILabel!
    @IBOutlet weak var sliderValueLabel: UILabel!
    @IBOutlet weak var minimumValueLabel: UILabel!
    @IBOutlet weak var maximumValueLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        slider.setThumbImage(#imageLiteral(resourceName: "slider_thumb"), for: .normal)
        reset()
    }
    @IBAction func sliderValueChanged(_ sender : UISlider){
        print(sender.value)
    }
    @IBAction func touchUpHitButton(_ sender : UIButton){
        print(slider.value)
    }
    
    @IBAction func touchUpResetButton(_ sender: UIButton){
        print("touch up reset button")
        reset()
    }
    
    func reset(){
        print("reset!")
        randomValue = Int.random(in: 0...30)
        print(randomValue)
        tryCount = 0
        tryCountlabel.text = "0 / 5"
        slider.minimumValue = 0
        slider.maximumValue = 30
        slider.value = 15
        minimumValueLabel.text = "0"
        maximumValueLabel.text = "30"
        sliderValueLabel.text = "15"
    }
}

