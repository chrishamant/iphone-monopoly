//
//  MonopolyAppDelegate.h
//  Monopoly
//
//  Created by Chris Hamant on 4/5/09.
//

//#import "ChooseNumPlayersController.h"
#import "GameStartupScreen.h"

@interface MonopolyAppDelegate : NSObject <UIApplicationDelegate> {
    NSManagedObjectModel *managedObjectModel;
    NSManagedObjectContext *managedObjectContext;	    
    NSPersistentStoreCoordinator *persistentStoreCoordinator;
	UINavigationController *mainviewcontroller;
    UIWindow *window;
}

#pragma mark methods
- (IBAction)saveAction:sender;

#pragma mark property declarations
@property (nonatomic, retain, readonly) NSManagedObjectModel *managedObjectModel;
@property (nonatomic, retain, readonly) NSManagedObjectContext *managedObjectContext;
@property (nonatomic, retain, readonly) NSPersistentStoreCoordinator *persistentStoreCoordinator;
@property (nonatomic, readonly) NSString *applicationDocumentsDirectory;
@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UINavigationController *mainviewcontroller;

@end

