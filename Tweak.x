#import <UIKit/UIKit.h>

// iOS宝藏 https://t.me/iosrxwy/
// 并不完美，欢迎补充～

%hook FLPatch
- (id)apiVersion {
 return @"0";
}
%end

%hook ReviewsListViewController
- (void)frd_fetchReviewAD {
}
%end

%hook FRDLaunchPromptModule
- (bool)_frd_shouldShowAdOrDoodleForLaunchOptions:(id)arg1 {
 return 0;
}
%end

%hook FRDLaunchPromptModule
- (void)applicationWillEnterForeground:(id)arg1 {
}
%end

%hook DOUFrodoAdInfo
- (id)init {
 return NULL;
}
%end


%hook MTGSplashADManager
- (void)loadAndShow:(id)arg1 {
}
%end

%hook MTGSplashADManager
- (void)show:(id)arg1 {
}
%end

%hook MTGSplashADManager
- (void)setLoadingRequestDic:(id)arg1 {
}
%end

%hook GDTSplashAd
- (bool)isAdValid {
 return 0;
}
%end

%hook DOUCommercialViewController
- (id)advertisement {
 return NULL;
}
%end
