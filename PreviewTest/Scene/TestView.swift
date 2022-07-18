//
//  TestView.swift
//  PreviewTest
//
//  Created by iMac on 2022/07/19.
//

import UIKit

final class TestView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .blue
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

#if DEBUG
import SwiftUI

struct ServiceUnavailableViewPreview: PreviewProvider {
    static var previews: some View {
        return TestView().showPreview()
    }
}

#endif
