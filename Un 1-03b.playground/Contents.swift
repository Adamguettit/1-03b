// Created on: Sept 27
// Created by: Adam.G
// Created for: ICS3CR
// This program is solves the area and premiter 

// this will be commented out when code moved to Xcode

import PlaygroundSupport

import UIKit

class ViewController : UIViewController {
    
    //properties
    let instructionLabel = UILabel()
    let lenghtLabel = UILabel()
    let widthLabel = UILabel()
    let lenghtTextField = UITextField()
    let widthTextField = UITextField()
    let calculateButton = UILabel()
    let areaLabel = UILabel()
    let perimeterLabel = UILabel()
    
    override func viewDidLoad() {
        //UI
        super.viewDidLoad()
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        self.view = view
        
        instructionLabel.text = "Calculate the area and premiter of a rectangle"
        view.addSubview(instructionLabel)
        instructionLabel.translatesAutoresizingMaskIntoConstraints = false 
        instructionLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        instructionLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        lenghtLabel.text = "Enter lenght"
        view.addSubview(lenghtLabel)
        lenghtLabel.translatesAutoresizingMaskIntoConstraints = false
        lenghtLabel.topAnchor.constraint(equalTo: instructionLabel.bottomAnchor, constant: 20).isActive = true
        lenghtLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 20).isActive = true
        
        lenghtTextField.borderStyle = UITextBorderStyle.roundedRect
        lenghtTextField.placeholder = "In cm      "
        view.addSubview(lenghtTextField)
        lenghtTextField.translatesAutoresizingMaskIntoConstraints = false
        lenghtTextField.bottomAnchor.constraint(equalTo: lenghtLabel.topAnchor, constant: 20).isActive = true
        lenghtTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 150).isActive = true
        
        
        widthLabel.text = "enter width"
        view.addSubview(widthLabel)
        widthLabel.translatesAutoresizingMaskIntoConstraints = false
        widthLabel.topAnchor.constraint(equalTo: instructionLabel.bottomAnchor, constant: 20).isActive = true
        widthLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 20).isActive = true
        
        widthTextField.borderStyle = UITextBorderStyle.roundedRect
        widthTextField.placeholder = "In cm      "
        view.addSubview(widthTextField)
        widthTextField.translatesAutoresizingMaskIntoConstraints = false
        widthTextField.bottomAnchor.constraint(equalTo: widthTextField.topAnchor, constant: 20).isActive = true
        widthTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 150).isActive = true
        
        areaLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        perimeterLabel.text = nil
        view.addSubview(perimeterLabel)
        perimeterLabel.translatesAutoresizingMaskIntoConstraints = false
        perimeterLabel.topAnchor.constraint(equalTo: areaLabel.bottomAnchor, constant: 20).isActive = true
        perimeterLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
    }
    
    @objc func areaAndPremiter() {
        
        let lenght : Int = Int(lenghtTextField.text!)!
        let width : Int = Int(widthTextField.text!)!
        
        let area = lenght * width
        let perimeter = 2 * (lenght + width)
        
        areaLabel.text = "The area is: \(area) cm^2"
        perimeterLabel.text = "the perimeter is: \(perimeter) cm"
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
}

//Xcode
PlaygroundPage.current.liveView = ViewController()
