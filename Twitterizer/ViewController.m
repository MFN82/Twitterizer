//
//  ViewController.m
//  Twitterizer
//
//  Created by Martijn Nahumury on 16/03/16.
//  Copyright © 2016 MFN Advies. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UITextViewDelegate>
@property (weak, nonatomic) IBOutlet UITextView *textViewOutlet;
@property (weak, nonatomic) IBOutlet UILabel *charachterCountUpdate;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
}
- (IBAction)twitterizePressed:(UIButton *)sender {
    NSString *twitterString = self.textViewOutlet.text;
    NSCharacterSet *vowels = [NSCharacterSet characterSetWithCharactersInString:@"aeiouAEIOU"];

    NSString *resultString = [[twitterString componentsSeparatedByCharactersInSet:vowels] componentsJoinedByString:@""];
    
    self.textViewOutlet.text = [NSString stringWithFormat:@"%@",resultString];

}

- (IBAction)addHashtagPressed:(UIButton *)sender {
    
    
}
- (IBAction)ReversePressed:(UIButton *)sender {
    
    
}

- (BOOL)textView:(UITextView *)aTextView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text {
    NSInteger newTextLength = [aTextView.text length] - range.length + [text length];
    // "Length of existing text" - "Length of replaced text" + "Length of replacement text"
    
    if (newTextLength > 140) {
        // don't allow change
        return NO;
    }
    self.charachterCountUpdate.text = [NSString stringWithFormat:@"%li characters", (long)newTextLength];
    return YES;
}

@end
