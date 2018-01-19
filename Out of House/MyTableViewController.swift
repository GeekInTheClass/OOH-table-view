//
//  MyTableViewController.swift
//  Out of House
//
//  Created by cscoi029 on 2018. 1. 19..
//  Copyright © 2018년 read. All rights reserved.
//
import UIKit

struct Alarm {
    var goout: Int
    var dressup: Int
    var eat: Int
    var wash: Int
    
    init(goout: Int, dressup:Int){
        self.goout = goout
        self.dressup = dressup
        eat = 5
        wash = 1
    }
}


class MyTableViewController: UITableViewController {
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "알람의 헤더 \(section)"
    }


    var data: [Alarm] = [
        Alarm(goout: 8, dressup: 10),
        Alarm(goout: 9, dressup: 7)
    ]
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Alarmcell", for: indexPath)
        
        let item = data[indexPath.row]
        cell.textLabel?.text = "\(item.goout) times"
        cell.detailTextLabel?.text = "\(item.dressup) times"

        return cell
        
    }
    override func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        return "알람의 푸터 \(section)"
    }
}
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

