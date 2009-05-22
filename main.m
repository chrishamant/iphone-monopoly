#import <UIKit/UIKit.h>
/**
 @file main.m
 
 This is required main() method. Creates global autorelease pool and passes control to UIKit to continue loading application.
 
 @param argc - standard C style paramter indicating count of items in argv
 @param argv - pointer to char array of arguments from enviroment. Not used in this application.
 */
int main(int argc, char *argv[]) {
    
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
    int retVal = UIApplicationMain(argc, argv, nil, nil);
    [pool release];
    return retVal;
}
