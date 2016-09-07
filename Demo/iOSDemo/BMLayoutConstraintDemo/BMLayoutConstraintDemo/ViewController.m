/**
 * Copyright (c) 2016, BCM
 * All rights reserved
 * Author: beichenming
 */

#import "ViewController.h"

#import "BMLayoutConstraint.h"
#import "UIControlConstantID.h"

@interface ViewController ()

@property (nonatomic, strong, readwrite) UIButton *loginBtn;
@property (nonatomic, strong, readwrite) UILabel *phoneNoLabel;
@property (nonatomic, strong, readwrite) UILabel *passwordLabel;
@property (nonatomic, strong, readwrite) UITextField *accountTextField;
@property (nonatomic, strong, readwrite) UITextField *passwordTextField;

@property (nonatomic, strong, readwrite) BMTLayoutConstraintBase *loginBtnBase;
@property (nonatomic, strong, readwrite) BMTLayoutConstraintBase *phoneNoLabelBase;
@property (nonatomic, strong, readwrite) BMTLayoutConstraintBase *passwordLabelBase;
@property (nonatomic, strong, readwrite) BMTLayoutConstraintBase *accountTextFieldBase;
@property (nonatomic, strong, readwrite) BMTLayoutConstraintBase *passwordTextFieldBase;

@end

@implementation ViewController

- (void)initUIBase {
    _loginBtnBase = [self.view layoutConstraintWithViewId:ViewControllerLoginBtnID
                                          containerObject:self];
    _phoneNoLabelBase = [self.view layoutConstraintWithViewId:ViewControllerPhoneNoLabelID
                                              containerObject:self];
    _passwordLabelBase = [self.view layoutConstraintWithViewId:ViewControllerPasswordLabelID
                                               containerObject:self];
    _accountTextFieldBase = [self.view layoutConstraintWithViewId:ViewControllerAccountTextFieldID
                                                  containerObject:self];
    _passwordTextFieldBase = [self.view layoutConstraintWithViewId:ViewControllerPasswordTextFieldID
                                                   containerObject:self];
}

- (void)addSubViewToSuperView {
    [self.view addSubview:self.phoneNoLabel];
    [self.view addSubview:self.accountTextField];
    [self.view addSubview:self.passwordLabel];
    [self.view addSubview:self.passwordTextField];
    [self.view addSubview:self.loginBtn];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self initUIBase];
    [self addSubViewToSuperView];
    
    [self.view setBackgroundColor:[UIColor whiteColor]];

    [self.phoneNoLabel setFrame:CGRectMake(_phoneNoLabelBase.marginLeft,
                                           _phoneNoLabelBase.marginTop,
                                           _phoneNoLabelBase.width,
                                           _phoneNoLabelBase.height)];
    [self.accountTextField setFrame:CGRectMake(_accountTextFieldBase.marginLeft,
                                               _accountTextFieldBase.marginTop,
                                               _accountTextFieldBase.width,
                                               _accountTextFieldBase.height)];
    [self.passwordLabel setFrame:CGRectMake(_passwordLabelBase.marginLeft,
                                            _passwordLabelBase.marginTop,
                                            _passwordLabelBase.width,
                                            _passwordLabelBase.height)];
    [self.passwordTextField setFrame:CGRectMake(_passwordTextFieldBase.marginLeft,
                                                _passwordTextFieldBase.marginTop,
                                                _passwordTextFieldBase.width,
                                                _passwordTextFieldBase.height)];
    [self.loginBtn setFrame:CGRectMake(_loginBtnBase.marginLeft,
                                       _loginBtnBase.marginTop,
                                       _loginBtnBase.width,
                                       _loginBtnBase.height)];
}

#pragma mark - getter
- (UILabel *)phoneNoLabel {
    if (_phoneNoLabel == nil) {
        _phoneNoLabel = [[UILabel alloc] init];
        [_phoneNoLabel setText:NSLocalizedString(@"PhoneNumber", nil)];
        [_phoneNoLabel setFont:[UIFont systemFontOfSize:_phoneNoLabelBase.fontSize]];
    }
    return _phoneNoLabel;
}

- (UILabel *)passwordLabel {
    if (_passwordLabel == nil) {
        _passwordLabel = [[UILabel alloc] init];
        [_passwordLabel setText:NSLocalizedString(@"Password", nil)];
        [_passwordLabel setFont:[UIFont systemFontOfSize:_passwordLabelBase.fontSize]];
    }
    return _passwordLabel;
}

- (UITextField *)accountTextField {
    if (_accountTextField == nil) {
        _accountTextField = [[UITextField alloc] init];
        [_accountTextField setBorderStyle:UITextBorderStyleBezel];
        [_accountTextField setKeyboardType:UIKeyboardTypeNumberPad];
    }
    return _accountTextField;
}

- (UITextField *)passwordTextField {
    if (_passwordTextField == nil) {
        _passwordTextField = [[UITextField alloc] init];
        [_passwordTextField setBorderStyle:UITextBorderStyleBezel];
        [_passwordTextField setSecureTextEntry:YES];
    }
    return _passwordTextField;
}

- (UIButton *)loginBtn {
    if (_loginBtn == nil) {
        _loginBtn = [[UIButton alloc] init];
        [_loginBtn setTitle:NSLocalizedString(@"Login", nil)
                   forState:UIControlStateNormal];
        [_loginBtn.titleLabel setFont:[UIFont systemFontOfSize:_loginBtnBase.fontSize]];
        [_loginBtn setBackgroundColor:[UIColor blackColor]];
        [_loginBtn setTitleColor:[UIColor whiteColor]
                                     forState:UIControlStateNormal];
        [_loginBtn.layer setCornerRadius:_loginBtnBase.cornerRadius];
    }
    return _loginBtn;
}

@end
