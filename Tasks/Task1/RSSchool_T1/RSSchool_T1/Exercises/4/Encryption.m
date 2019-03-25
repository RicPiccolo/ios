#import "Encryption.h"

@implementation Encryption

// Complete the encryption function below.
- (NSString *)encryption:(NSString *)string {
    double L_sqrt = sqrt(string.length);
    int ceil_rows = ceil(L_sqrt);
    int floor_columns = floor(L_sqrt);
    if ( string.length > ceil_rows * floor_columns ){
        floor_columns += 1;
    }
    NSMutableArray *arrayOfencrypted = [NSMutableArray new];
    for (int i = 0; i < ceil_rows; i++) {
        NSMutableString *encryptedMessage = [[NSMutableString alloc] initWithCapacity:floor_columns];
        for (int column = 0; column < floor_columns; column++) {
            int pos = ceil_rows * column + i;
            if (pos < string.length) {
                NSRange range = NSMakeRange(pos, 1);
                NSString *symbol = [string substringWithRange:range];
                [encryptedMessage appendString:symbol];
            }
        }
        [arrayOfencrypted addObject:encryptedMessage];
    }
    return [[NSString alloc] initWithString:[arrayOfencrypted componentsJoinedByString:@" "]];
}

@end
