
import Foundation

struct Json4Swift_Base : Codable {
	let page : Int?
	let results : [Results]?
	let total_pages : Int?
	let total_results : Int?

	enum CodingKeys: String, CodingKey {
		case page = "page"
		case results = "results"
		case total_pages = "total_pages"
		case total_results = "total_results"
	}
}
