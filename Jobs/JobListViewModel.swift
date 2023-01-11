//
//  JobListViewModel.swift
//  Jobs
//
//  Created by Torin Wiese (Work) on 1/11/23.
//

import SwiftUI

class JobListViewModel: ObservableObject {
    enum State {
        case idle
        case searching
        case loaded([Job])
    }
    
    @Published var state = State.idle
    @Published var jobs = []
    
    init() {
        fetchJobs()
    }
    
    func fetchJobs() {
        jobs = JobManager.shared.loadJobs()
    }
}
