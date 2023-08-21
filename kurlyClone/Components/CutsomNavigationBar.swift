//
//  CutsomNavigationBar.swift
//  kurlyClone
//
//  Created by 예은 on 2023/08/22.
//

import UIKit

class CustomNavigationBar: UIView {
	// UI Elements
	let logo: UIImageView = {
		let imageView = UIImageView()
		imageView.image = UIImage(named: "kurly.icon")?.withRenderingMode(.alwaysTemplate)
		imageView.tintColor = .white
		imageView.contentMode = .scaleAspectFit
		return imageView
	}()
	
	let locationButton: UIButton = {
		let button = UIButton()
		let icon = UIImage(named: "location")?.withRenderingMode(.alwaysTemplate)
		button.setImage(icon, for: .normal)
		button.contentMode = .scaleAspectFit
		button.tintColor = .white
		return button
	}()

	let cartButton: UIButton = {
		let button = UIButton()
		let icon = UIImage(named: "cart")?.withRenderingMode(.alwaysTemplate)
		button.setImage(icon, for: .normal)
		button.contentMode = .scaleAspectFit
		button.tintColor = .white
		return button
	}()

	// Initialization
	override init(frame: CGRect) {
		super.init(frame: frame)
		setupUI()
	}
	
	required init?(coder: NSCoder) {
		super.init(coder: coder)
		setupUI()
	}
	
	// Layout and Constraints
	private func setupUI() {
		backgroundColor = .mainPurple
		
		addSubview(logo)
		addSubview(locationButton)
		addSubview(cartButton)
		
		logo.translatesAutoresizingMaskIntoConstraints = false
		locationButton.translatesAutoresizingMaskIntoConstraints = false
		cartButton.translatesAutoresizingMaskIntoConstraints = false
		
		NSLayoutConstraint.activate([
			logo.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 19),
			logo.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -7),
			logo.heightAnchor.constraint(equalToConstant: 30),
			logo.widthAnchor.constraint(equalToConstant: 60),
		
			locationButton.trailingAnchor.constraint(equalTo: cartButton.leadingAnchor, constant: -17),
			locationButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10),
			locationButton.heightAnchor.constraint(equalToConstant: 25),
			locationButton.widthAnchor.constraint(equalToConstant: 20),
			
			cartButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -19),
			cartButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10),
			cartButton.heightAnchor.constraint(equalToConstant: 25),
			cartButton.widthAnchor.constraint(equalToConstant: 25)
		
		])
		
	
	}
}
