//
//  Endpoint.swift
//  CustomNetworking
//
//  Created by Мария Беликова on 01.12.2023.
//

protocol Endpoint {
    var compositePath: String { get }
    var headers: HeaderModel { get }
}
