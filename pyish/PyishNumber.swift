import Foundation

extension Int {
	init(_ string :String) {
		self = (string as NSString).integerValue
	}
}

extension Float {
	init(_ string :String) {
		self = (string as NSString).floatValue
	}
}

extension Double {
	init(_ string :String) {
		self = (string as NSString).doubleValue
	}
}
