//
//  Extension+UIView.swift
//  PreviewTest
//
//  Created by iMac on 2022/07/19.
//

import Foundation

#if canImport(SwiftUI) && DEBUG
import SwiftUI
extension UIView {
    private struct Preview: UIViewRepresentable {
        let view: UIView

        func makeUIView(context: Context) -> UIView {
            return view
        }

        func updateUIView(_ uiView: UIView, context: Context) {
        }
    }
    func showPreview() -> some View {
        Preview(view: self)
    }

}
#endif
