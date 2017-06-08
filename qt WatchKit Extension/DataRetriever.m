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
    /*
     SQL statement to retrieve array creation code:
     select
     '[[PayPeriod alloc] initWithSummstartOffset:'||to_char(p.summstart+1-to_date('01-JAN-2001'))
     || ' withSummYear:'||summyear||' withSummPP:'||summpp||' withLeavyear:'|| leavyear|| '],'
     from ppsumm p
     where summyear>=2017;
    */
    
    self.payperiodsArray =
        [NSArray arrayWithObjects:
         [[PayPeriod alloc] initWithSummstartOffset:5838 withSummYear:2017 withSummPP:1 withLeavyear:2016],
         [[PayPeriod alloc] initWithSummstartOffset:5852 withSummYear:2017 withSummPP:2 withLeavyear:2016],
         [[PayPeriod alloc] initWithSummstartOffset:5866 withSummYear:2017 withSummPP:3 withLeavyear:2017],
         [[PayPeriod alloc] initWithSummstartOffset:5880 withSummYear:2017 withSummPP:4 withLeavyear:2017],
         [[PayPeriod alloc] initWithSummstartOffset:5894 withSummYear:2017 withSummPP:5 withLeavyear:2017],
         [[PayPeriod alloc] initWithSummstartOffset:5908 withSummYear:2017 withSummPP:6 withLeavyear:2017],
         [[PayPeriod alloc] initWithSummstartOffset:5922 withSummYear:2017 withSummPP:7 withLeavyear:2017],
         [[PayPeriod alloc] initWithSummstartOffset:5936 withSummYear:2017 withSummPP:8 withLeavyear:2017],
         [[PayPeriod alloc] initWithSummstartOffset:5950 withSummYear:2017 withSummPP:9 withLeavyear:2017],
         [[PayPeriod alloc] initWithSummstartOffset:5964 withSummYear:2017 withSummPP:10 withLeavyear:2017],
         [[PayPeriod alloc] initWithSummstartOffset:5978 withSummYear:2017 withSummPP:11 withLeavyear:2017],
         [[PayPeriod alloc] initWithSummstartOffset:5992 withSummYear:2017 withSummPP:12 withLeavyear:2017],
         [[PayPeriod alloc] initWithSummstartOffset:6006 withSummYear:2017 withSummPP:13 withLeavyear:2017],
         [[PayPeriod alloc] initWithSummstartOffset:6020 withSummYear:2017 withSummPP:14 withLeavyear:2017],
         [[PayPeriod alloc] initWithSummstartOffset:6034 withSummYear:2017 withSummPP:15 withLeavyear:2017],
         [[PayPeriod alloc] initWithSummstartOffset:6048 withSummYear:2017 withSummPP:16 withLeavyear:2017],
         [[PayPeriod alloc] initWithSummstartOffset:6062 withSummYear:2017 withSummPP:17 withLeavyear:2017],
         [[PayPeriod alloc] initWithSummstartOffset:6076 withSummYear:2017 withSummPP:18 withLeavyear:2017],
         [[PayPeriod alloc] initWithSummstartOffset:6090 withSummYear:2017 withSummPP:19 withLeavyear:2017],
         [[PayPeriod alloc] initWithSummstartOffset:6104 withSummYear:2017 withSummPP:20 withLeavyear:2017],
         [[PayPeriod alloc] initWithSummstartOffset:6118 withSummYear:2017 withSummPP:21 withLeavyear:2017],
         [[PayPeriod alloc] initWithSummstartOffset:6132 withSummYear:2017 withSummPP:22 withLeavyear:2017],
         [[PayPeriod alloc] initWithSummstartOffset:6146 withSummYear:2017 withSummPP:23 withLeavyear:2017],
         [[PayPeriod alloc] initWithSummstartOffset:6160 withSummYear:2017 withSummPP:24 withLeavyear:2017],
         [[PayPeriod alloc] initWithSummstartOffset:6174 withSummYear:2017 withSummPP:25 withLeavyear:2017],
         [[PayPeriod alloc] initWithSummstartOffset:6188 withSummYear:2017 withSummPP:26 withLeavyear:2017],
         [[PayPeriod alloc] initWithSummstartOffset:6202 withSummYear:2018 withSummPP:1 withLeavyear:2017],
         [[PayPeriod alloc] initWithSummstartOffset:6216 withSummYear:2018 withSummPP:2 withLeavyear:2017],
         [[PayPeriod alloc] initWithSummstartOffset:6230 withSummYear:2018 withSummPP:3 withLeavyear:2018],
         [[PayPeriod alloc] initWithSummstartOffset:6244 withSummYear:2018 withSummPP:4 withLeavyear:2018],
         [[PayPeriod alloc] initWithSummstartOffset:6258 withSummYear:2018 withSummPP:5 withLeavyear:2018],
         [[PayPeriod alloc] initWithSummstartOffset:6272 withSummYear:2018 withSummPP:6 withLeavyear:2018],
         [[PayPeriod alloc] initWithSummstartOffset:6286 withSummYear:2018 withSummPP:7 withLeavyear:2018],
         [[PayPeriod alloc] initWithSummstartOffset:6300 withSummYear:2018 withSummPP:8 withLeavyear:2018],
         [[PayPeriod alloc] initWithSummstartOffset:6314 withSummYear:2018 withSummPP:9 withLeavyear:2018],
         [[PayPeriod alloc] initWithSummstartOffset:6328 withSummYear:2018 withSummPP:10 withLeavyear:2018],
         [[PayPeriod alloc] initWithSummstartOffset:6342 withSummYear:2018 withSummPP:11 withLeavyear:2018],
         [[PayPeriod alloc] initWithSummstartOffset:6356 withSummYear:2018 withSummPP:12 withLeavyear:2018],
         [[PayPeriod alloc] initWithSummstartOffset:6370 withSummYear:2018 withSummPP:13 withLeavyear:2018],
         [[PayPeriod alloc] initWithSummstartOffset:6384 withSummYear:2018 withSummPP:14 withLeavyear:2018],
         [[PayPeriod alloc] initWithSummstartOffset:6398 withSummYear:2018 withSummPP:15 withLeavyear:2018],
         [[PayPeriod alloc] initWithSummstartOffset:6412 withSummYear:2018 withSummPP:16 withLeavyear:2018],
         [[PayPeriod alloc] initWithSummstartOffset:6426 withSummYear:2018 withSummPP:17 withLeavyear:2018],
         [[PayPeriod alloc] initWithSummstartOffset:6440 withSummYear:2018 withSummPP:18 withLeavyear:2018],
         [[PayPeriod alloc] initWithSummstartOffset:6454 withSummYear:2018 withSummPP:19 withLeavyear:2018],
         [[PayPeriod alloc] initWithSummstartOffset:6468 withSummYear:2018 withSummPP:20 withLeavyear:2018],
         [[PayPeriod alloc] initWithSummstartOffset:6482 withSummYear:2018 withSummPP:21 withLeavyear:2018],
         [[PayPeriod alloc] initWithSummstartOffset:6496 withSummYear:2018 withSummPP:22 withLeavyear:2018],
         [[PayPeriod alloc] initWithSummstartOffset:6510 withSummYear:2018 withSummPP:23 withLeavyear:2018],
         [[PayPeriod alloc] initWithSummstartOffset:6524 withSummYear:2018 withSummPP:24 withLeavyear:2018],
         [[PayPeriod alloc] initWithSummstartOffset:6538 withSummYear:2018 withSummPP:25 withLeavyear:2018],
         [[PayPeriod alloc] initWithSummstartOffset:6552 withSummYear:2018 withSummPP:26 withLeavyear:2018],
         [[PayPeriod alloc] initWithSummstartOffset:6566 withSummYear:2018 withSummPP:27 withLeavyear:2018],
         [[PayPeriod alloc] initWithSummstartOffset:6580 withSummYear:2019 withSummPP:1 withLeavyear:2018],
         [[PayPeriod alloc] initWithSummstartOffset:6594 withSummYear:2019 withSummPP:2 withLeavyear:2019],
         [[PayPeriod alloc] initWithSummstartOffset:6608 withSummYear:2019 withSummPP:3 withLeavyear:2019],
         [[PayPeriod alloc] initWithSummstartOffset:6622 withSummYear:2019 withSummPP:4 withLeavyear:2019],
         [[PayPeriod alloc] initWithSummstartOffset:6636 withSummYear:2019 withSummPP:5 withLeavyear:2019],
         [[PayPeriod alloc] initWithSummstartOffset:6650 withSummYear:2019 withSummPP:6 withLeavyear:2019],
         [[PayPeriod alloc] initWithSummstartOffset:6664 withSummYear:2019 withSummPP:7 withLeavyear:2019],
         [[PayPeriod alloc] initWithSummstartOffset:6678 withSummYear:2019 withSummPP:8 withLeavyear:2019],
         [[PayPeriod alloc] initWithSummstartOffset:6692 withSummYear:2019 withSummPP:9 withLeavyear:2019],
         [[PayPeriod alloc] initWithSummstartOffset:6706 withSummYear:2019 withSummPP:10 withLeavyear:2019],
         [[PayPeriod alloc] initWithSummstartOffset:6720 withSummYear:2019 withSummPP:11 withLeavyear:2019],
         [[PayPeriod alloc] initWithSummstartOffset:6734 withSummYear:2019 withSummPP:12 withLeavyear:2019],
         [[PayPeriod alloc] initWithSummstartOffset:6748 withSummYear:2019 withSummPP:13 withLeavyear:2019],
         [[PayPeriod alloc] initWithSummstartOffset:6762 withSummYear:2019 withSummPP:14 withLeavyear:2019],
         [[PayPeriod alloc] initWithSummstartOffset:6776 withSummYear:2019 withSummPP:15 withLeavyear:2019],
         [[PayPeriod alloc] initWithSummstartOffset:6790 withSummYear:2019 withSummPP:16 withLeavyear:2019],
         [[PayPeriod alloc] initWithSummstartOffset:6804 withSummYear:2019 withSummPP:17 withLeavyear:2019],
         [[PayPeriod alloc] initWithSummstartOffset:6818 withSummYear:2019 withSummPP:18 withLeavyear:2019],
         [[PayPeriod alloc] initWithSummstartOffset:6832 withSummYear:2019 withSummPP:19 withLeavyear:2019],
         [[PayPeriod alloc] initWithSummstartOffset:6846 withSummYear:2019 withSummPP:20 withLeavyear:2019],
         [[PayPeriod alloc] initWithSummstartOffset:6860 withSummYear:2019 withSummPP:21 withLeavyear:2019],
         [[PayPeriod alloc] initWithSummstartOffset:6874 withSummYear:2019 withSummPP:22 withLeavyear:2019],
         [[PayPeriod alloc] initWithSummstartOffset:6888 withSummYear:2019 withSummPP:23 withLeavyear:2019],
         [[PayPeriod alloc] initWithSummstartOffset:6902 withSummYear:2019 withSummPP:24 withLeavyear:2019],
         [[PayPeriod alloc] initWithSummstartOffset:6916 withSummYear:2019 withSummPP:25 withLeavyear:2019],
         [[PayPeriod alloc] initWithSummstartOffset:6930 withSummYear:2019 withSummPP:26 withLeavyear:2019],
         [[PayPeriod alloc] initWithSummstartOffset:6944 withSummYear:2020 withSummPP:1 withLeavyear:2019],
         [[PayPeriod alloc] initWithSummstartOffset:6958 withSummYear:2020 withSummPP:2 withLeavyear:2020],
         [[PayPeriod alloc] initWithSummstartOffset:6972 withSummYear:2020 withSummPP:3 withLeavyear:2020],
         [[PayPeriod alloc] initWithSummstartOffset:6986 withSummYear:2020 withSummPP:4 withLeavyear:2020],
         [[PayPeriod alloc] initWithSummstartOffset:7000 withSummYear:2020 withSummPP:5 withLeavyear:2020],
         [[PayPeriod alloc] initWithSummstartOffset:7014 withSummYear:2020 withSummPP:6 withLeavyear:2020],
         [[PayPeriod alloc] initWithSummstartOffset:7028 withSummYear:2020 withSummPP:7 withLeavyear:2020],
         [[PayPeriod alloc] initWithSummstartOffset:7042 withSummYear:2020 withSummPP:8 withLeavyear:2020],
         [[PayPeriod alloc] initWithSummstartOffset:7056 withSummYear:2020 withSummPP:9 withLeavyear:2020],
         [[PayPeriod alloc] initWithSummstartOffset:7070 withSummYear:2020 withSummPP:10 withLeavyear:2020],
         [[PayPeriod alloc] initWithSummstartOffset:7084 withSummYear:2020 withSummPP:11 withLeavyear:2020],
         [[PayPeriod alloc] initWithSummstartOffset:7098 withSummYear:2020 withSummPP:12 withLeavyear:2020],
         [[PayPeriod alloc] initWithSummstartOffset:7112 withSummYear:2020 withSummPP:13 withLeavyear:2020],
         [[PayPeriod alloc] initWithSummstartOffset:7126 withSummYear:2020 withSummPP:14 withLeavyear:2020],
         [[PayPeriod alloc] initWithSummstartOffset:7140 withSummYear:2020 withSummPP:15 withLeavyear:2020],
         [[PayPeriod alloc] initWithSummstartOffset:7154 withSummYear:2020 withSummPP:16 withLeavyear:2020],
         [[PayPeriod alloc] initWithSummstartOffset:7168 withSummYear:2020 withSummPP:17 withLeavyear:2020],
         [[PayPeriod alloc] initWithSummstartOffset:7182 withSummYear:2020 withSummPP:18 withLeavyear:2020],
         [[PayPeriod alloc] initWithSummstartOffset:7196 withSummYear:2020 withSummPP:19 withLeavyear:2020],
         [[PayPeriod alloc] initWithSummstartOffset:7210 withSummYear:2020 withSummPP:20 withLeavyear:2020],
         [[PayPeriod alloc] initWithSummstartOffset:7224 withSummYear:2020 withSummPP:21 withLeavyear:2020],
         [[PayPeriod alloc] initWithSummstartOffset:7238 withSummYear:2020 withSummPP:22 withLeavyear:2020],
         [[PayPeriod alloc] initWithSummstartOffset:7252 withSummYear:2020 withSummPP:23 withLeavyear:2020],
         [[PayPeriod alloc] initWithSummstartOffset:7266 withSummYear:2020 withSummPP:24 withLeavyear:2020],
         [[PayPeriod alloc] initWithSummstartOffset:7280 withSummYear:2020 withSummPP:25 withLeavyear:2020],
         [[PayPeriod alloc] initWithSummstartOffset:7294 withSummYear:2020 withSummPP:26 withLeavyear:2020],
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
        NSLog(@"Comparing %ld v.s. %ld",(long)offsetToday, (long)pp.summstartOffset+14);
        if (offsetToday <= pp.summstartOffset+14) {
            NSString* pptitle = [NSString stringWithFormat:@"PP %ld-%ld",(long)pp.summYear, (long)pp.summPP];

            [self setPayperiodText:pptitle];
            
            NSString *shortPP;
            shortPP = [NSString stringWithFormat:@"%ld-%ld",(long)pp.summYear, (long)pp.summPP];

            NSUInteger unitFlags = NSCalendarUnitDay;
            NSCalendar *gregorian = [[NSCalendar alloc]
                                     initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
            NSDateComponents *components = [gregorian components:unitFlags
                                                        fromDate:pp.startDate
                                                          toDate:today options:0];
            NSInteger week;
            NSInteger dayOffset = components.day;
            
            if (dayOffset>6)
                week=2;
            else
                week=1;
            NSLog(@"dayOffset is %li",(long)dayOffset);

            /*
             OOORBBBBBBBOOO
             01234567890123
             SMTWTFSSMTWTFS
            */
            if (dayOffset==3) {
                [self setBackgroundColor:[UIColor redColor]];
                [self setTextColor:[UIColor whiteColor]];
            } else if (dayOffset<3 || dayOffset>10) {
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
            
            NSLog(@"The difference is %li",(long)dayOffset);
            
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
