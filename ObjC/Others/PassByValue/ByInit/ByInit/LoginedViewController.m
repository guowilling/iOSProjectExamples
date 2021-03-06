
#import "LoginedViewController.h"

#define SHeight self.view.frame.size.height
#define SWidth  self.view.frame.size.width

@interface LoginedViewController ()
{
    UITextField *_userNameText;
    UITextField *_passWordText;
}

@property (nonatomic, strong) NSString *userName;
@property (nonatomic, strong) NSString *passWord;

@end

@implementation LoginedViewController

- (id)initWithUserName:(NSString *)userName passWord:(NSString *)passWord {
    
    self = [super init];
    if (self) {
        _passWord = passWord;
        _userName = userName;
    }
    return self;
}

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    _userNameText = [self addTextField:100 leftViewName:@"账号:"];
    _userNameText.text = _userName;
    
    _passWordText = [self addTextField:CGRectGetMaxY(_userNameText.frame) + 20 leftViewName:@"密码:"];
    _passWordText.text = _passWord;
}

- (UITextField *)addTextField:(CGFloat )y leftViewName:(NSString *)name {
    
    UITextField *textField = [[UITextField alloc] initWithFrame:CGRectMake(20, y, SWidth - 40, 45)];
    textField.layer.borderWidth = 1.0f;
    [self.view addSubview:textField];
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 50, 40)];
    label.text = name;
    label.textAlignment = NSTextAlignmentCenter;
    label.font = [UIFont systemFontOfSize:14];
    label.adjustsFontSizeToFitWidth=YES;
    textField.leftView = label;
    textField.userInteractionEnabled = NO;
    textField.leftViewMode = UITextFieldViewModeAlways;
    return textField;
}

@end
