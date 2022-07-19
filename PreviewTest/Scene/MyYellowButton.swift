//
//  MyYellowButton.swift
//  PreviewTest
//
//  Created by iMac on 2022/07/19.
//

import UIKit

final class MyYellowButton: UIButton {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setupView() {
        backgroundColor = .yellow
        setTitleColor(.black, for: .normal)
    }
}


#if canImport(SwiftUI) && DEBUG
import SwiftUI

struct MyYellowButtonPreview: PreviewProvider{
    static var previews: some View {
        MyYellowButton().showPreview()
    }
}
#endif
