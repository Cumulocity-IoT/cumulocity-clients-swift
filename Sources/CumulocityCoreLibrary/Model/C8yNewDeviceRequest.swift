//
// C8yNewDeviceRequest.swift
// CumulocityCoreLibrary
//
// Copyright (c) 2014-2022 Software AG, Darmstadt, Germany and/or Software AG USA Inc., Reston, VA, USA, and/or its subsidiaries and/or its affiliates and/or their licensors.
// Use, reproduction, transfer, publication or disclosure is prohibited except as specifically provided for in your License Agreement with Software AG.
//

import Foundation

public struct C8yNewDeviceRequest: Codable {

	/// External ID of the device.
	public var id: String?

	/// A URL linking to this resource.
	public var `self`: String?

	/// Status of this new device request.
	public var status: C8yStatus?

	enum CodingKeys: String, CodingKey {
		case id
		case `self` = "self"
		case status
	}

	public init() {
	}

	/// Status of this new device request.
	public enum C8yStatus: String, Codable {
		case waitingforconnection = "WAITING_FOR_CONNECTION"
		case pendingacceptance = "PENDING_ACCEPTANCE"
		case accepted = "ACCEPTED"
	}

}
