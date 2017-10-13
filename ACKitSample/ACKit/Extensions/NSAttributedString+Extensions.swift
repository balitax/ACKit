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
        
            let modifiedFont = String(format:"<span style=\"font-family: '-apple-system', '\(fontName)'; font-size: \(fontSize)px; color: \(fontColor);\">%@</span>", htmlAttribut)
            //process collection values
            let attrStr = try! NSAttributedString(
                data: modifiedFont.data(using: .unicode, allowLossyConversion: true)!,
                options: [
                    NSAttributedString.DocumentReadingOptionKey.documentType:NSAttributedString.DocumentType.html,
                    NSAttributedString.DocumentReadingOptionKey.characterEncoding: String.Encoding.utf8.rawValue],
                documentAttributes: nil)
            self.init(attributedString: attrStr)
    }
    
    @discardableResult func bold(_ text:String, font: UIFont, fontColor: UIColor) -> NSMutableAttributedString {
        let attrs:[String:AnyObject] = [
            NSFontAttributeName : font,
            NSForegroundColorAttributeName: fontColor]
        let boldString = NSMutableAttributedString(string:"\(text)", attributes:attrs)
        self.append(boldString)
        return self
    }
    
    @discardableResult func normal(_ text:String, font: UIFont, fontColor: UIColor)->NSMutableAttributedString {
        let attrs:[String:AnyObject] = [
            NSFontAttributeName : font,
            NSForegroundColorAttributeName: fontColor]
        let normal =  NSAttributedString(string: text, attributes:attrs)
        self.append(normal)
        return self
    }
    
}
