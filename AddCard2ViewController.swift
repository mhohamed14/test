//
//  AddCard2ViewController.swift
//  Food UI Kit
//
//  Created by [Author].
//  Copyright © 2018 [Company]. All rights reserved.
//

// --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
// MARK: - Import

import UIKit


// --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
// MARK: - Implementation

class AddCard2ViewController: UIViewController {


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Properties

    @IBOutlet var backButton: SupernovaButton!
    @IBOutlet var cardTypeLabel: SupernovaLabel!
    @IBOutlet var cardNameLabel: SupernovaLabel!
    @IBOutlet var group16View: UIView!
    @IBOutlet var cardNumberLabel: SupernovaLabel!
    @IBOutlet var group16TextField: UITextField!
    @IBOutlet var expirationDateLabel: SupernovaLabel!
    @IBOutlet var cvvLabel: SupernovaLabel!
    @IBOutlet var group16TwoView: UIView!
    @IBOutlet var group16Copy2View: UIView!
    @IBOutlet var groupButton: SupernovaButton!
    @IBOutlet var labelLabel: UILabel!
    @IBOutlet var dannisAlbertLabel: SupernovaLabel!
    @IBOutlet var labelTwoLabel: SupernovaLabel!
    @IBOutlet var labelThreeLabel: UILabel!
    @IBOutlet var dannisAlbertTwoLabel: SupernovaLabel!
    @IBOutlet var labelFourLabel: SupernovaLabel!
    @IBOutlet var labelFiveLabel: UILabel!
    @IBOutlet var dannisAlbertThreeLabel: SupernovaLabel!
    @IBOutlet var labelSixLabel: SupernovaLabel!


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Lifecycle

    override public func viewDidLoad()  {
        super.viewDidLoad()
        self.setupComponents()
        self.setupUI()
        self.setupGestureRecognizers()
        self.setupLocalization()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override public func viewWillAppear(_ animated: Bool)  {
        super.viewWillAppear(animated)
        
        // Navigation bar, if any
        self.navigationController?.setNavigationBarHidden(true, animated: true)
    }


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Setup

    private func setupComponents()  {
        // Setup backButton
        self.backButton.snImageTextSpacing = 10
        
        // Setup cardTypeLabel
        let cardTypeLabelAttrString = NSMutableAttributedString(string: "Card Type", attributes: [
            .font : UIFont(name: "Avenir-Heavy", size: 14)!,
            .foregroundColor : UIColor(red: 0.26, green: 0.31, blue: 0.38, alpha: 1),
            .kern : 0,
            .paragraphStyle : NSMutableParagraphStyle(alignment: .left, lineHeight: 14, paragraphSpacing: 0)
        ])
        self.cardTypeLabel.attributedText = cardTypeLabelAttrString
        
        // Setup cardNameLabel
        let cardNameLabelAttrString = NSMutableAttributedString(string: "Card Name", attributes: [
            .font : UIFont(name: "Avenir-Medium", size: 12)!,
            .foregroundColor : UIColor(red: 0.26, green: 0.31, blue: 0.38, alpha: 1),
            .kern : 0,
            .paragraphStyle : NSMutableParagraphStyle(alignment: .left, lineHeight: 12, paragraphSpacing: 0)
        ])
        self.cardNameLabel.attributedText = cardNameLabelAttrString
        
        // Setup group16View
        self.group16View.layer.borderColor = UIColor(red: 0.929, green: 0.941, blue: 0.949, alpha: 1).cgColor /* #EDF0F2 */
        self.group16View.layer.borderWidth = 1
        
        self.group16View.layer.cornerRadius = 7
        self.group16View.layer.masksToBounds = true
        
        // Setup cardNumberLabel
        let cardNumberLabelAttrString = NSMutableAttributedString(string: "Card Number", attributes: [
            .font : UIFont(name: "Avenir-Medium", size: 12)!,
            .foregroundColor : UIColor(red: 0.26, green: 0.31, blue: 0.38, alpha: 1),
            .kern : 0,
            .paragraphStyle : NSMutableParagraphStyle(alignment: .left, lineHeight: 12, paragraphSpacing: 0)
        ])
        self.cardNumberLabel.attributedText = cardNumberLabelAttrString
        
        // Setup group16TextField
        self.group16TextField.layer.borderColor = UIColor(red: 0.929, green: 0.941, blue: 0.949, alpha: 1).cgColor /* #EDF0F2 */
        self.group16TextField.layer.borderWidth = 1
        
        self.group16TextField.layer.cornerRadius = 7
        self.group16TextField.layer.masksToBounds = true
        
        // Setup expirationDateLabel
        let expirationDateLabelAttrString = NSMutableAttributedString(string: "Expiration Date", attributes: [
            .font : UIFont(name: "Avenir-Medium", size: 12)!,
            .foregroundColor : UIColor(red: 0.26, green: 0.31, blue: 0.38, alpha: 1),
            .kern : 0,
            .paragraphStyle : NSMutableParagraphStyle(alignment: .left, lineHeight: 12, paragraphSpacing: 0)
        ])
        self.expirationDateLabel.attributedText = expirationDateLabelAttrString
        
        // Setup cvvLabel
        let cvvLabelAttrString = NSMutableAttributedString(string: "CVV", attributes: [
            .font : UIFont(name: "Avenir-Medium", size: 12)!,
            .foregroundColor : UIColor(red: 0.26, green: 0.31, blue: 0.38, alpha: 1),
            .kern : 0,
            .paragraphStyle : NSMutableParagraphStyle(alignment: .left, lineHeight: 12, paragraphSpacing: 0)
        ])
        self.cvvLabel.attributedText = cvvLabelAttrString
        
        // Setup group16TwoView
        self.group16TwoView.layer.borderColor = UIColor(red: 0.929, green: 0.941, blue: 0.949, alpha: 1).cgColor /* #EDF0F2 */
        self.group16TwoView.layer.borderWidth = 1
        
        self.group16TwoView.layer.cornerRadius = 7
        self.group16TwoView.layer.masksToBounds = true
        
        // Setup group16Copy2View
        self.group16Copy2View.layer.borderColor = UIColor(red: 0.929, green: 0.941, blue: 0.949, alpha: 1).cgColor /* #EDF0F2 */
        self.group16Copy2View.layer.borderWidth = 1
        
        self.group16Copy2View.layer.cornerRadius = 7
        self.group16Copy2View.layer.masksToBounds = true
        
        // Setup groupButton
        self.groupButton.layer.cornerRadius = 4
        self.groupButton.layer.masksToBounds = true
        self.groupButton.snImageTextSpacing = 10
        
        // Setup labelLabel
        let labelLabelAttrString = NSMutableAttributedString(string: "1234  5678  1234  5678", attributes: [
            .font : UIFont(name: "Avenir-Heavy", size: 11)!,
            .foregroundColor : UIColor(red: 1, green: 1, blue: 1, alpha: 1),
            .kern : 2.16,
            .paragraphStyle : NSMutableParagraphStyle(alignment: .left, lineHeight: nil, paragraphSpacing: 0)
        ])
        self.labelLabel.attributedText = labelLabelAttrString
        self.labelLabel.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor /* #000000 */
        self.labelLabel.layer.shadowOffset = CGSize(width: 0, height: 3)
        self.labelLabel.layer.shadowRadius = 6
        self.labelLabel.layer.shadowOpacity = 1
        
        
        // Setup dannisAlbertLabel
        let dannisAlbertLabelAttrString = NSMutableAttributedString(string: "DANNIS ALBERT", attributes: [
            .font : UIFont(name: "Avenir-Heavy", size: 10)!,
            .foregroundColor : UIColor(red: 1, green: 1, blue: 1, alpha: 1),
            .kern : 0,
            .paragraphStyle : NSMutableParagraphStyle(alignment: .left, lineHeight: 10, paragraphSpacing: 0)
        ])
        self.dannisAlbertLabel.attributedText = dannisAlbertLabelAttrString
        
        // Setup labelTwoLabel
        let labelTwoLabelAttrString = NSMutableAttributedString(string: "10/24", attributes: [
            .font : UIFont(name: "Avenir-Heavy", size: 10)!,
            .foregroundColor : UIColor(red: 1, green: 1, blue: 1, alpha: 1),
            .kern : 0,
            .paragraphStyle : NSMutableParagraphStyle(alignment: .left, lineHeight: 10, paragraphSpacing: 0)
        ])
        self.labelTwoLabel.attributedText = labelTwoLabelAttrString
        
        // Setup labelThreeLabel
        let labelThreeLabelAttrString = NSMutableAttributedString(string: "1234  5678  1234  5678", attributes: [
            .font : UIFont(name: "Avenir-Heavy", size: 11)!,
            .foregroundColor : UIColor(red: 1, green: 1, blue: 1, alpha: 1),
            .kern : 2.16,
            .paragraphStyle : NSMutableParagraphStyle(alignment: .left, lineHeight: nil, paragraphSpacing: 0)
        ])
        self.labelThreeLabel.attributedText = labelThreeLabelAttrString
        self.labelThreeLabel.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor /* #000000 */
        self.labelThreeLabel.layer.shadowOffset = CGSize(width: 0, height: 3)
        self.labelThreeLabel.layer.shadowRadius = 6
        self.labelThreeLabel.layer.shadowOpacity = 1
        
        
        // Setup dannisAlbertTwoLabel
        let dannisAlbertTwoLabelAttrString = NSMutableAttributedString(string: "DANNIS ALBERT", attributes: [
            .font : UIFont(name: "Avenir-Heavy", size: 10)!,
            .foregroundColor : UIColor(red: 1, green: 1, blue: 1, alpha: 1),
            .kern : 0,
            .paragraphStyle : NSMutableParagraphStyle(alignment: .left, lineHeight: 10, paragraphSpacing: 0)
        ])
        self.dannisAlbertTwoLabel.attributedText = dannisAlbertTwoLabelAttrString
        
        // Setup labelFourLabel
        let labelFourLabelAttrString = NSMutableAttributedString(string: "10/24", attributes: [
            .font : UIFont(name: "Avenir-Heavy", size: 10)!,
            .foregroundColor : UIColor(red: 1, green: 1, blue: 1, alpha: 1),
            .kern : 0,
            .paragraphStyle : NSMutableParagraphStyle(alignment: .left, lineHeight: 10, paragraphSpacing: 0)
        ])
        self.labelFourLabel.attributedText = labelFourLabelAttrString
        
        // Setup labelFiveLabel
        let labelFiveLabelAttrString = NSMutableAttributedString(string: "1234  5678  1234  5678", attributes: [
            .font : UIFont(name: "Avenir-Heavy", size: 11)!,
            .foregroundColor : UIColor(red: 1, green: 1, blue: 1, alpha: 1),
            .kern : 2.16,
            .paragraphStyle : NSMutableParagraphStyle(alignment: .left, lineHeight: nil, paragraphSpacing: 0)
        ])
        self.labelFiveLabel.attributedText = labelFiveLabelAttrString
        self.labelFiveLabel.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor /* #000000 */
        self.labelFiveLabel.layer.shadowOffset = CGSize(width: 0, height: 3)
        self.labelFiveLabel.layer.shadowRadius = 6
        self.labelFiveLabel.layer.shadowOpacity = 1
        
        
        // Setup dannisAlbertThreeLabel
        let dannisAlbertThreeLabelAttrString = NSMutableAttributedString(string: "DANNIS ALBERT", attributes: [
            .font : UIFont(name: "Avenir-Heavy", size: 10)!,
            .foregroundColor : UIColor(red: 1, green: 1, blue: 1, alpha: 1),
            .kern : 0,
            .paragraphStyle : NSMutableParagraphStyle(alignment: .left, lineHeight: 10, paragraphSpacing: 0)
        ])
        self.dannisAlbertThreeLabel.attributedText = dannisAlbertThreeLabelAttrString
        
        // Setup labelSixLabel
        let labelSixLabelAttrString = NSMutableAttributedString(string: "10/24", attributes: [
            .font : UIFont(name: "Avenir-Heavy", size: 10)!,
            .foregroundColor : UIColor(red: 1, green: 1, blue: 1, alpha: 1),
            .kern : 0,
            .paragraphStyle : NSMutableParagraphStyle(alignment: .left, lineHeight: 10, paragraphSpacing: 0)
        ])
        self.labelSixLabel.attributedText = labelSixLabelAttrString
        
    }

    private func setupUI()  {
        self.navigationController?.setNavigationBarHidden(true, animated: true)
    }

    private func setupGestureRecognizers()  {
    
    }

    private func setupLocalization()  {
    
    }


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Status Bar

    override public var prefersStatusBarHidden: Bool  {
        return false
    }

    override public var preferredStatusBarStyle: UIStatusBarStyle  {
        return .default
    }


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Actions

    @IBAction public func onBackPressed(_ sender: UIButton)  {
        self.performSegue(withIdentifier: "Push Add Card", sender: nil)
    }

    @IBAction public func onGroupPressed(_ sender: UIButton)  {
        self.performSegue(withIdentifier: "Push Payment Method", sender: nil)
    }
}
