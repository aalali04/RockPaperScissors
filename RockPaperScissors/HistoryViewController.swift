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
    
    
    // MARK: Properties
    
    var history: [RPSMatch]!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return history.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "historyID")!
        let match = self.history[(indexPath as NSIndexPath).row]
        cell.textLabel!.text = matchresult(match)
        cell.detailTextLabel!.text = "\(match.p1) vs. \(match.p2)"

        
        return cell
    }

    
    // MARK: Image for Match
    
    func matchresult(_ match: RPSMatch) -> String {
        
        var result = ""
        
        if match.p1 == match.p2 {
            result = "itsATie"
        } else if (match.p1.defeats(match.p2)) {
            result = "Win!"
        } else {
            result = "Loss"
        }
        return result
    }

}
