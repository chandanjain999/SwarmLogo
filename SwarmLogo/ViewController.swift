//
//  ViewController.swift
//  SwarmLogo
//
//  Created by Chandan Jain on 9/16/19.
//  Copyright © 2019 Chandan Jain. All rights reserved.
//

import UIKit
import QuickLook
import ARKit

class ViewController: UIViewController, QLPreviewControllerDataSource {

    override func viewDidAppear(_ animated: Bool) {
        let previewController = QLPreviewController()
        previewController.dataSource = self
        present(previewController, animated: true, completion: nil)
    }

    func numberOfPreviewItems(in controller: QLPreviewController) -> Int { return 1 }

    func previewController(_ controller: QLPreviewController, previewItemAt index: Int) -> QLPreviewItem {
        guard let path = Bundle.main.path(forResource: "SwarmLogo", ofType: "reality") else { fatalError("Couldn't find the supported input file.") }
        let url = URL(fileURLWithPath: path)
        return url as QLPreviewItem
    }
}
