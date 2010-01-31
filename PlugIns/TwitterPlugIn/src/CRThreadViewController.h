//  Copyright 2010 Todd Ditchendorf
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//  http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.

#import "CRBaseViewController.h"

@class CRTweet;

@interface CRThreadViewController : CRBaseViewController {
    CRTweet *tweet;
    NSMutableArray *tweets;

    NSString *usernameA;
    NSString *usernameB;
}

- (IBAction)avatarButtonClicked:(id)sender;
- (IBAction)usernameButtonClicked:(id)sender;

@property (nonatomic, retain) CRTweet *tweet;
@property (nonatomic, retain) NSMutableArray *tweets;
@property (nonatomic, copy) NSString *usernameA;
@property (nonatomic, copy) NSString *usernameB;
@end
