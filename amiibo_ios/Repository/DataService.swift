//
//  AmiiboRepository.swift
//  amiibo_ios
//
//  Created by Raphael Ferreira Ramos on 20/04/21.
//

import Foundation
import Alamofire
import SwiftyJSON

class DataService {
    
    private let url = "https://www.amiiboapi.com/api/amiibo/"
    
    func fetchAmiibos(completion: @escaping ([Amiibo]) -> ()){
        AF.request(url).responseJSON { response in
            
            var list = [Amiibo]()
            switch response.result {
            
                case .success(let value):
                    let json = JSON(value)
                    if let amiibos = json["amiibo"].array {
                        amiibos.forEach { result in
                            list.append(Amiibo(json: result))
                        }
                    }
                    completion(list)
                    
            case .failure( _):
                    completion(list)
                }
            
        }
    }
}
