//
//  AmiiboRepository.swift
//  amiibo_ios
//
//  Created by Raphael Ferreira Ramos on 20/04/21.
//

import Foundation
import Alamofire

class AmiiboRepository {
    
    func fetchAmiibos(){
        AF.request("https://www.amiiboapi.com/api/amiibo/").responseJSON {data in
            print(data)
            
        }
    }
}
