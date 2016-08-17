//
//  ScanCardTests.m
//  ScanCardTests
//
//  Created by Le Quang Long on 7/22/14.
//   All rights reserved.
//

#import <XCTest/XCTest.h>

@interface ScanCardTests : XCTestCase

@end

@implementation ScanCardTests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testDictionaryWord{
    NSString *inputString = @"L L 3 . Japanese Communicator";
    NSString *desireWord = @"Japanese Communicator";
    NSArray *componentInputString = [inputString componentsSeparatedByCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
    NSString *result = [NSString string];
    for ( NSString *str in componentInputString) {
        BOOL isDictionaryWord = [str isDictionaryWord:str];
        if (isDictionaryWord) {
            
            result = [result stringByAppendingString:str];
        }
    }
    
    XCTAssertEqual(result, desireWord);
}

@end
