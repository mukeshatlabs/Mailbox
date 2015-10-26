//
//  MailboxViewController.swift
//  Mailbox
//
//  Created by Mukesh Jain on 10/25/15.
//  Copyright © 2015 walmart. All rights reserved.
//

import UIKit

class MailboxViewController: UIViewController, UIScrollViewDelegate{

    @IBOutlet weak var imgFeed: UIImageView!
    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet weak var imgHelp: UIImageView!
    
    @IBOutlet weak var listView: UIImageView!
    @IBOutlet weak var imgSearch: UIImageView!
    @IBOutlet weak var rescheduleView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var scrollViewSize: CGSize = CGSizeMake(0, 0)
        scrollViewSize.height = imgFeed.image!.size.height + imgHelp.image!.size.height + imgSearch.image!.size.height + 150
        scrollViewSize.width = imgFeed.image!.size.width
        
        scrollView.delegate = self
        scrollView.contentSize = scrollViewSize
        listView.alpha = 0
        rescheduleView.alpha = 0

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func scrollViewDidScroll(scrollView: UIScrollView) {
        // This method is called as the user scrolls
    }
    
    func scrollViewWillBeginDragging(scrollView: UIScrollView) {
        
    }
    
    func scrollViewDidEndDragging(scrollView: UIScrollView,
        willDecelerate decelerate: Bool) {
            // This method is called right as the user lifts their finger
    }
    
    func scrollViewDidEndDecelerating(scrollView: UIScrollView) {
        // This method is called when the scrollview finally stops scrolling.
    }

    
    @IBAction func onMessageSwipePanGesture(sender: UIPanGestureRecognizer) {
        
        let point = sender.locationInView(view)
        if sender.state == UIGestureRecognizerState.Began {
            print("Gesture began at: \(point)")
        } else if sender.state == UIGestureRecognizerState.Changed {
            print("Gesture changed at: \(point)")
        } else if sender.state == UIGestureRecognizerState.Ended {
            print("Gesture ended at: \(point)")
        }
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
