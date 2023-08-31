//
//  MyPageApiResult.swift
//  kurlyClone
//
//  Created by 고성민 on 2023/08/25.
//

import Foundation

// MARK: - 장바구니 정보
struct CartResult: Codable {
    let delivery_address: String
    let products: [Product]
}

// MARK: - 주문서 정보
struct OrderFormResult {
    let delivery_address: String
    let products: [Product]
    let user: OrderFormUser
    
    struct OrderFormUser {
        let id: Int
        let name: String
        let phone_number: String
        let email: String
    }
}

// MARK: - 주문 내역
struct OrderHistoryResult {
    let order_logs: [OrderLog]
        
    struct OrderLog {
        let id: Int
        let name: String
        let delivery_type: String
        let brand: String
        let price: Int
        let discount_price: Int
        let image: String
        let count: Int
        let date: Date

    }
}

// MARK: - 결제 정보
struct PaymentInfoResult {
    let products: [Product]
    let delivery_request: [DeliveryInfo]
    let used_point: Int
    let final_payment: Int
    
    struct DeliveryInfo {
        let is_main: Bool
        let reciever_name: String
        let phone_number: String
        let receive_place: String
        let receive_place_detail: String
        let delivery_complete_message: String
    }
}

// MARK: - 적립 내역
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

