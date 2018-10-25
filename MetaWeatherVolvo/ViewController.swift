//
//  ViewController.swift
//  MetaWeatherVolvo
//
//  Created by Zabeehullah Qayumi on 10/25/18.
//  Copyright © 2018 Zabeehullah Qayumi. All rights reserved.
//

import UIKit
import SwiftyJSON

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        jsonFileLoGothenburg()
        jsonFileLooStockholm()
 
    }
    

    func jsonFileLoGothenburg(){
        
        let url = URL(string: "https://www.metaweather.com/api/location/search/?query=gothenburg")
        URLSession.shared.dataTask(with: url!) { (data, response, error) in
            guard let data = data else {return}
            
            do{
                let json = try JSON(data: data)
                print(json)
                
            }catch{
                print(error.localizedDescription)
            }
        }.resume()
        
       
        
    }
    
    func jsonFileLooStockholm(){
        
        let url = URL(string: "https://www.metaweather.com/api/location/search/?query=stockholm")
        URLSession.shared.dataTask(with: url!) { (data, response, error) in
            guard let data = data else {return}
            
            do{
                let json = try JSON(data: data)
                print(json)
                
            }catch{
                print(error.localizedDescription)
            }
            }.resume()
        
        
        
    }


}

