//
//  Presenter.swift
//  VIPER_designpattern_simple_application
//
//  Created by Sathish Pullagura on 24/05/25.
//

import Foundation
/*
 -> Presenter acts as mediator between View and Interactor
 -> View send user interaction to Presenter and Presenter will communicate with intercator for fetching required information to diaply it on view and then pass the information to view
 -> Also presentor send event to Router to handle navigation actions
 */

class Presenter: PresenterProtocol {
    weak var view: ViewProtocol?
    var router: RouterProtocol?
    var interactor: InteractorProtocol?
    
    func fetchUserList() {
        //fetch data from interactor
        self.interactor?.fetchData()
    }
    func didReceiveData<T>(response: T) {
        view?.displayContent(content: response)
    }
    
    //If any user interaction occured then router variable fires a event to navigate to another screen
    
}
