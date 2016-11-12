//
//  NetService.swift
//  HBKLineChart
//
//  Created by xiaohaibo on 6/22/16.
//  Copyright © 2016 xiaohaibo. All rights reserved.
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.


import UIKit
typealias ServiceResponse = (_ data :Data,_ response:URLResponse?,_ error :NSError?) -> Void
class NetService: NSObject {

    class func queryData(completed : @escaping ServiceResponse) {
        let listUrlString =  "http://ichart.yahoo.com/table.csv?s=600050.ss&g=d"
        let myUrl = URL(string: listUrlString);
//        let request = NSMutableURLRequest(url:URL(string: url)!)
        let request = URLRequest(url:myUrl!)
        let session = URLSession.shared
      

        session.dataTask(with: request, completionHandler: { (data, response, error) in
            
                completed(data!, response, error as NSError?) 

            
        }).resume()
        
    }
 

}


