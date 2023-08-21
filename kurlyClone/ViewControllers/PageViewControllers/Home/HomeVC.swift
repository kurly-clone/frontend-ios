//
//  HomeVC.swift
//  kurlyClone
//
//  Created by 예은 on 2023/07/26.
//

import UIKit
import Pageboy
import Tabman

class HomeVC: TabmanViewController {
	
	private var viewControllers: Array<UIViewController> = []
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		// add viewControllers
		let storyboard = self.storyboard
		
		let kurlyRcmdVC = storyboard?.instantiateViewController(withIdentifier: "KurlyRecommendationVC") as! KurlyRecommendationVC
		let newProductVC = storyboard?.instantiateViewController(withIdentifier: "NewProductVC") as! NewProductVC
		let bestVC = storyboard?.instantiateViewController(withIdentifier: "BestVC") as! BestVC
		let salesVC = storyboard?.instantiateViewController(withIdentifier: "SalesVC") as! SalesVC
		let specialPriceVC = storyboard?.instantiateViewController(withIdentifier: "SpecialPriceVC") as! SpecialPriceVC
		
		viewControllers.append(kurlyRcmdVC)
		viewControllers.append(newProductVC)
		viewControllers.append(bestVC)
		viewControllers.append(salesVC)
		viewControllers.append(specialPriceVC)
		
		self.dataSource = self
		
		// create customized bar
		let bar = setBar()
		
		// Add to view
		addBar(bar, dataSource: self, at: .top)
		
		// Custom NavigationBar 추가
		let customNavigationBar = CustomNavigationBar()
		
		view.addSubview(customNavigationBar)
		
		customNavigationBar.translatesAutoresizingMaskIntoConstraints = false
		NSLayoutConstraint.activate([
			customNavigationBar.topAnchor.constraint(equalTo: view.topAnchor),
			customNavigationBar.leadingAnchor.constraint(equalTo: view.leadingAnchor),
			customNavigationBar.trailingAnchor.constraint(equalTo: view.trailingAnchor),
			customNavigationBar.bottomAnchor.constraint(equalTo: bar.topAnchor)
		])
	}
	
	func setBar() -> TMBar.ButtonBar {
		let bar = TMBar.ButtonBar()
		
		// tabbar layout
		bar.layout.transitionStyle = .snap
		bar.layout.alignment = .centerDistributed
		bar.layout.contentMode = .intrinsic
		bar.backgroundColor = .white
		bar.layout.interButtonSpacing = 26 // 버튼 사이 간격
		bar.layout.contentInset = UIEdgeInsets(top: 3, left: 0, bottom: 0, right: 0) // 전체 layout 간격
		
		// customize button item
		bar.buttons.customize { (button) in
			button.tintColor = .secondary
			button.selectedTintColor = .mainPurple
			button.font = UIFont.systemFont(ofSize: 15)
		}
		
		// customize indicator
		bar.indicator.weight = .custom(value: 3)
		bar.indicator.overscrollBehavior = .bounce
		bar.indicator.tintColor = .mainPurple
		
		return bar
	}


}

extension HomeVC: PageboyViewControllerDataSource, TMBarDataSource {
	func numberOfViewControllers(in pageboyViewController: Pageboy.PageboyViewController) -> Int {
		return viewControllers.count
	}
	
	func viewController(for pageboyViewController: Pageboy.PageboyViewController, at index: Pageboy.PageboyViewController.PageIndex) -> UIViewController? {
		return viewControllers[index]
	}
	
	func defaultPage(for pageboyViewController: Pageboy.PageboyViewController) -> Pageboy.PageboyViewController.Page? {
		return nil
	}
	
	func barItem(for bar: Tabman.TMBar, at index: Int) -> Tabman.TMBarItemable {
		let titles = ["컬리추천", "신상품", "베스트", "알뜰쇼핑", "특가/혜택"]
		return TMBarItem(title: titles[index])
	}
	
	
}
