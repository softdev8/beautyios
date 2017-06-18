//
//  User.swift
//  beautyios
//
//  Created by Michael on 6/18/17.
//  Copyright © 2017 Michael. All rights reserved.
//

import Foundation
import UIKit
import RealmSwift

class User: Object {
    
    static let USER = "user"

    // generate_auth
    static let ONESIGNAL_ID = "onesignal-id"
    static let ONESIGNAL_TOKEN = "onesignal-token"
    
    static let STORE_ID = "store_id"
    static let CUSTOMER_ID = "customer_id"
    
    static let PADO_USERNAME = "pado-username"
    static let PADO_PASSWORD = "pado-password"

    
    dynamic var onesignal_id = ""
    dynamic var onesignal_token = ""
    
    dynamic var store_id = ""
    dynamic var customer_id = ""
    
    dynamic var pado_username = ""
    dynamic var pado_password = ""
    
    static func getUser() -> User? {
        let realm = try! Realm()
        guard let user = realm.objects(User.self).first else {
            return nil
        }
        return user
    }
    
    
    func toString() {
        print("\(User.ONESIGNAL_ID): \(onesignal_id)")
        print("\(User.ONESIGNAL_TOKEN): \(onesignal_token)")
    }

}