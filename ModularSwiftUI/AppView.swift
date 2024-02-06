//
//  ContentView.swift
//  ModularSwiftUI
//
//  Created by Makcim Mikhailov on 06/02/2024.
//

import SwiftUI
import TransactionsFeature

struct AppView: View {
    var body: some View {
        NavigationStack {
            TransactionListView(viewModel: Container.transactionListViewModel)
        }
    }
}

#Preview {
    AppView()
}
