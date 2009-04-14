//
//  Die.m
//  Monopoly
//
//  Created by Chris Hamant on 4/5/09.
//

#import "Die.h"

@implementation Die
	
+(int)roll{
	return arc4random() % 6 + 1;
}
	
@end
