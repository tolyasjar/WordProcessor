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
    
    sentencesNumber = 0;
    vowelsNumber = 0;
    
    }

-(IBAction) whenButtonisPressed {
    
    [self sentenceCounter];
    [self countVowels];
    [self countChars];
    }

// How many sentences
-(void) sentenceCounter{
    
    for (int i = 0; i < (self.textView.text.length); i++) {
        
        if ([self.textView.text characterAtIndex:i] == '.')
        {
            sentencesNumber = sentencesNumber+1;
        }
    }

    _sentencesNumberLabel.text = [NSString stringWithFormat:@"This text has %d sentenses.",sentencesNumber];
}

// How many vowels
-(void) countVowels {
    
   NSString* x =[self.textView.text lowercaseString];
   for (int i = 0; i < (self.textView.text.length); i++) {
       
       if ( [x characterAtIndex:i] == 'a'|| [x characterAtIndex:i] == 'e' || [x characterAtIndex:i] == 'i'|| [x characterAtIndex:i] == 'u'|| [x characterAtIndex:i]=='o')
        
           vowelsNumber = vowelsNumber+1;
       
            }
        
        self.vowelsNumberLabel.text = [NSString stringWithFormat:@"This text has %d vowels.",vowelsNumber];
  }


// How many characters
    
-(void) countChars{
    
        self.characterNumberLabel.text = [NSString stringWithFormat:@"This text has %lu characters.",self.textView.text.length];
    }
    

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
