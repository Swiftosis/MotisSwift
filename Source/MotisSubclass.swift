//
//  MotisSubclass.swift
//  MotisSwift
//
//  Created by Joan Martin on 12/10/14.
//  Copyright (c) 2014 Mobile Jazz. All rights reserved.
//

import Foundation

extension NSObject {
    /** ---------------------------------------------- **
    * @name Configure Object Mapping
    ** ---------------------------------------------- **/
    
    class func mts_mapping() -> [String : String]
    {
        // Subclasses may override
        return [:]
    }
    
    class func mts_shouldSetUndefinedKeys() -> Bool
    {
        // Subclasses may override
        let mapping = self.mts_mapping()
        return (mapping.count == 0)
    }
    
    /** ---------------------------------------------- **
    * @name Automatic Validation
    ** ---------------------------------------------- **/
    
    class func mts_arrayClassMapping() -> [String : AnyObject]
    {
        // Subclasses might override.
        return [:]
    }
    
    func mts_willCreateObject(ofClass: AnyClass, dictionary: [String: AnyObject], forKey: String, abort:AutoreleasingUnsafeMutablePointer<Bool?>) -> AnyObject!
    {
        // Subclasses might override
        return nil
    }
    
    func mts_didCreateObject(object: AnyObject, forKey: String)
    {
        // Subclasses might override
    }
    
    class func mts_validationDateFormatter() -> NSDateFormatter!
    {
        // Subclasses might override
        return nil
    }
    
    func mts_validateValue(ioValue: AutoreleasingUnsafeMutablePointer<AnyObject?>, forKey:String, error: NSErrorPointer) -> Bool
    {
        // Subclasses might override
        return self.validateValue(ioValue, forKey: forKey, error: error)
    }
    
    func mts_validateArrayValue(ioValue: AutoreleasingUnsafeMutablePointer<AnyObject?>, forArrayKey:String!, error: NSErrorPointer) -> Bool
    {
        // Subclasses might override
        return true
    }
    
    func mts_ignoredSetValue(value: AnyObject?, forUndefinedMappingKey: String)
    {
        // Subclasses might override
    }
    
    func mts_invalidValue(value: AnyObject?, forKey: String, error: NSError)
    {
        // Subclasses might override
    }
    
    func mts_invalidValue(value: AnyObject?, forArrayKey: String, error: NSError)
    {
        // Subclasses might override
    }
}