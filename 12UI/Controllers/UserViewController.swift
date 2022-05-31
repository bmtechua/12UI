//
//  UserViewController.swift
//  12UI
//
//  Created by bmtech on 26.05.2022.
//

import UIKit

class UserViewController: UIViewController {
    
    enum SectionType {
        case user
        case jobExperience
        case experience
        case skills
        case rate
    }
    
    @IBOutlet weak var tableView: UITableView!
    
    var sections: [SectionType] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sections.append(SectionType.user)
        sections.append(SectionType.jobExperience)
        sections.append(SectionType.experience)
        sections.append(SectionType.skills)
        sections.append(SectionType.rate)
        
        print(sections.count)
        tableView.register(
            UINib(nibName: "UserImageTableViewCell", bundle: nil),
            forCellReuseIdentifier: "UserImageTableViewCell"
        )
        tableView.register(
            UINib(nibName: "JobExperienceTableViewCell", bundle: nil),
            forCellReuseIdentifier: "JobExperienceTableViewCell"
        )
        tableView.register(
            UINib(nibName: "ExperienceTableViewCell", bundle: nil),
            forCellReuseIdentifier: "ExperienceTableViewCell"
        )
        tableView.register(
            UINib(nibName: "SkillsTableViewCell", bundle: nil),
            forCellReuseIdentifier: "SkillsTableViewCell"
        )
        tableView.register(
            UINib(nibName: "RateTableViewCell", bundle: nil),
            forCellReuseIdentifier: "RateTableViewCell"
        )
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.reloadData()
        
    }
}

extension UserViewController: UITableViewDelegate , UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let sectionType = sections[section]
        switch sectionType {
        case .user:
            return userArray.count
        case .jobExperience:
            return jobExperienceArray.count
        case .experience:
            return experienceArray.count
        case .skills:
            return skillsArray.count
        case .rate:
            return rateArray.count
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let sectionType = sections[indexPath.section]
        switch sectionType {
        case .user:
            let cell = tableView.dequeueReusableCell(withIdentifier: "UserImageTableViewCell") as?
            UserImageTableViewCell
            return cell ?? UITableViewCell()
            
        case .jobExperience:
            let cell = tableView.dequeueReusableCell(withIdentifier: "JobExperienceTableViewCell") as?
            JobExperienceTableViewCell
            return cell ?? UITableViewCell()
            
        case .experience:
            let cell = tableView.dequeueReusableCell(withIdentifier: "ExperienceTableViewCell") as?
            ExperienceTableViewCell
            cell?.yearExperienceLabel.text = experienceArray[indexPath.row].yearExperienceLabel
            cell?.companyExperienceLabel.text = experienceArray[indexPath.row].companyExperienceLabel
            cell?.descriptionExperienceLabel.text = experienceArray[indexPath.row].descriptionExperienceLabel
            return cell ?? UITableViewCell()
            
        case .skills:
            let cell = tableView.dequeueReusableCell(withIdentifier: "SkillsTableViewCell") as?
            SkillsTableViewCell
            return cell ?? UITableViewCell()
            
        case .rate:
            let cell = tableView.dequeueReusableCell(withIdentifier: "RateTableViewCell") as?
            RateTableViewCell
            return cell ?? UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let sectionType = sections[indexPath.section]
        switch sectionType {
        case .user:
            return 309
        case .jobExperience:
            return 72
        case .experience:
            return 44
        case .skills:
            return 87
        case .rate:
            return 178
        }
    }
}
