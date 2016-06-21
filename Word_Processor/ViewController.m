//
//  ViewController.m
//  Word_Processor
//
//  Created by Toleen Jaradat on 6/17/16.
//  Copyright © 2016 Toleen Jaradat. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic,weak) IBOutlet UITextView *textView;
@property (nonatomic,weak) IBOutlet UIButton *button;
@property (nonatomic,weak) IBOutlet UILabel *sentencesNumberLabel;
@property (nonatomic,weak) IBOutlet UILabel *vowelsNumberLabel;
@property (nonatomic,weak) IBOutlet UILabel *characterNumberLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    }

-(IBAction) whenButtonisPressed {
    
    NSMutableArray *textArray = [NSMutableArray array];
    
    for (int i = 0; i < (_textView.text.length); i++) {
        
        [textArray addObject:[NSString stringWithFormat:@"%C", [_textView.text characterAtIndex:i]]];
    }
   
    NSArray *vowels = [NSArray arrayWithObjects:@"A",@"E",@"O",@"I",@"U",@"a",@"e",@"o",@"i",@"u", nil];
    
    int sentencesNumber = 0;
    int vowelsNumber = 0;
    int characterNumber = 0;
    
// How many sentences
    NSString *period = @".";

    for(NSString *x in textArray) {
        
         if ( [x isEqualToString:period])
        {
        sentencesNumber = sentencesNumber+1;
        }
    }
    _sentencesNumberLabel.text = [NSString stringWithFormat:@"%d",sentencesNumber];
    
// How many vowels
    
    for(NSString *x in textArray) {
        
        for(NSString *y in vowels){
            
        if ( [x isEqualToString:y])
            {
            vowelsNumber = vowelsNumber+1;
            }
        }
    }
    
    _vowelsNumberLabel.text = [NSString stringWithFormat:@"%d",vowelsNumber];
    
// How many characters
    
    for(int i = 0; i< _textView.text.length ; i+=1) {
    
    characterNumber = characterNumber +1;
        
    }
    
    _characterNumberLabel.text = [NSString stringWithFormat:@"%d",characterNumber];
    
    }

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
