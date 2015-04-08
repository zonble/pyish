import Foundation

func *= (inout left :String, right: Int) {
	var str = ""
	for i in 0..<right {
		str += left
	}
	left = str
}

func * (left :String, right: Int) -> String {
	var str = ""
	for i in 0..<right {
		str += left
	}
	return str
}

func * (left :Character, right :Int) -> String {
	var str = ""
	for i in 0..<right {
		str.append(left)
	}
	return str
}

func % (format :String, args :[CVarArgType]) -> String? {
	return NSString(format: format, arguments: getVaList(args)) as? String
}

extension String {

	func format(input:CVarArgType...) -> String? {
		return NSString(format:self, arguments:getVaList(input)) as? String
	}

	func join(a:AnyObject?...) -> String {
		var strArray = a.map({"\($0)"})
		return (strArray as NSArray).componentsJoinedByString(self)
	}

	func zfill(width :Int) -> String {
		let currentLength = (self as NSString).length
		if currentLength >= width {
			return self
		}
		var fill = "0"
		return "\(fill * (width - currentLength))\(self)"
	}

	func zfill(fill :Character, width :Int) -> String {
		let currentLength = (self as NSString).length
		if currentLength >= width {
			return self
		}
		return "\(String(fill) * (width - currentLength))\(self)"
	}
}
