//
//  Protocols.swift
//  VIPER_designpattern_simple_application
//
//  Created by Sathish Pullagura on 24/05/25.
//

import Foundation
protocol ViewProtocol: AnyObject {
    func displayContent<T: Any>(content: T)
}

protocol InteractorProtocol: AnyObject {
    func fetchData()
}

protocol PresenterProtocol: AnyObject {
    func fetchUserList()
    func didReceiveData<T: Any>(response: T)
}


protocol RouterProtocol: AnyObject {
    func navigateToDetailScreen<T: Any>(with Content: T)
}
