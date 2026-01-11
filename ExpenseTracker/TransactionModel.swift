//
//  TrasactionModel.swift
//  ExpenseTracker
//
//  Created by Edson Gabriel Monteiro Jordão on 11/01/26.
//

import Foundation

struct Transaction: Identifiable {
    let id: Int
    let date: String
    let institution: String
    let account: String
    let merchant: String
    let amount: Double
    let type: TransactionType.RawValue
    let categoryId: Int
    let category: String
    let isPending: Bool
    let isTrasaction: Bool
    let isExpense: Bool
    let isEdited: Bool
    
    var dateParsed: Date{
        date.dateParsed()
    }
    
    var signedAmount: Double {
        return type == TransactionType.credit.rawValue ? amount : -amount
    }
}

enum TransactionType: String {
    case debit = "debit"
    case credit = "credit"
}

