//
// C8yAuthConfigAccess.swift
// CumulocityCoreLibrary
//
// Copyright (c) 2014-2023 Software AG, Darmstadt, Germany and/or Software AG USA Inc., Reston, VA, USA, and/or its subsidiaries and/or its affiliates and/or their licensors.
// Use, reproduction, transfer, publication or disclosure is prohibited except as specifically provided for in your License Agreement with Software AG.
//

import Foundation

public struct C8yAuthConfigAccess: Codable {

	/// Indicates whether the configuration is only accessible to the management tenant.
	public var onlyManagementTenantAccess: Bool?

	enum CodingKeys: String, CodingKey {
		case onlyManagementTenantAccess
	}

	public init() {
	}
}
