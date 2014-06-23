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

	func testStr() {
		XCTAssert(str(97) == "97")
		XCTAssert(str(98) == "98")
		XCTAssert(str(99) == "99")
	}

//	func testPerformanceExample() {
//		self.measureBlock() {
//		}
//	}

}
