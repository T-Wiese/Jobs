//
//  Job.swift
//  Jobs
//
//  Created by Torin Wiese (Work) on 1/9/23.
//

import Foundation

struct Job: Codable, Identifiable {
    let id: Int
    let title: String
    let salary: String
    let employer: Employer
    let recruiter: Recruiter
}

struct Employer: Codable {
    let name: String
    let address: String
    let description: String
    let image: String
    
    
    /* In case we want class for reference type
    init(name: String, address: String, description: String, image: String) {
        self.name = name
        self.address = address
        self.description = description
        self.image = image
    }*/
}

struct Recruiter: Codable {
    let firstName: String
    let lastName: String
    let emailAddress: String
    
    /* in case we want class for reference type
    init(firstName: String, lastName: String, emailAddress: String) {
        self.firstName = firstName
        self.lastName = lastName
        self.emailAddress = emailAddress
    }*/
}
