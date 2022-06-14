//
//  PhotoViewController.swift
//  PhotoTapps
//
//  Created by Aleksandr F. on 28.04.2022.
//

import UIKit

class PhotoViewController: UIViewController {
    var image: UIImage?
    
    @IBOutlet weak var photoImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        photoImageView.image = image
    }
    
    // Для сохранения фотографий нужно в info создать новый ключ Privacy - Photo Library Additions Usage Description
    // Объявляем класс для того что бы создать панель share
    @IBAction func shareAction(_ sender: Any) {
        let shareController = UIActivityViewController(activityItems: [image!], applicationActivities: nil)
        shareController.completionWithItemsHandler = { _, bool, _, _ in
            if bool
            { print("Успешно") }
        }
        present(shareController, animated: true, completion: nil)
    }
}
