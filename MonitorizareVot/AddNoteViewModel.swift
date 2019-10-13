//
//  AddNoteViewModel.swift
//  MonitorizareVot
//
//  Created by Calin Cristian on 13/10/2019.
//  Copyright © 2019 Code4Ro. All rights reserved.
//

import Foundation

class AddNoteViewModel: NSObject {
    var sectionName: String = ""
    
    init(withSectionInfo sectionInfo: MVSectionInfo) {
        self.sectionName = sectionInfo.judet! + " " + String(sectionInfo.sectie!)
        super.init()
    }
}
