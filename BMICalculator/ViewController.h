//
//  ViewController.h
//  BMICalculator
//
//  Created by Brendan Raimann on 6/28/16.
//  Copyright © 2016 Brendan Raimann. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Person.h"

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *myLabel;
@property (weak, nonatomic) IBOutlet UILabel *otherLabel;
@property (weak, nonatomic) IBOutlet UITextField *myTextField;
@property (weak, nonatomic) IBOutlet UITextField *otherTextField;
@property (weak, nonatomic) IBOutlet UITextField *fourthTextField;
@property (weak, nonatomic) IBOutlet UIImageView *firstImage;

- (IBAction)segmentedControl:(id)sender;

- (IBAction)buttonPressed:(id)sender;

@end

