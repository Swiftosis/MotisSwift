//
//  Motis.swift
//  MotisSwift
//
//  Created by Joan Martin on 12/10/14.
//  Copyright (c) 2014 Mobile Jazz. All rights reserved.
//

import Foundation

extension NSObject {
    /** ---------------------------------------------- **
     * @name Object Mapping Methods
     ** ---------------------------------------------- **/
    
    func mts_setValue(value: AnyObject!, forKey: String!)
    {
        var motisValue : AnyObject! = value
        
        let optionalMappedKey : String? = self.mts_mapKey(forKey);
        
        if let mappedKey = optionalMappedKey
        {
            if value is NSNull
            {
                motisValue = nil
            }
            
            let error : NSErrorPointer = nil
            //self.mts_validateValue(<#TODO#>, forKey: forKey, error: error)
            
            
            
            self.setValue(value, forKey: mappedKey);
        }
        else
        {
            self.mts_ignoredSetValue(value, forUndefinedMappingKey: forKey)
        }
    }
    
    func mts_setValuesForKeysWithDictionary(keyedValues: [String : AnyObject!])
    {
        // Keypath access not supported!
        for (key, value) in keyedValues
        {
            self.mts_setValue(value, forKey:key)
        }
    }
    
    /** ---------------------------------------------- **
     * @name Private Methods
     ** ---------------------------------------------- **/
    
    func mts_mapKey(key: String) -> String?
    {
        // TODO
        return nil
    }
}