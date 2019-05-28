//
//	RootClass.swift
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation

// MARK: - Welcome
struct Currency: Codable {
    let base: String
    let rates: [String: Double]
    let date: String
}

