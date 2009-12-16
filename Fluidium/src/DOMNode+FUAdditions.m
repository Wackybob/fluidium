//  Copyright 2009 Todd Ditchendorf
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

#import "DOMNode+FUAdditions.h"

@implementation DOMNode (FUAdditions)

- (DOMElement *)firstAncestorOrSelfByTagName:(NSString *)tagName {
    DOMNode *curr = self;
    do {
        if (DOM_ELEMENT_NODE == [curr nodeType] && [[[curr nodeName] lowercaseString] isEqualToString:tagName]) {
            return (DOMElement *)curr;
        }
    } while (curr = [curr parentNode]);
    
    return nil;
}


- (CGFloat)totalOffsetTop {
    DOMElement *curr = (DOMElement *)self;
    CGFloat result = 0;
    do {
        result += [curr offsetTop];
    } while ((curr = (DOMElement *)[curr parentNode]) && ![[[curr nodeName] lowercaseString] isEqualToString:@"html"]);
    
    return result;
}


- (CGFloat)totalOffsetLeft {
    DOMElement *curr = (DOMElement *)self;
    CGFloat result = 0;
    do {
        result += [curr offsetLeft];
    } while ((curr = (DOMElement *)[curr parentNode]) && ![[[curr nodeName] lowercaseString] isEqualToString:@"html"]);
    
    return result;
}

@end
