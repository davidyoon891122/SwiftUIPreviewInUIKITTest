//
//  TopCustomView.swift
//  renewal
//
//  Created by iMac on 2022/06/27.
//

import Foundation
import SnapKit
import UIKit

final class TopCustomView: UIView {
    private lazy var closeButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(systemName:"chevron.backward"), for: .normal)
        button.contentMode = .scaleToFill
        return button
    }()

    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black_0B0B0B
        label.font = .systemFont(ofSize: 18.0, weight: .regular)
        return label
    }()

    init(title: String) {
        super.init(frame: .zero)
        titleLabel.text = title
        setupViews()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}

private extension TopCustomView {
    func setupViews() {
        [
            closeButton,
            titleLabel
        ]
            .forEach {
                addSubview($0)
            }

        closeButton.snp.makeConstraints {
            $0.leading.equalToSuperview().offset(8.0)
            $0.centerY.equalToSuperview()
            $0.width.height.equalTo(40.0)
        }

        titleLabel.snp.makeConstraints {
            $0.leading.equalTo(closeButton.snp.trailing).offset(4.0)
            $0.trailing.equalToSuperview()
            $0.centerY.equalToSuperview()
        }
    }
}


#if DEBUG
import SwiftUI

struct TopCustomView_Preview: PreviewProvider {
    static var previews: some View {
        return TopCustomView(title: "테스트")
            .showPreview()
            .previewLayout(.sizeThatFits)
    }
}

#endif
