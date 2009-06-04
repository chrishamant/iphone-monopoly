/**
 @file Die.m
 @class Die
 Simple class to represent a single Die. Only has single static method
 */

#import "Die.h"

@implementation Die
	
+(int)roll{
	return arc4random() % 6 + 1;
}
	
@end
