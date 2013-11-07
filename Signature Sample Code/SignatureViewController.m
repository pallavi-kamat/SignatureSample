//
//  SignatureViewController.m
//  Signature Sample Code
//
//  Created by Mac-4 on 07/11/13.
//  Copyright (c) 2013 Pallavi Kamat. All rights reserved.
//

#import "SignatureViewController.h"

@interface SignatureViewController ()

@end

@implementation SignatureViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Actions

-(IBAction)buttonClearSignature:(id)sender {
    [signatureView erase];
}

-(IBAction)buttonSaveSignature:(id)sender {
    UIImage *image = [signatureView image];
    [imageView setImage:image];
}

@end
