//
//  StripePaymentService,.h
//  Lab10
//
//  Created by Carlos andres Diaz bravo  on 2020-04-08.
//  Copyright © 2020 Carlos andres Diaz bravo . All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PaymentGateway.h"


@interface StripePaymentService_ : NSObject <PaymentDelegate>

- (void) processPaymentAmount:(NSInteger) balance;

@end


