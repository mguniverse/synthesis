//
//  Gameplay.swift
//  Synthesis
//
//  Created by Danny Perski on 9/28/15.
//  Copyright © 2015 Danny Perski. All rights reserved.
//

import UIKit

class Gameplay: UIViewController {
    var border:CGFloat = 12.0
    var animationIntensity:CGFloat = 0.1
    var animationSpeed:CGFloat = 0.1
    
    //declares the type of space these are, 0 being empty
    var a1p:UInt32 = 0
    var a2p:UInt32 = 0
    var a3p:UInt32 = 0
    var b1p:UInt32 = 0
    var b2p:UInt32 = 0
    var b3p:UInt32 = 0
    var c1p:UInt32 = 0
    var c2p:UInt32 = 0
    var c3p:UInt32 = 0
    var d1p:UInt32 = 0
    var d2p:UInt32 = 0
    var d3p:UInt32 = 0
    var e1p:UInt32 = 0
    var e2p:UInt32 = 0
    var e3p:UInt32 = 0
    
    var temp:UInt32 = 0
    
    var a1if:Bool = false
    var a2if:Bool = false
    var a3if:Bool = false
    var b1if:Bool = false
    var b2if:Bool = false
    var b3if:Bool = false
    var c1if:Bool = false
    var c2if:Bool = false
    var c3if:Bool = false
    var d1if:Bool = false
    var d2if:Bool = false
    var d3if:Bool = false
    var e1if:Bool = false
    var e2if:Bool = false
    var e3if:Bool = false
    
    @IBOutlet weak var a1v: UIView!
    @IBOutlet weak var a2v: UIView!
    @IBOutlet weak var a3v: UIView!
    @IBOutlet weak var b1v: UIView!
    @IBOutlet weak var b2v: UIView!
    @IBOutlet weak var b3v: UIView!
    @IBOutlet weak var c1v: UIView!
    @IBOutlet weak var c2v: UIView!
    @IBOutlet weak var c3v: UIView!
    @IBOutlet weak var d1v: UIView!
    @IBOutlet weak var d2v: UIView!
    @IBOutlet weak var d3v: UIView!
    @IBOutlet weak var e1v: UIView!
    @IBOutlet weak var e2v: UIView!
    @IBOutlet weak var e3v: UIView!
    
    @IBOutlet weak var a1c: UIView!
    @IBOutlet weak var a2c: UIView!
    @IBOutlet weak var a3c: UIView!
    @IBOutlet weak var b1c: UIView!
    @IBOutlet weak var b2c: UIView!
    @IBOutlet weak var b3c: UIView!
    @IBOutlet weak var c1c: UIView!
    @IBOutlet weak var c2c: UIView!
    @IBOutlet weak var c3c: UIView!
    @IBOutlet weak var d1c: UIView!
    @IBOutlet weak var d2c: UIView!
    @IBOutlet weak var d3c: UIView!
    @IBOutlet weak var e1c: UIView!
    @IBOutlet weak var e2c: UIView!
    @IBOutlet weak var e3c: UIView!
    
    @IBOutlet weak var dimView: UIView!
    @IBOutlet weak var endView: UIView!
    @IBOutlet weak var retryView: UIView!
    
    @IBOutlet weak var endLabel: UILabel!
    @IBOutlet weak var endText: UITextView!
    
    @IBOutlet weak var a1i: UIImageView!
    @IBOutlet weak var a2i: UIImageView!
    @IBOutlet weak var a3i: UIImageView!
    @IBOutlet weak var b1i: UIImageView!
    @IBOutlet weak var b2i: UIImageView!
    @IBOutlet weak var b3i: UIImageView!
    @IBOutlet weak var c1i: UIImageView!
    @IBOutlet weak var c2i: UIImageView!
    @IBOutlet weak var c3i: UIImageView!
    @IBOutlet weak var d1i: UIImageView!
    @IBOutlet weak var d2i: UIImageView!
    @IBOutlet weak var d3i: UIImageView!
    @IBOutlet weak var e1i: UIImageView!
    @IBOutlet weak var e2i: UIImageView!
    @IBOutlet weak var e3i: UIImageView!
    
    @IBAction func a1a(sender: AnyObject) {
        if (a1if == true) {
            cancelGrid()
        }
        else if (b1if == true) {
            temp = a1p
            a1p = b1p
            b1p = temp
            
            UIView.animateWithDuration(0.2, delay: 0, options: .CurveEaseOut, animations: {
                self.a1c.alpha = 0
                self.b1c.alpha = 0
                }, completion: { finished in
                    self.endAnimation()
            })
        }
        else if (a2if == true) {
            temp = a1p
            a1p = a2p
            a2p = temp
            
            UIView.animateWithDuration(0.2, delay: 0, options: .CurveEaseOut, animations: {
                self.a1c.alpha = 0
                self.a2c.alpha = 0
                }, completion: { finished in
                    self.endAnimation()
            })
        }
        else if (a1p != 0) {
            a1if = true
            
            UIView.animateWithDuration(0.2, delay: 0, options: .CurveEaseOut, animations: {
                //a1c.alpha = 0.1
                //a2c.alpha = 0.1
                self.a3c.alpha = 0.1
                //b1c.alpha = 0.1
                self.b2c.alpha = 0.1
                self.b3c.alpha = 0.1
                self.c1c.alpha = 0.1
                self.c2c.alpha = 0.1
                self.c3c.alpha = 0.1
                self.d1c.alpha = 0.1
                self.d2c.alpha = 0.1
                self.d3c.alpha = 0.1
                self.e1c.alpha = 0.1
                self.e2c.alpha = 0.1
                self.e3c.alpha = 0.1
                
                //self.a1v.alpha = 0.1
                //self.a2v.alpha = 0.1
                self.a3v.alpha = 0.1
                //self.b1v.alpha = 0.1
                self.b2v.alpha = 0.1
                self.b3v.alpha = 0.1
                self.c1v.alpha = 0.1
                self.c2v.alpha = 0.1
                self.c3v.alpha = 0.1
                self.d1v.alpha = 0.1
                self.d2v.alpha = 0.1
                self.d3v.alpha = 0.1
                self.e1v.alpha = 0.1
                self.e2v.alpha = 0.1
                self.e3v.alpha = 0.1
                }, completion: { finished in
                    print("")
            })
        }
    }
    
    @IBAction func a2a(sender: AnyObject) {
        if (a2if == true) {
            cancelGrid()
        }
        else if (a1if == true) {
            temp = a1p
            a1p = a2p
            a2p = temp
            
            UIView.animateWithDuration(0.2, delay: 0, options: .CurveEaseOut, animations: {
                self.a1c.alpha = 0
                self.a2c.alpha = 0
                }, completion: { finished in
                    self.endAnimation()
            })
        }
        else if (a3if == true) {
            temp = a3p
            a3p = a2p
            a2p = temp
            
            UIView.animateWithDuration(0.2, delay: 0, options: .CurveEaseOut, animations: {
                self.a2c.alpha = 0
                self.a3c.alpha = 0
                }, completion: { finished in
                    self.endAnimation()
            })
        }
        else if (b2if == true) {
            temp = b2p
            b2p = a2p
            a2p = temp
            
            UIView.animateWithDuration(0.2, delay: 0, options: .CurveEaseOut, animations: {
                self.b2c.alpha = 0
                self.a2c.alpha = 0
                }, completion: { finished in
                    self.endAnimation()
            })
        }
        else if (a2p != 0) {
            a2if = true
            
            UIView.animateWithDuration(0.2, delay: 0, options: .CurveEaseOut, animations: {
                //self.a1c.alpha = 0.1
                //self.a2c.alpha = 0.1
                //self.a3c.alpha = 0.1
                self.b1c.alpha = 0.1
                //self.b2c.alpha = 0.1
                self.b3c.alpha = 0.1
                self.c1c.alpha = 0.1
                self.c2c.alpha = 0.1
                self.c3c.alpha = 0.1
                self.d1c.alpha = 0.1
                self.d2c.alpha = 0.1
                self.d3c.alpha = 0.1
                self.e1c.alpha = 0.1
                self.e2c.alpha = 0.1
                self.e3c.alpha = 0.1
                
                //self.a1v.alpha = 0.1
                //self.a2v.alpha = 0.1
                //self.a3v.alpha = 0.1
                self.b1v.alpha = 0.1
                //self.b2v.alpha = 0.1
                self.b3v.alpha = 0.1
                self.c1v.alpha = 0.1
                self.c2v.alpha = 0.1
                self.c3v.alpha = 0.1
                self.d1v.alpha = 0.1
                self.d2v.alpha = 0.1
                self.d3v.alpha = 0.1
                self.e1v.alpha = 0.1
                self.e2v.alpha = 0.1
                self.e3v.alpha = 0.1
                }, completion: { finished in
                    print("")
            })
        }
    }
    
    @IBAction func a3a(sender: AnyObject) {
        if (a3if == true) {
            cancelGrid()
        }
        else if (a2if == true) {
            temp = a2p
            a2p = a3p
            a3p = temp
            
            UIView.animateWithDuration(0.2, delay: 0, options: .CurveEaseOut, animations: {
                self.a2c.alpha = 0
                self.a3c.alpha = 0
                }, completion: { finished in
                    self.endAnimation()
            })
        }
        else if (b3if == true) {
            temp = b3p
            b3p = a3p
            a3p = temp
            
            UIView.animateWithDuration(0.2, delay: 0, options: .CurveEaseOut, animations: {
                self.b3c.alpha = 0
                self.a3c.alpha = 0
                }, completion: { finished in
                    self.endAnimation()
            })
        }
        else if (a3p != 0) {
            a3if = true
            
            UIView.animateWithDuration(0.2, delay: 0, options: .CurveEaseOut, animations: {
                self.a1c.alpha = 0.1
                //self.a2c.alpha = 0.1
                //self.a3c.alpha = 0.1
                self.b1c.alpha = 0.1
                self.b2c.alpha = 0.1
                //self.b3c.alpha = 0.1
                self.c1c.alpha = 0.1
                self.c2c.alpha = 0.1
                self.c3c.alpha = 0.1
                self.d1c.alpha = 0.1
                self.d2c.alpha = 0.1
                self.d3c.alpha = 0.1
                self.e1c.alpha = 0.1
                self.e2c.alpha = 0.1
                self.e3c.alpha = 0.1
                
                self.a1v.alpha = 0.1
                //self.a2v.alpha = 0.1
                //self.a3v.alpha = 0.1
                self.b1v.alpha = 0.1
                self.b2v.alpha = 0.1
                //self.b3v.alpha = 0.1
                self.c1v.alpha = 0.1
                self.c2v.alpha = 0.1
                self.c3v.alpha = 0.1
                self.d1v.alpha = 0.1
                self.d2v.alpha = 0.1
                self.d3v.alpha = 0.1
                self.e1v.alpha = 0.1
                self.e2v.alpha = 0.1
                self.e3v.alpha = 0.1
                }, completion: { finished in
                    print("")
            })
        }
    }
    
    @IBAction func b1a(sender: AnyObject) {
        if (b1if == true) {
            cancelGrid()
        }
        else if (a1if == true) {
            temp = a1p
            a1p = b1p
            b1p = temp
            
            UIView.animateWithDuration(0.2, delay: 0, options: .CurveEaseOut, animations: {
                self.a1c.alpha = 0
                self.b1c.alpha = 0
                }, completion: { finished in
                    self.endAnimation()
            })
        }
        else if (b2if == true) {
            temp = b2p
            b2p = b1p
            b1p = temp
            
            UIView.animateWithDuration(0.2, delay: 0, options: .CurveEaseOut, animations: {
                self.b2c.alpha = 0
                self.b1c.alpha = 0
                }, completion: { finished in
                    self.endAnimation()
            })
        }
        else if (c1if == true) {
            temp = c1p
            c1p = b1p
            b1p = temp
            
            UIView.animateWithDuration(0.2, delay: 0, options: .CurveEaseOut, animations: {
                self.c1c.alpha = 0
                self.b1c.alpha = 0
                }, completion: { finished in
                    self.endAnimation()
            })
        }
        else if (b1p != 0) {
            b1if = true
            
            UIView.animateWithDuration(0.2, delay: 0, options: .CurveEaseOut, animations: {
                //self.a1c.alpha = 0.1
                self.a2c.alpha = 0.1
                self.a3c.alpha = 0.1
                //self.b1c.alpha = 0.1
                //self.b2c.alpha = 0.1
                self.b3c.alpha = 0.1
                //self.c1c.alpha = 0.1
                self.c2c.alpha = 0.1
                self.c3c.alpha = 0.1
                self.d1c.alpha = 0.1
                self.d2c.alpha = 0.1
                self.d3c.alpha = 0.1
                self.e1c.alpha = 0.1
                self.e2c.alpha = 0.1
                self.e3c.alpha = 0.1
                
                //self.a1v.alpha = 0.1
                self.a2v.alpha = 0.1
                self.a3v.alpha = 0.1
                //self.b1v.alpha = 0.1
                //self.b2v.alpha = 0.1
                self.b3v.alpha = 0.1
                //self.c1v.alpha = 0.1
                self.c2v.alpha = 0.1
                self.c3v.alpha = 0.1
                self.d1v.alpha = 0.1
                self.d2v.alpha = 0.1
                self.d3v.alpha = 0.1
                self.e1v.alpha = 0.1
                self.e2v.alpha = 0.1
                self.e3v.alpha = 0.1
                }, completion: { finished in
                    print("")
            })
        }
    }
    
    @IBAction func b2a(sender: AnyObject) {
        if (b2if == true) {
            cancelGrid()
        }
        else if (a2if == true) {
            temp = a2p
            a2p = b2p
            b2p = temp
            
            UIView.animateWithDuration(0.2, delay: 0, options: .CurveEaseOut, animations: {
                self.a2c.alpha = 0
                self.b2c.alpha = 0
                }, completion: { finished in
                    self.endAnimation()
            })
        }
        else if (b1if == true) {
            temp = b1p
            b1p = b2p
            b2p = temp
            
            UIView.animateWithDuration(0.2, delay: 0, options: .CurveEaseOut, animations: {
                self.b1c.alpha = 0
                self.b2c.alpha = 0
                }, completion: { finished in
                    self.endAnimation()
            })
        }
        else if (b3if == true) {
            temp = b3p
            b3p = b2p
            b2p = temp
            
            UIView.animateWithDuration(0.2, delay: 0, options: .CurveEaseOut, animations: {
                self.b3c.alpha = 0
                self.b2c.alpha = 0
                }, completion: { finished in
                    self.endAnimation()
            })
        }
        else if (c2if == true) {
            temp = c2p
            c2p = b2p
            b2p = temp
            
            UIView.animateWithDuration(0.2, delay: 0, options: .CurveEaseOut, animations: {
                self.c2c.alpha = 0
                self.b2c.alpha = 0
                }, completion: { finished in
                    self.endAnimation()
            })
        }
        else if (b2p != 0) {
            b2if = true
            
            UIView.animateWithDuration(0.2, delay: 0, options: .CurveEaseOut, animations: {
                self.a1c.alpha = 0.1
                //self.a2c.alpha = 0.1
                self.a3c.alpha = 0.1
                //self.b1c.alpha = 0.1
                //self.b2c.alpha = 0.1
                //self.b3c.alpha = 0.1
                self.c1c.alpha = 0.1
                //self.c2c.alpha = 0.1
                self.c3c.alpha = 0.1
                self.d1c.alpha = 0.1
                self.d2c.alpha = 0.1
                self.d3c.alpha = 0.1
                self.e1c.alpha = 0.1
                self.e2c.alpha = 0.1
                self.e3c.alpha = 0.1
                
                self.a1v.alpha = 0.1
                //self.a2v.alpha = 0.1
                self.a3v.alpha = 0.1
                //self.b1v.alpha = 0.1
                //self.b2v.alpha = 0.1
                //self.b3v.alpha = 0.1
                self.c1v.alpha = 0.1
                //self.c2v.alpha = 0.1
                self.c3v.alpha = 0.1
                self.d1v.alpha = 0.1
                self.d2v.alpha = 0.1
                self.d3v.alpha = 0.1
                self.e1v.alpha = 0.1
                self.e2v.alpha = 0.1
                self.e3v.alpha = 0.1
                }, completion: { finished in
                    print("")
            })
        }
    }
    
    @IBAction func b3a(sender: AnyObject) {
        if (b3if == true) {
            cancelGrid()
        }
        else if (a3if == true) {
            temp = a3p
            a3p = b3p
            b3p = temp
            
            UIView.animateWithDuration(0.2, delay: 0, options: .CurveEaseOut, animations: {
                self.a3c.alpha = 0
                self.b3c.alpha = 0
                }, completion: { finished in
                    self.endAnimation()
            })
        }
        else if (b2if == true) {
            temp = b2p
            b2p = b3p
            b3p = temp
            
            UIView.animateWithDuration(0.2, delay: 0, options: .CurveEaseOut, animations: {
                self.b2c.alpha = 0
                self.b3c.alpha = 0
                }, completion: { finished in
                    self.endAnimation()
            })
        }
        else if (c3if == true) {
            temp = c3p
            c3p = b3p
            b3p = temp
            
            UIView.animateWithDuration(0.2, delay: 0, options: .CurveEaseOut, animations: {
                self.c3c.alpha = 0
                self.b3c.alpha = 0
                }, completion: { finished in
                    self.endAnimation()
            })
        }
        else if (b3p != 0) {
            b3if = true
            
            UIView.animateWithDuration(0.2, delay: 0, options: .CurveEaseOut, animations: {
                self.a1c.alpha = 0.1
                self.a2c.alpha = 0.1
                //self.a3c.alpha = 0.1
                self.b1c.alpha = 0.1
                //self.b2c.alpha = 0.1
                //self.b3c.alpha = 0.1
                self.c1c.alpha = 0.1
                self.c2c.alpha = 0.1
                //self.c3c.alpha = 0.1
                self.d1c.alpha = 0.1
                self.d2c.alpha = 0.1
                self.d3c.alpha = 0.1
                self.e1c.alpha = 0.1
                self.e2c.alpha = 0.1
                self.e3c.alpha = 0.1
                
                self.a1v.alpha = 0.1
                self.a2v.alpha = 0.1
                //self.a3v.alpha = 0.1
                self.b1v.alpha = 0.1
                //self.b2v.alpha = 0.1
                //self.b3v.alpha = 0.1
                self.c1v.alpha = 0.1
                self.c2v.alpha = 0.1
                //self.c3v.alpha = 0.1
                self.d1v.alpha = 0.1
                self.d2v.alpha = 0.1
                self.d3v.alpha = 0.1
                self.e1v.alpha = 0.1
                self.e2v.alpha = 0.1
                self.e3v.alpha = 0.1
                }, completion: { finished in
                    print("")
            })
        }
    }
    
    @IBAction func c1a(sender: AnyObject) {
        if (c1if == true) {
            cancelGrid()
        }
        else if (b1if == true) {
            temp = b1p
            b1p = c1p
            c1p = temp
            
            UIView.animateWithDuration(0.2, delay: 0, options: .CurveEaseOut, animations: {
                self.b1c.alpha = 0
                self.c1c.alpha = 0
                }, completion: { finished in
                    self.endAnimation()
            })
        }
        else if (c2if == true) {
            temp = c2p
            c2p = c1p
            c1p = temp
            
            UIView.animateWithDuration(0.2, delay: 0, options: .CurveEaseOut, animations: {
                self.c2c.alpha = 0
                self.c1c.alpha = 0
                }, completion: { finished in
                    self.endAnimation()
            })
        }
        else if (d1if == true) {
            temp = d1p
            d1p = c1p
            c1p = temp
            
            UIView.animateWithDuration(0.2, delay: 0, options: .CurveEaseOut, animations: {
                self.d1c.alpha = 0
                self.c1c.alpha = 0
                }, completion: { finished in
                    self.endAnimation()
            })
        }
        else if (c1p != 0) {
            c1if = true
            
            UIView.animateWithDuration(0.2, delay: 0, options: .CurveEaseOut, animations: {
                self.a1c.alpha = 0.1
                self.a2c.alpha = 0.1
                self.a3c.alpha = 0.1
                //self.b1c.alpha = 0.1
                self.b2c.alpha = 0.1
                self.b3c.alpha = 0.1
                //self.c1c.alpha = 0.1
                //self.c2c.alpha = 0.1
                self.c3c.alpha = 0.1
                //self.d1c.alpha = 0.1
                self.d2c.alpha = 0.1
                self.d3c.alpha = 0.1
                self.e1c.alpha = 0.1
                self.e2c.alpha = 0.1
                self.e3c.alpha = 0.1
                
                self.a1v.alpha = 0.1
                self.a2v.alpha = 0.1
                self.a3v.alpha = 0.1
                //self.b1v.alpha = 0.1
                self.b2v.alpha = 0.1
                self.b3v.alpha = 0.1
                //self.c1v.alpha = 0.1
                //self.c2v.alpha = 0.1
                self.c3v.alpha = 0.1
                //self.d1v.alpha = 0.1
                self.d2v.alpha = 0.1
                self.d3v.alpha = 0.1
                self.e1v.alpha = 0.1
                self.e2v.alpha = 0.1
                self.e3v.alpha = 0.1
                }, completion: { finished in
                    print("")
            })
        }
    }
    
    @IBAction func c2a(sender: AnyObject) {
        if (c2if == true) {
            cancelGrid()
        }
        else if (b2if == true) {
            temp = b2p
            b2p = c2p
            c2p = temp
            
            UIView.animateWithDuration(0.2, delay: 0, options: .CurveEaseOut, animations: {
                self.b2c.alpha = 0
                self.c2c.alpha = 0
                }, completion: { finished in
                    self.endAnimation()
            })
        }
        else if (c1if == true) {
            temp = c1p
            c1p = c2p
            c2p = temp
            
            UIView.animateWithDuration(0.2, delay: 0, options: .CurveEaseOut, animations: {
                self.c1c.alpha = 0
                self.c2c.alpha = 0
                }, completion: { finished in
                    self.endAnimation()
            })
        }
        else if (c3if == true) {
            temp = c3p
            c3p = c2p
            c2p = temp
            
            UIView.animateWithDuration(0.2, delay: 0, options: .CurveEaseOut, animations: {
                self.c3c.alpha = 0
                self.c2c.alpha = 0
                }, completion: { finished in
                    self.endAnimation()
            })
        }
        else if (d2if == true) {
            temp = d2p
            d2p = c2p
            c2p = temp
            
            UIView.animateWithDuration(0.2, delay: 0, options: .CurveEaseOut, animations: {
                self.d2c.alpha = 0
                self.c2c.alpha = 0
                }, completion: { finished in
                    self.endAnimation()
            })
        }
        else if (c2p != 0) {
            c2if = true
            
            UIView.animateWithDuration(0.2, delay: 0, options: .CurveEaseOut, animations: {
                self.a1c.alpha = 0.1
                self.a2c.alpha = 0.1
                self.a3c.alpha = 0.1
                self.b1c.alpha = 0.1
                //self.b2c.alpha = 0.1
                self.b3c.alpha = 0.1
                //self.c1c.alpha = 0.1
                //self.c2c.alpha = 0.1
                //self.c3c.alpha = 0.1
                self.d1c.alpha = 0.1
                //self.d2c.alpha = 0.1
                self.d3c.alpha = 0.1
                self.e1c.alpha = 0.1
                self.e2c.alpha = 0.1
                self.e3c.alpha = 0.1
                
                self.a1v.alpha = 0.1
                self.a2v.alpha = 0.1
                self.a3v.alpha = 0.1
                self.b1v.alpha = 0.1
                //self.b2v.alpha = 0.1
                self.b3v.alpha = 0.1
                //self.c1v.alpha = 0.1
                //self.c2v.alpha = 0.1
                //self.c3v.alpha = 0.1
                self.d1v.alpha = 0.1
                //self.d2v.alpha = 0.1
                self.d3v.alpha = 0.1
                self.e1v.alpha = 0.1
                self.e2v.alpha = 0.1
                self.e3v.alpha = 0.1
                }, completion: { finished in
                    print("")
            })
        }
    }
    
    @IBAction func c3a(sender: AnyObject) {
        if (c3if == true) {
            cancelGrid()
        }
        else if (b3if == true) {
            temp = b3p
            b3p = c3p
            c3p = temp
            
            UIView.animateWithDuration(0.2, delay: 0, options: .CurveEaseOut, animations: {
                self.b3c.alpha = 0
                self.c3c.alpha = 0
                }, completion: { finished in
                    self.endAnimation()
            })
        }
        else if (c2if == true) {
            temp = c2p
            c2p = c3p
            c3p = temp
            
            UIView.animateWithDuration(0.2, delay: 0, options: .CurveEaseOut, animations: {
                self.c2c.alpha = 0
                self.c3c.alpha = 0
                }, completion: { finished in
                    self.endAnimation()
            })
        }
        else if (d3if == true) {
            temp = d3p
            d3p = c3p
            c3p = temp
            
            UIView.animateWithDuration(0.2, delay: 0, options: .CurveEaseOut, animations: {
                self.d3c.alpha = 0
                self.c3c.alpha = 0
                }, completion: { finished in
                    self.endAnimation()
            })
        }
        else if (c3p != 0) {
            c3if = true
            
            UIView.animateWithDuration(0.2, delay: 0, options: .CurveEaseOut, animations: {
                self.a1c.alpha = 0.1
                self.a2c.alpha = 0.1
                self.a3c.alpha = 0.1
                self.b1c.alpha = 0.1
                self.b2c.alpha = 0.1
                //self.b3c.alpha = 0.1
                self.c1c.alpha = 0.1
                //self.c2c.alpha = 0.1
                //self.c3c.alpha = 0.1
                self.d1c.alpha = 0.1
                self.d2c.alpha = 0.1
                //self.d3c.alpha = 0.1
                self.e1c.alpha = 0.1
                self.e2c.alpha = 0.1
                self.e3c.alpha = 0.1
                
                self.a1v.alpha = 0.1
                self.a2v.alpha = 0.1
                self.a3v.alpha = 0.1
                self.b1v.alpha = 0.1
                self.b2v.alpha = 0.1
                //self.b3v.alpha = 0.1
                self.c1v.alpha = 0.1
                //self.c2v.alpha = 0.1
                //self.c3v.alpha = 0.1
                self.d1v.alpha = 0.1
                self.d2v.alpha = 0.1
                //self.d3v.alpha = 0.1
                self.e1v.alpha = 0.1
                self.e2v.alpha = 0.1
                self.e3v.alpha = 0.1
                }, completion: { finished in
                    print("")
            })
        }
    }
    
    @IBAction func d1a(sender: AnyObject) {
        if (d1if == true) {
            cancelGrid()
        }
        else if (c1if == true) {
            temp = c1p
            c1p = d1p
            d1p = temp
            
            UIView.animateWithDuration(0.2, delay: 0, options: .CurveEaseOut, animations: {
                self.c1c.alpha = 0
                self.d1c.alpha = 0
                }, completion: { finished in
                    self.endAnimation()
            })
        }
        else if (d2if == true) {
            temp = d2p
            d2p = d1p
            d1p = temp
            
            UIView.animateWithDuration(0.2, delay: 0, options: .CurveEaseOut, animations: {
                self.d2c.alpha = 0
                self.d1c.alpha = 0
                }, completion: { finished in
                    self.endAnimation()
            })
        }
        else if (e1if == true) {
            temp = e1p
            e1p = d1p
            d1p = temp
            
            UIView.animateWithDuration(0.2, delay: 0, options: .CurveEaseOut, animations: {
                self.e1c.alpha = 0
                self.d1c.alpha = 0
                }, completion: { finished in
                    self.endAnimation()
            })
        }
        else if (d1p != 0) {
            d1if = true
            
            UIView.animateWithDuration(0.2, delay: 0, options: .CurveEaseOut, animations: {
                self.a1c.alpha = 0.1
                self.a2c.alpha = 0.1
                self.a3c.alpha = 0.1
                self.b1c.alpha = 0.1
                self.b2c.alpha = 0.1
                self.b3c.alpha = 0.1
                //self.c1c.alpha = 0.1
                self.c2c.alpha = 0.1
                self.c3c.alpha = 0.1
                //self.d1c.alpha = 0.1
                //self.d2c.alpha = 0.1
                self.d3c.alpha = 0.1
                //self.e1c.alpha = 0.1
                self.e2c.alpha = 0.1
                self.e3c.alpha = 0.1
                
                self.a1v.alpha = 0.1
                self.a2v.alpha = 0.1
                self.a3v.alpha = 0.1
                self.b1v.alpha = 0.1
                self.b2v.alpha = 0.1
                self.b3v.alpha = 0.1
                //self.c1v.alpha = 0.1
                self.c2v.alpha = 0.1
                self.c3v.alpha = 0.1
                //self.d1v.alpha = 0.1
                //self.d2v.alpha = 0.1
                self.d3v.alpha = 0.1
                //self.e1v.alpha = 0.1
                self.e2v.alpha = 0.1
                self.e3v.alpha = 0.1
                }, completion: { finished in
                    print("")
            })
        }
    }
    
    @IBAction func d2a(sender: AnyObject) {
        if (d2if == true) {
            cancelGrid()
        }
        else if (c2if == true) {
            temp = c2p
            c2p = d2p
            d2p = temp
            
            UIView.animateWithDuration(0.2, delay: 0, options: .CurveEaseOut, animations: {
                self.c2c.alpha = 0
                self.d2c.alpha = 0
                }, completion: { finished in
                    self.endAnimation()
            })
        }
        else if (d1if == true) {
            temp = d1p
            d1p = d2p
            d2p = temp
            
            UIView.animateWithDuration(0.2, delay: 0, options: .CurveEaseOut, animations: {
                self.d1c.alpha = 0
                self.d2c.alpha = 0
                }, completion: { finished in
                    self.endAnimation()
            })
        }
        else if (d3if == true) {
            temp = d3p
            d3p = d2p
            d2p = temp
            
            UIView.animateWithDuration(0.2, delay: 0, options: .CurveEaseOut, animations: {
                self.d3c.alpha = 0
                self.d2c.alpha = 0
                }, completion: { finished in
                    self.endAnimation()
            })
        }
        else if (e2if == true) {
            temp = e2p
            e2p = d2p
            d2p = temp
            
            UIView.animateWithDuration(0.2, delay: 0, options: .CurveEaseOut, animations: {
                self.e2c.alpha = 0
                self.d2c.alpha = 0
                }, completion: { finished in
                    self.endAnimation()
            })
        }
        else if (d2p != 0) {
            d2if = true
            
            UIView.animateWithDuration(0.2, delay: 0, options: .CurveEaseOut, animations: {
                self.a1c.alpha = 0.1
                self.a2c.alpha = 0.1
                self.a3c.alpha = 0.1
                self.b1c.alpha = 0.1
                self.b2c.alpha = 0.1
                self.b3c.alpha = 0.1
                self.c1c.alpha = 0.1
                //self.c2c.alpha = 0.1
                self.c3c.alpha = 0.1
                //self.d1c.alpha = 0.1
                //self.d2c.alpha = 0.1
                //self.d3c.alpha = 0.1
                self.e1c.alpha = 0.1
                //self.e2c.alpha = 0.1
                self.e3c.alpha = 0.1
                
                self.a1v.alpha = 0.1
                self.a2v.alpha = 0.1
                self.a3v.alpha = 0.1
                self.b1v.alpha = 0.1
                self.b2v.alpha = 0.1
                self.b3v.alpha = 0.1
                self.c1v.alpha = 0.1
                //self.c2v.alpha = 0.1
                self.c3v.alpha = 0.1
                //self.d1v.alpha = 0.1
                //self.d2v.alpha = 0.1
                //self.d3v.alpha = 0.1
                self.e1v.alpha = 0.1
                //self.e2v.alpha = 0.1
                self.e3v.alpha = 0.1
                }, completion: { finished in
                    print("")
            })
        }
    }
    
    @IBAction func d3a(sender: AnyObject) {
        if (d3if == true) {
            cancelGrid()
        }
        else if (c3if == true) {
            temp = c3p
            c3p = d3p
            d3p = temp
            
            UIView.animateWithDuration(0.2, delay: 0, options: .CurveEaseOut, animations: {
                self.c3c.alpha = 0
                self.d3c.alpha = 0
                }, completion: { finished in
                    self.endAnimation()
            })
        }
        else if (d2if == true) {
            temp = d2p
            d2p = d3p
            d3p = temp
            
            UIView.animateWithDuration(0.2, delay: 0, options: .CurveEaseOut, animations: {
                self.d2c.alpha = 0
                self.d3c.alpha = 0
                }, completion: { finished in
                    self.endAnimation()
            })
        }
        else if (e3if == true) {
            temp = e3p
            e3p = d3p
            d3p = temp
            
            UIView.animateWithDuration(0.2, delay: 0, options: .CurveEaseOut, animations: {
                self.e3c.alpha = 0
                self.d3c.alpha = 0
                }, completion: { finished in
                    self.endAnimation()
            })
        }
        else if (d3p != 0) {
            d3if = true
            
            UIView.animateWithDuration(0.2, delay: 0, options: .CurveEaseOut, animations: {
                self.a1c.alpha = 0.1
                self.a2c.alpha = 0.1
                self.a3c.alpha = 0.1
                self.b1c.alpha = 0.1
                self.b2c.alpha = 0.1
                self.b3c.alpha = 0.1
                self.c1c.alpha = 0.1
                self.c2c.alpha = 0.1
                //self.c3c.alpha = 0.1
                self.d1c.alpha = 0.1
                //self.d2c.alpha = 0.1
                //self.d3c.alpha = 0.1
                self.e1c.alpha = 0.1
                self.e2c.alpha = 0.1
                //self.e3c.alpha = 0.1
                
                self.a1v.alpha = 0.1
                self.a2v.alpha = 0.1
                self.a3v.alpha = 0.1
                self.b1v.alpha = 0.1
                self.b2v.alpha = 0.1
                self.b3v.alpha = 0.1
                self.c1v.alpha = 0.1
                self.c2v.alpha = 0.1
                //self.c3v.alpha = 0.1
                self.d1v.alpha = 0.1
                //self.d2v.alpha = 0.1
                //self.d3v.alpha = 0.1
                self.e1v.alpha = 0.1
                self.e2v.alpha = 0.1
                //self.e3v.alpha = 0.1
                }, completion: { finished in
                    print("")
            })
        }
    }
    
    @IBAction func e1a(sender: AnyObject) {
        if (e1if == true) {
            cancelGrid()
        }
        else if (d1if == true) {
            temp = d1p
            d1p = e1p
            e1p = temp
            
            UIView.animateWithDuration(0.2, delay: 0, options: .CurveEaseOut, animations: {
                self.d1c.alpha = 0
                self.e1c.alpha = 0
                }, completion: { finished in
                    self.endAnimation()
            })
        }
        else if (e2if == true) {
            temp = e2p
            e2p = e1p
            e1p = temp
            
            UIView.animateWithDuration(0.2, delay: 0, options: .CurveEaseOut, animations: {
                self.e2c.alpha = 0
                self.e1c.alpha = 0
                }, completion: { finished in
                    self.endAnimation()
            })
        }
        else if (e1p != 0) {
            e1if = true
            
            UIView.animateWithDuration(0.2, delay: 0, options: .CurveEaseOut, animations: {
                self.a1c.alpha = 0.1
                self.a2c.alpha = 0.1
                self.a3c.alpha = 0.1
                self.b1c.alpha = 0.1
                self.b2c.alpha = 0.1
                self.b3c.alpha = 0.1
                self.c1c.alpha = 0.1
                self.c2c.alpha = 0.1
                self.c3c.alpha = 0.1
                //self.d1c.alpha = 0.1
                self.d2c.alpha = 0.1
                self.d3c.alpha = 0.1
                //self.e1c.alpha = 0.1
                //self.e2c.alpha = 0.1
                self.e3c.alpha = 0.1
                
                self.a1v.alpha = 0.1
                self.a2v.alpha = 0.1
                self.a3v.alpha = 0.1
                self.b1v.alpha = 0.1
                self.b2v.alpha = 0.1
                self.b3v.alpha = 0.1
                self.c1v.alpha = 0.1
                self.c2v.alpha = 0.1
                self.c3v.alpha = 0.1
                //self.d1v.alpha = 0.1
                self.d2v.alpha = 0.1
                self.d3v.alpha = 0.1
                //self.e1v.alpha = 0.1
                //self.e2v.alpha = 0.1
                self.e3v.alpha = 0.1
                }, completion: { finished in
                    print("")
            })
        }
    }
    
    @IBAction func e2a(sender: AnyObject) {
        if (e2if == true) {
            cancelGrid()
        }
        else if (d2if == true) {
            temp = d2p
            d2p = e2p
            e2p = temp
            
            UIView.animateWithDuration(0.2, delay: 0, options: .CurveEaseOut, animations: {
                self.d2c.alpha = 0
                self.e2c.alpha = 0
                }, completion: { finished in
                    self.endAnimation()
            })
        }
        else if (e1if == true) {
            temp = e1p
            e1p = e2p
            e2p = temp
            
            UIView.animateWithDuration(0.2, delay: 0, options: .CurveEaseOut, animations: {
                self.e1c.alpha = 0
                self.e2c.alpha = 0
                }, completion: { finished in
                    self.endAnimation()
            })
        }
        else if (e3if == true) {
            temp = e3p
            e3p = e2p
            e2p = temp
            
            UIView.animateWithDuration(0.2, delay: 0, options: .CurveEaseOut, animations: {
                self.e3c.alpha = 0
                self.e2c.alpha = 0
                }, completion: { finished in
                    self.endAnimation()
            })
        }
        else if (e2p != 0) {
            e2if = true
            
            UIView.animateWithDuration(0.2, delay: 0, options: .CurveEaseOut, animations: {
                self.a1c.alpha = 0.1
                self.a2c.alpha = 0.1
                self.a3c.alpha = 0.1
                self.b1c.alpha = 0.1
                self.b2c.alpha = 0.1
                self.b3c.alpha = 0.1
                self.c1c.alpha = 0.1
                self.c2c.alpha = 0.1
                self.c3c.alpha = 0.1
                self.d1c.alpha = 0.1
                //self.d2c.alpha = 0.1
                self.d3c.alpha = 0.1
                //self.e1c.alpha = 0.1
                //self.e2c.alpha = 0.1
                //self.e3c.alpha = 0.1
                
                self.a1v.alpha = 0.1
                self.a2v.alpha = 0.1
                self.a3v.alpha = 0.1
                self.b1v.alpha = 0.1
                self.b2v.alpha = 0.1
                self.b3v.alpha = 0.1
                self.c1v.alpha = 0.1
                self.c2v.alpha = 0.1
                self.c3v.alpha = 0.1
                self.d1v.alpha = 0.1
                //self.d2v.alpha = 0.1
                self.d3v.alpha = 0.1
                //self.e1v.alpha = 0.1
                //self.e2v.alpha = 0.1
                //self.e3v.alpha = 0.1
                }, completion: { finished in
                    print("")
            })
        }
    }
    
    @IBAction func e3a(sender: AnyObject) {
        if (e3if == true) {
            cancelGrid()
        }
        else if (d3if == true) {
            temp = d3p
            d3p = e3p
            e3p = temp
            
            UIView.animateWithDuration(0.2, delay: 0, options: .CurveEaseOut, animations: {
                self.d3c.alpha = 0
                self.e3c.alpha = 0
                }, completion: { finished in
                    self.endAnimation()
            })
        }
        else if (e2if == true) {
            temp = e2p
            e2p = e3p
            e3p = temp
            
            UIView.animateWithDuration(0.2, delay: 0, options: .CurveEaseOut, animations: {
                self.e2c.alpha = 0
                self.e3c.alpha = 0
                }, completion: { finished in
                    self.endAnimation()
            })
        }
        else if (e3p != 0) {
            e3if = true
            
            UIView.animateWithDuration(0.2, delay: 0, options: .CurveEaseOut, animations: {
                self.a1c.alpha = 0.1
                self.a2c.alpha = 0.1
                self.a3c.alpha = 0.1
                self.b1c.alpha = 0.1
                self.b2c.alpha = 0.1
                self.b3c.alpha = 0.1
                self.c1c.alpha = 0.1
                self.c2c.alpha = 0.1
                self.c3c.alpha = 0.1
                self.d1c.alpha = 0.1
                self.d2c.alpha = 0.1
                //self.d3c.alpha = 0.1
                self.e1c.alpha = 0.1
                //self.e2c.alpha = 0.1
                //self.e3c.alpha = 0.1
                
                self.a1v.alpha = 0.1
                self.a2v.alpha = 0.1
                self.a3v.alpha = 0.1
                self.b1v.alpha = 0.1
                self.b2v.alpha = 0.1
                self.b3v.alpha = 0.1
                self.c1v.alpha = 0.1
                self.c2v.alpha = 0.1
                self.c3v.alpha = 0.1
                self.d1v.alpha = 0.1
                self.d2v.alpha = 0.1
                //self.d3v.alpha = 0.1
                self.e1v.alpha = 0.1
                //self.e2v.alpha = 0.1
                //self.e3v.alpha = 0.1
                }, completion: { finished in
                    print("")
            })
        }
    }
    
    @IBAction func retry(sender: AnyObject) {
        UIView.animateWithDuration(0.2) {
            self.dimView.alpha = 0
            self.endView.alpha = 0
        }
        
        a1p = 0
        a2p = 0
        a3p = 0
        b1p = 0
        b2p = 0
        b3p = 0
        c1p = 0
        c2p = 0
        c3p = 0
        d1p = 0
        d2p = 0
        d3p = 0
        e1p = 0
        e2p = 0
        e3p = 0
        
        randomizeGrid()
    }
    
    func randomizeGrid(){
        let plant:UInt32 = 1 + (arc4random()%3)
        let column = arc4random() % 3
        let row = arc4random() % 5
        
        if (row == 0) {
            if (column == 0) {
                if (a1p == 0) {
                    a1p = plant
                    temp++
                }
            }
            if (column == 1) {
                if (a2p == 0) {
                    a2p = plant
                    temp++
                }
            }
            if (column == 2) {
                if (a3p == 0) {
                    a3p = plant
                    temp++
                }
            }
        }
        else if (row == 1) {
            if (column == 0) {
                if (b1p == 0) {
                    b1p = plant
                    temp++
                }
            }
            if (column == 1) {
                if (b2p == 0) {
                    b2p = plant
                    temp++
                }
            }
            if (column == 2) {
                if (b3p == 0) {
                    b3p = plant
                    temp++
                }
            }
        }
        else if (row == 2) {
            if (column == 0) {
                if (c1p == 0) {
                    c1p = plant
                    temp++
                }
            }
            if (column == 1) {
                if (c2p == 0) {
                    c2p = plant
                    temp++
                }
            }
            if (column == 2) {
                if (c3p == 0) {
                    c3p = plant
                    temp++
                }
            }
        }
        else if (row == 3) {
            if (column == 0) {
                if (d1p == 0) {
                    d1p = plant
                    temp++
                }
            }
            if (column == 1) {
                if (d2p == 0) {
                    d2p = plant
                    temp++
                }
            }
            if (column == 2) {
                if (d3p == 0) {
                    d3p = plant
                    temp++
                }
            }
        }
        else if (row == 4) {
            if (column == 0) {
                if (e1p == 0) {
                    e1p = plant
                    temp++
                }
            }
            if (column == 1) {
                if (e2p == 0) {
                    e2p = plant
                    temp++
                }
            }
            if (column == 2) {
                if (e3p == 0) {
                    e3p = plant
                    temp++
                }
            }
        }
        
        loadSpaces()
    }
    
    func endTurn(){
        checkRows()
        
        temp = 0
        while temp < 1 {
            randomizeGrid()
        }
        
        if (a1p != 0 && a2p != 0 && a3p != 0 && b1p != 0 && b2p != 0 && b3p != 0 && c1p != 0 && c2p != 0 && c3p != 0 && d1p != 0 && d2p != 0 && d3p != 0 && e1p != 0 && e2p != 0 && e3p != 0) {
            gameOver()
        }
    }
    
    func checkRows(){
        if (a1p == a2p && a2p == a3p) {
            a1p = 0
            a2p = 0
            a3p = 0
        }
        if (b1p == b2p && b2p == b3p) {
            b1p = 0
            b2p = 0
            b3p = 0
        }
        if (c1p == c2p && c2p == c3p) {
            c1p = 0
            c2p = 0
            c3p = 0
        }
        if (d1p == d2p && d2p == d3p) {
            d1p = 0
            d2p = 0
            d3p = 0
        }
        if (e1p == e2p && e2p == e3p) {
            e1p = 0
            e2p = 0
            e3p = 0
        }
    }
    
    func gameOver(){
        UIView.animateWithDuration(0.2) {
            self.dimView.alpha = 0.5
            self.endView.alpha = 1
        }
    }
    
    func endAnimation(){
        cancelGrid()
        loadSpaces()
        endTurn()
    }
    
    func cancelGrid(){
        //mark all of the pieces as unselected
        a1if = false
        a2if = false
        a3if = false
        b1if = false
        b2if = false
        b3if = false
        c1if = false
        c2if = false
        c3if = false
        d1if = false
        d2if = false
        d3if = false
        e1if = false
        e2if = false
        e3if = false
        
        //make all views visible
        UIView.animateWithDuration(0.2, delay: 0, options: .CurveEaseOut, animations: {
            self.a1v.alpha = 1
            self.a2v.alpha = 1
            self.a3v.alpha = 1
            self.b1v.alpha = 1
            self.b2v.alpha = 1
            self.b3v.alpha = 1
            self.c1v.alpha = 1
            self.c2v.alpha = 1
            self.c3v.alpha = 1
            self.d1v.alpha = 1
            self.d2v.alpha = 1
            self.d3v.alpha = 1
            self.e1v.alpha = 1
            self.e2v.alpha = 1
            self.e3v.alpha = 1
            
            self.a1c.alpha = 1
            self.a2c.alpha = 1
            self.a3c.alpha = 1
            self.b1c.alpha = 1
            self.b2c.alpha = 1
            self.b3c.alpha = 1
            self.c1c.alpha = 1
            self.c2c.alpha = 1
            self.c3c.alpha = 1
            self.d1c.alpha = 1
            self.d2c.alpha = 1
            self.d3c.alpha = 1
            self.e1c.alpha = 1
            self.e2c.alpha = 1
            self.e3c.alpha = 1
            
            self.a1i.alpha = 1
            self.a2i.alpha = 1
            self.a3i.alpha = 1
            self.b1i.alpha = 1
            self.b2i.alpha = 1
            self.b3i.alpha = 1
            self.c1i.alpha = 1
            self.c2i.alpha = 1
            self.c3i.alpha = 1
            self.d1i.alpha = 1
            self.d2i.alpha = 1
            self.d3i.alpha = 1
            self.e1i.alpha = 1
            self.e2i.alpha = 1
            self.e3i.alpha = 1
            }, completion: { finished in
                print("")
        })
    }
    
    func loadSpaces(){
        //make all views visible
        a1v.alpha = 1
        a2v.alpha = 1
        a3v.alpha = 1
        b1v.alpha = 1
        b2v.alpha = 1
        b3v.alpha = 1
        c1v.alpha = 1
        c2v.alpha = 1
        c3v.alpha = 1
        d1v.alpha = 1
        d2v.alpha = 1
        d3v.alpha = 1
        e1v.alpha = 1
        e2v.alpha = 1
        e3v.alpha = 1
        
        a1c.alpha = 1
        a2c.alpha = 1
        a3c.alpha = 1
        b1c.alpha = 1
        b2c.alpha = 1
        b3c.alpha = 1
        c1c.alpha = 1
        c2c.alpha = 1
        c3c.alpha = 1
        d1c.alpha = 1
        d2c.alpha = 1
        d3c.alpha = 1
        e1c.alpha = 1
        e2c.alpha = 1
        e3c.alpha = 1
        
        a1i.alpha = 0
        a2i.alpha = 0
        a3i.alpha = 0
        b1i.alpha = 0
        b2i.alpha = 0
        b3i.alpha = 0
        c1i.alpha = 0
        c2i.alpha = 0
        c3i.alpha = 0
        d1i.alpha = 0
        d2i.alpha = 0
        d3i.alpha = 0
        e1i.alpha = 0
        e2i.alpha = 0
        e3i.alpha = 0
        
        //load spaces
        if (a1p == 0) {
            a1v.alpha = 1
            a1i.alpha = 1
            self.a1i.image = UIImage(named: "blank")
        }
        if (a2p == 0) {
            a2v.alpha = 1
            a2i.alpha = 1
            self.a2i.image = UIImage(named: "blank")
        }
        if (a3p == 0) {
            a3v.alpha = 1
            a3i.alpha = 1
            self.a3i.image = UIImage(named: "blank")
        }
        if (b1p == 0) {
            b1v.alpha = 1
            b1i.alpha = 1
            self.b1i.image = UIImage(named: "blank")
        }
        if (b2p == 0) {
            b2v.alpha = 1
            b2i.alpha = 1
            self.b2i.image = UIImage(named: "blank")
        }
        if (b3p == 0) {
            b3v.alpha = 1
            b3i.alpha = 1
            self.b3i.image = UIImage(named: "blank")
        }
        if (c1p == 0) {
            c1v.alpha = 1
            c1i.alpha = 1
            self.c1i.image = UIImage(named: "blank")
        }
        if (c2p == 0) {
            c2v.alpha = 1
            c2i.alpha = 1
            self.c2i.image = UIImage(named: "blank")
        }
        if (c3p == 0) {
            c3v.alpha = 1
            c3i.alpha = 1
            self.c3i.image = UIImage(named: "blank")
        }
        if (d1p == 0) {
            d1v.alpha = 1
            d1i.alpha = 1
            self.d1i.image = UIImage(named: "blank")
        }
        if (d2p == 0) {
            d2v.alpha = 1
            d2i.alpha = 1
            self.d2i.image = UIImage(named: "blank")
        }
        if (d3p == 0) {
            d3v.alpha = 1
            d3i.alpha = 1
            self.d3i.image = UIImage(named: "blank")
        }
        if (e1p == 0) {
            e1v.alpha = 1
            e1i.alpha = 1
            self.e1i.image = UIImage(named: "blank")
        }
        if (e2p == 0) {
            e2v.alpha = 1
            e2i.alpha = 1
            self.e2i.image = UIImage(named: "blank")
        }
        if (e3p == 0) {
            e3v.alpha = 1
            e3i.alpha = 1
            self.e3i.image = UIImage(named: "blank")
        }
        
        //load herbs
        if (a1p == 1) {
            a1v.alpha = 1
            a1i.alpha = 1
            self.a1i.image = UIImage(named: "carrot")
        }
        if (a2p == 1) {
            a2v.alpha = 1
            a2i.alpha = 1
            self.a2i.image = UIImage(named: "carrot")
        }
        if (a3p == 1) {
            a3v.alpha = 1
            a3i.alpha = 1
            self.a3i.image = UIImage(named: "carrot")
        }
        if (b1p == 1) {
            b1v.alpha = 1
            b1i.alpha = 1
            self.b1i.image = UIImage(named: "carrot")
        }
        if (b2p == 1) {
            b2v.alpha = 1
            b2i.alpha = 1
            self.b2i.image = UIImage(named: "carrot")
        }
        if (b3p == 1) {
            b3v.alpha = 1
            b3i.alpha = 1
            self.b3i.image = UIImage(named: "carrot")
        }
        if (c1p == 1) {
            c1v.alpha = 1
            c1i.alpha = 1
            self.c1i.image = UIImage(named: "carrot")
        }
        if (c2p == 1) {
            c2v.alpha = 1
            c2i.alpha = 1
            self.c2i.image = UIImage(named: "carrot")
        }
        if (c3p == 1) {
            c3v.alpha = 1
            c3i.alpha = 1
            self.c3i.image = UIImage(named: "carrot")
        }
        if (d1p == 1) {
            d1v.alpha = 1
            d1i.alpha = 1
            self.d1i.image = UIImage(named: "carrot")
        }
        if (d2p == 1) {
            d2v.alpha = 1
            d2i.alpha = 1
            self.d2i.image = UIImage(named: "carrot")
        }
        if (d3p == 1) {
            d3v.alpha = 1
            d3i.alpha = 1
            self.d3i.image = UIImage(named: "carrot")
        }
        if (e1p == 1) {
            e1v.alpha = 1
            e1i.alpha = 1
            self.e1i.image = UIImage(named: "carrot")
        }
        if (e2p == 1) {
            e2v.alpha = 1
            e2i.alpha = 1
            self.e2i.image = UIImage(named: "carrot")
        }
        if (e3p == 1) {
            e3v.alpha = 1
            e3i.alpha = 1
            self.e3i.image = UIImage(named: "carrot")
        }
        
        //load tomatoes
        if (a1p == 2) {
            a1v.alpha = 1
            a1i.alpha = 1
            self.a1i.image = UIImage(named: "tomato")
        }
        if (a2p == 2) {
            a2v.alpha = 1
            a2i.alpha = 1
            self.a2i.image = UIImage(named: "tomato")
        }
        if (a3p == 2) {
            a3v.alpha = 1
            a3i.alpha = 1
            self.a3i.image = UIImage(named: "tomato")
        }
        if (b1p == 2) {
            b1v.alpha = 1
            b1i.alpha = 1
            self.b1i.image = UIImage(named: "tomato")
        }
        if (b2p == 2) {
            b2v.alpha = 1
            b2i.alpha = 1
            self.b2i.image = UIImage(named: "tomato")
        }
        if (b3p == 2) {
            b3v.alpha = 1
            b3i.alpha = 1
            self.b3i.image = UIImage(named: "tomato")
        }
        if (c1p == 2) {
            c1v.alpha = 1
            c1i.alpha = 1
            self.c1i.image = UIImage(named: "tomato")
        }
        if (c2p == 2) {
            c2v.alpha = 1
            c2i.alpha = 1
            self.c2i.image = UIImage(named: "tomato")
        }
        if (c3p == 2) {
            c3v.alpha = 1
            c3i.alpha = 1
            self.c3i.image = UIImage(named: "tomato")
        }
        if (d1p == 2) {
            d1v.alpha = 1
            d1i.alpha = 1
            self.d1i.image = UIImage(named: "tomato")
        }
        if (d2p == 2) {
            d2v.alpha = 1
            d2i.alpha = 1
            self.d2i.image = UIImage(named: "tomato")
        }
        if (d3p == 2) {
            d3v.alpha = 1
            d3i.alpha = 1
            self.d3i.image = UIImage(named: "tomato")
        }
        if (e1p == 2) {
            e1v.alpha = 1
            e1i.alpha = 1
            self.e1i.image = UIImage(named: "tomato")
        }
        if (e2p == 2) {
            e2v.alpha = 1
            e2i.alpha = 1
            self.e2i.image = UIImage(named: "tomato")
        }
        if (e3p == 2) {
            e3v.alpha = 1
            e3i.alpha = 1
            self.e3i.image = UIImage(named: "tomato")
        }
        
        //load onion
        if (a1p == 3) {
            a1v.alpha = 1
            a1i.alpha = 1
            self.a1i.image = UIImage(named: "onion")
        }
        if (a2p == 3) {
            a2v.alpha = 1
            a2i.alpha = 1
            self.a2i.image = UIImage(named: "onion")
        }
        if (a3p == 3) {
            a3v.alpha = 1
            a3i.alpha = 1
            self.a3i.image = UIImage(named: "onion")
        }
        if (b1p == 3) {
            b1v.alpha = 1
            b1i.alpha = 1
            self.b1i.image = UIImage(named: "onion")
        }
        if (b2p == 3) {
            b2v.alpha = 1
            b2i.alpha = 1
            self.b2i.image = UIImage(named: "onion")
        }
        if (b3p == 3) {
            b3v.alpha = 1
            b3i.alpha = 1
            self.b3i.image = UIImage(named: "onion")
        }
        if (c1p == 3) {
            c1v.alpha = 1
            c1i.alpha = 1
            self.c1i.image = UIImage(named: "onion")
        }
        if (c2p == 3) {
            c2v.alpha = 1
            c2i.alpha = 1
            self.c2i.image = UIImage(named: "onion")
        }
        if (c3p == 3) {
            c3v.alpha = 1
            c3i.alpha = 1
            self.c3i.image = UIImage(named: "onion")
        }
        if (d1p == 3) {
            d1v.alpha = 1
            d1i.alpha = 1
            self.d1i.image = UIImage(named: "onion")
        }
        if (d2p == 3) {
            d2v.alpha = 1
            d2i.alpha = 1
            self.d2i.image = UIImage(named: "onion")
        }
        if (d3p == 3) {
            d3v.alpha = 1
            d3i.alpha = 1
            self.d3i.image = UIImage(named: "onion")
        }
        if (e1p == 3) {
            e1v.alpha = 1
            e1i.alpha = 1
            self.e1i.image = UIImage(named: "onion")
        }
        if (e2p == 3) {
            e2v.alpha = 1
            e2i.alpha = 1
            self.e2i.image = UIImage(named: "onion")
        }
        if (e3p == 3) {
            e3v.alpha = 1
            e3i.alpha = 1
            self.e3i.image = UIImage(named: "onion")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.dimView.alpha = 0
        self.endView.alpha = 0
        
        a1v.layer.cornerRadius = border
        a1v.clipsToBounds = true
        a2v.layer.cornerRadius = border
        a2v.clipsToBounds = true
        a3v.layer.cornerRadius = border
        a3v.clipsToBounds = true
        b1v.layer.cornerRadius = border
        b1v.clipsToBounds = true
        b2v.layer.cornerRadius = border
        b2v.clipsToBounds = true
        b3v.layer.cornerRadius = border
        b3v.clipsToBounds = true
        c1v.layer.cornerRadius = border
        c1v.clipsToBounds = true
        c2v.layer.cornerRadius = border
        c2v.clipsToBounds = true
        c3v.layer.cornerRadius = border
        c3v.clipsToBounds = true
        d1v.layer.cornerRadius = border
        d1v.clipsToBounds = true
        d2v.layer.cornerRadius = border
        d2v.clipsToBounds = true
        d3v.layer.cornerRadius = border
        d3v.clipsToBounds = true
        e1v.layer.cornerRadius = border
        e1v.clipsToBounds = true
        e2v.layer.cornerRadius = border
        e2v.clipsToBounds = true
        e3v.layer.cornerRadius = border
        e3v.clipsToBounds = true
        
        a1c.layer.cornerRadius = border
        a1c.clipsToBounds = true
        a2c.layer.cornerRadius = border
        a2c.clipsToBounds = true
        a3c.layer.cornerRadius = border
        a3c.clipsToBounds = true
        b1c.layer.cornerRadius = border
        b1c.clipsToBounds = true
        b2c.layer.cornerRadius = border
        b2c.clipsToBounds = true
        b3c.layer.cornerRadius = border
        b3c.clipsToBounds = true
        c1c.layer.cornerRadius = border
        c1c.clipsToBounds = true
        c2c.layer.cornerRadius = border
        c2c.clipsToBounds = true
        c3c.layer.cornerRadius = border
        c3c.clipsToBounds = true
        d1c.layer.cornerRadius = border
        d1c.clipsToBounds = true
        d2c.layer.cornerRadius = border
        d2c.clipsToBounds = true
        d3c.layer.cornerRadius = border
        d3c.clipsToBounds = true
        e1c.layer.cornerRadius = border
        e1c.clipsToBounds = true
        e2c.layer.cornerRadius = border
        e2c.clipsToBounds = true
        e3c.layer.cornerRadius = border
        e3c.clipsToBounds = true
        
        a1i.layer.cornerRadius = border
        a1i.clipsToBounds = true
        a2i.layer.cornerRadius = border
        a2i.clipsToBounds = true
        a3i.layer.cornerRadius = border
        a3i.clipsToBounds = true
        b1i.layer.cornerRadius = border
        b1i.clipsToBounds = true
        b2i.layer.cornerRadius = border
        b2i.clipsToBounds = true
        b3i.layer.cornerRadius = border
        b3i.clipsToBounds = true
        c1i.layer.cornerRadius = border
        c1i.clipsToBounds = true
        c2i.layer.cornerRadius = border
        c2i.clipsToBounds = true
        c3i.layer.cornerRadius = border
        c3i.clipsToBounds = true
        d1i.layer.cornerRadius = border
        d1i.clipsToBounds = true
        d2i.layer.cornerRadius = border
        d2i.clipsToBounds = true
        d3i.layer.cornerRadius = border
        d3i.clipsToBounds = true
        e1i.layer.cornerRadius = border
        e1i.clipsToBounds = true
        e2i.layer.cornerRadius = border
        e2i.clipsToBounds = true
        e3i.layer.cornerRadius = border
        e3i.clipsToBounds = true
        endView.layer.cornerRadius = border
        endView.clipsToBounds = true
        retryView.layer.cornerRadius = border
        retryView.clipsToBounds = true
        
        endView.clipsToBounds = false
        endView.layer.cornerRadius = border
        endView.layer.shadowRadius = border
        endView.layer.shadowColor = UIColor.darkGrayColor().CGColor
        endView.layer.shadowOffset = CGSizeMake(0,0)
        endView.layer.shadowOpacity = 0.2
        
        randomizeGrid()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}