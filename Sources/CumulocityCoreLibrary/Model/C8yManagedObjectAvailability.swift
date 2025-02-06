//
// C8yManagedObjectAvailability.swift
// CumulocityCoreLibrary
//
// Copyright (c) 2014-2023 Software AG, Darmstadt, Germany and/or Software AG USA Inc., Reston, VA, USA, and/or its subsidiaries and/or its affiliates and/or their licensors.
// Use, reproduction, transfer, publication or disclosure is prohibited except as specifically provided for in your License Agreement with Software AG.
//

import Foundation

public struct C8yManagedObjectAvailability: Codable {

	/// Identifier of the target device.
	public var deviceId: String?

	/// The identifier used in the external system that Cumulocity interfaces with.
	public var externalId: String?

	/// The time when the device sent the last message to Cumulocity.
	public var lastMessage: String?

	/// Required interval of monitored device
	public var interval: Int?

	/// The current status of availability, one of `AVAILABLE`, `UNAVAILABLE`, `MAINTENANCE`.
	public var dataStatus: C8yAvailabilityDataStatus?

	/// The current status of connection, one of `CONNECTED`, `DISCONNECTED`, `MAINTENANCE`.
	public var connectionStatus: C8yAvailabilityConnectionStatus?

	enum CodingKeys: String, CodingKey {
		case deviceId
		case externalId
		case lastMessage
		case interval
		case dataStatus
		case connectionStatus
	}

	public init() {
	}
}
