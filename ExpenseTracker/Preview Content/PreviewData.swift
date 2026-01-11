//
//  PreviewData.swift
//  ExpenseTracker
//
//  Created by Edson Gabriel Monteiro Jordão on 11/01/26.
//

import Foundation


var transactionPreviewData = Transaction(id: 1, date: "01/01/2026", institution: "meuPet", account: "Visa Itau", merchant: "Apple", amount: 25.00, type: "debit", categoryId: 801, category: "PetHealth", isPending: false, isTrasaction: false, isExpense: true, isEdited: false)


var TransactionListPreviewData = [Transaction](repeating: transactionPreviewData, count: 10)
