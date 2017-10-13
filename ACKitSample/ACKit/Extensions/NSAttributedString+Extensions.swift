//
//  NSAttributedString.swift
//  ACKitSample
//
//  Created by Agus Cahyono on 13/10/17.
//  Copyright © 2017 Agus Cahyono. All rights reserved.
//

import Foundation
import UIKit

extension NSAttributedString {
    
    //MARK: Html Attribut 
    internal convenience init?(
            htmlAttribut: String,
            fontName: String,
            fontColor: String = "#000000",
            fontSize: Int)
        {
        
            let modifiedFont = String(format:"<span style=\"font-family: '-apple-system', '\(fontName)'; font-size: \(fontSize)px; color: \(fontColor);\">%@</span>", html)
            //process collection values
            let attrStr = try! NSAttributedString(
                data: modifiedFont.data(using: .unicode, allowLossyConversion: true)!,
                options: [NSDocumentTypeDocumentAttribute: NSHTMLTextDocumentType,
                          NSCharacterEncodingDocumentAttribute: String.Encoding.utf8.rawValue],
                documentAttributes: nil)
            self.init(attributedString: attrStr)
    }
    
}
