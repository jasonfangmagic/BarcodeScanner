//
//  ContentView.swift
//  BarcodeScanner
//
//  Created by Jason Fang on 6/11/24.
//

import SwiftUI

struct BarcodeScannerView: View {
    var body: some View {
        NavigationView{
            VStack{
                Rectangle()
                    .frame(maxWidth: .infinity, maxHeight: 300)
                
                Spacer().frame(height: 50)
                
                Label("Scanned Barcode:", systemImage: "barcode.viewfinder")
                    .font(.title)
                
                Text("Not yet scanned")
                    .bold()
                    .font(.largeTitle)
                    .foregroundColor(.green)
                    .padding()
            }
            .navigationTitle("Barcode Scanner")
        }
    }
}

#Preview {
    BarcodeScannerView()
}
