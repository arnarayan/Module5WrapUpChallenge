//
//  WrapUpViewModel.swift
//  Module5WrapUpChallenge
//
//  Created by Anand Narayan on 2022-06-08.
//

import Foundation


class WrapUpViewModel: ObservableObject {
    
    
    var remoteDataUrl: String = ""
    var session: URLSession = URLSession.shared
    var data: [WrapUpModel]?
        

    func getSelectedVideo(videoId: Int) -> String {
        if (data != nil) {
            let collection = data!
            return collection[videoId - 1].url
        }
        return ""
    }
    

    
    func getLocalData() -> [WrapUpModel] {
        // Get path to the json file within the app bundle
        
        if let path = Bundle.main.path(forResource: "data", ofType: "json") {
            let fileUrl = URL(fileURLWithPath: path)
            
            do{
                let data = try Data(contentsOf: fileUrl)
                let decoder = JSONDecoder()
                let response = try decoder.decode([WrapUpModel].self, from: data)
                self.data = response
                
                return response
                
            }
            catch{
                print("could not serialize")
                print(error)
            }
            
        }

        return [WrapUpModel]()
    }
    
}
