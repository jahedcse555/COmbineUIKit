//
//  ApiCaller.swift
//  CombineIntroUIKit
//
//  Created by Jahed Ahmed on 6/3/22.
//
import Combine
import Foundation

class ApiCaller {
    
    static let shared = ApiCaller()
    func fetchCompanies() -> Future<[String],Error> {
           return Future { promise in
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                promise(.success(["Apple", "Google", "Microsoft", "Facebook"]))
            
        }
    }
    
}
}
