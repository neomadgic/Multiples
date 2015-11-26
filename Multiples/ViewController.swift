//
//  ViewController.swift
//  Multiples
//
//  Created by Vu Dang on 11/24/15.
//  Copyright © 2015 Vu Dang. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    //Variables
    var currentNumber = 0
    var multiplesNum = 0
    var maxNum = 5
    
    //Outlets
    @IBOutlet weak var logo: UIImageView!
    @IBOutlet weak var playBtn: UIButton!
    @IBOutlet weak var inputBar: UITextField!
    @IBOutlet weak var addBtn: UIButton!
    @IBOutlet weak var messageLbl: UILabel!
    
    @IBAction func whenPlayBtnPushed(sender: UIButton)
    {
        if(inputBar.text != nil && inputBar.text != "")
        {
            multiplesNum = Int(inputBar.text!)!
            logo.hidden = true;
            playBtn.hidden = true;
            inputBar.hidden = true;
            addBtn.hidden = false;
            messageLbl.text = "Press add to add \(multiplesNum) to 0";
            messageLbl.hidden = false;
            
        }
    }

    @IBAction func whenAddBtnPushed(sender: UIButton)
    {
    }


}

