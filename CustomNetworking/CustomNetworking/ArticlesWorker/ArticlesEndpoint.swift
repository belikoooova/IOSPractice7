//
//  ArticlesEndpoint.swift
//  CustomNetworking
//
//  Created by Мария Беликова on 15.12.2023.
//

import Foundation

enum ArticlesEndpoint: Endpoint {
    case news(rubricId: Int, pageIndex: Int)
    
    var compositePath: String {
        switch self {
        case .news(let rubricId, let pageIndex):
            return "api/Section?pageSize=8&rubricId=\(rubricId)&pageIndex=\(pageIndex)"
        }
    }
    
    var headers: HeaderModel { [:] }
}
