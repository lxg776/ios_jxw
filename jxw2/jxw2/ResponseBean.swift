//
//  ResponseBean.swift
//  jxw2
//
//  Created by lxg776 on 16/5/7.
//  Copyright (c) 2016年 LXG. All rights reserved.
//

import Foundation
class ResponseBean:NSObject{
    var status:String?;
    var info:String?;
    var data:AnyObject?;
    
    
    init(jsonString:NSString) {
        var json: AnyObject? = NSJSONSerialization.dataWithJSONObject(jsonString, options: NSJSONWritingOptions.allZeros, error: nil);
        status=json?.objectForKey("status") as! String
        info=json?.objectForKey("info") as! String
        data=json?.objectForKey("object");
    }
    
}
