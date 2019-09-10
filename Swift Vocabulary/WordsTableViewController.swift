//
//  WordsTableViewController.swift
//  Swift Vocabulary
//
//  Created by Danielle Blackwell on 8/12/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class WordsTableViewController: UITableViewController {
    
    var vocabWords: [VocabularyWords] =
        [VocabularyWords(word: "Variable", definition: "A variable provides us with named storage that our programs can manipulate"),
         VocabularyWords(word: "Constant", definition:" Contants can not be altered"),
         VocabularyWords(word: "Array", definition: "An array is an ordered collection of values which elements usually are indexed by sequential integers")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.reloadData()
        tableView.dataSource = self
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return vocabWords.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Wordcell", for: indexPath)
        
        let word = vocabWords[indexPath.row]
        
        cell.textLabel?.text = word.word
        
        return cell
    }
    
    // MARK: - Navigation
    
    //    In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        //  Segue Indentifier for definitions
        if segue.identifier == "ShowDefinitionSegue" {
            guard let indexPath = tableView.indexPathForSelectedRow,
                let vocabDetail = segue.destination as? DefinitionOfWordsViewController else { return }
            vocabDetail.definitionOfWords = vocabWords[indexPath.row]
            
        }
    }
}
