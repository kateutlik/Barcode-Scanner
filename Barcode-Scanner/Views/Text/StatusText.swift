//
//  StatusText.swift
//  Barcode-Scanner
//
//  Created by Katerina Utlik on 4/6/21.
//

import SwiftUI

struct StatusText: View {
    var text: String
    var textColor: Color

    var body: some View {
        Text(text)
            .bold()
            .font(.largeTitle)
            .foregroundColor(textColor)
    }
}

struct StatusText_Previews: PreviewProvider {
    static var previews: some View {
        StatusText(text: "Status Text Example", textColor: .green)
    }
}
