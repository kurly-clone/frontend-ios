//
//  UserModel.swift
//  kurlyClone
//
//  Created by 예은 on 2023/07/26.
//

import Foundation

// MARK: - UserModel
struct UserModel: Codable {
    var isSuccess: Bool
    var code: Int
    var message: String
    var result: UserProfileResult?
}

// MARK: - API Result
struct UserProfileResult: Codable {
    var userNickname: String
    var level: Int
}
