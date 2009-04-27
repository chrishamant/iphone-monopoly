//
//  MonopolyAppDelegate.h
//  Monopoly
//
//

@class GameStartupScreen;
@class GameController;
#import "BoardScreen.h"
#import "GameScreen.h"
#import "PlayersScreen.h"


@interface MonopolyAppDelegate : NSObject <UIApplicationDelegate> {
    /*NSManagedObjectModel *managedObjectModel;
    NSManagedObjectContext *managedObjectContext;	    
    NSPersistentStoreCoordinator *persistentStoreCoordinator;*/

	IBOutlet UITabBarController *tab;
    IBOutlet UIWindow *window;
	GameController* game;
}

#pragma mark methods
//- (IBAction)saveAction:sender;

-(void)startMonopoly:(GameController*)game;

#pragma mark property declarations
/*@property (nonatomic, retain, readonly) NSManagedObjectModel *managedObjectModel;
@property (nonatomic, retain, readonly) NSManagedObjectContext *managedObjectContext;
@property (nonatomic, retain, readonly) NSPersistentStoreCoordinator *persistentStoreCoordinator;
@property (nonatomic, readonly) NSString *applicationDocumentsDirectory;*/

@property (nonatomic, retain) GameController* game;
@property (nonatomic, retain) UIWindow *window;


@end

