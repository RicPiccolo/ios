#import "Pangrams.h"

@implementation Pangrams

// Complete the pangrams function below.
- (BOOL)pangrams:(NSString *)string {
    NSMutableString * string1 =[[NSMutableString alloc] initWithString:[string lowercaseString]];

    NSString *workingString = [string1 stringByReplacingOccurrencesOfString:@" "
                                                                withString:@""];
    NSMutableSet *occurrences = [NSMutableSet set];
    NSMutableString *result = [NSMutableString string];
    
    [workingString enumerateSubstringsInRange:NSMakeRange(0, workingString.length) options:NSStringEnumerationByComposedCharacterSequences usingBlock:^(NSString *substring, NSRange substringRange, NSRange enclosingRange, BOOL *stop) {
        if (![occurrences containsObject:substring]) {
            [occurrences addObject:substring];
            [result appendString:substring];
        }
    }];
    return occurrences.count == 26;
}

@end
