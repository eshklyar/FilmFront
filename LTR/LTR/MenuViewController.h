//
//  MenuViewController.h
//  LTR
//
//  Created by Edik Shklyar on 6/28/15.
//  Copyright (c) 2015 Edik Shklyar. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol MenuDelegate

-(void)lionsButtonTapped;
-(void)tigersButtonTapped;

@end

@interface MenuViewController : UIViewController
@property id<MenuDelegate> delegate;

@end
