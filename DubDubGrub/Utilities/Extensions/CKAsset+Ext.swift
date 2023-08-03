//
//  CKAsset+Ext.swift
//  DubDubGrub
//
//  Created by Kvng Eko on 8/3/23.
//

import CloudKit
import UIKit

extension CKAsset {
    func convertToUIImage(in dimension: imageDimension) -> UIImage {
        let placeholder = imageDimension.getPlaceholder(for: dimension)
        
        guard let fileUrl = self.fileURL else {return placeholder}
        
        do {
            let data = try Data(contentsOf: fileUrl)
            return UIImage(data: data) ?? placeholder
        } catch {
            return placeholder
        }
    }
}
