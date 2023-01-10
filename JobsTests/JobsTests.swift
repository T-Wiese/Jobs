//
//  JobsTests.swift
//  JobsTests
//
//  Created by Torin Wiese (Work) on 1/9/23.
//

import XCTest
@testable import Jobs

final class JobsTests: XCTestCase {
    
    var manager = JobManager()

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testManager() async throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
        let jobs = await manager.loadJobsAsync()
        
        XCTAssertTrue(jobs.count > 0)
        XCTAssertTrue(jobs[0].id == 1)
        print(jobs)
    }

}
