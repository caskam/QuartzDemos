//
//  MIT License
//
//  Copyright (c) 2012 TapHarmonic, LLC http://tapharmonic.com/
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//
//  This project was written by Bob McCune http://bobmccune.com for the 
//  February 2012 CocoaHeads MN meeting.  Accompanying slides can be found here:
//

#import "QuartzDemo.h"

@interface QuartzDemo ()

@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *viewName;

@end

@implementation QuartzDemo

@synthesize title = _title;
@synthesize viewName = _viewName;

+ (id)quartzDemoWithTitle:(NSString *)title viewName:(NSString *)viewName {
	return [[self alloc] initWithTitle:title viewName:viewName];
}

- (id)initWithTitle:(NSString *)title viewName:(NSString *)viewName {
	if ((self = [super init])) {
		self.title = title;
		self.viewName = viewName;
	}
	return self;
}

- (Class)viewClass {
	return NSClassFromString(self.viewName);
}

- (Class)controllerClass {
	return NSClassFromString([NSString stringWithFormat:@"%@Controller", self.viewName]);
}

@end