//
//  PhotosCollectionViewController.swift
//  PhotoTapps
//
//  Created by Aleksandr F. on 27.04.2022.
//

import UIKit

class PhotosCollectionViewController: UICollectionViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: UICollectionViewDataSource
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    // Определяет количество ячеек
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 15
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "photoCell", for: indexPath) as! PhotoCell
        
        cell.backgroundColor = .black
        
        return cell
    }
}

extension PhotosCollectionViewController: UICollectionViewDelegateFlowLayout {
    
    //    // Метод для определения размеров ячеек
    //    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    //        return CGSize(width: 100, height: 50)
    //    }
    
    // Метод для определения количества ячеек на одном ряду и размеры
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let itemsPerRow: CGFloat = 2 // определяет количество ячеек на одном ряду
        let paddingWidh = 20 * (itemsPerRow + 1) // количество отступов на одном ряду
        let availabaleWidth = collectionView.frame.width - paddingWidh // получаем доступную ширину
        let widthPerItem = availabaleWidth / itemsPerRow // получаем точную доступную ширину для одного обьекта
        return CGSize(width: widthPerItem, height: widthPerItem)
    }
    
    // Метод создает отступы от границ экрана
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 20, left: 20, bottom: 20, right: 20)
    }
    
    // Методы настраивают расстояние по рядам и линиям
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 20
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 20
    }
}
