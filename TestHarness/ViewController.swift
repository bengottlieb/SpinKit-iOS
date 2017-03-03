//
//  ViewController.swift
//  TestHarness
//
//  Created by Ben Gottlieb on 11/15/15.
//  Copyright © 2015 Stand Alone, Inc. All rights reserved.
//

import UIKit
import SpinKit

class TestViewController: UIViewController {
	override func viewDidLayoutSubviews() {
		super.viewDidLayoutSubviews()
		self.view.backgroundColor = .white
		
		var left: CGFloat = 0
		var top: CGFloat = 20
		let width: CGFloat = 90
		let height: CGFloat = 90
		
		for type in SpinView.Kind.all {
			let frame = CGRect(x: left, y: top, width: width, height: height)
			let spinner = SpinView(frame: frame, kind: type)
			self.view.addSubview(spinner)
			left += width
			
			if (left + width) > self.view.bounds.width {
				left = 0
				top += height
			}
		}
		
	}
}
