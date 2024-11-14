import XCTest
@testable import AnimatedTableView
import UIKit

@MainActor
final class AnimatedTableViewTests: XCTestCase {
    
    // MARK: - Tests for UITableView Animations
    func testTableViewSlideIn() async {
        let tableView = UITableView()
        let expectation = XCTestExpectation(description: "Slide-in animation completed")
        
        tableView.animateTableViewSlideIn()
        XCTAssertEqual(tableView.transform, .identity, "Table view should be at its original position after slide-in")
        
        expectation.fulfill()
        await fulfillment(of: [expectation], timeout: 1.0)
    }
    
    func testTableViewFadeIn() async {
        let tableView = UITableView()
        let expectation = XCTestExpectation(description: "Fade-in animation completed")
        
        tableView.alpha = 0
        tableView.animateTableViewFadeIn()
        XCTAssertEqual(tableView.alpha, 1, "Table view should be fully visible after fade-in")
        
        expectation.fulfill()
        await fulfillment(of: [expectation], timeout: 1.0)
    }
    
    // MARK: - Tests for UITableViewCell Animations
    func testCellScaleAnimation() async {
        func testCellScaleAnimation() async {
            let cell = UITableViewCell()
            let expectation = XCTestExpectation(description: "Scale animation completed")
            
            cell.animateScale()
            
            // Assert that the cell's transform is reset to identity after animation completes
            XCTAssertEqual(cell.transform, .identity, "Cell should return to its original scale after scaling")
            
            expectation.fulfill()
            await fulfillment(of: [expectation], timeout: 1.0)
        }
    }
}
