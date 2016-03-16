//
//  ViewController.m
//  Twitterizer
//
//  Created by Martijn Nahumury on 16/03/16.
//  Copyright © 2016 MFN Advies. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
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
  
    
    NSString *stringWithoutVowels = [twitterString stringByReplacingOccurrencesOfString:i withString:@""];
        
    }
    
    self.textViewOutlet.text = stringWithoutVowels;
    
    
    
}

- (IBAction)addHashtagPressed:(UIButton *)sender {
}
- (IBAction)ReversePressed:(UIButton *)sender {
}


@end
