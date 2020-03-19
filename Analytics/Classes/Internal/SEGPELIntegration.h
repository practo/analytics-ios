//
//  SEGPELIntegration.h
//  Analytics
//
//  Created by Sumeet on 25/02/20.
//
#import <Foundation/Foundation.h>
#import "SEGIntegration.h"
#import "SEGHTTPClient.h"
#import "SEGStorage.h"

NS_ASSUME_NONNULL_BEGIN

extern NSString *const SEGSegmentPELDidSendRequestNotification;
extern NSString *const SEGSegmentPELRequestDidSucceedNotification;
extern NSString *const SEGSegmentPELRequestDidFailNotification;

@interface SEGPELIntegration : NSObject<SEGIntegration>

- (id)initWithAnalytics:(SEGAnalytics *)analytics httpClient:(SEGHTTPClient *)httpClient fileStorage:(id<SEGStorage>)fileStorage userDefaultsStorage:(id<SEGStorage>)userDefaultsStorage;

@end

NS_ASSUME_NONNULL_END
