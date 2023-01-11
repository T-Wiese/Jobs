//
//  JobListView.swift
//  Jobs
//
//  Created by Torin Wiese (Work) on 1/11/23.
//

import SwiftUI

struct JobListView : View {
    @State var jobs:[Job] = []
    var body: some View {
        List {
            ForEach(jobs) { job in
                JobView(job: job)
            }
        }.task {
                DispatchQueue.global().async {
                    jobs = JobManager.shared.loadJobs()
                }
        }
    }
}
