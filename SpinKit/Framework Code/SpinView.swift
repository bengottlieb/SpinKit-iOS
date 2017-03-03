//
//  SpinView.swift
//  SpinKit
//
//  Created by Ben Gottlieb on 3/2/17.
//  Copyright © 2017 Stand Alone, Inc. All rights reserved.
//

import UIKit

public class SpinView: UIWebView {
	var kind: Kind = .chasingDots { didSet { self.updateHTML() }}
	
	public convenience init(frame: CGRect, kind: Kind) {
		self.init(frame: frame)
		self.kind = kind
		self.updateHTML()
	}
	
	func updateHTML() {
		guard let url = Bundle(for: type(of: self)).url(forResource: self.kind.filename, withExtension: "html", subdirectory: "HTML") else { return }
		
		self.loadRequest(URLRequest(url: url))
	}
		
	public enum Kind { case chasingDots, circle, cubeGrid, doubleBounce, fadingCircle, foldingCube, pulse, rotatingPlane, threeBounce, wanderingCubes, wave
		
		var filename: String {
			switch self {
			case .chasingDots: return "chasing-dots"
			case .circle: return "circle"
			case .cubeGrid: return "cube-grid"
			case .doubleBounce: return "double-bounce"
			case .fadingCircle: return "fading-circle"
			case .foldingCube: return "folding-cube"
			case .pulse: return "pulse"
			case .rotatingPlane: return "rotating-plane"
			case .threeBounce: return "three-bounce"
			case .wanderingCubes: return "wandering-cubes"
			case .wave: return "chasing-dots"
			}
		}
		
		public static let all: [Kind] = [.chasingDots, .circle, .cubeGrid, .doubleBounce, .fadingCircle, .foldingCube, .pulse, .rotatingPlane, .threeBounce, .wanderingCubes, .wave]
	}
}
