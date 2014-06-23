import Foundation

@infix func * (left :String, right: Int) -> String {
    var str = ""
    for i in 0..right {
        str += left
    }
    return str
}

func all(t:Array<AnyObject?>) -> Bool {
    for i :AnyObject? in t {
        if bool(i) == false {
            return false
        }
    }
    return true
}

func any(t:Array<AnyObject?>) -> Bool {
    for i :AnyObject? in t {
        if bool(i) == true {
            return true
        }
    }
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

func chr(i :Int) -> String {
    var b = UInt8[]()
    b.append(UInt8(i))
    var data = NSData(bytes: b, length: 1)
    return NSString(data: data, encoding: NSUTF8StringEncoding)
}

func str<T>(t:T) -> String {
    return "\(t)"
}

func sum(inputs:Int...) -> Int {
    return reduce(inputs, 0, {$0 + $1})
}

func sum(inputs:UInt...) -> UInt {
    return reduce(inputs, 0, {$0 + $1})
}

func sum(inputs:Int8...) -> Int8 {
    return reduce(inputs, 0, {$0 + $1})
}

func sum(inputs:UInt8...) -> UInt8 {
    return reduce(inputs, 0, {$0 + $1})
}

func sum(inputs:Int16...) -> Int16 {
    return reduce(inputs, 0, {$0 + $1})
}

func sum(inputs:UInt16...) -> UInt16 {
    return reduce(inputs, 0, {$0 + $1})
}

func sum(inputs:Int32...) -> Int32 {
    return reduce(inputs, 0, {$0 + $1})
}

func sum(inputs:UInt32...) -> UInt32 {
    return reduce(inputs, 0, {$0 + $1})
}

func sum(inputs:Int64...) -> Int64 {
    return reduce(inputs, 0, {$0 + $1})
}

func sum(inputs:UInt64...) -> UInt64 {
    return reduce(inputs, 0, {$0 + $1})
}

func sum(inputs:Float...) -> Float {
    return reduce(inputs, 0, {$0 + $1})
}

func sum(inputs:Double...) -> Double {
    return reduce(inputs, 0, {$0 + $1})
}

func sum(inputs:String...) -> String {
    return reduce(inputs, "", {$0 + $1})
}



func ord(c :Character) -> Int {
    return String(c).utf16[0].encode()[0]
}


