//
// C8yLatestMeasurements.swift
// CumulocityCoreLibrary
//
// Copyright (c) 2014-2023 Software AG, Darmstadt, Germany and/or Software AG USA Inc., Reston, VA, USA, and/or its subsidiaries and/or its affiliates and/or their licensors.
// Use, reproduction, transfer, publication or disclosure is prohibited except as specifically provided for in your License Agreement with Software AG.
//

import Foundation

/// The read only fragment which contains the latest measurements reported by the device.The returned optionally only if the query parameter `withLatestValues=true` is used.
/// 
/// > **������ Feature Preview:** The feature is part of the Latest Measurement feature which is still under public feature preview.
public struct C8yLatestMeasurements: Codable {

	public var additionalProperties: [String: C8yLatestMeasurementFragment] = [:]
	
	public subscript(key: String) -> C8yLatestMeasurementFragment? {
	        get {
	            return additionalProperties[key]
	        }
	        set(newValue) {
	            additionalProperties[key] = newValue
	        }
	    }

	enum CodingKeys: String, CodingKey {
		case additionalProperties
	}

	public init() {
	}
}
