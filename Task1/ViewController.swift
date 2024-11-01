//
//  ViewController.swift
//  Task1
//
//  Created by Gusev Kirill on 01.11.2024.
//

import UIKit

class ViewController: UIViewController {

    let squareView = UIView()
    let gradient = CAGradientLayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        setupSquare()
        setupLayer()
        setupShadow()
    }
    
    private func setupSquare() {
        view.addSubview(squareView)
        squareView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            squareView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            squareView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 100),
            squareView.widthAnchor.constraint(equalToConstant: 100),
            squareView.heightAnchor.constraint(equalToConstant: 100)
        ])
    }
    
    private func setupLayer() {
        gradient.colors = [UIColor.systemPurple.cgColor,
                           UIColor.systemBlue.cgColor]
        
        gradient.startPoint = CGPoint(x: 0.0, y: 0.0)
        gradient.endPoint = CGPoint(x: 1.0, y: 1.0)
        gradient.masksToBounds = true
        gradient.cornerRadius = 15
        squareView.layer.addSublayer(gradient)
    }
    
    private func setupShadow() {
        squareView.layer.shadowColor = UIColor.black.cgColor
        squareView.layer.shadowOpacity = 0.75
        squareView.layer.shadowRadius = 15
        squareView.layer.shadowOffset = .zero
        squareView.layer.shouldRasterize = true
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        gradient.frame = squareView.bounds
    }
}
