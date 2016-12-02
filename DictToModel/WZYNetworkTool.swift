import UIKit

import AFNetworking

enum WZYRequestType {
    case Get
    case Post
}

class WZYNetworkTool: AFHTTPSessionManager {
    
    static let shareInstance : WZYNetworkTool = {
        let toolInstance = WZYNetworkTool()
        toolInstance.responseSerializer.acceptableContentTypes?.insert("text/html")
        return toolInstance
    }()
    
    // 将成功和失败的回调写在一个逃逸闭包中
    func request(requestType : WZYRequestType, url: String, parameters : [String : Any], resultBlock : @escaping([String : Any]?, Error?) -> ()) {
        
        // 成功闭包
        let successBlock = { (task: URLSessionDataTask, responseObj: Any?) in
            resultBlock(responseObj as? [String : Any], nil)
        }
        
        // 失败的闭包
        let failureBlock = { (task: URLSessionDataTask?, error: Error) in
            resultBlock(nil, error)
        }
        
        let baseUrl = BaseUrl + url
        
        // Get 请求
        if requestType == .Get {
            get(baseUrl, parameters: parameters, progress: nil, success: successBlock, failure: failureBlock)
        }
        
        // Post 请求
        if requestType == .Post {
            post(baseUrl, parameters: parameters, progress: nil, success: successBlock, failure: failureBlock)
        }
    }
    
    /// 将成功和失败的回调分别写在两个逃逸闭包中
    func request(requestType : WZYRequestType, url : String, parameters : [String : Any], succeed : @escaping([String : Any]?) -> (), failure : @escaping(Error?) -> ()) {
        
        // 成功闭包
        let successBlock = { (task: URLSessionDataTask, responseObj: Any?) in
            succeed(responseObj as? [String : Any])
        }
        
        // 失败的闭包
        let failureBlock = { (task: URLSessionDataTask?, error: Error) in
            failure(error)
        }
        
        let baseUrl = BaseUrl + url
        
        // Get 请求
        if requestType == .Get {
            get(baseUrl, parameters: parameters, progress: nil, success: successBlock, failure: failureBlock)
        }
        
        // Post 请求
        if requestType == .Post {
            post(baseUrl , parameters: parameters, progress: nil, success: successBlock, failure: failureBlock)
        }
    }
}
