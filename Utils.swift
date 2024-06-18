//
//  Utils.swift
//  LearningApp
//
//  Created by Abdullah Kardaş on 18.06.2024.
//

import Foundation
import UIKit

let versionNumber = (Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString")  ?? "1.0" ) as! String
let buildNumber = (Bundle.main.object(forInfoDictionaryKey: "CFBundleVersion")  ?? "1" ) as! String
let deviceIdentifier = UIDevice.current.identifierForVendor!.uuidString







