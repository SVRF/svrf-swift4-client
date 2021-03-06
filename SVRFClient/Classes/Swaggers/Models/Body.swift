//
// Body.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



open class Body: Codable {

    /** Your application&#39;s API Key */
    public var apiKey: String


    
    public init(apiKey: String) {
        self.apiKey = apiKey
    }
    

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encode(apiKey, forKey: "apiKey")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        apiKey = try container.decode(String.self, forKey: "apiKey")
    }
}

