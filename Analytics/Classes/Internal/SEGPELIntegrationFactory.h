//
//  SEGPELIntegrationFactory.h
//  Analytics@Practo
//
//  Created by Sumeet on 03/03/20.
//

#import <Foundation/Foundation.h>
#import "SEGIntegrationFactory.h"
#import "SEGHTTPClient.h"
#import "SEGStorage.h"

NS_ASSUME_NONNULL_BEGIN

@interface SEGPELIntegrationFactory : NSObject <SEGIntegrationFactory>

@property (nonatomic, strong) SEGHTTPClient *client;
@property (nonatomic, strong) id<SEGStorage> userDefaultsStorage;
@property (nonatomic, strong) id<SEGStorage> fileStorage;

- (instancetype)initWithHTTPClient:(SEGHTTPClient *)client fileStorage:(id<SEGStorage>)fileStorage userDefaultsStorage:(id<SEGStorage>)userDefaultsStorage;

@end

NS_ASSUME_NONNULL_END