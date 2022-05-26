//
//  UserViewController.swift
//  12UI
//
//  Created by bmtech on 26.05.2022.
//

import UIKit

class UserViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var itemsJob = [Job]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
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

    }

}

extension UserViewController: UITableViewDelegate , UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 0
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        itemsJob.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
}
