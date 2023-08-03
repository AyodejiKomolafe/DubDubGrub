//
//  Constants.swift
//  DubDubGrub
//
//  Created by Kvng Eko on 7/26/23.
//

import UIKit


enum RecordType {
    static let location = "DDGLocation"
    static let profile = "DDGProfile"
}

enum PlaceholderImage {
    static let avatar = UIImage(named: "default-avatar")!
    static let square = UIImage(named: "default-square-asset")!
    static let banner = UIImage(named: "default-banner-asset")!
}

enum imageDimension {
    case square, banner
    
   static func getPlaceholder(for dimension: imageDimension) -> UIImage {
        switch dimension {
        case .square:
            return PlaceholderImage.square
        case .banner:
            return PlaceholderImage.banner
        }
    }
}
