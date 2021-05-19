//
//  BarcodeScannerView.swift
//  Barcode-Scanner
//
//  Created by Katerina Utlik on 4/2/21.
//

import SwiftUI

struct BarcodeScannerView: View {
    @StateObject var viewModel = BarcodeScannerViewModel()

    var body: some View {
        NavigationView {
            VStack {
                ScannerView(scannedCode: $viewModel.scannedCode,
                            alertItem: $viewModel.alertItem)
                    .frame(maxHeight: 300)
                
                Spacer().frame(height: 60)

                Label ("Scanned Barcode:", systemImage: "barcode.viewfinder")
                    .font(.title2)
                    .padding(.bottom)

                StatusText(text: viewModel.statusText, textColor: viewModel.statusTextColor)
                
            }
            .navigationTitle("Barcode Scanner")
            .alert(item: $viewModel.alertItem) { alertItem in
                Alert(title: alertItem.title,
                      message: alertItem.message,
                      dismissButton: alertItem.dismissButton
                )
            }
        }
    }
}

struct BarcodeScannerView_Previews: PreviewProvider {
    static var previews: some View {
        BarcodeScannerView()
            .preferredColorScheme(.light)
    }
}
