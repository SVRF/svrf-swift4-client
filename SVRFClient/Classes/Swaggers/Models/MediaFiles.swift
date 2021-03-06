//
// MediaFiles.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Various sizes of images and resolutions for the Media. They will never be larger than the Media source&#39;s original resolution. */

open class MediaFiles: Codable {

    /** This is the binary glTF format that should be used by clients if the Media is a 3D object. This is the preferred format to use on end-user devices. */
    public var glb: String?
    /** This is the binary glTF format, with additional DRACO compression, that should be used by clients if the Media is a 3D object. Your renderer must support the KHR_draco_mesh_compression extension to use this model. */
    public var glbDraco: String?
    /** A map of file names to urls where those files are hosted. The file names are relative and their name heirarchy should be respected when saving them locally. */
    public var gltf: [String:String]?
    public var images: MediaImages?
    public var stereo: MediaStereo?
    public var videos: MediaVideos?


    
    public init(glb: String?, glbDraco: String?, gltf: [String:String]?, images: MediaImages?, stereo: MediaStereo?, videos: MediaVideos?) {
        self.glb = glb
        self.glbDraco = glbDraco
        self.gltf = gltf
        self.images = images
        self.stereo = stereo
        self.videos = videos
    }
    

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeIfPresent(glb, forKey: "glb")
        try container.encodeIfPresent(glbDraco, forKey: "glb-draco")
        try container.encodeIfPresent(gltf, forKey: "gltf")
        try container.encodeIfPresent(images, forKey: "images")
        try container.encodeIfPresent(stereo, forKey: "stereo")
        try container.encodeIfPresent(videos, forKey: "videos")
    }

    // Decodable protocol methods

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        glb = try container.decodeIfPresent(String.self, forKey: "glb")
        glbDraco = try container.decodeIfPresent(String.self, forKey: "glb-draco")
        gltf = try container.decodeIfPresent([String:String].self, forKey: "gltf")
        images = try container.decodeIfPresent(MediaImages.self, forKey: "images")
        stereo = try container.decodeIfPresent(MediaStereo.self, forKey: "stereo")
        videos = try container.decodeIfPresent(MediaVideos.self, forKey: "videos")
    }
}

