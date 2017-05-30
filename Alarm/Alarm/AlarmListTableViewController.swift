//
//  AlarmListTableViewController.swift
//  Alarm
//
//  Created by Bradley GIlmore on 5/29/17.
//  Copyright © 2017 Bradley Gilmore. All rights reserved.
//

import UIKit

class AlarmListTableViewController: UITableViewController, SwitchTableViewCellDelegate {
    
    
    func switchCellSwitchValueChanged(cell: SwitchTableViewCell) {
        
        guard let alarm = cell.alarm else { return }
        AlarmController.shared.toggleEnabled(for: alarm)
        self.tableView.reloadData()
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return AlarmController.shared.alarms.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "alarmCell", for: indexPath) as? SwitchTableViewCell else { return UITableViewCell() }
        
        let alarm = AlarmController.shared.alarms[indexPath.row]
        
        cell.alarm = alarm

        return cell
    }
    


    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            let ac = AlarmController.shared
            let alarm = ac.alarms[indexPath.row]
            ac.delete(alarm: alarm)
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            
        }    
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
