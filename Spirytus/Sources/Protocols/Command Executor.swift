//
//  Command Executor.swift
//  Spirytus
//
//  Created by David Bureš - P on 08.08.2025.
//

import Foundation

/// Protocol responsible for enforcing the presence of command-related logic
public protocol CommandExecutor
{
    /// Pin formula to a specific version
    func pinFormula(named: String) throws -> Void
    
    /// Unpin formula from a specific version
    func unpinFormula(named: String) throws -> Void
}
