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
	
	for(int i=0;i<count;i++){
		temp = [fromPlist objectAtIndex:i];
		int spaceType = [[temp objectForKey:@"spaceType"] intValue];
		switch (spaceType) {
			case 0:
				//regular space (inert)
				[thespaces addObject:[[[GameBoardSpace alloc] initWithTitle:[temp objectForKey:@"title"]] autorelease]];
				break;
			case 1:
				//railroad
				[thespaces addObject: [[[PropertyBoardSpace alloc] initFromDict:temp] autorelease]];
				break;
			case 2:
				//utility
				[thespaces addObject: [[[PropertyBoardSpace alloc] initFromDict:temp] autorelease]];
				break;
			case 3:
				//improvable
				[thespaces addObject: [[[ImprovablePropertySpace alloc] initFromDict:temp] autorelease]];
				break;
			case 4:
				//action space
				[thespaces addObject: [[[GameBoardSpace alloc] initWithTitle:[temp objectForKey:@"title"]] autorelease]];
				break;
			default:
				//this should never happen
				assert(0);
				break;
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
	spaceToReturn = 
	[spaceToReturn autorelease];
	return spaceToReturn;
}

- (void)dealloc {
    [super dealloc];
	[spaces release];
}

@end
