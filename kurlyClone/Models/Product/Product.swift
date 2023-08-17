//
//  ProductModel.swift
//  kurlyClone
//
//  Created by 고성민 on 2023/08/11.
//

import Foundation

// MARK: -
struct Product: Codable {
    let id: Int
    let name: String
    let delivery_type: String
    let brand: String
    let price: Int
    let discount_price: Int
    let reviews: Int
    let image: String //변경필요
    let detail: ProductDetail
}

struct ProductDetail: Codable {
    let has_reward: Bool
    let seller: String
    let short_description: String
    let packaging_type: String
    let selling_unit : String
    let weight: String
    let origin: String
    let allergy: String
    let expiration_date: String
    let description: String // image들로 이루어진 것 두 개 존재필요
}
