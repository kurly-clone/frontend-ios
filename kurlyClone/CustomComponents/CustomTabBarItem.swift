//
//  CustomTabBarItem.swift
//  kurlyClone
//
//  Created by 예은 on 2023/08/02.
//

import UIKit

class CustomTabBarItem: UITabBarItem {
	
	// Customize the initialization method to set the image and insets
	convenience init(title: String? = nil, image: UIImage?, selectedImage: UIImage?, imageSize: CGSize, insets: UIEdgeInsets){
		let resizedImage = image?.resize(to: imageSize)
		let resizedSelectedImage = selectedImage?.resize(to: imageSize)
		self.init(title: title, image: resizedImage, selectedImage: resizedSelectedImage)
		self.imageInsets = insets
	}
}
