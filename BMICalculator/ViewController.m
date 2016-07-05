//
//  ViewController.m
//  BMICalculator
//
//  Created by Brendan Raimann on 6/28/16.
//  Copyright © 2016 Brendan Raimann. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
   [super viewDidLoad];
   // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
   [super didReceiveMemoryWarning];
   // Dispose of any resources that can be recreated.
}

- (IBAction)buttonPressed:(id)sender {
   NSLog(@"My buttons are being pressed!");
   NSLog(@"the text is: %@", self.myTextField.text);
      Person* p = [Person sharedPersonInstance];
      p.weightInKG = @(self.myTextField.text.floatValue);
         // = [NSNumber numberWithFloat: self.myTextField.text.floatValue];
      p.heightInM = @(self.otherTextField.text.floatValue);
      NSNumber* bmi = p.bmi;
   self.myLabel.text = [NSString stringWithFormat:@"%.2f", bmi.floatValue];
   
  // p.isMan = @(self.);
   p.age = @(self.fourthTextField.text.floatValue);
   NSNumber* bmr = p.bmr;
   self.otherLabel.text = [NSString stringWithFormat:@"%.2f", bmr.floatValue];

   NSBundle *myBundle = [NSBundle mainBundle];
   UIImage *newImage;
   NSString *path;
   if (bmi.floatValue < 18.5)
   {
      path = [myBundle pathForResource:@"skinny" ofType: @"png"];
   }
   else
   {
      if (bmi.floatValue >= 18.5 && bmi.floatValue < 25)
      {
         path = [myBundle pathForResource:@"normal" ofType: @"png"];
      }
      else
      {
         path = [myBundle pathForResource:@"fat" ofType: @"png"];
      }
   }
   newImage = [UIImage imageWithContentsOfFile: path];
   self.firstImage.image = newImage;
   
      //double w = [weight doubleValue];
      //double h = [height doubleValue];
      //double x = w/(h*h);
      //NSString* output = [NSString stringWithFormat: @"%f", x];
      //self.myLabel.text = output;
   //self.myLabel.text = self.myTextField.text;
   //Person* p = [Person sharedPersonInstance];
   //NSLog(@"%@", [p description]);
}

-(void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
   NSLog(@"Touches Began");
   [self.myTextField resignFirstResponder];
   [self.otherTextField resignFirstResponder];
   [self.fourthTextField resignFirstResponder];
}



- (IBAction)segmentedControl:(id)sender
{
   Person* p = [Person sharedPersonInstance];
   UISegmentedControl *sc = (UISegmentedControl*)sender;
   if (sc.selectedSegmentIndex == 0)
      p.isMan = YES;
   else
      p.isMan = NO;
   
}
@end
