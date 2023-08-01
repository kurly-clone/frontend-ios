//
//  TabBarController.swift
//  kurlyClone
//
//  Created by 예은 on 2023/07/26.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        customizeTabBar()
    }
    
	private func customizeTabBar() {
		// Tab Bar color setting
		self.tabBar.backgroundColor = .white
		self.tabBar.tintColor = .mainPurple
		self.tabBar.unselectedItemTintColor = .primary
		
		// Tab Bar Size Setting
		self.tabBar.frame.size.height = 84
		let tabIconSize = CGSize(width: 25, height: 25)
		
		// tabBar Icon
		if let tabBarItems = tabBar.items{
			tabBarItems[0].image = UIImage(named: "home")?.resize(to: tabIconSize)
			tabBarItems[0].selectedImage = UIImage(named: "home.fill")?.resize(to: tabIconSize)
			
			tabBarItems[1].image = UIImage(named: "hash")?.resize(to: tabIconSize)
			
			tabBarItems[2].image = UIImage(named: "menu")?.resize(to: tabIconSize)
			
			tabBarItems[3].image = UIImage(named: "search")?.resize(to: tabIconSize)
			
			tabBarItems[4].image = UIImage(named: "person")?.resize(to: tabIconSize)
			tabBarItems[4].selectedImage = UIImage(named: "person.fill")?.resize(to: tabIconSize)
		}
		
	}
	
	// divider 추가
	override func viewWillLayoutSubviews() {
		super.viewWillLayoutSubviews()
		
		let divider = CALayer()
		divider.borderWidth = CGFloat(0.5)
		divider.borderColor = UIColor.lightGray.cgColor
		divider.frame = CGRect(x: 0, y: -1, width: self.tabBar.frame.width, height: 0.5)
		
		self.tabBar.layer.addSublayer(divider)
	}

}
