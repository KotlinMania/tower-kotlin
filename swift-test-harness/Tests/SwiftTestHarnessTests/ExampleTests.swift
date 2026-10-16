#if canImport(Testing)
import Testing
import Tower

@Suite("Tower Swift Export Tests")
struct TowerExportTests {
    @Test("Tower swift module imported cleanly")
    func testSwiftModuleLoads() throws {
        #expect(Bool(true), "Tower swift module imported cleanly")
    }
}
#elseif canImport(XCTest)
import XCTest
import Tower

final class TowerExportTests: XCTestCase {
    func testSwiftModuleLoads() throws {
        XCTAssertTrue(true, "Tower swift module imported cleanly")
    }
}
#endif
