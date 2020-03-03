//
//  STAMasterViewController.swift
//  SkyEngTestApp
//
//  Created by Вячеслав on 29/02/2020.
//  Copyright © 2020 PaRaDoX. All rights reserved.
//

import UIKit

class STAMasterViewController: UITableViewController, UISearchBarDelegate {

    
    let searchController = UISearchController(searchResultsController: nil)
    
    var words: [STAWord] = []
    var page: Int = 0
    let pageSize: Int = 20
    var isMorePages = true
    var searchTask: DispatchWorkItem?


    //MARK: - LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.searchController.obscuresBackgroundDuringPresentation = false
        self.searchController.searchBar.placeholder = "Search Word..."
        self.searchController.searchBar.barTintColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        self.searchController.searchBar.tintColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        self.searchController.searchBar.set(textColor: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))
        self.searchController.searchBar.setPlaceholder(textColor: #colorLiteral(red: 0.7764129043, green: 0.7765043378, blue: 0.7763709426, alpha: 1))
        self.searchController.searchBar.setClearButton(color: #colorLiteral(red: 0.7764129043, green: 0.7765043378, blue: 0.7763709426, alpha: 1))
        navigationItem.searchController = searchController
        definesPresentationContext = true
        
        self.searchController.searchBar.delegate = self
        

    }
    
    func filterContentForSearchText(_ searchText: String) {
        if self.isMorePages {
            STANetworkManager.shared.GET_words(withSearch: searchText, page: page) { (result, error) in
                if error != nil {
                    let alertController = UIAlertController(title: "Error",
                                                            message: error?.localizedDescription,
                                                            preferredStyle: .alert)
                    let defaultAction = UIAlertAction(title: "OK", style: .default, handler: nil)
                    alertController.addAction(defaultAction)
                    self.present(alertController, animated: true, completion: nil)
                }
                         
                if self.page == 0 {
                    self.words.removeAll()
                }
                
                if result!.count > 0 {
                    self.words.append(contentsOf: result!)
                    self.page += 1
                } else {
                    self.isMorePages = false
                }
                self.searchTask?.cancel()
                self.tableView.reloadData()
            }
        } else {
            self.searchTask?.cancel()
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard
            segue.identifier == "showWordDetail",
            let indexPath = tableView.indexPathForSelectedRow,
            let detailViewController = segue.destination as? STADetailViewController
            else {
                return
        }
        let word: STAWord = words[indexPath.row]
        detailViewController.word = word
    }

//    MARK: - UITableViewDataSource
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.words.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: STAWordTableViewCell = tableView.dequeueReusableCell(withIdentifier: "WordTableViewCell", for: indexPath) as! STAWordTableViewCell
        
        let word: STAWord = self.words[indexPath.row]
        
        cell.wordLabel.text = word.text
        
        return cell
        
    }
    
//    MARK: - UITableViewDelegate
    
//    MARK: - UISearchBarDelegate
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        self.searchTask?.cancel()
        STANetworkManager.shared.stopAllRequests()
        
        self.page = 0
        self.isMorePages = true
        
        let task = DispatchWorkItem { [weak self] in
            self?.filterContentForSearchText(searchText)
        }
        self.searchTask = task
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.75, execute: task)
    }
    
//    MARK: - UIScrollViewDelegate
    
    override func scrollViewWillEndDragging(_ scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>) {
        
        let maximumOffset = scrollView.contentSize.height - scrollView.frame.size.height*1.5
        
        if (targetContentOffset.pointee.y >= maximumOffset) && (targetContentOffset.pointee.y > 0) {
            self.filterContentForSearchText(self.searchController.searchBar.text!)
        }
    }
}
