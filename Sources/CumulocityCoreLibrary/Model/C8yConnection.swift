//
// C8yConnection.swift
// CumulocityCoreLibrary
//
// Copyright (c) 2014-2023 Software AG, Darmstadt, Germany and/or Software AG USA Inc., Reston, VA, USA, and/or its subsidiaries and/or its affiliates and/or their licensors.
// Use, reproduction, transfer, publication or disclosure is prohibited except as specifically provided for in your License Agreement with Software AG.
//

import Foundation

/// The connection information computed by Cumulocity is stored in fragments `c8y_Connection` of the device.
public struct C8yConnection: Codable {

	/// The current status of connection, one of `CONNECTED`, `DISCONNECTED`, `MAINTENANCE`.
	public var status: C8yAvailabilityConnectionStatus?

	enum CodingKeys: String, CodingKey {
		case status
	}

	public init() {
	}
}
