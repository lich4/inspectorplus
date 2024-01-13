#import <Foundation/Foundation.h>

%hook RWIRelayDelegateIOS
- (BOOL)relay:(id)relay allowIncomingApplicationConnection:(id)conn bundleIdentifier:(id)bid {
	NSLog(@"inspectorplus bypass");
	return YES;
}
- (BOOL)relay:(id)relay allowIncomingApplicationViaProxy:(id)proxy pid:(int)pid {
	NSLog(@"inspectorplus bypass");
	return YES;
}
%end

// launchctl start com.apple.webinspectord

