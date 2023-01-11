//
//  JobManager.swift
//  Jobs
//
//  Created by Torin Wiese (Work) on 1/9/23.
//

import Foundation

class JobManager {
    static let shared = JobManager()
    let urlString = "https://ios-interview.joinhandshake-internal.com/jobs"
    var jobs: [Job] = []
    var isSearching = false
    
    func loadJobs() -> [Job] {
        if let url = URL(string: urlString) {
            if let data = try? Data(contentsOf: url) {
                jobs = parse(data)
                return jobs
            }
        }
        return []
    }
    
    func loadJobsAsync() async -> [Job] {
        guard let url = URL(string: urlString) else {
            print("Invalid URL")
            return []
        }
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            jobs = parse(data)
            return jobs

        } catch {
            print(error)
        }
        return []
    }
    
    func parse(_ data: Data) -> [Job] {
        let decoder = JSONDecoder()
        
        do {
            let jobResults = try decoder.decode([Job].self, from: data)
            return jobResults
        } catch {
            print(error)
        }
        
        return []
    }
}
