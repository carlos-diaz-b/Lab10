//
//  PaymentGateway.m
//  Lab10
//
//  Created by Carlos andres Diaz bravo  on 2020-04-08.
//  Copyright © 2020 Carlos andres Diaz bravo . All rights reserved.
//

#import "PaymentGateway.h"

@implementation PaymentGateway

- (void) processPaymentAmount:(NSInteger) balance {
    
    
if ([self.paymentDelegate canProcessPayment]) {
    [self.paymentDelegate processPaymentAmount:balance];
        }
    
}
@end
