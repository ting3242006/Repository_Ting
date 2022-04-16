//
//  ViewController.swift
//  Q3
//
//  Created by Ting on 2022/4/14.
//

import UIKit


class ViewController: UIViewController {

    @IBOutlet weak var stationIDLabel: UILabel!
    @IBOutlet weak var stationNameLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchItem()
    }
    
    struct JsonData: Codable{
        var stationID: String?
        var stationName: String?
        var stationAddress:String?
    }
    
    func fetchItem() {
        let url = URL(string: "https://stations-98a59.firebaseio.com/practice.json")!
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        
        
        let task = URLSession.shared.dataTask(with: request) {
            (data, response, error) in
            guard let data = data else { return }

            
            let loadedData = data
            do{
                let decoder = JSONDecoder()
                let info = try decoder.decode(JsonData.self, from: loadedData)
                print(info)
                DispatchQueue.main.async {
                    self.stationIDLabel.text = info.stationID
                    self.stationNameLabel.text = info.stationName
                    self.addressLabel.text = info.stationAddress
                }
            }catch{
                    print(error)
            }
            
            }
        task.resume()
        }
    }

    


