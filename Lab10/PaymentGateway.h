//
//  PaymentGateway.h
//  Lab10
//
//  Created by Carlos andres Diaz bravo  on 2020-04-08.
//  Copyright © 2020 Carlos andres Diaz bravo . All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol PaymentDelegate
@required
- (void) processPaymentAmount:(NSInteger) balance;
- (BOOL) canProcessPayment;

@optional

@end

@interface PaymentGateway : NSObject

@property (nonatomic, strong) id<PaymentDelegate> paymentDelegate;
- (void) processPaymentAmount:(NSInteger) balance;

@end

NS_ASSUME_NONNULL_END
