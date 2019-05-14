//
//  ViewController.swift
//  DynamicTypeGallery
//
//  Created by Kuba Suder on 14.05.2019.
//  Copyright © 2019 Kuba Suder. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var stackView: UIStackView!

    override func viewDidLoad() {
        super.viewDidLoad()

        let fontStyles: [UIFont.TextStyle] = [
            .body,
            .callout,
            .caption1,
            .caption2,
            .footnote,
            .headline,
            .largeTitle,
            .subheadline,
            .title1,
            .title2,
            .title3
        ]

        for style in fontStyles {
            let font = UIFont.preferredFont(forTextStyle: style)
            let styleName = style.rawValue.replacingOccurrences(of: "UICTFontTextStyle", with: "")

            let label = UILabel()
            label.text = "\(styleName) (\(font.fontName) \(font.pointSize)pt)"
            label.font = font
            label.numberOfLines = 0

            stackView.addArrangedSubview(label)
        }
    }
}

