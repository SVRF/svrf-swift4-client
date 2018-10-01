//
// MediaAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class MediaAPI {
    /**
     Media by ID Endpoint
     
     - parameter id: (path) ID of Media 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getById(id: String, completion: @escaping ((_ data: SingleMediaResponse?,_ error: Error?) -> Void)) {
        getByIdWithRequestBuilder(id: id).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Media by ID Endpoint
     - GET /vr/{id}
     - Fetch media by its ID.
     - API Key:
       - type: apiKey x-app-token 
       - name: XAppToken
     - examples: [{contentType=application/json, example=""}]
     
     - parameter id: (path) ID of Media 

     - returns: RequestBuilder<SingleMediaResponse> 
     */
    open class func getByIdWithRequestBuilder(id: String) -> RequestBuilder<SingleMediaResponse> {
        var path = "/vr/{id}"
        path = path.replacingOccurrences(of: "{id}", with: "\(id)", options: .literal, range: nil)
        let URLString = SVRFClientSwiftAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<SingleMediaResponse>.Type = SVRFClientSwiftAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     * enum for parameter stereoscopicType
     */
    public enum StereoscopicType_getTrending: String { 
        case _none = "none"
        case topBottom = "top-bottom"
        case leftRight = "left-right"
    }

    /**
     * enum for parameter category
     */
    public enum Category_getTrending: String { 
        case filters = "Face Filters"
    }

    /**
     Trending Endpoint
     
     - parameter type: (query) The type(s) of Media to be returned (comma separated). (optional)
     - parameter stereoscopicType: (query) Search only for Media with a particular stereoscopic type. (optional)
     - parameter category: (query) Search only for Media with a particular category. (optional)
     - parameter size: (query) The number of results per page. (optional, default to 10)
     - parameter nextPageCursor: (query) Pass this cursor ID to get the next page of results. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getTrending(type: [MediaType]? = nil, stereoscopicType: StereoscopicType_getTrending? = nil, category: Category_getTrending? = nil, size: Int? = nil, nextPageCursor: String? = nil, completion: @escaping ((_ data: TrendingResponse?,_ error: Error?) -> Void)) {
        getTrendingWithRequestBuilder(type: type, stereoscopicType: stereoscopicType, category: category, size: size, nextPageCursor: nextPageCursor).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Trending Endpoint
     - GET /vr/trending
     - The SVRF Trending Endpoint provides your app or project with the hottest immersive content curated by real humans. The experiences returned mirror the [SVRF homepage](https://www.svrf.com), from timely cultural content to trending pop-culture references. The trending experiences are updated regularly to ensure users always get fresh updates of immersive content.
     - API Key:
       - type: apiKey x-app-token 
       - name: XAppToken
     - examples: [{contentType=application/json, example=""}]
     
     - parameter type: (query) The type(s) of Media to be returned (comma separated). (optional)
     - parameter stereoscopicType: (query) Search only for Media with a particular stereoscopic type. (optional)
     - parameter category: (query) Search only for Media with a particular category. (optional)
     - parameter size: (query) The number of results per page. (optional, default to 10)
     - parameter nextPageCursor: (query) Pass this cursor ID to get the next page of results. (optional)

     - returns: RequestBuilder<TrendingResponse> 
     */
    open class func getTrendingWithRequestBuilder(type: [MediaType]? = nil, stereoscopicType: StereoscopicType_getTrending? = nil, category: Category_getTrending? = nil, size: Int? = nil, nextPageCursor: String? = nil) -> RequestBuilder<TrendingResponse> {
        let path = "/vr/trending"
        let URLString = SVRFClientSwiftAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "type": type, 
            "stereoscopicType": stereoscopicType?.rawValue, 
            "category": category?.rawValue, 
            "size": size?.encodeToJSON(), 
            "nextPageCursor": nextPageCursor
        ])
        

        let requestBuilder: RequestBuilder<TrendingResponse>.Type = SVRFClientSwiftAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     * enum for parameter stereoscopicType
     */
    public enum StereoscopicType_search: String { 
        case _none = "none"
        case topBottom = "top-bottom"
        case leftRight = "left-right"
    }

    /**
     * enum for parameter category
     */
    public enum Category_search: String { 
        case filters = "Face Filters"
    }

    /**
     Search Endpoint
     
     - parameter q: (query) Url-encoded search query. 
     - parameter type: (query) The type(s) of Media to be returned (comma separated). (optional)
     - parameter stereoscopicType: (query) Search only for Media with a particular stereoscopic type. (optional)
     - parameter category: (query) Search only for Media with a particular category. (optional)
     - parameter size: (query) The number of results to return per-page, from 1 to 100. (optional, default to 10)
     - parameter pageNum: (query) Pagination control to fetch the next page of results, if applicable. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func search(q: String, type: [MediaType]? = nil, stereoscopicType: StereoscopicType_search? = nil, category: Category_search? = nil, size: Int? = nil, pageNum: Int? = nil, completion: @escaping ((_ data: SearchMediaResponse?,_ error: Error?) -> Void)) {
        searchWithRequestBuilder(q: q, type: type, stereoscopicType: stereoscopicType, category: category, size: size, pageNum: pageNum).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Search Endpoint
     - GET /vr/search
     - The SVRF Search Endpoint brings the power of immersive search found on [SVRF.com](https://www.svrf.com) to your app or project. SVRF's search engine enables your users to instantly find the immersive experience they're seeking. Content is sorted by the SVRF rating system, ensuring that the highest quality content and most prevalent search results are returned. 
     - API Key:
       - type: apiKey x-app-token 
       - name: XAppToken
     - examples: [{contentType=application/json, example=""}]
     
     - parameter q: (query) Url-encoded search query. 
     - parameter type: (query) The type(s) of Media to be returned (comma separated). (optional)
     - parameter stereoscopicType: (query) Search only for Media with a particular stereoscopic type. (optional)
     - parameter category: (query) Search only for Media with a particular category. (optional)
     - parameter size: (query) The number of results to return per-page, from 1 to 100. (optional, default to 10)
     - parameter pageNum: (query) Pagination control to fetch the next page of results, if applicable. (optional)

     - returns: RequestBuilder<SearchMediaResponse> 
     */
    open class func searchWithRequestBuilder(q: String, type: [MediaType]? = nil, stereoscopicType: StereoscopicType_search? = nil, category: Category_search? = nil, size: Int? = nil, pageNum: Int? = nil) -> RequestBuilder<SearchMediaResponse> {
        let path = "/vr/search"
        let URLString = SVRFClientSwiftAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems(values:[
            "q": q, 
            "type": type, 
            "stereoscopicType": stereoscopicType?.rawValue, 
            "category": category?.rawValue, 
            "size": size?.encodeToJSON(), 
            "pageNum": pageNum?.encodeToJSON()
        ])
        

        let requestBuilder: RequestBuilder<SearchMediaResponse>.Type = SVRFClientSwiftAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
