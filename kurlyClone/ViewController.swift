//
//  ViewController.swift
//  kurlyClone
//
//  Created by 김예은 on 2023/07/25.
//

import UIKit

class ViewController: UIViewController {
	
	lazy var testImageView: UIImageView = {
		// Set the size of UIImageView
		let width: CGFloat = 100
		let height: CGFloat = 100
		
		// Set x, y of imageview
		let posX: CGFloat = (self.view.bounds.width - width)/2
		let posY: CGFloat = (self.view.bounds.height - height)/2
		
		// Create UIImageview
		let imageView = UIImageView(frame: CGRect(x: posX, y: posY, width: 100, height: 100))
		
		// Create UIImage
		let myImage = UIImage(named: "location.fill")!
		
		// Set the image to UIImageView.
		imageView.image = myImage
		
		return imageView
	}()

    override func viewDidLoad() {
        super.viewDidLoad()
        
		// Add Test UIImageView to view
		//self.view.addSubview(self.testImageView)
    }


}

