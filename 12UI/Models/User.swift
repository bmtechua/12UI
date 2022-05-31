//
//  Job.swift
//  12UI
//
//  Created by bmtech on 26.05.2022.
//

import Foundation

var name: String = "John Doe"
var yearExperienceLabel = "2021 - ..."
var companyExperienceLabel = "AB LLC"
var descriptionExperienceLabel = "Sr. iOS-Dev."


let jobexperience = "Job experience"
let skillslabel = "Skills"
let swiftlabel = "Swift"
let gitlabel = "Git"


struct Experience {
    var yearExperienceLabel: String
    var companyExperienceLabel: String
    var descriptionExperienceLabel: String
}

var exp1 = Experience(yearExperienceLabel: "2021 - ...", companyExperienceLabel: "AB LLC", descriptionExperienceLabel: "Sr. iOS Dev.")
var exp2 = Experience(yearExperienceLabel: "2010 - 2021", companyExperienceLabel: "AB BestCo", descriptionExperienceLabel: "iOS Eng.")
var exp3 = Experience(yearExperienceLabel: "2000 - 2010", companyExperienceLabel: "AB LLC", descriptionExperienceLabel: "Best position")

var userArray = ["John Doe"]
var jobExperienceArray = ["Job experience"]
var experienceArray = [exp1, exp2, exp3]
var skillsArray = ["Skills"]
var rateArray = ["rate"]
