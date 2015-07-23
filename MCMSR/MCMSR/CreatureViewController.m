//
//  CreatureViewController.m
//  MCMSR
//
//  Created by Edik Shklyar on 5/14/15.
//  Copyright (c) 2015 Edik Shklyar. All rights reserved.
//

#import "CreatureViewController.h"
#import "RootViewController.h"

@interface CreatureViewController ()<UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property NSMutableArray *creatures;
@property BOOL edit;

@end

@implementation CreatureViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.edit = NO;
    self.label.text = self.creature;
    self.textField.hidden =YES;
    self.textField.text = self.creature;

//    UIView *textFieldView = self.textField;
//    textFieldView.isHidden = YES;

}
-(void)viewWillDisappear:(BOOL)animated{

}
-(IBAction)onBackBtnPrsd:(id)sender{

}
- (IBAction)onEditBtnPrsd:(id)sender
{
    if ([[sender currentTitle] isEqualToString:@"Edit"]) {
        [sender setTitle:@"Done" forState:UIControlStateNormal];
        self.edit=YES;
        self.textField.hidden = NO;
        self.label.hidden =YES;
    }
//    when done
    else{
        [sender setTitle:@"Edit" forState:UIControlStateNormal];
        self.edit=NO;
        self.textField.hidden = YES;
        self.label.hidden = NO;
        self.creature = self.textField.text;
        self.label.text = self.creature;
        // Inside another ViewController

 

//        ViewController *vc =[[UIViewController alloc]init];
//        [ViewController.creatures replaceObjectAtIndex:self.returnedIndex.row withObject:self.returnedCreature];

        }
}

#pragma mark -textField

- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    [self.textField resignFirstResponder];

    return YES;
}
- (BOOL)textFieldShouldClear:(UITextField *)textField{
    //    ????
    self.textField.clearsOnBeginEditing = YES;
    return YES;
}
- (void)textFieldDidBeginEditing:(UITextField *)textField{
    self.textField.text =@"";
}
- (void)textFieldDidEndEditing:(UITextField *)textField {
    self.textField.text = @"";
}

@end
