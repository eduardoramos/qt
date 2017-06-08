//
//  PayPeriod.h
//  qt
//
//  Created by Eduardo on 4/1/17.
//  Copyright © 2017 Eduardo Ramos. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PayPeriod : NSObject {
    NSInteger   summstartOffset;
    NSInteger   summYear;
    NSInteger   summPP;
    NSInteger   leavyear;
}

@property (readwrite) NSInteger summstartOffset;
@property (readwrite) NSInteger summYear;
@property (readwrite) NSInteger summPP;
@property (readwrite) NSInteger leavyear;
@property (readonly)  NSDate*   startDate;

- (id) initWithSummstartOffset:(NSInteger) aSummStartOffset
                  withSummYear:(NSInteger) aSummYear
                    withSummPP:(NSInteger) aSummPP
                  withLeavyear:(NSInteger) aLeavyear;

-(NSDate*) startDate;

@end
