import Foundation

func all(list:Array<AnyObject?>) -> Bool {
    for i :AnyObject? in list {
        if bool(i) == false {
            return false
        }
    }
    return true
}

func any(list:Array<AnyObject?>) -> Bool {
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

func bool(input:AnyObject?) -> Bool {
    if let i:AnyObject! = input {
		if i as NSObject == false {
			return false
		}
        return Bool(input)
    }
    return false
}

func bytearray(data :NSData) -> UnsafeArray<Byte> {
	let inputDataPtr = UnsafePointer<Byte>(data.bytes)
	let inputBytes = UnsafeArray<Byte>(start:inputDataPtr, length:data.length)
	return inputBytes
}

func bytearray(string :String, #encoding :NSStringEncoding) -> UnsafeArray<Byte> {
	var data = string.bridgeToObjectiveC().dataUsingEncoding(encoding)
	return bytearray(data)
}

func chr(int :Int) -> String {
    var b = UInt8[]()
    b.append(UInt8(int))
    var data = NSData(bytes: b, length: 1)
    return NSString(data: data, encoding: NSUTF8StringEncoding)
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

func dir(object: AnyObject) -> Array<String> {
	if let cls :AnyClass = object_getClass(object) {
		var count :CUnsignedInt = 0
		var methods = class_copyMethodList(cls, &count)
		var methodNames = Array<String>()

		for var i:CUnsignedInt = 0; i < count; i++ {
			let methodName = "\(sel_getName(method_getName(methods.memory)))"
			methodNames.append(methodName)
			methods = methods.succ()
		}
		return methodNames
	}
	return []
}

func dict<T>(a: Array<(String, T)>) -> Dictionary<String, T> {
	var d = Dictionary<String, T>()
	for (k, v) in a {
		d[k] = v
	}
	return d
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

func ord(c :Character) -> Int {
    return String(c).utf16[0].encode()[0]
}

func zip(inputs :Array<AnyObject>...) -> Array<Array<AnyObject>> {
	var output = Array<Array<AnyObject>>()
	var count = inputs[0].count
	for input in inputs {
		if input.count < count {
			count = input.count
		}
	}
	for i in 0..count {
		var a = Array<AnyObject>()
		for input in inputs {
			a.append(input[i])
		}
		output.append(a)
	}
	return output
}


