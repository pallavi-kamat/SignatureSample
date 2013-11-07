//
//  SignatureViewController.h
//  Signature Sample Code
//
//  Created by Mac-4 on 07/11/13.
//  Copyright (c) 2013 Pallavi Kamat. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SignatureView.h"

@interface SignatureViewController : UIViewController {
    IBOutlet SignatureView *signatureView;
    IBOutlet UIImageView *imageView;
}

-(IBAction)buttonClearSignature:(id)sender;
-(IBAction)buttonSaveSignature:(id)sender;

@end
