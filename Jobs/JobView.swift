//
//  JobView.swift
//  Jobs
//
//  Created by Torin Wiese (Work) on 1/11/23.
//

import SwiftUI

struct JobView: View {
    var job: Job
    var body: some View {
        VStack {
            HStack {
                AsyncImage(url: URL(string: job.employer.image)) {image in
                    image.scaledToFit().frame(width:40, height: 40)
                } placeholder: {
                    Rectangle().frame(width:40, height: 40)
                }
                    .frame(width:40, height:40)
                    
                VStack {
                    Text(job.title)
                    Text(job.employer.name)
                }
            }
        }
    }
    /*
    var body: some View {
        VStack {
            HStack{
                //AsyncImage(url: URL(string: job.employer.image))
                VStack {
                    Text(job.title)
                    Text(job.employer.name)
                }
                Button {
                    //
                } label: {
                    
                }
                
            }
        }
    }*/
}
