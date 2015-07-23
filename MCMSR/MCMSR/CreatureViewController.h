//
//  CreatureViewController.h
//  MCMSR
//
//  Created by Edik Shklyar on 5/14/15.
//  Copyright (c) 2015 Edik Shklyar. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MagicalCreature.h"


@interface CreatureViewController : UIViewController
@property NSString *creature;
@property NSIndexPath *indexPath;
@property MagicalCreature *magicCreature;


@end
