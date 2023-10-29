//
//  CircleButtonView.swift
//  CryptoApp
//
//  Created by Akhil on 29/10/23.
//

import SwiftUI

struct CircleButtonView: View {
    var body: some View {
        Image(systemName: "heart.fill")
            .font(.headline)
            .foregroundColor(Color.theme.accent)
            .frame(width: 50, height: 50)
            .background(
            
            
            )
    }
}

struct CircleButtonView_Previews: PreviewProvider {
    static var previews: some View {
        CircleButtonView()
            .padding()
            .previewLayout(.sizeThatFits)
    }
}
