//
//  CKRecord+Ext.swift
//  DubDubGrub
//
//  Created by Kvng Eko on 7/26/23.
//

import CloudKit

extension CKRecord {
    
    func convertToDDGLocation() -> DDGLocation {
        DDGLocation(record: self)
    }
    func convertToDDGProfile() -> DDGProfile {
        DDGProfile(record: self)
        
    }
}

