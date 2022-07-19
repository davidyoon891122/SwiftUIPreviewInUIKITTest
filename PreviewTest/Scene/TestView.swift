//
//  TestView.swift
//  PreviewTest
//
//  Created by iMac on 2022/07/19.
//

import UIKit
import SnapKit

final class TestView: UIView {
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Title"
        label.textAlignment = .center
        label.textColor = .label
        return label
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .red
        setupViews()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

private extension TestView {
    func setupViews() {
        [
            titleLabel
        ]
            .forEach {
                addSubview($0)
            }

        titleLabel.snp.makeConstraints {
            $0.top.equalToSuperview()
            $0.leading.equalToSuperview()
            $0.trailing.equalToSuperview()
            $0.bottom.equalToSuperview()
        }
    }
}

#if DEBUG
import SwiftUI

struct ServiceUnavailableViewPreview: PreviewProvider {
    static var previews: some View {
        return TestView().showPreview()
            .previewLayout(.sizeThatFits)
    }
}

#endif
