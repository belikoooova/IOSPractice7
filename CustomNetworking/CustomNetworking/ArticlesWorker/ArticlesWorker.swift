//
//  ArticlesWorker.swift
//  CustomNetworking
//
//  Created by Мария Беликова on 15.12.2023.
//

import Foundation

final class ArticlesWorker {
    private enum Constants {
        static let baseUrl: String = "https://news.myseldon.com/"
        static let rubricId: Int = 4;
    }
    
    let networking: NetworkingProtocol
    
    init(networking: NetworkingProtocol = Networking(baseUrl: Constants.baseUrl)) {
        self.networking = networking
    }
    
    func fetchNews(page: Int, completion: ((ArticlesModel?) -> Void)?) {
        let endpoint = ArticlesEndpoint.news(rubricId: Constants.rubricId, pageIndex: page)
        fetch(endpoint: endpoint, completion: completion)
    }
    
    private func fetch<Decoded:Decodable>(endpoint: Endpoint, completion: ((Decoded?) -> Void)?) {
        let request = Request(endpoint: endpoint)
        networking.executeRequest(with: request) { rawResult in
            guard
                case let .success(result) = rawResult,
                let data = result.data,
                let decoded = try? JSONDecoder().decode(Decoded.self, from: data)
            else {
                completion?(nil)
                return
            }
            
            completion?(decoded)
        }
    }
}
