//
//  AddNoteViewController.swift
//  MonitorizareVot
//
//  Created by Calin Cristian on 13/10/2019.
//  Copyright © 2019 Code4Ro. All rights reserved.
//

import UIKit

class AddNoteViewController: UIViewController {
    
    var model: AddNoteViewModel
    
    fileprivate weak var headerViewController: SectionHUDViewController!
    @IBOutlet weak var headerContainer: UIView!
    
    //  MARK: - Init
    
    init(withModel model: AddNoteViewModel) {
        self.model = model
        super.init(nibName: "AddNoteViewController", bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configureHeader()
//        self.navigationController?.title = "Label_AddNote".localized
        self.navigationItem.set(title: "Label_AddNote".localized,
                                subtitle: model.sectionName)
    }
    
    //  MARK: - Configurations

    func configureHeader() {
        let headerModel = SectionHUDViewModel(withSectionName: model.sectionName)
        let controller = SectionHUDViewController(withModel: headerModel)
        controller.view.translatesAutoresizingMaskIntoConstraints = true
        controller.willMove(toParent: self)
        addChild(controller)
        controller.view.frame = headerContainer.bounds
        controller.view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        headerContainer.addSubview(controller.view)
        controller.didMove(toParent: self)
        headerViewController = controller
        controller.onChangeAction = { [weak self] in
            self?.handleChangeSectionButtonAction()
        }
    }
    
    @objc func keyboardIsHidden() {
//        bottomConstraint?.constant = 0
//        performKeyboardAnimation()
//        bodyTextView.resignFirstResponder()
    }

    // MARK: - Actions
    
    fileprivate func handleChangeSectionButtonAction() {
        // simply take the user back to the section selection screen
        self.navigationController?.popViewController(animated: true)
    }
}
