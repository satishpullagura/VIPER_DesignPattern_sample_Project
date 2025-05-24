//
//  Interactor.swift
//  VIPER_designpattern_simple_application
//
//  Created by Sathish Pullagura on 24/05/25.
//

import Foundation
/**
 -> Interactor acts as performing all business logic's in it
 -> It fetches the information from server and manage the data binding to the models
 -> It send back response to presenter by using presenter reference in it
 */
class Interactor: InteractorProtocol {
    
    weak var presenter: PresenterProtocol?
    
    func fetchData() {
       let result = [
            UserEntity(name: "satish", email: "satish@gmail.com"),
            UserEntity(name: "sudheer", email: "sudheer@gmail.com"),
            UserEntity(name: "Nani", email: "Nani@gmail.com"),
            UserEntity(name: "Bhuvana", email: "Bhuvana@gmail.com")
        ]
        presenter?.didReceiveData(response: result)
    }
    
}
