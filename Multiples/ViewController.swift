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
    var currentTurn = 0
    
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
            currentNumber = 0;
            currentTurn = 0;
            
        }
    }

    @IBAction func whenAddBtnPushed(sender: UIButton)
    {
        if isGameover()
        {
            restartGame();
        }
        else
        {
            currentTurn++
            refreshLbl();
            refreshNum();
        }
    }

    
    func refreshLbl()
    {
        messageLbl.text = "\(currentNumber) + \(multiplesNum) = \(currentNumber + multiplesNum)"
        
    }
    
    func refreshNum()
    {
        currentNumber = currentNumber + multiplesNum;
    }
    
    func isGameover() -> Bool
    {
        if currentTurn >= 5
        {
            return true
        }
        else
        {
            return false
        }
    }
    
    func restartGame()
    {
        logo.hidden = false;
        playBtn.hidden = false;
        inputBar.hidden = false;
        addBtn.hidden = true;
        messageLbl.hidden = true;
        inputBar.text = "";

    }

}

