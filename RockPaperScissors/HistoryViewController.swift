//
//  HistoryViewController.swift
//  RockPaperScissors
//
//  Created by Alaa Alali on 12/09/2019.
//  Copyright © 2019 Gabrielle Miller-Messner. All rights reserved.
//

import Foundation
import UIKit

// MARK: - HistoryViewController: UIViewController, UITableViewDelegate, UITableViewDataSource

class HistoryViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return history.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    
    // MARK: Properties
    
    var history: [RPSMatch]!
    

}
