import Vapor
import FluentSQLite

final class LiveLocation: Codable {
    var id: Int?
    var latitude: Double
    var longitude: Double
    
    init(id: Int? = nil,
         latitude: Double,
         longitude: Double) {
        self.id = id
        self.latitude = latitude
        self.longitude = longitude
    }
}

extension LiveLocation: SQLiteModel { }
extension LiveLocation: Migration { }
extension LiveLocation: Content { }
extension LiveLocation: Parameter { }
