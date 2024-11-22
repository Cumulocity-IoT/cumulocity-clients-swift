//
// C8yAvailabilityConnectionStatus.swift
// CumulocityCoreLibrary
//
// Copyright (c) 2014-2023 Software AG, Darmstadt, Germany and/or Software AG USA Inc., Reston, VA, USA, and/or its subsidiaries and/or its affiliates and/or their licensors.
// Use, reproduction, transfer, publication or disclosure is prohibited except as specifically provided for in your License Agreement with Software AG.
//

import Foundation

/// The current status of connection, one of `CONNECTED`, `DISCONNECTED`, `MAINTENANCE`.
public enum C8yAvailabilityConnectionStatus: String, Codable {
	case connected = "CONNECTED"
	case disconnected = "DISCONNECTED"
	case maintenance = "MAINTENANCE"
}
