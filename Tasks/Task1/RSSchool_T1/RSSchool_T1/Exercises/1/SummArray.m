#import "SummArray.h"

@implementation SummArray

// Complete the summArray function below.
- (NSNumber *)summArray:(NSArray *)array {
    int res = 0;
    for (NSNumber *numbFromArray in array) {
        int val= 0;
        val = [numbFromArray intValue];
        res += val;
        }
    return [NSNumber numberWithInt:res];
}
@end
