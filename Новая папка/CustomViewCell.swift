//
//  CustomViewCell.swift
//  To-Do List
//
//  Created by admin on 01.09.2023.
//

import UIKit

class CustomViewCell: UIViewController {
        
        var item: String = ""
        
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            label.text = item
        }
    }



    /*
    // MARK: - Navigation

     // В приложении на основе раскадровки перед навигацией часто требуется небольшая подготовка
          переопределить функцию подготовки (для перехода: UIStoryboardSegue, отправитель: Любой?) {
              // Получаем новый контроллер представления, используя segue.destination.
              // Передаем выбранный объект новому контроллеру представления.
    }
    */


