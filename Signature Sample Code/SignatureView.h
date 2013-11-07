//
//  SignatureView.h
//  CHOC Childrens
//
//  Created by Mac-4 on 05/09/13.
//  Copyright (c) 2013 Pallavi Kamat. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SignatureView : UIView
- (void)erase;
- (UIImage *)image;
-(BOOL) isDrawn:(CGImageRef)imageSign;
@end
