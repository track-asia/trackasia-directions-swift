import Foundation

/**
 Options determining the primary mode of transportation.
 */
public struct ProfileIdentifier: Codable, Hashable, RawRepresentable {
    public init(rawValue: String) {
        self.rawValue = rawValue
    }
    
    public var rawValue: String
    
    /**
    The returned directions are appropriate for driving or riding a car, truck, or motorcycle.
    
    This profile prioritizes fast routes by preferring high-speed roads like highways. A driving route may use a ferry where necessary.
    */
    public static let automobile: ProfileIdentifier = .init(rawValue: "driving")
    
    /**
    The returned directions are appropriate for driving or riding a car, truck, or motorcycle.
    
    This profile avoids traffic congestion based on current traffic data. A driving route may use a ferry where necessary.
    
    Traffic data is available in [a number of countries and territories worldwide](https://docs.mapbox.com/help/how-mapbox-works/directions/#traffic-data). Where traffic data is unavailable, this profile prefers high-speed roads like highways, similar to `ProfileIdentifier.Automobile`.
     
     - note: This profile is not supported by `Isochrones` API.
    */
    public static let automobileAvoidingTraffic: ProfileIdentifier = .init(rawValue: "driving-traffic")
    
    /**
    The returned directions are appropriate for riding a bicycle.
    
    This profile prioritizes short, safe routes by avoiding highways and preferring cycling infrastructure, such as bike lanes on surface streets. A cycling route may, where necessary, use other modes of transportation, such as ferries or trains, or require dismounting the bicycle for a distance.
    */
    public static let cycling: ProfileIdentifier = .init(rawValue: "cycling")
    
    /**
    The returned directions are appropriate for walking or hiking.
    
    This profile prioritizes short routes, making use of sidewalks and trails where available. A walking route may use other modes of transportation, such as ferries or trains, where necessary.
    */
    public static let walking: ProfileIdentifier = .init(rawValue: "walking")
    
    public static let car: ProfileIdentifier = .init(rawValue: "car")
    
    public static let moto: ProfileIdentifier = .init(rawValue: "moto")
}


@available(*, deprecated, renamed: "ProfileIdentifier")
public typealias MBDirectionsProfileIdentifier = ProfileIdentifier

/**
 Options determining the primary mode of transportation for the routes.
 */
@available(*, deprecated, renamed: "ProfileIdentifier")
public typealias DirectionsProfileIdentifier = ProfileIdentifier
