//
//  User.swift
//  MotisSwift
//
//  Created by Joan Martin on 12/10/14.
//  Copyright (c) 2014 Mobile Jazz. All rights reserved.
//

import UIKit

class User : NSObject {
    
    override init() {
        self.userId = NSNotFound;
        self.username = "";
        self.followersCount = NSNotFound;
    }
    
    var userId : NSInteger;
    var username : NSString;
    var followersCount : NSInteger;
    
    override class func mts_mapping() -> [String : String] {
        return [
            "user_id": "userId",
            "user_name": "username",
            "followers_count": "followersCount"
        ];
    }
}
