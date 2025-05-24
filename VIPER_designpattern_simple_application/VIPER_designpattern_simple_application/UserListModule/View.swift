//
//  View.swift
//  VIPER_designpattern_simple_application
//
//  Created by Sathish Pullagura on 24/05/25.
//

import Foundation
import UIKit

/**
 View is responsible for User Interfaces
 It's having reference of Presenter which  will communicate with interactor to get data and send it to View
 */
class View: UIViewController, ViewProtocol {
    
    var presenter: PresenterProtocol?
    var tableView: UserTableView?
    var userList: [UserEntity]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.presenter?.fetchUserList()
        self.tableView = UserTableView(list: userList, frame: self.view.frame, style: .plain)
        self.view.addSubview(self.tableView!)
    }
    
    func displayContent<T>(content: T) {
        //Display result content in View
        self.userList = content as? [UserEntity]
        guard let tableView = self.tableView else { return }; tableView.reloadData()
        
    }
}
