/***
MonopolyAppDelegate.m

 Class to handle basic application lifecycle.
*/

#import "MonopolyAppDelegate.h"

@implementation MonopolyAppDelegate

@synthesize window;

#pragma mark Methods

/**
 Main method to initialze the basic GUI screens after 'Start Game' button
 @param aGame - Monopoly Game to put into GameScreen
 */
-(void)startMonopoly:(GameController*)aGame{
	[tab setViewControllers:
	 [NSArray arrayWithObjects:
	  [[[GameScreen alloc] initWithGame:aGame] autorelease],
	  [[[BoardScreen alloc] initWithNibName:@"BoardScreen" bundle:nil] autorelease],
	  [[[PlayersScreen alloc] initWithPlayers:aGame.players] autorelease],
	  nil]];
	[tab setSelectedIndex:0];
	[window addSubview:tab.view];
}


#pragma mark -
#pragma mark Application lifecycle

- (void)applicationDidFinishLaunching:(UIApplication *)application {
    //initial view 
	//[[startup view] setFrame:CGRectMake(0,20, 320, 460)];
	[window makeKeyAndVisible];
}

/**
 applicationWillTerminate: saves changes in the application's managed object context before the application terminates.
 */
- (void)applicationWillTerminate:(UIApplication *)application {
	
    //NSError *error;
    /*if (managedObjectContext != nil) {
        if ([managedObjectContext hasChanges] && ![managedObjectContext save:&error]) {
			// Handle error
			NSLog(@"Unresolved error %@, %@", error, [error userInfo]);
			exit(-1);  // Fail
        } 
    }*/
}


#pragma mark -
#pragma mark Memory management

- (void)dealloc {
	
    //[managedObjectContext release];
    //[managedObjectModel release];
    //[persistentStoreCoordinator release];
    //[mainviewcontroller release];
	[window release];
	[super dealloc];
}


@end

