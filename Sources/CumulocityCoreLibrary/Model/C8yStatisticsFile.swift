//
// C8yStatisticsFile.swift
// CumulocityCoreLibrary
//
// Copyright (c) 2014-2022 Software AG, Darmstadt, Germany and/or Software AG USA Inc., Reston, VA, USA, and/or its subsidiaries and/or its affiliates and/or their licensors.
// Use, reproduction, transfer, publication or disclosure is prohibited except as specifically provided for in your License Agreement with Software AG.
//

import Foundation

/// Statistics file metadata.
public struct C8yStatisticsFile: Codable {

	/// Unique identifier of the file.
	public var id: String?

	/// Domain name where the statistics file come from.
	public var instanceName: String?

	/// File generation date.
	public var generationDate: String?

	/// Start date or date and time of the statistics attached in the file.
	public var dateFrom: String?

	/// End date or date and time of the statistics attached in the file.
	public var dateTo: String?

	/// The type of statistics:
	/// * REAL - generated by the system on the first day of the month and including statistics from the previous month.
	/// * TEST - generated by the user with a time range specified in the query parameters (`dateFrom`, `dateTo`).
	/// 
	public var type: C8yType?

	enum CodingKeys: String, CodingKey {
		case id
		case instanceName
		case generationDate
		case dateFrom
		case dateTo
		case type
	}

	public init() {
	}

	/// The type of statistics:
	/// * REAL - generated by the system on the first day of the month and including statistics from the previous month.
	/// * TEST - generated by the user with a time range specified in the query parameters (`dateFrom`, `dateTo`).
	/// 
	public enum C8yType: String, Codable {
		case real = "REAL"
		case test = "TEST"
	}

}
