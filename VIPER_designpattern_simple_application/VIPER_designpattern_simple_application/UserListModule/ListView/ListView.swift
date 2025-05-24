//
//  ListView.swift
//  VIPER_designpattern_simple_application
//
//  Created by Sathish Pullagura on 24/05/25.
//

import Foundation
import UIKit

class UserTableView: UITableView {
    var userList: [UserEntity]?
    
    convenience init(list: [UserEntity]?, frame: CGRect, style: UITableView.Style) {
        self.init(frame: frame, style: style)
        self.userList = list
        self.register(UserCell.self, forCellReuseIdentifier: UserCell.identifier)

        self.delegate = self
        self.dataSource = self
    }
    
    override init(frame: CGRect, style: UITableView.Style) {
        super.init(frame: frame, style: style)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension UserTableView: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.userList?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: UserCell.identifier,
                                                       for: indexPath) as? UserCell
        else {
            return UITableViewCell()
        }
        cell.configure(with: self.userList?[indexPath.row].name ?? "")
//        cell.labelName?.text = self.userList?[indexPath.row].name ?? ""
//        cell.labelEmail?.text = self.userList?[indexPath.row].email ?? ""
        return cell
    }

}

extension UserTableView: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
}
