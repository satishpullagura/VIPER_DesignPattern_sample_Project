//
//  Entity.swift
//  VIPER_designpattern_simple_application
//
//  Created by Sathish Pullagura on 24/05/25.
//

import Foundation
/**
 -> Entity is a Raw data of specific module, here it is a data module for User
 */
struct UserEntity: Codable {
    var name: String
    var email: String
}
