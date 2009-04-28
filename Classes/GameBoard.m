//
//  GameBoard.m
//  Monopoly
//
//

#import "GameBoard.h"

@implementation GameBoard
@synthesize spaces;

-(GameBoardSpace*) getNewSpace:(GameBoardSpace*)fromSpace rolling:(int)numSpaces{
	NSUInteger currIndex = [spaces indexOfObject: fromSpace];
	NSUInteger newIndex = (currIndex + numSpaces) % 39;
	return [spaces objectAtIndex:newIndex];
}

-(id) init{
	self = [super init];
	[self getSpacesFromStore];
	return self;
}

-(void)getSpacesFromStore{
	NSString* plistPath = [[NSBundle mainBundle] pathForResource:@"MonopolySpaces" ofType:@"plist"];
	NSArray* fromPlist = [NSArray arrayWithContentsOfFile:plistPath];
	int count = [fromPlist count];
	NSMutableArray* thespaces = [NSMutableArray arrayWithCapacity:count];
	NSDictionary* temp;
	NSNumber *test;
	for(int i=0;i<count;i++){
		temp = [fromPlist objectAtIndex:i];
		test = [temp objectForKey:@"isProperty"];
		if([test boolValue]){
			[thespaces addObject:[self getPropertySpaceFromDict:temp] ];
		}else{
			[thespaces addObject:[[GameBoardSpace alloc] initWithTitle:[temp objectForKey:@"title"]]];
		}
	}
	[self setSpaces:[NSArray arrayWithArray:thespaces]];
	/*[fromPlist release];
	[plistPath release]; 
	[thespaces release];*/
	//TODO Figure out why this is crashing when these are released...
}

-(id)getPropertySpaceFromDict:(NSDictionary*)dict{
	id spaceToReturn;
	spaceToReturn = [[PropertyBoardSpace alloc] initWithTitle:[dict objectForKey:@"title"]];
	NSLog(@"%@",[dict objectForKey:@"title"]);
	return spaceToReturn;
}

@end
