import Foundation
import TransactionsFeature
import UseCase
import Repositories
import DataProviders
import UseCaseProtocol

@MainActor
final class Container {
    static let transactionListViewModel = TransactionListScreenViewModel(getTransactionsUseCase: getTransactionUseCase, networkMonitor: networkMonitor)
    static let getTransactionUseCase = GetTransactionsUseCase(repository: transactionRepository)
    static let transactionRepository = TransactionRepository(transactionProvider: fileTransactionProvider)
    static let networkMonitor = NetworkMonitor()
    // Switch to ApiProvider when enpoint is ready
    static let fileTransactionProvider = FileTransactionsProvider()
}
