//
//  Motis.swift
//  MotisSwift
//
//  Created by Joan Martin on 12/10/14.
//  Copyright (c) 2014 Mobile Jazz. All rights reserved.
//

import Foundation

extension NSObject {
    
    func foo() {
        var object = NSDate()
    }
    
    /** ---------------------------------------------- **
    * @name Object Mapping Methods
    ** ---------------------------------------------- **/
    
    func mts_setValue(value: AnyObject!, forKey: String!) {
        
    }
    
    func mts_setValuesForKeysWithDictionary(keyedValues: [NSObject : AnyObject]!) {
        
    }
    
    /** ---------------------------------------------- **
    * @name Configure Object Mapping
    ** ---------------------------------------------- **/
    
    class func mts_mapping() -> [NSString : AnyObject] {
        // Subclasses may override
        return [:];
    }
    
    class func mts_shouldSetUndefinedKeys() -> Bool {
        // Subclasses may override
        let mapping = self.mts_mapping()
        return mapping.count == 0;
    }
    
    /** ---------------------------------------------- **
    * @name Automatic Validation
    ** ---------------------------------------------- **/
    
    class func mts_arrayClassMapping() -> [NSString : AnyObject] {
        // Subclasses might override.
        return [:];
    }
    
    func mts_willCreateObject(ofClass: AnyClass, dictionary: [NSString:AnyObject], forKey: NSString) -> AnyObject! {
        // Subclasses might override
        return nil;
    }
    
    func mts_didCreateObject(object: AnyObject, forKey: NSString) {
        // Subclasses might override
    }
    
    class func mts_validationDateFormatter() -> NSDateFormatter! {
        return nil;
    }
    
    
}