//
// AuthenticateAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class AuthenticateAPI {
    /**
     Authenticate application
     
     - parameter body: (body)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func authenticate(body: Body, completion: @escaping ((_ data: AuthResponse?,_ error: Error?) -> Void)) {
        authenticateWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Authenticate application
     - POST /app/authenticate
     - Authenticate an application's SVRF API Key to retrieve an access token to the SVRF API.
     - examples: [{contentType=application/json, example=""}]
     
     - parameter body: (body)  

     - returns: RequestBuilder<AuthResponse> 
     */
    open class func authenticateWithRequestBuilder(body: Body) -> RequestBuilder<AuthResponse> {
        let path = "/app/authenticate"
        let URLString = SVRFClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<AuthResponse>.Type = SVRFClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}