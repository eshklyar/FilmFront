//
//  MyCustomTableViewCell.m
//  DeprocrastinatorR
//
//  Created by Edik Shklyar on 5/6/15.
//  Copyright (c) 2015 Edik Shklyar. All rights reserved.
//

#import "MyCustomTableViewCell.h"
@interface MyCustomTableViewCell()
@property (weak, nonatomic) IBOutlet UIButton *myButton;

@end

@implementation MyCustomTableViewCell
- (IBAction)didtap:(id)sender {
}

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
