import Foundation

@infix func * (left :String, right: Int) -> String {
	var str = ""
	for i in 0..right {
		str += left
	}
	return str
}

@infix func * (left :Character, right: Int) -> String {
	var str = ""
	for i in 0..right {
		str += left
	}
	return str
}

@infix func % (format:String, args:CVarArg[]) -> String {
	return NSString(format: format, arguments: getVaList(args))
}

extension String {
	func join(a:AnyObject?...) -> String {
		var strArray = a.map({"\($0)"})
		return (strArray as NSArray).componentsJoinedByString(self)
	}

	func zfill(width :Int) -> String {
		let currentLength = self.bridgeToObjectiveC().length
		if currentLength >= width {
			return self
		}
		var fill = "0"
		return "\(fill * (width - currentLength))\(self)"
	}

	func zfill(fill :Character, width :Int) -> String {
		let currentLength = self.bridgeToObjectiveC().length
		if currentLength >= width {
			return self
		}
		return "\(String(fill) * (width - currentLength))\(self)"
	}
}
