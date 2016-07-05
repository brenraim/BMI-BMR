//
//  Person.m
//  BMICalculator
//
//  Created by Brendan Raimann on 6/29/16.
//  Copyright © 2016 Brendan Raimann. All rights reserved.
//

#import "Person.h"

static Person* secretPerson;

@implementation Person
@synthesize weightInKG;
@synthesize heightInM;
@synthesize isMan;
@synthesize age;

+(Person*) sharedPersonInstance
{
   if(secretPerson == nil)
   {
      secretPerson = [[Person alloc] init];
      secretPerson.heightInM = @1.75;
      secretPerson.weightInKG = @78;
      secretPerson.isMan = YES;
      secretPerson.age = @30;
   }
   return secretPerson;
}

-(NSString*) description
{
   return [NSString stringWithFormat:@"%p %@ %@ %@", self, self.weightInKG, self.heightInM, self.age];
}

-(NSNumber*) bmi
{
   float w = self.weightInKG.floatValue;
   float h = self.heightInM.floatValue;
   float bmi = w/(h*h);
   return @(bmi);
}

-(NSNumber*) bmr
{
   //For men: BMR = 10 x weight (kg) + 6.25 x height (cm) – 5 x age (years) + 5
   //For women: BMR = 10 x weight (kg) + 6.25 x height (cm) – 5 x age (years) – 161
   float w = self.weightInKG.floatValue;
   float h = self.heightInM.floatValue;
   float a = self.age.floatValue;
   
  if (isMan == YES)
   {
      return @((10 * w) + (625 * h) - (5 * a) + 5);
   }
  else
   {
      return @((10 * w) + (625 * h) - (5 * a) - 161);
   }
}









@end
