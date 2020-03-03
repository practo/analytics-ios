//
//  SEGPELIntegrationFactory.m
//  Analytics@Practo
//
//  Created by Sumeet on 03/03/20.
//

#import "SEGPELIntegrationFactory.h"
#import "SEGPELIntegration.h"

@implementation SEGPELIntegrationFactory

- (id)initWithHTTPClient:(SEGHTTPClient *)client fileStorage:(id<SEGStorage>)fileStorage userDefaultsStorage:(id<SEGStorage>)userDefaultsStorage
{
    if (self = [super init]) {
        _client = client;
        _userDefaultsStorage = userDefaultsStorage;
        _fileStorage = fileStorage;
    }
    return self;
}

- (id<SEGIntegration>)createWithSettings:(NSDictionary *)settings forAnalytics:(SEGAnalytics *)analytics
{
    return [[SEGPELIntegration alloc] initWithAnalytics:analytics httpClient:self.client fileStorage:self.fileStorage userDefaultsStorage:self.userDefaultsStorage];
}

- (NSString *)key
{
    return @"PEL";
}

@end
