//
//  Alert.swift
//  BarcideScanner
//
//  Created by Jason Fang on 6/12/24.
//

import SwiftUI

struct AlertItem: Identifiable{
    let id = UUID()
    let title: String
    let message: String
    let dismissButton: Alert.Button
}

struct AlertContext {
    static let invalidDeviceInput = AlertItem(title: "Something is wrong", message: "", dismissButton: .default(Text("OK")))
    
    static let invalidScannedType = AlertItem(title: "Invalid Scan Type", message: "", dismissButton: .default(Text("OK")))
}
