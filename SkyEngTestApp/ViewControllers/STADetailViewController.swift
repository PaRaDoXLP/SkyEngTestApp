//
//  STADetailViewController.swift
//  SkyEngTestApp
//
//  Created by Вячеслав on 02/03/2020.
//  Copyright © 2020 PaRaDoX. All rights reserved.
//

import UIKit
import SDWebImage
import AVFoundation

class STADetailViewController: UITableViewController {
    
    let rowHeight: CGFloat = 406.0
    
    var word: STAWord? {
      didSet {
        self.title = self.word?.text
        self.tableView.reloadData()
      }
    }
    
    var wordPlayer: AVAudioPlayer?

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func setupCell(cell: STADetailWordTableViewCell, withIndexPath indexPath: IndexPath) {
        
        let meaning = self.word?.meanings[indexPath.row]
        
        cell.translateLabel.text = meaning?.translationText
        
        if meaning?.translationNote != nil {
            cell.noteLabel.text = meaning?.translationNote
        }
        
        if meaning?.imageURL != nil {
            cell.loadActivityIndicator.startAnimating()
            cell.meaningImageView.sd_setImage(with: meaning?.imageURL,
                                              placeholderImage: UIImage.init(named: "noImage"), completed: { (image, error, cache, url) in
                                                cell.loadActivityIndicator.stopAnimating()
                                                
            })
        }
    }
    
//    MARK: - Actions
    @IBAction func goBackAction(_ sender: UIBarButtonItem) {
        self.navigationController?.popViewController(animated: true)
    }
    

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return (self.word?.meanings.count)!
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: STADetailWordTableViewCell = tableView.dequeueReusableCell(withIdentifier: "DetailWordCell", for: indexPath) as! STADetailWordTableViewCell
        
        self.setupCell(cell: cell, withIndexPath: indexPath)

        return cell
    }
    
//    MARK: - UITableViewDelegate
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return self.rowHeight
    }

}



