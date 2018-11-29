//
//  custom_design.swift
//  Fu_blii
//
//  Created by codemac-08i on 16/07/18.
//  Copyright © 2018 codemac-08i. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController{
    
        
        func presentDetail(_ viewControllerToPresent: UIViewController) {
            let transition = CATransition()
            transition.duration = 0.25
            transition.type = kCATransitionPush
            transition.subtype = kCATransitionFromRight
            self.view.window!.layer.add(transition, forKey: kCATransition)
            
            present(viewControllerToPresent, animated: false)
        }
        
        func dismissDetail() {
            let transition = CATransition()
            transition.duration = 0.25
            transition.type = kCATransitionPush
            transition.subtype = kCATransitionFromLeft
            self.view.window!.layer.add(transition, forKey: kCATransition)
            
            dismiss(animated: false)
        }
    
}

@IBDesignable class Custom_designing : UIView{

    @IBInspectable var viewchange : CGFloat = 0 {
        didSet{
            self.layer.cornerRadius = viewchange
        }
    
    }
    
}
@IBDesignable class ButtonDesigning : UIButton{

    @IBInspectable var buttonchange : CGFloat = 0 {
        didSet{
        
        self.layer.cornerRadius = buttonchange
        }
    
    }

}

@IBDesignable class LabelDesigning : UILabel{
    @IBInspectable var labelChange : CGFloat = 0 {
    didSet{
    self.layer.cornerRadius = labelChange
    }
    }
}

@IBDesignable class imgLabelDesign : UIImageView{
     @IBInspectable var imgLabelchanging : CGFloat = 0
        {
        didSet
        {
            self.layer.cornerRadius = imgLabelchanging
        }
    }
}




//code for layer.border

extension UIButton{
    
    func ButtonBorderWidth()
    {
            self.layer.borderWidth = 0.5
    }

}

extension UILabel{
    func LabelBorderWidth(){
        self.layer.borderWidth = 0.5
    }
}

extension UITextView{
    func TextViewBorderWidth(){
        self.layer.borderWidth = 0.5
    }

}

extension UIView{
    func uiviewBorderWidth(){
     self.layer.borderWidth = 0.5
    }

    func ShadowForView(){
        self.layer.shadowOpacity = 2
        self.layer.shadowColor = UIColor(red: 230/255, green: 230/255, blue: 230/255, alpha: 1).cgColor
        //self.layer.shadowRadius = 1.0
        self.layer.shadowOffset = CGSize(width: 1, height: 1)
    
    }
    func viewShadowWithClipsBound(){
         //corner radius
        self.layer.cornerRadius = self.layer.bounds.height/2
        
        //border
//        self.layer.borderWidth = 1.0
//        self.layer.borderColor = UIColor.lightGray.cgColor
        
         //shadow
        self.layer.shadowColor = UIColor.lightGray.cgColor
        self.layer.shadowOffset = CGSize(width: 1, height: 1)
        self.layer.shadowOpacity = 0.7
        self.layer.shadowRadius = 4.0
    
    }
    
    func ViewRoundingfunc(){
        
    self.layer.cornerRadius = self.layer.bounds.height/2
    
    }
    
    func ViewRoundCorners(_ corners: UIRectCorner, radius: CGFloat) {
        let path = UIBezierPath(roundedRect: self.bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        self.layer.mask = mask
    }
    
    func cardTextViewBorder(){
        self.layer.borderColor = Shadow_cardBorderGray
        self.layer.borderWidth = 2
        //self.layer.cornerRadius = 10.0
    }
    
    func shadowForCardView(){
        self.layer.shadowColor = Shadow_cardBorderGray
        self.layer.shadowOffset = CGSize.init(width: 1, height: 1)
        self.layer.shadowOpacity = 1
        self.layer.shadowRadius = 4.0
        self.layer.cornerRadius = 15.0
    
    }
    
    func setGradientBackground(colorOne: UIColor,colorTwo: UIColor)
    {
    let gradientLayer = CAGradientLayer()
    gradientLayer.frame = bounds
        gradientLayer.colors = [colorOne.cgColor, colorTwo.cgColor]
        gradientLayer.locations = [0.0, 1.0]
        gradientLayer.startPoint = CGPoint(x: 1.0, y: 1.0)
        gradientLayer.endPoint = CGPoint(x: 0.0, y: 0.0)
        
        layer.insertSublayer(gradientLayer, at: 0)
    }
}

extension UICollectionViewCell{
    func ShadowForCell(){
        self.layer.shadowOpacity = 0.5
        self.layer.shadowColor = Shadow_cardBorderGray
        //self.layer.shadowRadius = 1.0
        self.layer.shadowOffset = CGSize(width: 1, height: 1)
        
    }

}

//textview shadow
extension UITextView{
    func shadowForText_View(){
        
        self.layer.cornerRadius = 15.0
        
        //border
        //        self.layer.borderWidth = 1.0
        //        self.layer.borderColor = UIColor.lightGray.cgColor
        
        //shadow
        self.layer.shadowColor = UIColor.gray.cgColor
        self.layer.shadowOffset = CGSize(width: 1, height: 1)
        self.layer.shadowOpacity = 1
        self.layer.shadowRadius = 4.0
    
    }

}

// textField shadow
extension UITextField{
    func ShadowForText_Field(){
        self.layer.shadowColor = Shadow_cardBorderGray
        self.layer.shadowOffset = CGSize.init(width: 1, height: 1)
        self.layer.shadowOpacity = 0.7
        self.layer.shadowRadius = 4.0
        self.layer.cornerRadius = 15.0
    
    }

}

//image rounding
extension UIImageView{
    func ImageRounding(){
    self.layer.cornerRadius = self.layer.bounds.height/2
    }

}
//Button rounding
extension UIButton{
    func ButtonRounding(){
    
    self.layer
        .cornerRadius = self.layer.bounds.height/2
    }
    
    func ButtonTintColorViolet(){
    
        self.setTitleColor(UIColor(red: 127/255, green: 127/255, blue: 127/255, alpha: 1), for: .normal)
        
    }
    func buttonTintColorBlack(){
    self.setTitleColor(UIColor.black, for: .normal)
    }



//home page buttons bordercolor

    func ButtonColorgrey(){
       // self.layer.borderWidth = 0.5
        self.layer.backgroundColor = UIColor(red: 249/255, green: 249/255, blue: 249/255, alpha: 1).cgColor
    
    }
    
    func followBttnBorder(){
        self.layer.borderColor = UIColor.gray.cgColor
        self.layer.borderWidth = 0.5
    }
    
  func shadowForButton(){
    self.layer.shadowOpacity = 0.5
    self.layer.shadowColor = Shadow_cardBorderGray
    //self.layer.shadowRadius = 1.0
    self.layer.shadowOffset = CGSize(width: 1, height: 1)
    
    }
  func buttonshadowClipsToBound(){
        self.layer.cornerRadius = self.layer.bounds.height/2
        
        //border
        //        self.layer.borderWidth = 1.0
        //        self.layer.borderColor = UIColor.lightGray.cgColor
        
        //shadow
        self.layer.shadowColor = UIColor(red: 249/255, green: 249/255, blue: 249/255, alpha: 1).cgColor
        self.layer.shadowOffset = CGSize(width: 1, height: 1)
        self.layer.shadowOpacity = 0.7
        self.layer.shadowRadius = 4.0
    }
    
  func heavyButtonShadowWithOvelShape(){
        self.layer.cornerRadius = self.layer.frame.height/2
        self.layer.shadowColor = Shadow_cardBorderGray
        self.layer.shadowOffset = CGSize(width: 1, height: 1)
        self.layer.shadowOpacity = 0.7
        self.layer.shadowRadius = 4.0
    }
    
    func heavyButtonShadowWithRounding(){
        self.layer.cornerRadius = self.layer.bounds.height/2
        self.layer.shadowColor = Shadow_cardBorderGray
        self.layer.shadowOffset = CGSize(width: 1, height: 1)
        self.layer.shadowOpacity = 0.7
        self.layer.shadowRadius = 4.0
    }

    func ButtonLeftSideRounding(bgColor: UIColor?){
    let rectShape = CAShapeLayer()
        rectShape.bounds = self.frame
        rectShape.position = self.center
        rectShape.path = UIBezierPath(roundedRect: self.bounds, byRoundingCorners: [ .bottomLeft , .topLeft], cornerRadii: CGSize(width: 20, height: 20)).cgPath
        
        self.layer.backgroundColor = bgColor?.cgColor
        self.layer.mask = rectShape
    
    }
    
}
extension UICollectionViewCell{
    func shadowForCollectionViewCell(){
        self.layer.cornerRadius = 15.0
        
       
        self.layer.shadowColor = UIColor(red: 249/255, green: 249/255, blue: 249/255, alpha: 1).cgColor
       
        self.layer.shadowOffset = CGSize(width: 1, height: 1)
        self.layer.shadowOpacity = 0.7
        self.layer.shadowRadius = 4.0
    
    
    }
}

extension UILabel{
    func shadowCardForLabel(){
        self.layer.cornerRadius = self.layer.bounds.height/2
        
        //border
        //        self.layer.borderWidth = 1.0
        //        self.layer.borderColor = UIColor.lightGray.cgColor
        
        //shadow
        self.layer.shadowColor = UIColor(red: 249/255, green: 249/255, blue: 249/255, alpha: 1).cgColor
        self.layer.shadowOffset = CGSize(width: 1, height: 1)
        self.layer.shadowOpacity = 0.7
        self.layer.shadowRadius = 4.0
    }

}
extension UITextView{
    func textviewDesign(){
        self.layer.borderWidth = 3.0
        self.layer.borderColor = UIColor(red: 240/255, green: 240/255, blue: 240/255, alpha: 1).cgColor
        self.layer.cornerRadius = 0.0
    
    }

}
//GradientColor Setting
extension UIButton{

    func gradientColorSet(/*colors : [CGColor]*/){
//        let gradientLayer = CAGradientLayer()
//        gradientLayer.colors = colors
//        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
//        gradientLayer.endPoint = CGPoint(x: 1, y: 0)
//        self.layer.addSublayer(gradientLayer)
        let gradient = CAGradientLayer()
        gradient.frame =  CGRect(origin: CGPoint.zero, size: self.frame.size)
        gradient.colors =  [UIColor.orange.cgColor, UIColor.red.cgColor]
        
        let shape = CAShapeLayer()
        shape.lineWidth = 3
        
        shape.path = UIBezierPath(roundedRect: self.bounds, cornerRadius: self.layer.cornerRadius).cgPath
        
       shape.strokeColor = UIColor.black.cgColor
        shape.fillColor = UIColor.clear.cgColor
        gradient.mask = shape
        
        self.layer.addSublayer(gradient)
    }
}



extension UIButton{
    func LikeBtnAnimation(){
    let pulse = CASpringAnimation(keyPath: "transform.scale")
        pulse.duration = 0.4
        pulse.fromValue = 0.95
        pulse.toValue = 1.0
        pulse.autoreverses = true
        pulse.repeatCount = 1
        pulse.initialVelocity = 0.5
        pulse.damping = 1.0
        layer.add(pulse, forKey: nil)
    
    }
    
    func buttonSelectionAnimation(){
    let pulse = CASpringAnimation(keyPath: "transform.scale")
        pulse.duration = 0.2
        pulse.fromValue = 0.95
        pulse.toValue = 1.0
        pulse.autoreverses = false
        pulse.repeatCount = 1
        pulse.initialVelocity = 0.5
        pulse.damping = 1.0
        layer.add(pulse, forKey: nil)
    
    }

}
//func alertViewDesign(tile: String, message: String, View: UIViewController, handl:  @escaping @autoclosure () -> Void ){
//    let alert2 = UIAlertController(title: tile, message: message, preferredStyle : UIAlertControllerStyle.alert)
//    
//    let submit = UIAlertAction(title: "Yes" , style: .default , handler: handl)
//    let cancel = UIAlertAction(title: "Cancel", style: .destructive, handler:@autoclosure handl())
//    cancel.setValue(UIColor.black, forKey: "titleTextColor")
//    
//    alert2.addAction(submit)
//    alert2.addAction(cancel)
//    
//    alert2.view.tintColor = UIColor(red: 255/255, green: 0/255, blue: 82/255, alpha: 1)
//    
//    View.present(alert2, animated : true, completion: nil)
//
//
//}

extension UIButton{
    func OptionsOfCellsDesign(){
        self.layer.cornerRadius = 19
        self.layer.borderColor = UIColor(red: 255/255, green: 192/255, blue: 24/255, alpha: 0.5).cgColor
        self.layer.borderWidth = 0.5
    
    }

}
extension UITextField{
    func textfieldWidth(){
    self.layer.borderWidth = 0.5
     self.layer.cornerRadius = 0.5
        
    
    }

}
extension UIButton{
    func SettingsBtn_Design(){
        self.layer.cornerRadius = 14
        self.layer.borderColor = UIColor(red: 230/255, green: 230/255, blue: 230/255, alpha: 1).cgColor
    } }
extension UIButton{
    func ButtonOvelShape(){
    self.layer.cornerRadius = self.frame.height/2

    }
}
