//
// C8yAvailability.swift
// CumulocityCoreLibrary
//
// Copyright (c) 2014-2023 Software AG, Darmstadt, Germany and/or Software AG USA Inc., Reston, VA, USA, and/or its subsidiaries and/or its affiliates and/or their licensors.
// Use, reproduction, transfer, publication or disclosure is prohibited except as specifically provided for in your License Agreement with Software AG.
//

import Foundation

/// The availability information computed by Cumulocity is stored in fragments `c8y_Availability` of the device.
public struct C8yAvailability: Codable {

	/// The current status of availability, one of `AVAILABLE`, `UNAVAILABLE`, `MAINTENANCE`.
	public var status: C8yAvailabilityDataStatus?

	/// The time when the device sent the last message to Cumulocity.
	public var lastMessage: String?

	enum CodingKeys: String, CodingKey {
		case status
		case lastMessage
	}

	public init() {
	}
}
