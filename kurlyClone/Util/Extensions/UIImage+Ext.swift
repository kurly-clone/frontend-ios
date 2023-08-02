//
//  UIImage+Ext.swift
//  kurlyClone
//
//  Created by 예은 on 2023/08/02.
//

import UIKit

extension UIImage {
	// image resizing helper method
	func resize(to size: CGSize) -> UIImage? {
		UIGraphicsBeginImageContextWithOptions(size, false, 0.0)
		draw(in: CGRect(origin: .zero, size: size))
		let resizedImage = UIGraphicsGetImageFromCurrentImageContext()
		UIGraphicsEndImageContext()
		return resizedImage
	}
}
