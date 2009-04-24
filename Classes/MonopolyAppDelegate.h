//
//  MonopolyAppDelegate.h
//  Monopoly
//
//  Created by Chris Hamant on 4/5/09.
//

@class GameStartupScreen;
@class GameController;


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
//@property (nonatomic, retain) IBOutlet UINavigationController *mainviewcontroller;

@end

