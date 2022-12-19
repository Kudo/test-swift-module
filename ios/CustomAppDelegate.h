#pragma once

#if __cplusplus

#import <React-RCTAppDelegate/RCTAppDelegate.h>

@interface CustomAppDelegate : RCTAppDelegate
@end

#else

// Workaround build error from main.m
@interface CustomAppDelegate : UIResponder
@end

#endif
