
//  Created by Danielle Blackwell on 8/12/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class DefinitionOfWordsViewController: UIViewController {
    var definitionOfWords: VocabularyWords?
    @IBOutlet weak var wordDefined: UITextView!
    
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        func updateView() {
            
            guard let definitionOfWords = definitionOfWords.self else { return }
            title = definitionOfWords.word
            wordDefined.text = definitionOfWords.definition
            
        }
        updateView()
    }
}

