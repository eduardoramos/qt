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
     '[[PayPeriod alloc] initWithSummstartOffset:'||to_char(p.summstart-to_date('01-JAN-2001'))
     || ' withSummYear:'||summyear||' withSummPP:'||summpp||' withLeavyear:'|| leavyear|| '],'
     from ppsumm p
     where summyear>=2018;
     */
    
    self.payperiodsArray =
    [NSArray arrayWithObjects:
     [[PayPeriod alloc] initWithSummstartOffset:6187 withSummYear:2018 withSummPP:1 withLeavyear:2017],
     [[PayPeriod alloc] initWithSummstartOffset:6201 withSummYear:2018 withSummPP:2 withLeavyear:2017],
     [[PayPeriod alloc] initWithSummstartOffset:6215 withSummYear:2018 withSummPP:3 withLeavyear:2018],
     [[PayPeriod alloc] initWithSummstartOffset:6229 withSummYear:2018 withSummPP:4 withLeavyear:2018],
     [[PayPeriod alloc] initWithSummstartOffset:6243 withSummYear:2018 withSummPP:5 withLeavyear:2018],
     [[PayPeriod alloc] initWithSummstartOffset:6257 withSummYear:2018 withSummPP:6 withLeavyear:2018],
     [[PayPeriod alloc] initWithSummstartOffset:6271 withSummYear:2018 withSummPP:7 withLeavyear:2018],
     [[PayPeriod alloc] initWithSummstartOffset:6285 withSummYear:2018 withSummPP:8 withLeavyear:2018],
     [[PayPeriod alloc] initWithSummstartOffset:6299 withSummYear:2018 withSummPP:9 withLeavyear:2018],
     [[PayPeriod alloc] initWithSummstartOffset:6313 withSummYear:2018 withSummPP:10 withLeavyear:2018],
     [[PayPeriod alloc] initWithSummstartOffset:6327 withSummYear:2018 withSummPP:11 withLeavyear:2018],
     [[PayPeriod alloc] initWithSummstartOffset:6341 withSummYear:2018 withSummPP:12 withLeavyear:2018],
     [[PayPeriod alloc] initWithSummstartOffset:6355 withSummYear:2018 withSummPP:13 withLeavyear:2018],
     [[PayPeriod alloc] initWithSummstartOffset:6369 withSummYear:2018 withSummPP:14 withLeavyear:2018],
     [[PayPeriod alloc] initWithSummstartOffset:6383 withSummYear:2018 withSummPP:15 withLeavyear:2018],
     [[PayPeriod alloc] initWithSummstartOffset:6397 withSummYear:2018 withSummPP:16 withLeavyear:2018],
     [[PayPeriod alloc] initWithSummstartOffset:6411 withSummYear:2018 withSummPP:17 withLeavyear:2018],
     [[PayPeriod alloc] initWithSummstartOffset:6425 withSummYear:2018 withSummPP:18 withLeavyear:2018],
     [[PayPeriod alloc] initWithSummstartOffset:6439 withSummYear:2018 withSummPP:19 withLeavyear:2018],
     [[PayPeriod alloc] initWithSummstartOffset:6453 withSummYear:2018 withSummPP:20 withLeavyear:2018],
     [[PayPeriod alloc] initWithSummstartOffset:6467 withSummYear:2018 withSummPP:21 withLeavyear:2018],
     [[PayPeriod alloc] initWithSummstartOffset:6481 withSummYear:2018 withSummPP:22 withLeavyear:2018],
     [[PayPeriod alloc] initWithSummstartOffset:6495 withSummYear:2018 withSummPP:23 withLeavyear:2018],
     [[PayPeriod alloc] initWithSummstartOffset:6509 withSummYear:2018 withSummPP:24 withLeavyear:2018],
     [[PayPeriod alloc] initWithSummstartOffset:6523 withSummYear:2018 withSummPP:25 withLeavyear:2018],
     [[PayPeriod alloc] initWithSummstartOffset:6537 withSummYear:2018 withSummPP:26 withLeavyear:2018],
     [[PayPeriod alloc] initWithSummstartOffset:6551 withSummYear:2018 withSummPP:27 withLeavyear:2018],
     [[PayPeriod alloc] initWithSummstartOffset:6565 withSummYear:2019 withSummPP:1 withLeavyear:2018],
     [[PayPeriod alloc] initWithSummstartOffset:6579 withSummYear:2019 withSummPP:2 withLeavyear:2019],
     [[PayPeriod alloc] initWithSummstartOffset:6593 withSummYear:2019 withSummPP:3 withLeavyear:2019],
     [[PayPeriod alloc] initWithSummstartOffset:6607 withSummYear:2019 withSummPP:4 withLeavyear:2019],
     [[PayPeriod alloc] initWithSummstartOffset:6621 withSummYear:2019 withSummPP:5 withLeavyear:2019],
     [[PayPeriod alloc] initWithSummstartOffset:6635 withSummYear:2019 withSummPP:6 withLeavyear:2019],
     [[PayPeriod alloc] initWithSummstartOffset:6649 withSummYear:2019 withSummPP:7 withLeavyear:2019],
     [[PayPeriod alloc] initWithSummstartOffset:6663 withSummYear:2019 withSummPP:8 withLeavyear:2019],
     [[PayPeriod alloc] initWithSummstartOffset:6677 withSummYear:2019 withSummPP:9 withLeavyear:2019],
     [[PayPeriod alloc] initWithSummstartOffset:6691 withSummYear:2019 withSummPP:10 withLeavyear:2019],
     [[PayPeriod alloc] initWithSummstartOffset:6705 withSummYear:2019 withSummPP:11 withLeavyear:2019],
     [[PayPeriod alloc] initWithSummstartOffset:6719 withSummYear:2019 withSummPP:12 withLeavyear:2019],
     [[PayPeriod alloc] initWithSummstartOffset:6733 withSummYear:2019 withSummPP:13 withLeavyear:2019],
     [[PayPeriod alloc] initWithSummstartOffset:6747 withSummYear:2019 withSummPP:14 withLeavyear:2019],
     [[PayPeriod alloc] initWithSummstartOffset:6761 withSummYear:2019 withSummPP:15 withLeavyear:2019],
     [[PayPeriod alloc] initWithSummstartOffset:6775 withSummYear:2019 withSummPP:16 withLeavyear:2019],
     [[PayPeriod alloc] initWithSummstartOffset:6789 withSummYear:2019 withSummPP:17 withLeavyear:2019],
     [[PayPeriod alloc] initWithSummstartOffset:6803 withSummYear:2019 withSummPP:18 withLeavyear:2019],
     [[PayPeriod alloc] initWithSummstartOffset:6817 withSummYear:2019 withSummPP:19 withLeavyear:2019],
     [[PayPeriod alloc] initWithSummstartOffset:6831 withSummYear:2019 withSummPP:20 withLeavyear:2019],
     [[PayPeriod alloc] initWithSummstartOffset:6845 withSummYear:2019 withSummPP:21 withLeavyear:2019],
     [[PayPeriod alloc] initWithSummstartOffset:6859 withSummYear:2019 withSummPP:22 withLeavyear:2019],
     [[PayPeriod alloc] initWithSummstartOffset:6873 withSummYear:2019 withSummPP:23 withLeavyear:2019],
     [[PayPeriod alloc] initWithSummstartOffset:6887 withSummYear:2019 withSummPP:24 withLeavyear:2019],
     [[PayPeriod alloc] initWithSummstartOffset:6901 withSummYear:2019 withSummPP:25 withLeavyear:2019],
     [[PayPeriod alloc] initWithSummstartOffset:6915 withSummYear:2019 withSummPP:26 withLeavyear:2019],
     [[PayPeriod alloc] initWithSummstartOffset:6929 withSummYear:2020 withSummPP:1 withLeavyear:2019],
     [[PayPeriod alloc] initWithSummstartOffset:6943 withSummYear:2020 withSummPP:2 withLeavyear:2020],
     [[PayPeriod alloc] initWithSummstartOffset:6957 withSummYear:2020 withSummPP:3 withLeavyear:2020],
     [[PayPeriod alloc] initWithSummstartOffset:6971 withSummYear:2020 withSummPP:4 withLeavyear:2020],
     [[PayPeriod alloc] initWithSummstartOffset:6985 withSummYear:2020 withSummPP:5 withLeavyear:2020],
     [[PayPeriod alloc] initWithSummstartOffset:6999 withSummYear:2020 withSummPP:6 withLeavyear:2020],
     [[PayPeriod alloc] initWithSummstartOffset:7013 withSummYear:2020 withSummPP:7 withLeavyear:2020],
     [[PayPeriod alloc] initWithSummstartOffset:7027 withSummYear:2020 withSummPP:8 withLeavyear:2020],
     [[PayPeriod alloc] initWithSummstartOffset:7041 withSummYear:2020 withSummPP:9 withLeavyear:2020],
     [[PayPeriod alloc] initWithSummstartOffset:7055 withSummYear:2020 withSummPP:10 withLeavyear:2020],
     [[PayPeriod alloc] initWithSummstartOffset:7069 withSummYear:2020 withSummPP:11 withLeavyear:2020],
     [[PayPeriod alloc] initWithSummstartOffset:7083 withSummYear:2020 withSummPP:12 withLeavyear:2020],
     [[PayPeriod alloc] initWithSummstartOffset:7097 withSummYear:2020 withSummPP:13 withLeavyear:2020],
     [[PayPeriod alloc] initWithSummstartOffset:7111 withSummYear:2020 withSummPP:14 withLeavyear:2020],
     [[PayPeriod alloc] initWithSummstartOffset:7125 withSummYear:2020 withSummPP:15 withLeavyear:2020],
     [[PayPeriod alloc] initWithSummstartOffset:7139 withSummYear:2020 withSummPP:16 withLeavyear:2020],
     [[PayPeriod alloc] initWithSummstartOffset:7153 withSummYear:2020 withSummPP:17 withLeavyear:2020],
     [[PayPeriod alloc] initWithSummstartOffset:7167 withSummYear:2020 withSummPP:18 withLeavyear:2020],
     [[PayPeriod alloc] initWithSummstartOffset:7181 withSummYear:2020 withSummPP:19 withLeavyear:2020],
     [[PayPeriod alloc] initWithSummstartOffset:7195 withSummYear:2020 withSummPP:20 withLeavyear:2020],
     [[PayPeriod alloc] initWithSummstartOffset:7209 withSummYear:2020 withSummPP:21 withLeavyear:2020],
     [[PayPeriod alloc] initWithSummstartOffset:7223 withSummYear:2020 withSummPP:22 withLeavyear:2020],
     [[PayPeriod alloc] initWithSummstartOffset:7237 withSummYear:2020 withSummPP:23 withLeavyear:2020],
     [[PayPeriod alloc] initWithSummstartOffset:7251 withSummYear:2020 withSummPP:24 withLeavyear:2020],
     [[PayPeriod alloc] initWithSummstartOffset:7265 withSummYear:2020 withSummPP:25 withLeavyear:2020],
     [[PayPeriod alloc] initWithSummstartOffset:7279 withSummYear:2020 withSummPP:26 withLeavyear:2020],
         nil];
    
    for (PayPeriod*pp in self.payperiodsArray) {
        pp.summstartOffset += 14;
    }
    
    return self;
}

-(void) accessToCalendarGrantedWithCalendar:(NSCalendar*)cal {
    NSDate *today = [NSDate dateWithTimeIntervalSinceNow:0];
    NSInteger offsetToday = [today timeIntervalSinceReferenceDate];
    //Convert offset from seconds to days
    offsetToday = offsetToday/ (60*60*24);
    
    NSLog(@"the offsetToday (with 1 day substracted) is %ld",(long)offsetToday);
    [self setText:@"***"];
    [self setShortText:@"**"];
    
    // Locate the pay period in the embedded array of pay periods
    
    for (PayPeriod*pp in self.payperiodsArray) {
        NSLog(@"Comparing %ld v.s. %ld",(long)offsetToday, (long)pp.summstartOffset);
        if (offsetToday <= pp.summstartOffset) {
            NSString* pptitle = [NSString stringWithFormat:@"PP %ld-%ld",(long)pp.summYear, (long)pp.summPP];

            NSLog(@"Matched %@", pptitle);
            
            NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
            [formatter setDateFormat:@"dd-MM-yyyy HH:mm"];
            
            NSDate *currentDate = [NSDate date];
            NSString *dateString = [formatter stringFromDate:[pp startDate]];
            
            NSLog(@"PP start date is %@" , dateString);
            
            dateString =[formatter stringFromDate:currentDate];
            NSLog(@"Current date is %@" , dateString);
            
            [self setPayperiodText:pptitle];
            
            NSString *shortPP;
            shortPP = [NSString stringWithFormat:@"%ld-%ld",(long)pp.summYear, (long)pp.summPP];

            NSUInteger unitFlags = NSCalendarUnitHour;
            NSCalendar *gregorian = [[NSCalendar alloc]
                                     initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
            NSDateComponents *components = [gregorian components:unitFlags
                                                        fromDate:pp.startDate
                                                          toDate:today options:0];
            NSInteger week;
            NSInteger dayOffset = components.day;
            
            NSInteger hourOffset = components.hour;
            NSLog(@"hourOffset is %li",(long)hourOffset);

            if (hourOffset<0)
                hourOffset+=(24*14);
            
            hourOffset-= 9;
            
            dayOffset = floor(hourOffset/24);
            
            if (dayOffset<0)
                dayOffset +=14;
            dayOffset+=1;

            if (dayOffset>=7)
                week=2;
            else
                week=1;
            NSLog(@"dayOffset is %li",(long)dayOffset);

            /*
             OOORBBBBBBBOOO
             01234567890123
             SMTWTFSSMTWTFS
            */
            NSString*theText;
            
            if (dayOffset==3) {
                [self setBackgroundColor:[UIColor redColor]];
                [self setTextColor:[UIColor whiteColor]];
                theText = [NSString stringWithFormat:@"WK%li!",
                           (long)week];

            } else if (dayOffset<3 || dayOffset>10) {
                [self setBackgroundColor:[UIColor orangeColor]];
                [self setTextColor:[UIColor whiteColor]];
                
                theText = [NSString stringWithFormat:@"WK%li*",
                           (long)week];

            } else {
                [self setBackgroundColor:[UIColor blueColor]];
                [self setTextColor:[UIColor whiteColor]];
                theText = [NSString stringWithFormat:@"WK%li",
                           (long)week];

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
            
            NSLog(@"theText %@",theText);
            [self setText:theText];

            [self setShortText:theText];
            break;
        }
    }
    [[NSNotificationCenter defaultCenter] postNotificationName:@"EventsUpdated" object:self];
}

- (void)updateData {
    // This method is called when watch view controller is about to be visible to user
    
    CFTimeInterval current = CFAbsoluteTimeGetCurrent();

    // Early exit if the data has been updated within the last 60 secunds
    if ((self.lastDataUpdate!= 0) && ( current - self.lastDataUpdate < 60))
        return;
    
    NSLog(@"updateData executed");

    self.lastDataUpdate = current;

    
    NSCalendar *cal = [NSCalendar currentCalendar];
    
    NSString * myString;
    
    [self setBackgroundColor:[UIColor blueColor]];
    [self setTextColor:[UIColor whiteColor]];
    
    self.text = @"text";
    myString = @"myString";
    
    myString = [NSString stringWithFormat:@"%@",myString];
    
    [self setCardText:myString];
        
    [self accessToCalendarGrantedWithCalendar:cal];
    
    NSLog(@"Finishing updateData");
}

@end
