//
//  MarkdownClipPluginProtocol.swift
//  MarkdownClipPluginProtocol
//
//  Created by Tomoaki Yagishita on 2025/03/09.
//

import Foundation
import SwiftUI
import SDSMarkdownEditView

public protocol MarkdownClipGeneralProtocol {
    init()
    var name: String { get }
}

public protocol MarkdownClipTextPlugin: MarkdownClipGeneralProtocol {
    func editText(text: String, at: String.Index) -> (newText: String, replace: Range<String.Index>, cursorAt: String.Index?)
}

public protocol MarkdownClipGUIPlugin: MarkdownClipGeneralProtocol {
    var textViewModel: MarkdownTextViewModel? { get set }

    @MainActor
    @ViewBuilder
    func sheet() -> AnyView
}
