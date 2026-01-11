//
//  Extensions.swift
//  ExpenseTracker
//
//  Created by Edson Gabriel Monteiro Jordão on 10/01/26.
//

import Foundation
import SwiftUI

extension Color {
    static let backgroundColor: Color = Color("Background")
    static let iconColor: Color = Color("Icon")
    static let textColor: Color = Color("Text")
    static let systemBackground = Color(uiColor: .systemBackground)
}

extension DateFormatter{
    static let allNumericUSA: DateFormatter = {
       print("Initializing DataFormatter")
        let formatter = DateFormatter()
        formatter.dateFormat = "dd/MM/yyyy" // TODO: change to brasilian patter
        
    return formatter
    }()
}


extension String {
    func dateParsed( ) -> Date {
        guard let parsedDate = DateFormatter.allNumericUSA.date(from: self) else {
            return Date()
        }
        return parsedDate
    }
}
