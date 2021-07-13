#include <UIKit/UIKit.h>

%hook SBStatusBarManager

- (void)handleStatusBarTapWithEvent:(id)arg1 {

	UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Hello" message:@"this is my first tweak" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
	[alert show];

	%orig;

}

%end
