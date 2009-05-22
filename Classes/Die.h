#import <Foundation/Foundation.h>

/**
 @file Die.h
 @class Die
 Simple class to represent a single Die. Only has single static method
 */
@interface Die : NSObject

/**
 Static method to 'roll' the simulated 6-sixed die.
 @return int - number in the range 1:6
 */
+(int)roll;

@end
