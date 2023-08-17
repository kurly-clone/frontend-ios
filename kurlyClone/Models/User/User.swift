//
//  UserModel.swift
//  kurlyClone
//
//  Created by 예은 on 2023/07/26.
//

import Foundation

// MARK: - UserModel
struct UserInfo {
    let id: Int
    let name: String
    let email: String
    let phone_number: Int
    let gender: String
    let birthday: Date
    let delivery_locations: [DeliveryLocation]
    
    let grade: String
    let reward_point: Int
    let marketing_option: [String] // enum
    let refferer_id: String
    let coupons: [Coupon]
    
    struct DeliveryLocation {
        let is_main: Bool
        let reciever_name: String
        let phone_number: String
        let destination: String
        let destination_detail: String
        let delivery_type: String
    }
}

struct UserAuth {
    let access_token: Int
}

struct DeliveryInfo {

    let delivery_complete_message: String
}


struct Coupon {
    let id: Int
    let title: String
    let discount: Int
    let minimum_purchase_amount: Int
    let applicableProduct: String
    let applicableBrand: String
    let expirationDate: Date
}




