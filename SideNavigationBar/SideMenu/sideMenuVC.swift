//
//  sideMenuVC.swift
//  sideMenu
//
//  Created by Abhisek Prusty on 21/02/2026.
//

import UIKit

class sideMenuVC: UIViewController {
    
    @IBOutlet weak var myTableView: UITableView! {
        didSet {
            myTableView.dataSource = self
            myTableView.delegate = self
        }
    }
    var vc : UIViewController?
    struct sideMenuData {
        var img = UIImage()
        var titleStr = String()
    }
    var dataArray = [sideMenuData]()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.black.withAlphaComponent(0.4)
        dataArray.append(sideMenuData(img: UIImage(named: "user")!, titleStr: "Profile"))
        dataArray.append(sideMenuData(img: UIImage(named: "settings")!, titleStr: "Settings"))
        dataArray.append(sideMenuData(img: UIImage(named: "logout")!, titleStr: "Logout"))
    }
    @IBAction func closeAction(_ sender: UIButton) {
        self.dismiss(animated: false)
    }
    func gotoProfile() {
        let nextVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "profileVC") as! profileVC
        self.dismiss(animated: false) {
            self.vc?.navigationController?.pushViewController(nextVC, animated: true)
        }
    }
    func gotoSettings() {
        let nextVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SettingsVC") as! SettingsVC
        self.dismiss(animated: false) {
            self.vc?.navigationController?.pushViewController(nextVC, animated: true)
        }
    }
    func gotoLogout() {
        let nextVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "LogoutVC") as! LogoutVC
        self.dismiss(animated: false) {
            self.vc?.navigationController?.pushViewController(nextVC, animated: true)
        }
    }
}


extension sideMenuVC : UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! SideMenuTableViewCell
        let data = dataArray[indexPath.row]
        
        cell.img.image = data.img
        cell.titleLbl.text = data.titleStr
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let data = dataArray[indexPath.row]
        if data.titleStr.contains("Profile") {
            gotoProfile()
        } else if data.titleStr.contains("Settings") {
            gotoSettings()
        } else {
            gotoLogout()
        }
    }
    
}
