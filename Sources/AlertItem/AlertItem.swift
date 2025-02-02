// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation
import SwiftUI

public struct AlertItem: Identifiable {
  public let id = UUID()
  public let title: Text
  public let message: Text
  public let dismissButton: Alert.Button
}

public struct AlertContext {
  static nonisolated(unsafe) public let invalidData = AlertItem(
    title: Text("Server Error"),
    message: Text("The data received from the server was invalid. Please contact support."),
    dismissButton: .default(Text("OK"))
  )
  
  static nonisolated(unsafe) public  let invalidResponse = AlertItem(
    title: Text("Server Error"),
    message: Text("Invalid response from the server. Please try again later or contact support."),
    dismissButton: .default(Text("OK"))
  )
  
  static nonisolated(unsafe) public let invalidUrl = AlertItem(
    title: Text("Server Error"),
    message: Text("There was an issue connection to the server. If the presists, please contact support."),
    dismissButton: .default(Text("OK"))
  )
  
  static nonisolated(unsafe) public let unableToComplete = AlertItem(
    title: Text("Server Error"),
    message: Text("Unable to complete your request at this time. Please check your internet connection."),
    dismissButton: .default(Text("OK"))
  )
  
  static nonisolated(unsafe) public let systemError = AlertItem(
    title: Text("System Error"),
    message: Text("An unexpected error occurred. Please contact support."),
    dismissButton: .default(Text("OK"))
  )
}
