//
//  HomeModel.swift
//  jnw-s
//
//  Created by 小菜 on 16/10/27.
//  Copyright © 2016年 蔡凌云. All rights reserved.
//

import UIKit

class HomeModel: NSObject {

    enum HomeCellType  {
        case movie
        case cartoon
    }
    
//    var json: Dictionary = {
//  "Result" : "0",
//  "Desc" : "\\u6210\\u529f",
//  "Data" : {
//    "mediaList" : [
//      {
//        "id" : 1208,
//        "projectName" : "指染成婚第一季",
//        "projectOwnerAccount" : "15001715056",
//        "createDate" : "2016-11-04",
//        "dateType" : "4",
//        "type" : "2",
//        "episodeNo" : 25,
//        "projectTags" : "总裁|虐渣|恩爱",
//        "createTime" : "11:24:17",
//        "projectOwnerNick" : "苍兰社",
//        "coverUrl" : "https:\/\/ogzmiqzsy.qnssl.com\/LCP20161018165424157746764.jpg?imageView2\/1\/w\/480\/h\/267&e=2997426444",
//        "projectCommNums" : "2566",
//        "playNums" : 210647,
//        "piId" : 10028
//      },
//      {
//        "id" : 1198,
//        "projectName" : "总裁在上第一季",
//        "projectOwnerAccount" : "15001715056",
//        "createDate" : "2016-11-04",
//        "dateType" : "4",
//        "type" : "2",
//        "episodeNo" : 21,
//        "projectTags" : "爱情|唯美|霸道总裁",
//        "createTime" : "11:16:34",
//        "projectOwnerNick" : "苍兰社",
//        "coverUrl" : "https:\/\/ogzmiqzsy.qnssl.com\/LCP20161018165424801775125.jpg?imageView2\/1\/w\/480\/h\/267&e=2997426444",
//        "projectCommNums" : "5842",
//        "playNums" : 117161,
//        "piId" : 10010
//      },
//      {
//        "id" : 1142,
//        "projectName" : "今夜哪里有鬼",
//        "projectOwnerAccount" : "13402151446",
//        "createDate" : "2016-11-04",
//        "dateType" : "4",
//        "type" : "2",
//        "episodeNo" : 22,
//        "projectTags" : "耽美|恐怖|鬼",
//        "createTime" : "10:50:00",
//        "projectOwnerNick" : "腐化社",
//        "coverUrl" : "https:\/\/ogzmiqzsy.qnssl.com\/LCP20161018165423984946780.jpg?imageView2\/1\/w\/480\/h\/267&e=2997426444",
//        "projectCommNums" : "810",
//        "playNums" : 8987,
//        "piId" : 10027
//      },
//      {
//        "id" : 1176,
//        "projectName" : "婚途陌路",
//        "projectOwnerAccount" : "17721028032",
//        "createDate" : "2016-11-04",
//        "dateType" : "4",
//        "type" : "2",
//        "episodeNo" : 7,
//        "projectTags" : "虐恋|总裁|言情",
//        "createTime" : "10:34:23",
//        "projectOwnerNick" : "喵总",
//        "coverUrl" : "https:\/\/ogzmiqzsy.qnssl.com\/LCP20161018165423261288838.jpg?imageView2\/1\/w\/480\/h\/267&e=2997426444",
//        "projectCommNums" : "635",
//        "playNums" : 29727,
//        "piId" : 10037
//      },
//      {
//        "id" : 1234,
//        "projectName" : "暗恋成婚",
//        "projectOwnerAccount" : "18017730518",
//        "createDate" : "2016-11-03",
//        "dateType" : "4",
//        "type" : "1",
//        "episodeNo" : 10,
//        "projectTags" : "言情|男神|师生",
//        "createTime" : "18:35:04",
//        "projectOwnerNick" : "有情有义的骆驼",
//        "coverUrl" : "https:\/\/ogzmiqzsy.qnssl.com\/MC2016103113435893972506.jpg?imageView2\/1\/w\/480\/h\/267&e=2997426444",
//        "projectCommNums" : "1449",
//        "playNums" : 155477,
//        "piId" : 10030
//      },
//      {
//        "id" : 1156,
//        "projectName" : "总裁慢点追",
//        "projectOwnerAccount" : "49354646628",
//        "createDate" : "2016-11-03",
//        "dateType" : "4",
//        "type" : "1",
//        "episodeNo" : 4,
//        "projectTags" : "总裁|言情|傻白甜",
//        "createTime" : "17:00:44",
//        "projectOwnerNick" : "华玥影",
//        "coverUrl" : "https:\/\/ogzmiqzsy.qnssl.com\/MC2016110310191029062337.jpg?imageView2\/1\/w\/480\/h\/267&e=2997426444",
//        "projectCommNums" : "434",
//        "playNums" : 30035,
//        "piId" : 10032
//      },
//      {
//        "id" : 1205,
//        "projectName" : "暗恋成婚",
//        "projectOwnerAccount" : "18017730518",
//        "createDate" : "2016-11-03",
//        "dateType" : "4",
//        "type" : "2",
//        "episodeNo" : 16,
//        "projectTags" : "言情|男神|师生",
//        "createTime" : "10:01:20",
//        "projectOwnerNick" : "有情有义的骆驼",
//        "coverUrl" : "https:\/\/ogzmiqzsy.qnssl.com\/LCP20161018165423668269494.jpg?imageView2\/1\/w\/480\/h\/267&e=2997426444",
//        "projectCommNums" : "1449",
//        "playNums" : 48175,
//        "piId" : 10030
//      },
//      {
//        "id" : 1168,
//        "projectName" : "鬼眼",
//        "projectOwnerAccount" : "18817563109",
//        "createDate" : "2016-11-03",
//        "dateType" : "4",
//        "type" : "2",
//        "episodeNo" : 14,
//        "projectTags" : "惊悚|悬疑|恐怖",
//        "createTime" : "10:00:00",
//        "projectOwnerNick" : "刀北社",
//        "coverUrl" : "https:\/\/ogzmiqzsy.qnssl.com\/LCP20161018165423751867894.jpg?imageView2\/1\/w\/480\/h\/267&e=2997426444",
//        "projectCommNums" : "259",
//        "playNums" : 3622,
//        "piId" : 10017
//      },
//      {
//        "id" : 1202,
//        "projectName" : "鲜妻别跑第一季",
//        "projectOwnerAccount" : "18616260756",
//        "createDate" : "2016-11-03",
//        "dateType" : "4",
//        "type" : "2",
//        "episodeNo" : 21,
//        "projectTags" : "总裁|少女|言情",
//        "createTime" : "09:58:19",
//        "projectOwnerNick" : "逐梦社",
//        "coverUrl" : "https:\/\/ogzmiqzsy.qnssl.com\/LCP20161018165423842249498.jpg?imageView2\/1\/w\/480\/h\/267&e=2997426444",
//        "projectCommNums" : "980",
//        "playNums" : 50694,
//        "piId" : 10024
//      },
//      {
//        "id" : 1190,
//        "projectName" : "闪婚厚爱",
//        "projectOwnerAccount" : "17321242714",
//        "createDate" : "2016-11-02",
//        "dateType" : "4",
//        "type" : "1",
//        "episodeNo" : 6,
//        "projectTags" : "总裁|闪婚|宠溺",
//        "createTime" : "15:34:45",
//        "projectOwnerNick" : "小天使社",
//        "coverUrl" : "https:\/\/ogzmiqzsy.qnssl.com\/MC2016110310372359188438.jpg?imageView2\/1\/w\/480\/h\/267&e=2997426444",
//        "projectCommNums" : "664",
//        "playNums" : 72588,
//        "piId" : 10036
//      }
//    ],
//    "pageSize" : 10,
//    "currentSize" : 10
//  }
//}

    
    var piId: Int = 0
    
    var projectOwnerNick: String?
    
    // 服务器数据存在空值，需提前赋值
    var projectName: String? = ""
    
    var episodeNo: Int = 0
    
    var playNums: Int = 0
    
    var projectCommNums: String = ""
    
    var coverUrl: String = ""
    
    var type: String? {
        didSet {
            if type == "2" {
                managerEnum(topType: .movie)
            } else {
                managerEnum(topType: .cartoon)
            }
        }
    }
    
    var topText: String?
    var image: UIImage?
    var topName: String?
    
    func managerEnum(topType: HomeCellType) {
        
        let str = "23"
        
        switch topType {
        case .movie:
            topText = "漫画"
            image = UIImage(named: "Home_cartoon_bg")
            topName = projectName! + " 第" + str + "话"
            break
        default:
            topText = "图片剧"
            image = UIImage(named: "Home_movie_bg")
            topName = projectName! + " 第" + str + "集"
            break
        }
           
    }
    
    class func loadHomeData(para: Int, finished: @escaping (_ homeModleArray: [HomeModel]) ->()) {
        
        var params: [String: Any] = ["account":"80322130152","token":"2016120210164524090006975013833680322130152"]
        params["pageNow"] = para
        WZYNetworkTool.shareInstance.request(requestType: .Post, url: "http://106.75.10.4:9080/jnwtv-client/project/newhomepage", parameters:params, succeed: { (response) in

            // ====== 自带字典转模型 ======//
//            let dict = response?["Data"] as? [String: Any]
//            let data = dict?["mediaList"] as? [[String: AnyObject]]
//            let models = dictToModel(list: data!)
//            finished(models)
            
            // ====== SwiftyJSON 联合 MJExtension 字典转模型 ======//
//            let dataJson = JSON(response)["Data"]["mediaList"].rawValue
//            let model = HomeModel.mj_objectArray(withKeyValuesArray: dataJson) as Array
//            let models:[HomeModel] = model as! [HomeModel]
//            
//            finished(models)
            
            // ====== MJ字典转模型 ======//
            let dict = response?["Data"] as? [String: Any]
            let data = dict?["mediaList"] as? [[String: AnyObject]]
            let model = HomeModel.mj_objectArray(withKeyValuesArray: data) as Array
            let models:[HomeModel] = model as! [HomeModel]
            finished(models)
            
            print(models)
            
        }) { (error) in
            
            guard let error = error else {
                return
            }
            print(error)
        }
    }

// ====== 自带字典转模型 实现下面几个个方法 ======//
//    class func dictToModel(list:[[String: AnyObject]]) -> [HomeModel] {
//        var models = [HomeModel]()
//        for dict in list {
//            models.append(HomeModel(dict: dict))
//        }
//        return models
//    }
//    
//    init(dict: [String: AnyObject]) {
//        super.init()
//        setValuesForKeys(dict)
//    }
//    override func setValue(_ value: Any?, forKey key: String) {
//        super.setValue(value, forKey: key)
//    }
//    
//    override func setValue(_ value: Any?, forUndefinedKey key: String) {
//        
//    }
//    
//    var properties = ["projectOwnerNick","projectName","episodeNo","coverUrl","type","projectCommNums"]
//    override var description: String {
//        let dict = dictionaryWithValues(forKeys: properties)
//        return "\(dict)"
//    }
    
}

