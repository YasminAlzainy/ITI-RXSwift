//
//	Rate.swift
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation

struct Rate : Codable {

	let aUD : Float?
	let bGN : Float?
	let bRL : Float?
	let cAD : Float?
	let cHF : Float?
	let cNY : Float?
	let cZK : Float?
	let dKK : Float?
	let gBP : Float?
	let hKD : Float?
	let hRK : Float?
	let hUF : Float?
	let iDR : Float?
	let iLS : Float?
	let iNR : Float?
	let iSK : Float?
	let jPY : Float?
	let kRW : Float?
	let mXN : Float?
	let mYR : Float?
	let nOK : Float?
	let nZD : Float?
	let pHP : Float?
	let pLN : Float?
	let rON : Float?
	let rUB : Float?
	let sEK : Float?
	let sGD : Float?
	let tHB : Float?
	let tRYField : Float?
	let uSD : Float?
	let zAR : Float?


	enum CodingKeys: String, CodingKey {
		case aUD = "AUD"
		case bGN = "BGN"
		case bRL = "BRL"
		case cAD = "CAD"
		case cHF = "CHF"
		case cNY = "CNY"
		case cZK = "CZK"
		case dKK = "DKK"
		case gBP = "GBP"
		case hKD = "HKD"
		case hRK = "HRK"
		case hUF = "HUF"
		case iDR = "IDR"
		case iLS = "ILS"
		case iNR = "INR"
		case iSK = "ISK"
		case jPY = "JPY"
		case kRW = "KRW"
		case mXN = "MXN"
		case mYR = "MYR"
		case nOK = "NOK"
		case nZD = "NZD"
		case pHP = "PHP"
		case pLN = "PLN"
		case rON = "RON"
		case rUB = "RUB"
		case sEK = "SEK"
		case sGD = "SGD"
		case tHB = "THB"
		case tRYField = "TRY"
		case uSD = "USD"
		case zAR = "ZAR"
	}
	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		aUD = try values.decodeIfPresent(Float.self, forKey: .aUD)
		bGN = try values.decodeIfPresent(Float.self, forKey: .bGN)
		bRL = try values.decodeIfPresent(Float.self, forKey: .bRL)
		cAD = try values.decodeIfPresent(Float.self, forKey: .cAD)
		cHF = try values.decodeIfPresent(Float.self, forKey: .cHF)
		cNY = try values.decodeIfPresent(Float.self, forKey: .cNY)
		cZK = try values.decodeIfPresent(Float.self, forKey: .cZK)
		dKK = try values.decodeIfPresent(Float.self, forKey: .dKK)
		gBP = try values.decodeIfPresent(Float.self, forKey: .gBP)
		hKD = try values.decodeIfPresent(Float.self, forKey: .hKD)
		hRK = try values.decodeIfPresent(Float.self, forKey: .hRK)
		hUF = try values.decodeIfPresent(Float.self, forKey: .hUF)
		iDR = try values.decodeIfPresent(Float.self, forKey: .iDR)
		iLS = try values.decodeIfPresent(Float.self, forKey: .iLS)
		iNR = try values.decodeIfPresent(Float.self, forKey: .iNR)
		iSK = try values.decodeIfPresent(Float.self, forKey: .iSK)
		jPY = try values.decodeIfPresent(Float.self, forKey: .jPY)
		kRW = try values.decodeIfPresent(Float.self, forKey: .kRW)
		mXN = try values.decodeIfPresent(Float.self, forKey: .mXN)
		mYR = try values.decodeIfPresent(Float.self, forKey: .mYR)
		nOK = try values.decodeIfPresent(Float.self, forKey: .nOK)
		nZD = try values.decodeIfPresent(Float.self, forKey: .nZD)
		pHP = try values.decodeIfPresent(Float.self, forKey: .pHP)
		pLN = try values.decodeIfPresent(Float.self, forKey: .pLN)
		rON = try values.decodeIfPresent(Float.self, forKey: .rON)
		rUB = try values.decodeIfPresent(Float.self, forKey: .rUB)
		sEK = try values.decodeIfPresent(Float.self, forKey: .sEK)
		sGD = try values.decodeIfPresent(Float.self, forKey: .sGD)
		tHB = try values.decodeIfPresent(Float.self, forKey: .tHB)
		tRYField = try values.decodeIfPresent(Float.self, forKey: .tRYField)
		uSD = try values.decodeIfPresent(Float.self, forKey: .uSD)
		zAR = try values.decodeIfPresent(Float.self, forKey: .zAR)
	}


}