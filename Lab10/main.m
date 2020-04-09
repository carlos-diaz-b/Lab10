//
//  main.m
//  Lab10
//
//  Created by Carlos andres Diaz bravo  on 2020-04-08.
//  Copyright © 2020 Carlos andres Diaz bravo . All rights reserved.
//

#import <Foundation/Foundation.h>
#import <stdlib.h>
#import "PaymentGateway.h"
#import "StripePaymentService,.h"
#import "PaypalPaymentService,.h"
#import "AmazonPaymentService.h"
#import "ApplePaymentService.h"


int lowerBound = 100;
int upperBound = 1000;

int getUserInput(int maxLenght){
    if (maxLenght < 200){
        maxLenght = 300;
    }
    char inputChars[maxLenght];
    char *result = fgets(inputChars, maxLenght, stdin);
    if(result != NULL){
        NSString *theString = [[NSString stringWithUTF8String:inputChars]stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        if([theString  isEqual: @"quit"]){
            return -1;
        }
        return [theString intValue];
    }
    return 0.0;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        int rndValue = lowerBound + arc4random() % (upperBound - lowerBound);
      
        NSLog(@"\nThank you for shopping at Acme.com"@"\nYour total today is: $"@"%d",rndValue);
        NSLog(@"\nPlease Select your payment method:\n 1: PayPal \n 2: Stripe \n 3: Amazon \n 4: Apple");
        NSLog(@"\nEnter Payment method:");
        
        PaymentGateway *input = [PaymentGateway new];
       
       int user_input = getUserInput(200);
            if(user_input == 1){
                input.paymentDelegate = [PaypalPaymentService_ new];
                NSLog(@"\nProcessing PayPal total of:$"@"%d",rndValue);
        }   else if (user_input == 2){
                input.paymentDelegate = [StripePaymentService_ new];
                NSLog(@"\nProcessing Stripe total of:$"@"%d",rndValue);
        }    else if (user_input == 3){
                input.paymentDelegate = [AmazonPaymentService new];
                NSLog(@"\nProcessing Amazon total of:$"@"%d",rndValue);
        }   else if (user_input == 4){
                input.paymentDelegate = [ApplePaymentService new];
                NSLog(@"\nProcessing Apple total of:$"@"%d",rndValue);
        }
       
    }
    return 0;
}



