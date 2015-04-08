import Foundation

func all(list :[AnyObject?]) -> Bool {
    for i :AnyObject? in list {
        if bool(i) == false {
            return false
        }
    }
    return true
}

func any(list :[AnyObject?]) -> Bool {
    for i :AnyObject? in list {
        if bool(i) == true {
            return true
        }
    }
    return false
}

func bool() -> Bool {
	return false
}

func bool(input :AnyObject?) -> Bool {
    if let i:AnyObject! = input {
		if i as? NSObject == true {
			return true
		}
    }
    return false
}

func bytearray(data :NSData) -> [UInt8] {
	let bytes = data.bytes
	let length = data.length
	var a = [UInt8]()
	for i in 0..<length {
		var ptr = UnsafePointer<UInt8>(bytes.advancedBy(i)).memory as UInt8
		a.append(ptr)
	}
	return a
}

func bytearray(string :String, #encoding :NSStringEncoding) -> [UInt8]? {
	var data = (string as NSString).dataUsingEncoding(encoding)
	if let data = data {
		return bytearray(data)
	}
	return nil
}

func chr(int :Int) -> String? {
    var b = [UInt8]()
    b.append(UInt8(int))
    var data = NSData(bytes: b, length: 1)
    return NSString(data: data, encoding: NSUTF8StringEncoding) as? String
}

func cmp<T:Comparable>(x :T, y: T) -> NSComparisonResult {
	if x < y {
		return .OrderedAscending
	}
	if x > y {
		return .OrderedDescending
	}
	return .OrderedSame
}

func dir(object: AnyObject) -> [String] {
	if let cls :AnyClass = object_getClass(object) {
		var count :CUnsignedInt = 0
		var methods = class_copyMethodList(cls, &count)
		var methodNames = [String]()

		for var i :CUnsignedInt = 0; i < count; i++ {
			let methodName = "\(sel_getName(method_getName(methods.memory)))"
			methodNames.append(methodName)
			methods = methods.successor()
		}
		return methodNames
	}
	return []
}

func dict<T>(a: [(String, T)]) -> [String: T] {
	var d = [String: T]()
	for (k, v) in a {
		d[k] = v
	}
	return d
}

func enumerate<T>(a :[T], _ start :Int=0) -> [(Int, T)] {
	var rtn = [(Int, T)]()
	var count = start
	for item in a {
		rtn.append((count, item))
		count++
	}
	return rtn
}

func id<T:Hashable>(input:T) -> Int {
	return input.hashValue
}

func str<T>(input :T) -> String {
    return "\(input)"
}

func sum(inputs :Int...) -> Int {
    return reduce(inputs, 0, +)
}

func sum(inputs :UInt...) -> UInt {
    return reduce(inputs, 0, +)
}

func sum(inputs :Int8...) -> Int8 {
    return reduce(inputs, 0, +)
}

func sum(inputs :UInt8...) -> UInt8 {
    return reduce(inputs, 0, +)
}

func sum(inputs :Int16...) -> Int16 {
    return reduce(inputs, 0, +)
}

func sum(inputs :UInt16...) -> UInt16 {
    return reduce(inputs, 0, +)
}

func sum(inputs :Int32...) -> Int32 {
    return reduce(inputs, 0, +)
}

func sum(inputs :UInt32...) -> UInt32 {
    return reduce(inputs, 0, +)
}

func sum(inputs :Int64...) -> Int64 {
    return reduce(inputs, 0, +)
}

func sum(inputs :UInt64...) -> UInt64 {
    return reduce(inputs, 0, +)
}

func sum(inputs :Float...) -> Float {
    return reduce(inputs, 0, +)
}

func sum(inputs :Double...) -> Double {
    return reduce(inputs, 0, +)
}

func sum(inputs :String...) -> String {
    return reduce(inputs, "", +)
}

func zip(inputs :[AnyObject]...) -> [[AnyObject]] {
	var output = [[AnyObject]]()
	var count = inputs[0].count
	for input in inputs {
		if input.count < count {
			count = input.count
		}
	}
	for i in 0..<count {
		var a = Array<AnyObject>()
		for input in inputs {
			a.append(input[i])
		}
		output.append(a)
	}
	return output
}


