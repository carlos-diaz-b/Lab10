//
//  PaypalPaymentService,.h
//  Lab10
//
//  Created by Carlos andres Diaz bravo  on 2020-04-08.
//  Copyright © 2020 Carlos andres Diaz bravo . All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PaymentGateway.h"

NS_ASSUME_NONNULL_BEGIN

@interface PaypalPaymentService_ : NSObject <PaymentDelegate>

- (void) processPaymentAmount:(NSInteger) balance;

@end

NS_ASSUME_NONNULL_END
