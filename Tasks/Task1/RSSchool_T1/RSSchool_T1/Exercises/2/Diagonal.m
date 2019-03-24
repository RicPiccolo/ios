#import "Diagonal.h"

@implementation Diagonal

// Complete the diagonalDifference function below.
- (NSNumber *) diagonalDifference:(NSArray *)array {
   
    NSInteger elementsCounter = [array count];
    int i = 0;
    int SumOfFirstDiag = 0;
    int SumOfSecondDiag = 0;
    for (NSString * string in array) {
       NSArray * MyArray = [[NSArray alloc] initWithArray:[string componentsSeparatedByString:@" "]];
       
        SumOfFirstDiag += [(NSNumber *)MyArray[i] intValue];
        SumOfSecondDiag += [(NSNumber *)MyArray[elementsCounter - i - 1] intValue];
        i++;
    }
    return [NSNumber numberWithInt:abs(SumOfFirstDiag - SumOfSecondDiag)];
}
@end
