//
//  AnswerTableViewCellDelegate.swift
//  MonitorizareVot
//
//  Created by Andrei Nastasiu on 11/19/16.
//  Copyright © 2016 Code4Ro. All rights reserved.
//

import Foundation

protocol AnswerTableViewCellDelegate: class {
    func didTapOnButton(answer: MVAnswer)
    func didChangeText(answer: MVAnswer, text: String)
}
