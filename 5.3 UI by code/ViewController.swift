//
//  ViewController.swift
//  5.3 UI by code
//
//  Created by Miras Maratov on 13.05.2023.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - constant
    let fillButton = UIButton(frame: CGRect(x: 0, y: 0, width: 200, height: 80))
    
    // MARK: - property
    var xQuantity = Int()
    var yQuantity = Int()
    @IBOutlet weak var closeGame: UIButton!
    
    // MARK: - life cycle funcs
    override func viewDidLoad() {
        super.viewDidLoad()
        configureView()
    }
}

extension ViewController {
    // MARK: - public
    public func randomColor() -> UIColor {
        
        let red: CGFloat = .random(in: 0 ... 1)
        let green: CGFloat = .random(in: 0 ... 1)
        let blue: CGFloat = .random(in: 0 ... 1)
        return UIColor(red: red, green: green, blue: blue, alpha: 0.5)
        
    }
    
    // MARK: - flow funcs
    @objc private func createButton() {
        
        let h = 100
        var x = 0
        var y = 50
        
        for _ in 1...yQuantity {
            for _ in 1...xQuantity {
                let button = UIButton()
                button.frame = CGRect(x: x, y: y, width: h, height: h)
                button.backgroundColor = randomColor()
                self.view.addSubview(button)
                x += h
            }
            x = 0
            y += h
        }
    }
    
    private func configureView(){
        
        fillButton.frame.origin.x = view.frame.midX - fillButton.frame.size.width/2
        fillButton.frame.origin.y = view.frame.size.height - fillButton.frame.size.height*2
        fillButton.setTitle("Заполнить", for: .normal)
        fillButton.backgroundColor = .gray
        fillButton.layer.cornerRadius = 12
        self.view.addSubview(fillButton)
        fillButton.addTarget(self, action: #selector(createButton), for: .touchUpInside)
        xQuantity = Int(view.frame.size.width / 100)
        yQuantity = Int(fillButton.frame.origin.y / 100)
        closeGame.frame.size.width = 80
        closeGame.frame.size.height = 80
        closeGame.frame.origin.x = view.frame.size.width - 70
        closeGame.frame.origin.y = 30
        closeGame.setTitle("X", for: .normal)
        closeGame.setTitleColor(.black, for: .normal)
        closeGame.addTarget(self, action: #selector(closeVC), for: .touchUpInside)
        
    }
    
    @objc private func closeVC(){
        self.dismiss(animated: true)
    }
}

