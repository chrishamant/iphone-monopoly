//
//  Die.m
//  Monopoly
//
//

#import "Die.h"

@implementation Die
	
+(int)roll{
	return arc4random() % 6 + 1;
}
	
@end
