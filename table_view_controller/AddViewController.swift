//
//  AddViewController.swift
//  table_view_controller
//
//  Created by 이태윤 on 2023/07/15.
//

import UIKit

class AddViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    
    @IBOutlet var image_view: UIImageView!
    var txt : String?
    
    let number = 1
    var image_texts = ["cart.png", "clock.png", "pencil.jpeg"]
    var images = [UIImage?]()
    let height : CGFloat = 100
    
    @IBOutlet var picker_view: UIPickerView!
    @IBOutlet var text_field: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        for i in 0..<3 {
            let img = UIImage(named: image_texts[i])
            images.append(img)
        }
        picker_view.delegate = self
        image_view.image = images[0]
        // Do any additional setup after loading the view.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return number
    }
    
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return height
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return image_texts.count
    }
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        let img_view = UIImageView(image: images[row])
        img_view.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        return img_view
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        image_view.image = images[row]
        self.txt = image_texts[row]
    }
    
    
    
    @IBAction func add(_ sender: UIButton) {
        items.append(text_field.text!)
        itemimages.append(self.txt!)
        text_field.text = ""
        _ = navigationController?.popViewController(animated: true)
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
