//
//  ViewController.swift
//  Color Sliders
//
//  Created by Loki Strain on 6/8/21.
//

import UIKit

class ViewController: UIViewController{

    @IBOutlet weak var redValueLabel:UILabel!
    
    @IBOutlet weak var greenValueLabel: UILabel!
    
    @IBOutlet weak var blueValueLabel: UILabel!
    
    @IBOutlet weak var alphaValueLabel: UILabel!

    @IBOutlet weak var redValueSlider: UISlider!
    
    @IBOutlet weak var greenValueSlider: UISlider!
    
    @IBOutlet weak var blueValueSlider: UISlider!
    
    @IBOutlet weak var alphaValueSlider: UISlider!
    
    @IBOutlet weak var colorView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Hello World")
        
        redValueSlider.value = 0.5
        greenValueSlider.value = 0.0
        blueValueSlider.value = 0
        alphaValueSlider.value = 1.0
        updateView()
        
        
    }
    @IBAction func sliderChanged(_ sender: Any) {
        updateView()
    }
    
    func updateView(){
        let redValue = redValueSlider.value
        let greenValue = greenValueSlider.value
        let blueValue = blueValueSlider.value
        let alphaValue = alphaValueSlider.value
        
        redValueLabel.text = String(format: "%.2f",redValue)
        greenValueLabel.text = String(format: "%.2f",greenValue)
        blueValueLabel.text = String(format: "%.2f",blueValue)
        alphaValueLabel.text = String(format: "%.2f",alphaValue)
        
        colorView.backgroundColor = UIColor(red: CGFloat(redValue),
                                            green: CGFloat(greenValue),
                                            blue: CGFloat(blueValue),
                                            alpha: CGFloat(alphaValue))
        
    }

}

