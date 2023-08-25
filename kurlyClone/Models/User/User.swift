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
    let phoneNumber: Int
    let gender: String
    let birthday: Date
    let deliveryLocations: [DeliveryLocation]
    
    let grade: String
    let rewardPoint: Int
    let marketingOption: [String] // enum
    let reffererId: String
    let coupons: [Coupon]
    
    struct DeliveryLocation {
        let isMain: Bool
        let recieverName: String
        let phoneNumber: String
        let destination: String
        let destinationDetail: String
        let deliveryTtype: String
    }
}

struct UserAuth {
    let access_token: Int
}

struct Coupon {
    let id: Int
    let title: String
    let discount: Int
    let minimumPurchaseAmount: Int
    let applicableProduct: String
    let applicableBrand: String
    let expirationDate: Date
}




