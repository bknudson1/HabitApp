//
//  UIViewControllerExtensions.swift
//  habitApp
//
//  Created by Bénédicte Knudson on 1/28/24.
//

import UIKit

extension UIViewController {
  static func instantiate() -> Self {
    return self.init(nibName: String(describing: self), bundle: nil)
  }
}
