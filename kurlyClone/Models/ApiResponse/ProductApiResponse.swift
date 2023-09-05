//
//  ProductApiResopnse.swift
//  kurlyClone
//
//  Created by 고성민 on 2023/08/25.
//

import Foundation
import UIKit

// MARK: - 전송상품 정보 및 상품 상세정보
struct ProductResponse: Codable {
    let product: Product
}

// MARK: - 일일특가 상품
struct DailySaleResponse: Codable {
    let start_time: Date
    let products: [Product]
}

// MARK: - 필터링된 상품 정보
struct FilteredResponse: Codable {
    let products_count: Int
    let products: [Product]
}

// MARK: - 상품 후기정보
struct ProductReviewResponse {
    let id: Int
    let user: ReviewUser
    let text: String
    let helpful_count: Int
    let created_at: Date
    let image: String
    
    struct ReviewUser {
        let id: Int
        let name: String
        let grade: String
    }
}

// MARK: - 상품 문의정보
struct ProductInquiryResponse {
    let id: Int
    let user: InquiryUser
    let title: String
    let question: String
    let answer: String
    let is_secret: Bool
    let created_at: Date
    
    struct InquiryUser {
        let id: Int
        let name: String
    }
}
