@class GameStartupScreen;
@class GameController;
#import "BoardScreen.h"
#import "GameScreen.h"
#import "PlayersScreen.h"

/** 
 @file MonopolyAppDelegate.h
 @class MonopolyAppDelegate
 
 Class to handle basic application lifecycle. Handles the loading of initial pre-game screens
 and transfer of control to main game loop once game has started.
 */
@interface MonopolyAppDelegate : NSObject <UIApplicationDelegate> {
    /*NSManagedObjectModel *managedObjectModel;
    NSManagedObjectContext *managedObjectContext;	    
    NSPersistentStoreCoordinator *persistentStoreCoordinator;*/

	/// Base UITabBarController - instantiated by Nib
	IBOutlet UITabBarController *tab;
	/// Main window on iPhone - instantiated by Nib
    IBOutlet UIWindow *window; 
}

#pragma mark methods
//- (IBAction)saveAction:sender;

/**
 This function is kind of a hack to instantiate and start up game once options are set.
 @param game - Game created from pregame View Controller. 
 */
-(void)startMonopoly:(GameController*)game;

#pragma mark property declarations
/*@property (nonatomic, retain, readonly) NSManagedObjectModel *managedObjectModel;
@property (nonatomic, retain, readonly) NSManagedObjectContext *managedObjectContext;
@property (nonatomic, retain, readonly) NSPersistentStoreCoordinator *persistentStoreCoordinator;
@property (nonatomic, readonly) NSString *applicationDocumentsDirectory;*/

@property (nonatomic, retain) UIWindow *window;


@end

