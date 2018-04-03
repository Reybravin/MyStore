//
//  DataService.swift
//  SlideOutNavigation
//
//  Created by Sergiy Sachuk on 4/3/18.
//  Copyright © 2018 James Frost. All rights reserved.
//

import UIKit

class DataService {
  static let instance = DataService()

  private let categories = [
    Category(title: "Волосы"),
    Category(title: "Лицо"),
    Category(title: "Тело"),
    Category(title: "Макияж"),
    Category(title: "Ногти"),
    Category(title: "Мебель"),
    Category(title: "Принадлежности"),
    Category(title: "Для мужчин"),
    Category(title: "Гримм"),
    Category(title: "Ресницы"),
    Category(title: "Обучение"),
    Category(title: "Клей")
  ]
  
  private let hairProducts = ["Уход за волосами", "Наращивание волос", "Парики", "Украшения для волос"]
  
  private let hairCare = ["Rica Шампунь для разглаживания и выпрямления волос", "Rica Шампунь для разглаживания и выпрямления волос", "Rica Шампунь для разглаживания и выпрямления волос", "Rica Шампунь для разглаживания и выпрямления волос", "Rica Шампунь для разглаживания и выпрямления волос"]
  
  func getCategories() -> [Category] {
    return categories
  }
  
  func getHairProducts() -> [String] {
    return hairProducts
  }
  
  func getHairCare() -> [String] {
    return hairCare
  }
  
  func getSubcategory(forCategory category: Int) -> Category {
    return categories[category]
  }
}
