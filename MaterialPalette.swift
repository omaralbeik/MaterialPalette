//
//  MaterialPalette.swift
//
//  Created by Omar Albeik on 31/10/15.
//  Copyright © 2015 Omar Albeik. All rights reserved.
//

import UIKit

extension UIColor {
	convenience init(red: Int, green: Int, blue: Int) {
		assert(red >= 0 && red <= 255, "Invalid red component")
		assert(green >= 0 && green <= 255, "Invalid green component")
		assert(blue >= 0 && blue <= 255, "Invalid blue component")
		
		self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1.0)
	}
	
	convenience init(red: Int, green: Int, blue: Int, transparency: CGFloat) {
		assert(red >= 0 && red <= 255, "Invalid red component")
		assert(green >= 0 && green <= 255, "Invalid green component")
		assert(blue >= 0 && blue <= 255, "Invalid blue component")
		
		self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: transparency)
	}
	
	convenience init(netHex:Int) {
		self.init(red:(netHex >> 16) & 0xff, green:(netHex >> 8) & 0xff, blue:netHex & 0xff)
	}
	
	convenience init(netHex:Int, transparency: CGFloat) {
		self.init(red:(netHex >> 16) & 0xff, green:(netHex >> 8) & 0xff, blue:netHex & 0xff, transparency: transparency)
	}
	
}

struct MaterialPalette {
	static let red = UIColor(netHex: 0xF6402C)
	static let pink = UIColor(netHex: 0xEB1460)
	static let purple = UIColor(netHex: 0x9D1AB1)
	static let purpleDeep = UIColor(netHex: 0x6633B9)
	static let indigo = UIColor(netHex: 0x6633B9)
	static let blue = UIColor(netHex: 0x0F93F5)
	static let blue_light = UIColor(netHex: 0x00A6F6)
	static let cyan = UIColor(netHex: 0x00BBD5)
	static let teal = UIColor(netHex: 0x009687)
	static let green = UIColor(netHex: 0x46AF4A)
	static let green_light = UIColor(netHex: 0x88C440)
	static let lime = UIColor(netHex: 0xCCDD1E)
	static let yellow = UIColor(netHex: 0xFFEC16)
	static let amber = UIColor(netHex: 0xFFC100)
	static let orange = UIColor(netHex: 0xFF9800)
	static let orange_deep = UIColor(netHex: 0xFD5405)
	static let brown = UIColor(netHex: 0x795446)
	static let grey = UIColor(netHex: 0x9D9D9D)
	static let blue_grey = UIColor(netHex: 0x5E7C8B)
	static let grey_deep = UIColor(netHex: 0x363F45)
}