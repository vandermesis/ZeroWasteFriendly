//
//  Error+UserFriendlyMessage.swift
//  ZeroWasteFriendly
//
//  Created by Marek Skrzelowski on 11/02/2020.
//  Copyright © 2020 vandermesis. All rights reserved.
//

import Foundation

struct AppError: Error {
    let message: String
}

struct APIError: Error {
    let statusCode: Int
    let data: Data?
}

struct InvalidURLError: Error {}

struct MissingAPIResponse: Error {}

struct MissingAPIData: Error {}

enum SerializerError: Error {
    case jsonDecodingError
    case jsonEncodingError
}

enum UserDefaultsError: Error {
    case readUserDefaults
    case writeUserDefaults
}

extension Error {

    var userFriendlyMessage: String {
        if let appError = self as? AppError {
            return appError.message
        } else if self is APIError {
            return R.string.localizable.errorApi()
        } else if self is InvalidURLError {
            return R.string.localizable.errorInvalidURL()
        } else if self is MissingAPIResponse {
            return R.string.localizable.errorMissingApiResponse()
        } else if self is MissingAPIData {
            return R.string.localizable.errorMissingApiData()
        } else if self is SerializerError {
            return R.string.localizable.errorSerializer()
        } else if self is UserDefaultsError {
            return R.string.localizable.errorUserDefaults()
        } else {
            return R.string.localizable.errorUnknown()
        }
    }

    var developerFriendlyMessage: String {
        if let apiError = self as? APIError {
            print("API responded with statusCode: \(apiError.statusCode), data: \(String(describing: apiError.data))")
            return R.string.localizable.errorApi()
        } else {
            print(String(describing: self))
            return R.string.localizable.errorUnknown()
        }
    }
}
