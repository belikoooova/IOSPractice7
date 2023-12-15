//
//  ArticlesModel.swift
//  CustomNetworking
//
//  Created by Мария Беликова on 15.12.2023.
//

import Foundation

struct ArticlesModel: Codable {
    let news: [News]
}

struct News: Codable {
    let newsId, storyId, score: Int
    let img: Img
    let sourceName: String?
    let sourceLink: String
    let sourceIcon: String?
    let date, title, announce, sectionName: String
    let timeOfReading: String
    let genreId, clusterCount: Int
    let isRead: Bool
    let objectStat: [ObjectStat]
    let isHotNews: Bool
    let newsType: Int
    let hidden: Bool
}

struct Img: Codable {
    let isRemote: Bool
    let width, height, brightness: Int
    let url: String
}

struct ObjectStat: Codable {
    let typeId, count: Int
    let name: String
}
