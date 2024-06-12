//
//  ScannerView.swift
//  BarcideScanner
//
//  Created by Jason Fang on 6/12/24.
//

import SwiftUI

struct ScannerView: UIViewControllerRepresentable{
    
    @Binding var scannedCode: String
    @Binding var alertItem: AlertItem?
    
    func makeUIViewController(context: Context) -> ScannerVC {
        ScannerVC(scannerDelegate: context.coordinator)
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(scannerView: self)
    }
    
    func updateUIViewController(_ uiViewController: ScannerVC, context: Context) {}
    
        final class Coordinator: NSObject, ScannerVCDelegate{
            private let scannerView: ScannerView
            
            init(scannerView: ScannerView){
                self.scannerView = scannerView
            }
            
            func didFInd(barcode: String) {
                scannerView.scannedCode = barcode
            }
            
            func didSurface(error: CameraError) {
                switch error {
                case .invalidDeviceInput:
                    scannerView.alertItem = AlertContext.invalidDeviceInput
                case .invalidScannedValue:
                    scannerView.alertItem = AlertContext.invalidScannedType
                }
            }
        }
            
        
    
    
}
