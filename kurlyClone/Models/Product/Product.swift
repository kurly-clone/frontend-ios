//
//  ProductModel.swift
//  kurlyClone
//
//  Created by 고성민 on 2023/08/11.
//

import Foundation

// MARK: - Product Model
struct Product: Codable {
    let id: Int
    let name: String
    let delivery_type: String
    let brand: String
    let price: Int
    let review_count: Int?
    let discount_price: Int
    let image: String
    let detail: ProductDetail?
}

struct ProductDetail: Codable {
    let is_favorite: Bool
    let detail_images: [String]
    let has_reward: Bool
    let seller: String
    let short_description: String
    let packaging_type: String
    let selling_unit : String
    let weight: String
    let origin: String
    let allergy: String
    let expiration_date: String
}
