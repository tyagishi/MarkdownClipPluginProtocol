//
//  MarkdownClipPluginProtocol.swift
//  MarkdownClipPluginProtocol
//
//  Created by Tomoaki Yagishita on 2025/03/09.
//

import Foundation

public protocol MarkdownClipGeneralProtocol {
    init()
    var name: String { get }
}

public protocol MarkdownClipTextPlugin: MarkdownClipGeneralProtocol {
    func editText(text: String, at: String.Index) -> (newText: String, replace: Range<String.Index>, cursorAt: String.Index?)
}
