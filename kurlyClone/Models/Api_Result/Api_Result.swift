//
//  Api_Result.swift
//  kurlyClone
//
//  Created by 고성민 on 2023/08/15.
//

import Foundation

// MARK: - API Result
struct ProductsResult: Codable {
    let products: [Product]
}

struct DailySaleResult: Codable {
    let start_time: Date
    let products: [Product]
}

struct FilteredResult: Codable {
    let product_count: Int
    let products: [Product]
}

struct CartResult: Codable {
    let delivery_address: String
    let products: [Product]
}

struct ProductReviewResult {
    let id: Int
    let text: String
    let helpful_count: Int
    let created_at: Date
    
    struct User {
        let id: Int
        let name: String
        let grade: String
    }
}

struct ProductInquiryResult {
    let id: Int
    let title: String
    let question: String
    let answer: String
    let is_secret: Bool
    let created_at: Date
    
    struct User {
        let id: Int
        let name: String
    }
}

struct OrderFormResult {
    let delivery_address: String
    let products: [Product]
    
    struct User {
        let id: Int
        let name: String
        let phone_number: String
        let email: String
    }
}

struct OrderHistoryResult {
    let order_logs: [OrderLog]
        
    struct OrderLog {
        let id: Int
        let name: String
        let delivery_type: String
        let brand: String
        let price: Int
        let discount_price: Int
        let count: Int
        let date: Date
        let image: String // 확인해봐야함
    }
}

struct PaymentInfoResult {
    let products: [Product]
    let used_point: Int
    let final_payment_number: Int
    
    struct DeliveryInfo {
        let is_main: Bool
        let reciever_name: String
        let phone_number: String
        let receive_place: String // LocationType으로 enum 만들지 고민
        let receive_place_detail: String
        let delivery_complete_message: String
    }
}


struct PointTransactionResult {
    let reward_point: Int
    let reward_logs: [RewardLog]
    
    struct RewardLog: Codable {
        let id: Int
        let type: String // 적립 or 사용 두가지
        let description: String
        let amount: Int
        let date: Date
    }
}

