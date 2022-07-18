//
//  ViewController.swift
//  PreviewTest
//
//  Created by iMac on 2022/07/19.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
    }
}

#if canImport(SwiftUI) && DEBUG
import SwiftUI

struct ViewContoller_Preview: PreviewProvider {
    static var previews: some View {
        ViewController().showPreview(.iPhone12Pro)
    }
}

#endif

