//
//  PropertyBoardSpace.m
//  Monopoly
//
//

#import "PropertyBoardSpace.h"


@implementation PropertyBoardSpace
@synthesize relatedSpaces;
@synthesize cost;
@synthesize owner;

-(id)initFromDict:(NSDictionary*) dict{
	if(self = [super initWithTitle:[dict objectForKey:@"title"]]){
		[self setCost:[[dict objectForKey:@"cost"] intValue]];
		[self setRelatedSpaces:[dict objectForKey:@"related"]];
	}
	return self;
}

-(int)calcRent{
	return 100;
}

- (void)dealloc {
    [super dealloc];
	[relatedSpaces release];
}

@end
