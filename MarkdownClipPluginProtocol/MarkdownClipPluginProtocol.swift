//
//  MarkdownClipPluginProtocol.swift
//  MarkdownClipPluginProtocol
//
//  Created by Tomoaki Yagishita on 2025/03/09.
//

import Foundation

public protocol MarkdownClipGeneralProtocol {
    init()
}


public protocol MarkdownClipTextPlugin: MarkdownClipGeneralProtocol {
    var name: String { get }
    func editText(text: String, at: String.Index) -> String
}
