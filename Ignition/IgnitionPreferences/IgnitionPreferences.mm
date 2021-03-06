#import <Preferences/Preferences.h>

@interface IgnitionPreferencesListController: PSListController
@end

@implementation IgnitionPreferencesListController

- (id)specifiers {
	if(_specifiers == nil) {
		_specifiers = [self loadSpecifiersFromPlistName:@"IgnitionPreferences" target:self];
	}
  
	return _specifiers;
}

- (void)openGitHub
{
  [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://www.github.com/b3ll/Ignition"]];
}

- (void)openDonate
{
  [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://www.adambell.ca/donate"]];
}

@end
