//
//  DataRetriever.m
//  qt
//
//  Created by Eduardo Ramos on 6/25/16.
//  Copyright © 2016 Eduardo Ramos. All rights reserved.
//

#import <Foundation/Foundation.h>

#import <EventKit/EventKit.h>

#import "PayPeriod.h"
#import "DataRetriever.h"

@implementation DataRetriever

@synthesize payperiodsArray;

static DataRetriever* _sharedDataRetriever = nil;

+(DataRetriever*)sharedDataRetrieverSingleton
{
    @synchronized([DataRetriever class])
    {
        if(_sharedDataRetriever == nil)
            _sharedDataRetriever = [[super allocWithZone:NULL] init];
    }
    return _sharedDataRetriever;
}

- (EKEventStore*)store {
    if (!_store) {
        _store = [[EKEventStore alloc] init];
    }
    return _store;
}

- (id)init {
    self = [super init];
    
    self.payperiodsArray =
        [NSArray arrayWithObjects:
         [[PayPeriod alloc] initWithSummstartOffset:5830 withSummYear:2017 withSummPP:1 withLeavyear:2016],
         [[PayPeriod alloc] initWithSummstartOffset:5830 withSummYear:2017 withSummPP:1 withLeavyear:2016],
         [[PayPeriod alloc] initWithSummstartOffset:5844 withSummYear:2017 withSummPP:2 withLeavyear:2016],
         [[PayPeriod alloc] initWithSummstartOffset:5858 withSummYear:2017 withSummPP:3 withLeavyear:2017],
         [[PayPeriod alloc] initWithSummstartOffset:5872 withSummYear:2017 withSummPP:4 withLeavyear:2017],
         [[PayPeriod alloc] initWithSummstartOffset:5886 withSummYear:2017 withSummPP:5 withLeavyear:2017],
         [[PayPeriod alloc] initWithSummstartOffset:5900 withSummYear:2017 withSummPP:6 withLeavyear:2017],
         [[PayPeriod alloc] initWithSummstartOffset:5914 withSummYear:2017 withSummPP:7 withLeavyear:2017],
         [[PayPeriod alloc] initWithSummstartOffset:5928 withSummYear:2017 withSummPP:8 withLeavyear:2017],
         [[PayPeriod alloc] initWithSummstartOffset:5942 withSummYear:2017 withSummPP:9 withLeavyear:2017],
         [[PayPeriod alloc] initWithSummstartOffset:5956 withSummYear:2017 withSummPP:10 withLeavyear:2017],
         [[PayPeriod alloc] initWithSummstartOffset:5970 withSummYear:2017 withSummPP:11 withLeavyear:2017],
         [[PayPeriod alloc] initWithSummstartOffset:5984 withSummYear:2017 withSummPP:12 withLeavyear:2017],
         [[PayPeriod alloc] initWithSummstartOffset:5998 withSummYear:2017 withSummPP:13 withLeavyear:2017],
         [[PayPeriod alloc] initWithSummstartOffset:6012 withSummYear:2017 withSummPP:14 withLeavyear:2017],
         [[PayPeriod alloc] initWithSummstartOffset:6026 withSummYear:2017 withSummPP:15 withLeavyear:2017],
         [[PayPeriod alloc] initWithSummstartOffset:6040 withSummYear:2017 withSummPP:16 withLeavyear:2017],
         [[PayPeriod alloc] initWithSummstartOffset:6054 withSummYear:2017 withSummPP:17 withLeavyear:2017],
         [[PayPeriod alloc] initWithSummstartOffset:6068 withSummYear:2017 withSummPP:18 withLeavyear:2017],
         [[PayPeriod alloc] initWithSummstartOffset:6082 withSummYear:2017 withSummPP:19 withLeavyear:2017],
         [[PayPeriod alloc] initWithSummstartOffset:6096 withSummYear:2017 withSummPP:20 withLeavyear:2017],
         [[PayPeriod alloc] initWithSummstartOffset:6110 withSummYear:2017 withSummPP:21 withLeavyear:2017],
         [[PayPeriod alloc] initWithSummstartOffset:6124 withSummYear:2017 withSummPP:22 withLeavyear:2017],
         [[PayPeriod alloc] initWithSummstartOffset:6138 withSummYear:2017 withSummPP:23 withLeavyear:2017],
         [[PayPeriod alloc] initWithSummstartOffset:6152 withSummYear:2017 withSummPP:24 withLeavyear:2017],
         [[PayPeriod alloc] initWithSummstartOffset:6166 withSummYear:2017 withSummPP:25 withLeavyear:2017],
         [[PayPeriod alloc] initWithSummstartOffset:6180 withSummYear:2017 withSummPP:26 withLeavyear:2017],
         [[PayPeriod alloc] initWithSummstartOffset:6194 withSummYear:2018 withSummPP:1 withLeavyear:2017],
         [[PayPeriod alloc] initWithSummstartOffset:6208 withSummYear:2018 withSummPP:2 withLeavyear:2017],
         [[PayPeriod alloc] initWithSummstartOffset:6222 withSummYear:2018 withSummPP:3 withLeavyear:2018],
         [[PayPeriod alloc] initWithSummstartOffset:6236 withSummYear:2018 withSummPP:4 withLeavyear:2018],
         [[PayPeriod alloc] initWithSummstartOffset:6250 withSummYear:2018 withSummPP:5 withLeavyear:2018],
         [[PayPeriod alloc] initWithSummstartOffset:6264 withSummYear:2018 withSummPP:6 withLeavyear:2018],
         [[PayPeriod alloc] initWithSummstartOffset:6278 withSummYear:2018 withSummPP:7 withLeavyear:2018],
         [[PayPeriod alloc] initWithSummstartOffset:6292 withSummYear:2018 withSummPP:8 withLeavyear:2018],
         [[PayPeriod alloc] initWithSummstartOffset:6306 withSummYear:2018 withSummPP:9 withLeavyear:2018],
         [[PayPeriod alloc] initWithSummstartOffset:6320 withSummYear:2018 withSummPP:10 withLeavyear:2018],
         [[PayPeriod alloc] initWithSummstartOffset:6334 withSummYear:2018 withSummPP:11 withLeavyear:2018],
         [[PayPeriod alloc] initWithSummstartOffset:6348 withSummYear:2018 withSummPP:12 withLeavyear:2018],
         [[PayPeriod alloc] initWithSummstartOffset:6362 withSummYear:2018 withSummPP:13 withLeavyear:2018],
         [[PayPeriod alloc] initWithSummstartOffset:6376 withSummYear:2018 withSummPP:14 withLeavyear:2018],
         [[PayPeriod alloc] initWithSummstartOffset:6390 withSummYear:2018 withSummPP:15 withLeavyear:2018],
         [[PayPeriod alloc] initWithSummstartOffset:6404 withSummYear:2018 withSummPP:16 withLeavyear:2018],
         [[PayPeriod alloc] initWithSummstartOffset:6418 withSummYear:2018 withSummPP:17 withLeavyear:2018],
         [[PayPeriod alloc] initWithSummstartOffset:6432 withSummYear:2018 withSummPP:18 withLeavyear:2018],
         [[PayPeriod alloc] initWithSummstartOffset:6446 withSummYear:2018 withSummPP:19 withLeavyear:2018],
         [[PayPeriod alloc] initWithSummstartOffset:6460 withSummYear:2018 withSummPP:20 withLeavyear:2018],
         [[PayPeriod alloc] initWithSummstartOffset:6474 withSummYear:2018 withSummPP:21 withLeavyear:2018],
         [[PayPeriod alloc] initWithSummstartOffset:6488 withSummYear:2018 withSummPP:22 withLeavyear:2018],
         [[PayPeriod alloc] initWithSummstartOffset:6502 withSummYear:2018 withSummPP:23 withLeavyear:2018],
         [[PayPeriod alloc] initWithSummstartOffset:6516 withSummYear:2018 withSummPP:24 withLeavyear:2018],
         [[PayPeriod alloc] initWithSummstartOffset:6530 withSummYear:2018 withSummPP:25 withLeavyear:2018],
         [[PayPeriod alloc] initWithSummstartOffset:6544 withSummYear:2018 withSummPP:26 withLeavyear:2018],
         [[PayPeriod alloc] initWithSummstartOffset:6558 withSummYear:2018 withSummPP:27 withLeavyear:2018],
         [[PayPeriod alloc] initWithSummstartOffset:6572 withSummYear:2019 withSummPP:1 withLeavyear:2018],
         [[PayPeriod alloc] initWithSummstartOffset:6586 withSummYear:2019 withSummPP:2 withLeavyear:2019],
         [[PayPeriod alloc] initWithSummstartOffset:6600 withSummYear:2019 withSummPP:3 withLeavyear:2019],
         [[PayPeriod alloc] initWithSummstartOffset:6614 withSummYear:2019 withSummPP:4 withLeavyear:2019],
         [[PayPeriod alloc] initWithSummstartOffset:6628 withSummYear:2019 withSummPP:5 withLeavyear:2019],
         [[PayPeriod alloc] initWithSummstartOffset:6642 withSummYear:2019 withSummPP:6 withLeavyear:2019],
         [[PayPeriod alloc] initWithSummstartOffset:6656 withSummYear:2019 withSummPP:7 withLeavyear:2019],
         [[PayPeriod alloc] initWithSummstartOffset:6670 withSummYear:2019 withSummPP:8 withLeavyear:2019],
         [[PayPeriod alloc] initWithSummstartOffset:6684 withSummYear:2019 withSummPP:9 withLeavyear:2019],
         [[PayPeriod alloc] initWithSummstartOffset:6698 withSummYear:2019 withSummPP:10 withLeavyear:2019],
         [[PayPeriod alloc] initWithSummstartOffset:6712 withSummYear:2019 withSummPP:11 withLeavyear:2019],
         [[PayPeriod alloc] initWithSummstartOffset:6726 withSummYear:2019 withSummPP:12 withLeavyear:2019],
         [[PayPeriod alloc] initWithSummstartOffset:6740 withSummYear:2019 withSummPP:13 withLeavyear:2019],
         [[PayPeriod alloc] initWithSummstartOffset:6754 withSummYear:2019 withSummPP:14 withLeavyear:2019],
         [[PayPeriod alloc] initWithSummstartOffset:6768 withSummYear:2019 withSummPP:15 withLeavyear:2019],
         [[PayPeriod alloc] initWithSummstartOffset:6782 withSummYear:2019 withSummPP:16 withLeavyear:2019],
         [[PayPeriod alloc] initWithSummstartOffset:6796 withSummYear:2019 withSummPP:17 withLeavyear:2019],
         [[PayPeriod alloc] initWithSummstartOffset:6810 withSummYear:2019 withSummPP:18 withLeavyear:2019],
         [[PayPeriod alloc] initWithSummstartOffset:6824 withSummYear:2019 withSummPP:19 withLeavyear:2019],
         [[PayPeriod alloc] initWithSummstartOffset:6838 withSummYear:2019 withSummPP:20 withLeavyear:2019],
         [[PayPeriod alloc] initWithSummstartOffset:6852 withSummYear:2019 withSummPP:21 withLeavyear:2019],
         [[PayPeriod alloc] initWithSummstartOffset:6866 withSummYear:2019 withSummPP:22 withLeavyear:2019],
         [[PayPeriod alloc] initWithSummstartOffset:6880 withSummYear:2019 withSummPP:23 withLeavyear:2019],
         [[PayPeriod alloc] initWithSummstartOffset:6894 withSummYear:2019 withSummPP:24 withLeavyear:2019],
         [[PayPeriod alloc] initWithSummstartOffset:6908 withSummYear:2019 withSummPP:25 withLeavyear:2019],
         [[PayPeriod alloc] initWithSummstartOffset:6922 withSummYear:2019 withSummPP:26 withLeavyear:2019],
         [[PayPeriod alloc] initWithSummstartOffset:6936 withSummYear:2020 withSummPP:1 withLeavyear:2019],
         [[PayPeriod alloc] initWithSummstartOffset:6950 withSummYear:2020 withSummPP:2 withLeavyear:2020],
         [[PayPeriod alloc] initWithSummstartOffset:6964 withSummYear:2020 withSummPP:3 withLeavyear:2020],
         [[PayPeriod alloc] initWithSummstartOffset:6978 withSummYear:2020 withSummPP:4 withLeavyear:2020],
         [[PayPeriod alloc] initWithSummstartOffset:6992 withSummYear:2020 withSummPP:5 withLeavyear:2020],
         [[PayPeriod alloc] initWithSummstartOffset:7006 withSummYear:2020 withSummPP:6 withLeavyear:2020],
         [[PayPeriod alloc] initWithSummstartOffset:7020 withSummYear:2020 withSummPP:7 withLeavyear:2020],
         [[PayPeriod alloc] initWithSummstartOffset:7034 withSummYear:2020 withSummPP:8 withLeavyear:2020],
         [[PayPeriod alloc] initWithSummstartOffset:7048 withSummYear:2020 withSummPP:9 withLeavyear:2020],
         [[PayPeriod alloc] initWithSummstartOffset:7062 withSummYear:2020 withSummPP:10 withLeavyear:2020],
         [[PayPeriod alloc] initWithSummstartOffset:7076 withSummYear:2020 withSummPP:11 withLeavyear:2020],
         [[PayPeriod alloc] initWithSummstartOffset:7090 withSummYear:2020 withSummPP:12 withLeavyear:2020],
         [[PayPeriod alloc] initWithSummstartOffset:7104 withSummYear:2020 withSummPP:13 withLeavyear:2020],
         [[PayPeriod alloc] initWithSummstartOffset:7118 withSummYear:2020 withSummPP:14 withLeavyear:2020],
         [[PayPeriod alloc] initWithSummstartOffset:7132 withSummYear:2020 withSummPP:15 withLeavyear:2020],
         [[PayPeriod alloc] initWithSummstartOffset:7146 withSummYear:2020 withSummPP:16 withLeavyear:2020],
         [[PayPeriod alloc] initWithSummstartOffset:7160 withSummYear:2020 withSummPP:17 withLeavyear:2020],
         [[PayPeriod alloc] initWithSummstartOffset:7174 withSummYear:2020 withSummPP:18 withLeavyear:2020],
         [[PayPeriod alloc] initWithSummstartOffset:7188 withSummYear:2020 withSummPP:19 withLeavyear:2020],
         [[PayPeriod alloc] initWithSummstartOffset:7202 withSummYear:2020 withSummPP:20 withLeavyear:2020],
         [[PayPeriod alloc] initWithSummstartOffset:7216 withSummYear:2020 withSummPP:21 withLeavyear:2020],
         [[PayPeriod alloc] initWithSummstartOffset:7230 withSummYear:2020 withSummPP:22 withLeavyear:2020],
         [[PayPeriod alloc] initWithSummstartOffset:7244 withSummYear:2020 withSummPP:23 withLeavyear:2020],
         [[PayPeriod alloc] initWithSummstartOffset:7258 withSummYear:2020 withSummPP:24 withLeavyear:2020],
         [[PayPeriod alloc] initWithSummstartOffset:7272 withSummYear:2020 withSummPP:25 withLeavyear:2020],
         [[PayPeriod alloc] initWithSummstartOffset:7286 withSummYear:2020 withSummPP:26 withLeavyear:2020],
         nil];
    return self;
}

-(void) accessToCalendarGrantedWithCalendar:(NSCalendar*)cal {
    NSDate *today = [NSDate dateWithTimeIntervalSinceNow:0];
    NSInteger offsetToday = [today timeIntervalSinceReferenceDate];
    //Convert offset from seconds to days
    offsetToday = offsetToday/ (60*60*24);
    
    NSLog(@"the offsetToday is %ld",(long)offsetToday);
    [self setText:@"***"];
    [self setShortText:@"**"];
    
    // Locate the pay period in the embedded array of pay periods
    
    for (PayPeriod*pp in self.payperiodsArray) {
        if (offsetToday <= pp.summstartOffset) {
            NSString* pptitle = [NSString stringWithFormat:@"PP %ld-%ld",(long)pp.summYear, (long)pp.summPP];

            [self setPayperiodText:pptitle];
            
            NSString *shortPP;
            shortPP = [NSString stringWithFormat:@"%ld-%ld",(long)pp.summYear, (long)pp.summPP];
            
            NSUInteger unitFlags = NSCalendarUnitDay;
            NSCalendar *gregorian = [[NSCalendar alloc]
                                     initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
            NSDateComponents *components = [gregorian components:unitFlags
                                                        fromDate:today
                                                          toDate:pp.startDate options:0];
            NSInteger week;
            if (components.day<7)
                week=2;
            else
                week=1;
            NSLog(@"%li",(long)components.day);

            /*
             OOORBBBBBBBOOO
             01234567890123
             SMTWTFSSMTWTFS
            */
            if (components.day==2) {
                [self setBackgroundColor:[UIColor redColor]];
                [self setTextColor:[UIColor whiteColor]];
            } else if (components.day<3 || components.day>9) {
                [self setBackgroundColor:[UIColor orangeColor]];
                [self setTextColor:[UIColor whiteColor]];
            } else {
                [self setBackgroundColor:[UIColor blueColor]];
                [self setTextColor:[UIColor whiteColor]];
            }
            
            NSDateFormatter* day = [[NSDateFormatter alloc] init];
            [day setDateFormat: @"EEEE"];
            NSLog(@"the day is: %@", [day stringFromDate:[NSDate date]]);
            [self setDateText:[NSString stringWithFormat:@"%@ Week %ld",
                               [day stringFromDate:[NSDate date]],
                               (long)week]];
            
            NSLog(@"The difference is %li",(long)components.day);
            
            [day setDateFormat: @"EEE"];
            NSString *shortDay = [day stringFromDate:[NSDate date]];
            NSLog(@"the short day is: %@", shortDay);
            
            NSString*theText = [NSString stringWithFormat:@"WEEK %li",
                                (long)week];
            NSLog(@"theText %@",theText);
            [self setText:theText];
            
            theText = [NSString stringWithFormat:@"WK%li",
                       (long)week];

            [self setShortText:theText];
            break;
        }
    }
    [[NSNotificationCenter defaultCenter] postNotificationName:@"EventsUpdated" object:self];
}

- (void)updateData {
    NSLog(@"updateData called");
    // This method is called when watch view controller is about to be visible to user
    
    NSCalendar *cal = [NSCalendar currentCalendar];
    
    NSString * myString;
    
    [self setBackgroundColor:[UIColor blueColor]];
    [self setTextColor:[UIColor whiteColor]];
    
    self.text = @"text";
    myString = @"myString";
    
    myString = [NSString stringWithFormat:@"%@",myString];
    
    [self setCardText:myString];
    
    [self.store reset];
        
    [self accessToCalendarGrantedWithCalendar:cal];
    
    NSLog(@"Finishing updateData");
}

@end
