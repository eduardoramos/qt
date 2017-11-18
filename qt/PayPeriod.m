//
//  PayPeriod.m
//  qt
//
//  Created by Eduardo on 4/1/17.
//  Copyright © 2017 Eduardo Ramos. All rights reserved.
//

#import "PayPeriod.h"

@implementation PayPeriod

@synthesize summstartOffset, summYear, summPP,leavyear;

- (id)init {
    self = [super init];
    return self;
}

- (id) initWithSummstartOffset:(NSInteger) aSummStartOffset
               withSummYear:(NSInteger) aSummYear
               withSummPP:(NSInteger) aSummPP
                withLeavyear:(NSInteger)aLeavyear
{
    self = [super init];
    self.summstartOffset = aSummStartOffset;
    self.summYear = aSummYear;
    self.summPP = aSummPP;
    self.leavyear = aLeavyear;
    return (self);
}

-(NSDate*) startDate{
    NSTimeInterval interval = (self.summstartOffset+1)*24*60*60;
    
    NSDate* sd = [NSDate dateWithTimeIntervalSinceReferenceDate:interval];
    
    NSTimeInterval timeZoneOffset = [[NSTimeZone defaultTimeZone] secondsFromGMT]; // You could also use the systemTimeZone method
    NSTimeInterval gmtTimeInterval = [sd timeIntervalSinceReferenceDate] + timeZoneOffset;
    NSDate *localDate = [NSDate dateWithTimeIntervalSinceReferenceDate:gmtTimeInterval];
    
    return localDate;
}

@end
