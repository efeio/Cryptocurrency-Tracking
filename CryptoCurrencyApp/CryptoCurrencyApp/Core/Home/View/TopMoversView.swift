//
//  TopMoversView.swift
//  CryptoCurrencyApp
//
//  Created by Efe Koç on 22.06.2023.
//

import SwiftUI

struct TopMoversView: View {
    @StateObject var viewModel: HomeViewModel
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Top Movers")
                .font(.headline)
            
            
            ScrollView(.horizontal) {
                HStack(spacing: 16) {
                    ForEach(viewModel.topMovingCoins) {coin in
                        TopMoversItemView(coin: coin)
                    }
                }
            }
        }.padding()
    }
}

/*
struct TopMoversView_Previews: PreviewProvider {
    static var previews: some View {
        TopMoversView()
    }
}
*/
