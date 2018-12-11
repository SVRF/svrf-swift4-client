//
// AuthResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



open class AuthResponse: Codable {

    /** If the request was successful */
    public var success: Bool?
    /** How many seconds this token will be valid for. */
    public var expiresIn: Int?
    public var message: String?
    /** Token to be used in the &#x60;x-app-token&#x60; header to access authenticated routes */
    public var token: String?


    
    public init(success: Bool?, expiresIn: Int?, message: String?, token: String?) {
        self.success = success
        self.expiresIn = expiresIn
        self.message = message
        self.token = token
    }
    

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(success, forKey: "success")
        try container.encodeIfPresent(expiresIn, forKey: "expiresIn")
        try container.encodeIfPresent(message, forKey: "message")
        try container.encodeIfPresent(token, forKey: "token")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        success = try container.decodeIfPresent(Bool.self, forKey: "success")
        expiresIn = try container.decodeIfPresent(Int.self, forKey: "expiresIn")
        message = try container.decodeIfPresent(String.self, forKey: "message")
        token = try container.decodeIfPresent(String.self, forKey: "token")
    }
}
