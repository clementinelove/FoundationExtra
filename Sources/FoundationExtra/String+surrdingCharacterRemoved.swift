//
//  File.swift
//  
//
//  Created by Yuhao Zhang on 2023-05-02.
//

import Foundation

extension String {
    public func surroundingCharacterRemoved(_ character: Character) -> String {
        if self.hasPrefix(String(character)) && self.hasSuffix(String(character)) {
            let newStartIndex = self.index(after: self.startIndex)
            let newEndIndex = self.index(before: self.endIndex)
            return String(self[newStartIndex..<newEndIndex])
        } else {
            return self
        }
    }
}
