//
//  MockData.swift
//  DubDubGrub
//
//  Created by Kvng Eko on 7/26/23.
//

import CloudKit

struct MockData {
    
    static var location: CKRecord {
        let record = CKRecord(recordType: RecordType.location)
        record[DDGLocation.kName] = "Eko's Bar and Grill"
        record[DDGLocation.kAddress] = "123 Main Street"
        record[DDGLocation.kDescription] = "This is a test description. I am making this very long so we can text the 3 lines for the description fully filled."
        record[DDGLocation.kWebsiteURL] = "https://google.com"
        record[DDGLocation.kLocation] = CLLocation(latitude: 37.331516, longitude: -121.891054)
        record[DDGLocation.kPhoneNumber] = "111-111-1111"
        
        return record
    }
}
