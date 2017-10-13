//
//  UINavigation+Extensions.swift
//  ACKitSample
//
//  Created by Agus Cahyono on 13/10/17.
//  Copyright © 2017 Agus Cahyono. All rights reserved.
//

import Foundation
import UIKit

extension UINavigationController {
    
    func setTransparentHeaderNavigation() {
        self.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        self.navigationBar.shadowImage = UIImage()
        self.navigationBar.isTranslucent = true
    }
    
}
