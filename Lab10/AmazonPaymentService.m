//
//  AmazonPaymentService.m
//  Lab10
//
//  Created by Carlos andres Diaz bravo  on 2020-04-08.
//  Copyright © 2020 Carlos andres Diaz bravo . All rights reserved.
//

#import "AmazonPaymentService.h"

@implementation AmazonPaymentService

- (void) processPaymentAmount:(NSInteger) balance {
NSLog(@"\nProcessing Amazon total of:$"@"%ld",(long)balance);
}

- (BOOL)canProcessPayment {
    return arc4random_uniform(2) == 1;;
}

@end
