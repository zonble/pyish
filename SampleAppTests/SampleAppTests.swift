import XCTest

class SampleAppTests: XCTestCase {

	override func setUp() {
		super.setUp()
	}

	override func tearDown() {
		super.tearDown()
	}

	func testAll() {
		XCTAssert(all([true, true, true, true]) == true)
		XCTAssert(all([true, false, true, true]) == false)
	}

	func testAny() {
		XCTAssert(any([true, true, true, true]) == true)
		XCTAssert(any([true, false, true, true]) == true)
		XCTAssert(any([false, false, false, false]) == false)
	}

	func testBool() {
		XCTAssert(bool("") == true)
		XCTAssert(bool("zonble") == true)
		XCTAssert(bool([false, false]) == true)
		XCTAssert(bool(1) == true)
		XCTAssert(bool(0) == false)
		XCTAssert(bool(true) == true)
		XCTAssert(bool(false) == false)
		XCTAssert(bool(nil) == false)
	}

	func testChr() {
		XCTAssert(chr(97) == "a")
		XCTAssert(chr(98) == "b")
		XCTAssert(chr(99) == "c")
	}

	func testCmp() {
		XCTAssert(cmp(1, 2) == .OrderedAscending)
		XCTAssert(cmp(2, 1) == .OrderedDescending)
		XCTAssert(cmp(2, 2) == .OrderedSame)
		XCTAssert(cmp("z", "b") == .OrderedDescending)
		XCTAssert(cmp("b", "z") == .OrderedAscending)
		XCTAssert(cmp("z", "z") == .OrderedSame)
	}

	func testDir() {
		println(dir("test" as NSString))
		println(dir(123 as NSNumber))
		println(dir([123, 456] as NSArray))
	}

	func testDict() {
		let a = [("a", 1), ("b", 2)]
		let d = dict(a)
		XCTAssert(d["a"] == 1)
		XCTAssert(d["b"] == 2)
	}

	func testStr() {
		XCTAssert(str(97) == "97")
		XCTAssert(str(98) == "98")
		XCTAssert(str(99) == "99")
	}

	func testStr2() {
		var str = "="
		str *= 10
		XCTAssert(str == "==========")
		XCTAssert("=" * 10 == "==========")
		XCTAssert("z" * 10 == "zzzzzzzzzz")
	}

	func testStr3() {
		XCTAssert("%d" % [1] == "1")
		XCTAssert("%d - %d" % [1, 2] == "1 - 2")
	}

	func testSum() {
		XCTAssert(sum(1,2,3,4) == 10)
		XCTAssert(sum("z","o","n","b","l","e") == "zonble")
	}

	func testZip() {
		XCTAssert(zip([1, 2, 3], [4, 5, 6], [7, 8, 9, 0]) == [[1, 4, 7], [2, 5, 8], [3, 6, 9]])
	}

//	func testPerformanceExample() {
//		self.measureBlock() {
//		}
//	}

}
