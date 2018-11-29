//
//  Creation_of_PostNewViewController.swift
//  Fu_blii
//
//  Created by codemac-08i on 10/07/18.
//  Copyright © 2018 codemac-08i. All rights reserved.
//

import UIKit
import Alamofire

class Creation_of_PostNewViewController: UIViewController,UINavigationControllerDelegate,UIImagePickerControllerDelegate,UITextFieldDelegate {
    @IBOutlet weak var SnapChat_btn: UIButton!
    @IBOutlet weak var twitter_btn: UIButton!
    @IBOutlet weak var facebook_btn: UIButton!
   
    @IBOutlet weak var Insta_btn: UIButton!
  
    @IBOutlet weak var ViewForScrollView: UIView!
    @IBOutlet weak var ProfessionlDetail_textfield: UITextView!
    @IBOutlet weak var ViewForProfessionlDetails: UIView!
    @IBOutlet weak var Achievements_txtfield: UITextView!
    @IBOutlet weak var ViewForAchievments: UIView!
    @IBOutlet weak var moreInfos_txtView: UITextView!
    @IBOutlet weak var ViewFor_MoreInfos: UIView!
    @IBOutlet weak var textfield_Introdction: UITextView!
    @IBOutlet weak var viewForIntrdction: UIView!
    @IBOutlet weak var POST_it_button: UIButton!
    @IBOutlet weak var mobile_number: UITextField!
    @IBOutlet weak var Name: UITextField!
    @IBOutlet weak var image_button_1: UIButton!
 
    @IBOutlet weak var image_View_2: UIImageView!
    @IBOutlet weak var imageview_1: UIImageView!
    @IBOutlet weak var SocialMediaField: UITextField!
    
    override func viewDidLoad() {
        
        imageview_1.layer.cornerRadius = 5
        image_View_2.layer.cornerRadius = 5
        
        
        POST_it_button.layer.borderColor = UIColor(red: 255/255, green: 84/255, blue: 121/255, alpha: 1).cgColor
       
        POST_it_button.layer.borderWidth = 0.5
      
        
        //borders
        textfield_Introdction.textviewDesign()
       
        moreInfos_txtView.textviewDesign()
        
        Achievements_txtfield.textviewDesign()
        
        ProfessionlDetail_textfield.textviewDesign()
        
        //* shadow effect for textfield Views*/
        viewForIntrdction.ShadowForView()
        
        ViewFor_MoreInfos.ShadowForView()
        
        ViewForAchievments.ShadowForView()
        
        ViewForProfessionlDetails.ShadowForView()

       self.mobile_number!.attributedPlaceholder = NSAttributedString(string:ButtonClickedidentify! + " of the person", attributes:[NSForegroundColorAttributeName: UIColor.lightGray])
       
        
        
    }
    var name1 : String?
    var introduction: String?
    var moreInfo : String?
    var Achievements : String?
    var Pro_Details : String?
    var SocialMedia : String?
    var image1 : UIImage?
    var image2 : UIImage?
    
    var ButtonClickedidentify:String?
   
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

    
    override func dismiss(animated flag: Bool, completion: (() -> Void)?)
    {
        if self.presentedViewController != nil {
            super.dismiss(animated: flag, completion: completion)
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func add_image_btn_1(_ sender: UIButton) {
        let image = UIImagePickerController()
        image.delegate = self
        switch sender.tag {
        case 0:
            imagePickerController(image, didFinishPickingMediaWithInfo: [UIImagePickerControllerOriginalImage : imageview_1])
            iim = 0
            
            break
        case 1:
            imagePickerController(image, didFinishPickingMediaWithInfo: [UIImagePickerControllerOriginalImage : image_View_2])
            iim = 1
            
            break
//        case 2:
//            imagePickerController(image, didFinishPickingMediaWithInfo: [UIImagePickerControllerOriginalImage : image_view_3])
//            iim = 2
//            break
        default:
            print("Sorry, you did not choose any image")
            iim = 5
        }
        if iim != 5{
        image.sourceType = UIImagePickerControllerSourceType.photoLibrary
        image.allowsEditing = false
        self.present(image, animated: true)
        {
            //after it is complete
        }
        }
    }
   
    var iim = 0
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        if iim == 0 {
        if let image = info[UIImagePickerControllerOriginalImage] as? UIImage
        {
         imageview_1.image = image
        }
        }else if iim == 1{
            if let image = info[UIImagePickerControllerOriginalImage] as? UIImage
            {
                image_View_2.image = image
            }

        }
        else {
            print("Couldn't choose image from your library")
        }
        
        self.dismiss(animated: true, completion: nil)
        iim = 0     //for refreshing
    }
    
    var social = String()
    
    @IBAction func Add_SocialMedia(_ sender: UIButton){
        let tag = sender.tag
        
        switch tag {
        case 5:
            
            
            social = "instagram"
            break
        case 6:
           
            
            social = "facebook"
            break
        case 7:
            
           
            break
        case 8 :
            
            
            break
        default:
            print("Social media button didn't selected")
            
        }
        //print(sender.tag)
    }
    
    @IBAction func PostIt_Bttn_Clicked(_ sender: Any) {
  
        name1 = Name.text
        introduction = textfield_Introdction.text
        moreInfo = moreInfos_txtView.text
        Achievements = Achievements_txtfield.text
        Pro_Details = ProfessionlDetail_textfield.text
        SocialMedia = SocialMediaField.text
        image1 = imageview_1.image
        image2 = image_View_2.image
        
         performSegue(withIdentifier: "PreviewOfPost", sender: self)
        
            }
    
    //full_name,mobile_no,email,introduction,more_informations,professional_details,achivments,facebook,instegram,twitter,image,guest_name,post_date,guest_image
    
    func upload_NewPost(imageData: UIImage, parameters : [String:Any] ){
        let url = "https://fuhad.000webhostapp.com/user_profile_post.php"
        let para = [ "full_name" : Name.text, "mobile_no" : mobile_number.text, "more_informatiions" : moreInfos_txtView.text, "professional_details" : ProfessionlDetail_textfield.text, "achivments" : Achievements_txtfield.text]
        Alamofire.upload(multipartFormData: { (multipartFormData) in
            for (key,value) in parameters {
                multipartFormData.append("\(value)".data(using: String.Encoding.utf8)!, withName: key as String)
            }
            multipartFormData.append(UIImageJPEGRepresentation(imageData, 1)!, withName: "image", fileName: "image.jpeg", mimeType: "image/jpeg")
            
        }, usingThreshold: UInt64.init(), to: url, method: .post, headers: nil) { (result) in
            switch result{
            case .success(let upload, _, _):
                
                upload.responseJSON { response in
                    print(response.result.value)
                    
                }

            case .failure:
            print("Error in upload")
        }
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "PreviewOfPost"{
        let seg = segue.destination as! PreviewPostVwCntroler
          seg.name = name1
            seg.introduction = introduction
            seg.moreInfo = moreInfo
            seg.Achievements = Achievements
            seg.Pro_Details = Pro_Details
            seg.SocialMedia = SocialMedia
            seg.image1 = image1
            seg.image2 = image2
        

        }
    }
    
    @IBAction func backFromPreview(_ BackFrmPrvw : UIStoryboardSegue){
    
    }
}

