//
//  ViewController.swift
//  WatchList
//
//  Created by Alexander Rinne on 26-04-17.
//  Copyright © 2017 Alexander Rinne. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let movies = ["Star Wars", "Indiana Johnes", "Lord of the Rings"]
    
    let movieDescriptions = ["Star Wars":"Science Fiction", "Indiana Johnes": "Adventure", "Lord of the Rings" : "War Movie"]
    // use IMDB API to fill this in

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let Cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
            as! MovieContentCell

        Cell.movieTitle.text = movies[indexPath.row]
        
        
        if let description = movieDescriptions[movies[indexPath.row]]{
            Cell.movieDescription.text = description
        } else {
            Cell.movieDescription.text = ""
        }
        
        return Cell
    }
}

