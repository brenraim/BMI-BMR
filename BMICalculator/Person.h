//
//  Person.h
//  BMICalculator
//
//  Created by Brendan Raimann on 6/29/16.
//  Copyright © 2016 Brendan Raimann. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
@property (strong, nonatomic) NSNumber* weightInKG;
@property (strong, nonatomic) NSNumber* heightInM;
@property (assign) bool isMan;
@property (strong, nonatomic) NSNumber* age;


+(Person*) sharedPersonInstance;

-(NSNumber*) bmi;
-(NSNumber*) bmr;
@end
