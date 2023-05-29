//
//  StartViewController.swift
//  5.3 UI by code
//
//  Created by Miras Maratov on 25.05.2023.
//

import Foundation
import UIKit

class StartViewController: UIViewController {
// MARK: - property
    @IBOutlet weak var startGame: UIButton!

// MARK: - life cycle func
    override func viewDidLoad() {
        super.viewDidLoad()
        configureStartView()
    }
    
// MARK: - flow func
    private func configureStartView(){
        
        view.backgroundColor = .gray
        startGame.frame.size.width = 200
        startGame.frame.size.height = 80
        startGame.layer.cornerRadius = 12
        startGame.backgroundColor = .purple
        startGame.center = view.center
        startGame.setTitle("Играть", for: .normal)
        startGame.setTitleColor(.white, for: .normal)

        
    }
}
