//
//  Library Constants.swift
//  Spirytus
//
//  Created by David Bureš - P on 08.08.2025.
//

import Foundation
import OSLog

/// Object containing global constants
public struct SpirytusConstants
{
    public static let shared: Self = .init()
    
    // MARK: - Logging
    public let logger: Logger = .init(subsystem: "eu.davidbures.spirytus", category: "Spirytus")
    
    // MARK: - Basic stuff
    public let brewExecutablePath: URL = .init(filePath: "/opt/homebrew/bin/brew")!
    
    public let brewCellarPath: URL = .init(filePath: "/opt/homebrew/Cellar")!
    
    public let brewCaskPath: URL = .init(filePath: "/opt/homebrew/Caskroom")!
    
    public let tapPath: URL = .init(filePath: "/opt/homebrew/Library/Taps")!
    
    public let homebrewVariablesPath: URL = .init(filePath: "/opt/homebrew/var/homebrew")
    
    // MARK: - Pinning
    /// Folder that contains symlinks pinned packages
    ///
    /// If no package is pinned, this folder doesn't exist. However, if this is not a computed property, we can only know whether this folder exists at app start. Therefore, we need this property to be re-computed every time to make sure that the folder exists when we want to read whether a particular package is pinned, and not just whether it existed when we started the app.
    public var pinnedPackagesPath: URL? {
        let expectedPathToPinnedPackagesFolder: URL = self.homebrewVariablesPath.appending(component: "pinned")
        
        if FileManager.default.fileExists(atPath: expectedPathToPinnedPackagesFolder.path)
        {
            self.logger.debug("Recomputed the presence of pinned packages database folder with result: EXISTS")
            return expectedPathToPinnedPackagesFolder
        }
        else
        {
            self.logger.debug("Recomputed the presence of pinned packages database folder with result: DOES NOT EXIST")
            return nil
        }
    }
}
