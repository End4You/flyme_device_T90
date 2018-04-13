.class public Lcom/android/server/policy/HmctPhoneWindowManager;
.super Lcom/android/server/policy/PhoneWindowManager;
.source "HmctPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/HmctPhoneWindowManager$10;,
        Lcom/android/server/policy/HmctPhoneWindowManager$11;,
        Lcom/android/server/policy/HmctPhoneWindowManager$12;,
        Lcom/android/server/policy/HmctPhoneWindowManager$13;,
        Lcom/android/server/policy/HmctPhoneWindowManager$14;,
        Lcom/android/server/policy/HmctPhoneWindowManager$1;,
        Lcom/android/server/policy/HmctPhoneWindowManager$2;,
        Lcom/android/server/policy/HmctPhoneWindowManager$3;,
        Lcom/android/server/policy/HmctPhoneWindowManager$4;,
        Lcom/android/server/policy/HmctPhoneWindowManager$5;,
        Lcom/android/server/policy/HmctPhoneWindowManager$6;,
        Lcom/android/server/policy/HmctPhoneWindowManager$7;,
        Lcom/android/server/policy/HmctPhoneWindowManager$8;,
        Lcom/android/server/policy/HmctPhoneWindowManager$9;,
        Lcom/android/server/policy/HmctPhoneWindowManager$HdmiControl;,
        Lcom/android/server/policy/HmctPhoneWindowManager$HmctPolicyHandler;,
        Lcom/android/server/policy/HmctPhoneWindowManager$HmctSettingsObserver;,
        Lcom/android/server/policy/HmctPhoneWindowManager$ProximitySensor;,
        Lcom/android/server/policy/HmctPhoneWindowManager$ProximitySensorListener;
    }
.end annotation


# static fields
.field static final APPLICATION_ABOVE_SUB_PANEL_SUBLAYER:I = 0x3

.field static final APPLICATION_MEDIA_OVERLAY_SUBLAYER:I = -0x1

.field static final APPLICATION_MEDIA_SUBLAYER:I = -0x2

.field static final APPLICATION_PANEL_SUBLAYER:I = 0x1

.field static final APPLICATION_SUB_PANEL_SUBLAYER:I = 0x2

.field private static final BRIGHTNESS_STEPS:I = 0xa

.field private static final BUSRT_CAPTURE_CONFLICT_ACTION:Ljava/lang/String; = "com.hmct.intent.BURSTCAPTURE"

.field private static CurrentBatterylevel:I = 0x0

.field static final DEBUG:Z = true

.field private static final DISMISS_KEYGUARD_CONTINUE:I = 0x2

.field private static final DISMISS_KEYGUARD_NONE:I = 0x0

.field private static final DISMISS_KEYGUARD_START:I = 0x1

.field static final DOUBLE_TAP_HOME_NOTHING:I = 0x0

.field static final DOUBLE_TAP_HOME_RECENT_SYSTEM_UI:I = 0x1

.field private static FEATURE_DROPHOVER_SUPPORT:Z = false

.field private static FLASHLIGHT_BRIGHTNESS_POINT:Ljava/lang/String; = null

.field private static final HMCT_POWER_KEY_PRESSED:Ljava/lang/String; = "com.hmct.intent.POWER_KEY_PRESSED"

.field private static final INTENT_ACTION_CLOSE_FLASH_LIGHT:Ljava/lang/String; = "com.android.intent.action.CLOSE_FLASHLIGHT"

.field public static final INTENT_ACTION_KEYCODE_CAMERA:Ljava/lang/String; = "com.android.intent.action.KEYCODE_CAMERA"

.field private static final INTENT_FORCE_END_CURRENT_PREVENT:Ljava/lang/String; = "com.android.intent.action.FORCE_END_CURRENT_PREVENT"

.field private static final KEY_ACTION_ASSIST:I = 0x2

.field private static final KEY_ACTION_HMCT_CAMERA:I = 0x1

.field private static final KEY_ACTION_HMCT_VIDEO:I = 0x0

.field private static final KEY_ACTION_LAUNCH_CAMERA:I = 0x4

.field private static final KEY_ACTION_MENU:I = 0x3

.field private static final KEY_ACTION_NOTHING:I = 0x0

.field private static final KEY_ACTION_RECENT_SYSTEM_UI:I = 0x1

.field private static final KEY_APP_SWITCH_LONG_PRESS_ACTION:Ljava/lang/String; = "key_switch_long_press_action"

.field private static final KEY_HOME_LONGPRESS_HMCT_ASSISTANT:Ljava/lang/String; = "key_home_wake_up_voice_assistant_action"

.field private static final KEY_HOME_LONG_PRESS_ACTION:Ljava/lang/String; = "key_home_long_press_action"

.field private static final KEY_MASK_APP_SWITCH:I = 0x10

.field private static final KEY_MASK_CAMERA:I = 0x20

.field private static final KEY_MASK_DEDICATED:I = 0x40

.field private static final KEY_MASK_HOME:I = 0x1

.field static final LAST_LONG_PRESS_HOME_BEHAVIOR:I = 0x2

.field static final LONG_PRESS_BACK_GO_TO_VOICE_ASSIST:I = 0x1

.field static final LONG_PRESS_BACK_NOTHING:I = 0x0

.field static final LONG_PRESS_HOME_ASSIST:I = 0x2

.field static final LONG_PRESS_HOME_NOTHING:I = 0x0

.field static final LONG_PRESS_HOME_RECENT_SYSTEM_UI:I = 0x1

.field private static final MSG_BACK_LONG_PRESS:I = 0x12

.field private static final MSG_CAMERA_LONG_PRESS:I = 0x19

.field private static final MSG_CAMERA_LONG_PRESS_ACTION:I = 0x1a

.field private static final MSG_DISABLED_PROXY_SENSOR:I = 0x15

.field private static final MSG_DISPATCH_MEDIA_KEY_WITH_WAKE_LOCK:I = 0x3

.field private static final MSG_DISPATCH_SHOW_RECENTS:I = 0x9

.field private static final MSG_FILTER_CURRENT_BIND:I = 0x17

.field private static final MSG_VOLUMEDOWN_DELAYED_PRESS:I = 0x16

.field private static final MSG_VOLUMEUP_DELAYED_PRESS:I = 0x18

.field private static final NAV_BAR_BOTTOM:I = 0x0

.field private static final NAV_BAR_LEFT:I = 0x2

.field static final NAV_BAR_OPAQUE_WHEN_FREEFORM_OR_DOCKED:I = 0x0

.field private static final NAV_BAR_RIGHT:I = 0x1

.field static final NAV_BAR_TRANSLUCENT_WHEN_FREEFORM_OPAQUE_OTHERWISE:I = 0x1

.field private static POWERMANAGERMODE_CLS_NAME:Ljava/lang/String; = null

.field private static POWERMANAGERMODE_PKG_NAME:Ljava/lang/String; = null

.field private static final SCREENSHOT_CHORD_DEBOUNCE_DELAY_MILLIS:J = 0x96L

.field private static final SCREEN_GESTURE_CLASS_NAME_E:Ljava/lang/String; = "screen_gesture_class_name_e"

.field private static final SCREEN_GESTURE_CLASS_NAME_V:Ljava/lang/String; = "screen_gesture_class_name_v"

.field private static final SCREEN_GESTURE_CLASS_NAME_W:Ljava/lang/String; = "screen_gesture_class_name_w"

.field private static final SCREEN_GESTURE_CLASS_NAME_Z:Ljava/lang/String; = "screen_gesture_class_name_z"

.field private static final SCREEN_GESTURE_NUM_E:Ljava/lang/String; = "e_gesture_contact"

.field private static final SCREEN_GESTURE_NUM_V:Ljava/lang/String; = "v_gesture_contact"

.field private static final SCREEN_GESTURE_NUM_W:Ljava/lang/String; = "w_gesture_contact"

.field private static final SCREEN_GESTURE_NUM_Z:Ljava/lang/String; = "z_gesture_contact"

.field private static final SCREEN_GESTURE_PACKAGE_NAME_E:Ljava/lang/String; = "screen_gesture_package_name_e"

.field private static final SCREEN_GESTURE_PACKAGE_NAME_V:Ljava/lang/String; = "screen_gesture_package_name_v"

.field private static final SCREEN_GESTURE_PACKAGE_NAME_W:Ljava/lang/String; = "screen_gesture_package_name_w"

.field private static final SCREEN_GESTURE_PACKAGE_NAME_Z:Ljava/lang/String; = "screen_gesture_package_name_z"

.field private static final SET_DEFAULT_APPS:I = 0x64

.field static final SHORT_PRESS_SLEEP_GO_TO_SLEEP:I = 0x0

.field static final SHORT_PRESS_SLEEP_GO_TO_SLEEP_AND_GO_HOME:I = 0x1

.field static final SHORT_PRESS_WINDOW_NOTHING:I = 0x0

.field static final SHORT_PRESS_WINDOW_PICTURE_IN_PICTURE:I = 0x1

.field private static final SINGLE_HAND_ENABLE_ACTION:Ljava/lang/String; = "single_hand_enable"

.field private static final STOUCH_PREVENT_SHOWING:Ljava/lang/String; = "touch_prevent_showing"

.field public static final SYSTEM_DIALOG_REASON_ASSIST:Ljava/lang/String; = "assist"

.field public static final SYSTEM_DIALOG_REASON_GLOBAL_ACTIONS:Ljava/lang/String; = "globalactions"

.field public static final SYSTEM_DIALOG_REASON_HOME_KEY:Ljava/lang/String; = "homekey"

.field public static final SYSTEM_DIALOG_REASON_KEY:Ljava/lang/String; = "reason"

.field public static final SYSTEM_DIALOG_REASON_RECENT_APPS:Ljava/lang/String; = "recentapps"

.field static final SYSTEM_UI_CHANGING_LAYOUT:I = -0x3fff7ff2

.field static final TAG:Ljava/lang/String; = "HmctWindowManager"

.field public static final TRIGGERED_NAME:Ljava/lang/String; = "trigged-name"

.field private static final VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

.field private static final WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

.field private static callNum:Ljava/lang/String; = null

.field private static mAcceptVolumeDownKey:Z = false

.field private static mAcceptVolumeUpKey:Z = false

.field private static mBurstCapturePrepared:Z = false

.field private static mCameraKeyPressedBehavior:I = 0x0

.field private static mDisableBottomKeys:Z = false

.field private static mEnableDropHover:Z = false

.field private static mEnableLaunchHmctAssistant:Z = false

.field private static mEnableSinglHand:Z = false

.field private static mFlashLightAutoSupport:Z = false

.field private static mFlashLightPrepared:Z = false

.field private static mFlightLightSupport:Z = false

.field private static mGestureKeyguardUnlockTime:J = 0x0L

.field private static mGestureScreenOnTime:J = 0x0L

.field private static mNeedMakeCallAfterUnlock:Z = false

.field private static mOpenFlashLight:Z = false

.field private static mSlipKeyInterval:I = 0x0

.field private static mStartdardInterval:J = 0x0L

.field private static mSupportGesture:Z = false

.field private static mSupportSingleHand:Z = false

.field static final mTmpContentFrame:Landroid/graphics/Rect;

.field static final mTmpDecorFrame:Landroid/graphics/Rect;

.field static final mTmpDisplayFrame:Landroid/graphics/Rect;

.field static final mTmpNavigationFrame:Landroid/graphics/Rect;

.field static final mTmpOutsetFrame:Landroid/graphics/Rect;

.field static final mTmpOverscanFrame:Landroid/graphics/Rect;

.field static final mTmpParentFrame:Landroid/graphics/Rect;

.field private static final mTmpRect:Landroid/graphics/Rect;

.field static final mTmpStableFrame:Landroid/graphics/Rect;

.field static final mTmpVisibleFrame:Landroid/graphics/Rect;

.field private static powerType:I = 0x0

.field private static final sDefaultKeyArray:[I

.field private static sDefaultKeyArrayIndex:I = 0x0

.field private static final sDefaultKeyLength:I

.field private static sOldDefaultKeyArrayIndex:I = 0x0

.field private static final sSlipLeftAciton:Ljava/lang/String; = "hmct.intent.action.singlehand_navbar_slip_left"

.field private static final sSlipRightAction:Ljava/lang/String; = "hmct.intent.action.singlehand_navbar_slip_right"

.field private static final topAppClass:Ljava/lang/String; = "com.android.camera.CameraLauncher"

.field private static vLongPressHomeStartVoiceassist:Z = false

.field private static final vVoiceassistClsName:Ljava/lang/String; = "com.hmct.voiceassist.activity.MainActivity"

.field private static final vVoiceassistPkgName:Ljava/lang/String; = "com.hmct.voiceassist"


# instance fields
.field private final DROPHOVER_ENABLE_ACTION:Ljava/lang/String;

.field private final ENABLE_BURST_CAPTURE:Ljava/lang/String;

.field private final KEY_CAMERA_SHORT_PRESS_ACTION:Ljava/lang/String;

.field private final VOLUMEUP_FLASHLIGHT_ACTION:Ljava/lang/String;

.field private isDoubleTpNagivate:Z

.field private isNear:Z

.field private mAllowTheaterModeWakeFromKey:Z

.field mAppOpsManager:Landroid/app/AppOpsManager;

.field mAppSwitchLongPressed:Z

.field mAppsThatDismissKeyguard:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/view/IApplicationToken;",
            ">;"
        }
    .end annotation
.end field

.field mAppsToBeHidden:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/view/IApplicationToken;",
            ">;"
        }
    .end annotation
.end field

.field private mAutoUnbind:Z

.field volatile mBackKeyHandled:Z

.field mBatteryReceiver:Landroid/content/BroadcastReceiver;

.field volatile mBeganFromNonInteractive:Z

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mBurstCapture:Ljava/lang/Object;

.field mCTCameraWakeLock:Landroid/os/PowerManager$WakeLock;

.field mCalendarDateVibePattern:[J

.field volatile mCameraGestureTriggeredDuringGoingToSleep:Z

.field private mCameraHandler:Landroid/os/Handler;

.field volatile mCameraKeyHandled:Z

.field volatile mCameraKeyPressedWaitForUnlock:Z

.field private mCameraLongPressAction:Z

.field private final mCameraLongPressActionRunnable:Ljava/lang/Runnable;

.field private mCameraRunnable:Ljava/lang/Runnable;

.field mClockTickVibePattern:[J

.field mContextClickVibePattern:[J

.field private mCurrentUserId:I

.field private mDeferBindKeyguard:Z

.field mDeviceHardwareKeys:I

.field mDismissKeyguard:I

.field volatile mDismissKeyguardCommen:Z

.field private mDismissKeyguardForced:Z

.field volatile mDoubleHomeLaunchDropHover:Z

.field private final mDoubleTPChange:Ljava/lang/Runnable;

.field private mDoubleTapOnHomeBehavior:I

.field private final mDoubleVolumeVibe:I

.field mDoubleVolumeVibePattern:[J

.field mDreamingLockscreen:Z

.field mDreamingSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

.field mDreamingSleepTokenNeeded:Z

.field volatile mEndCallKeyHandled:Z

.field private mErrorDuringBind:Z

.field private mFactoryTest:I

.field private mFlashLightRunnable:Ljava/lang/Runnable;

.field mForceStatusBar:Z

.field mForceStatusBarFromKeyguard:Z

.field private mForceStatusBarTransparent:Z

.field mForcingShowNavBar:Z

.field mForcingShowNavBarLayer:I

.field private mGestureKeycode:I

.field mGestureMakeCallReceiver:Landroid/content/BroadcastReceiver;

.field mGestureWakeLock:Landroid/os/PowerManager$WakeLock;

.field mGlobalActions:Lcom/android/server/policy/GlobalActions;

.field private mGlobalKeyManager:Lcom/android/server/policy/GlobalKeyManager;

.field volatile mGoingToSleep:Z

.field private mHDMIObserver:Landroid/os/UEventObserver;

.field mHandler:Landroid/os/Handler;

.field private mHasFeatureWatch:Z

.field mHideLockScreen:Z

.field mHmctHandler:Landroid/os/Handler;

.field mHmctHdmiControl:Lcom/android/server/policy/HmctPhoneWindowManager$HdmiControl;

.field mHmctSettingsObserver:Lcom/android/server/policy/HmctPhoneWindowManager$HmctSettingsObserver;

.field mHomeConsumed:Z

.field mHomeDoubleTapPending:Z

.field private final mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

.field mHomePressed:Z

.field private mIQrservice:Lcom/android/camera/SnapshotService;

.field volatile mIgnoreSlip:Z

.field mInputConsumer:Landroid/view/WindowManagerPolicy$InputConsumer;

.field private mIsBurstCapture:Z

.field mKeyboardTapVibePattern:[J

.field volatile mKeyguardOccluded:Z

.field mKeyguardSecure:Z

.field mKeyguardSecureIncludingHidden:Z

.field volatile mLeftSlip:Z

.field private final mLock:Ljava/lang/Object;

.field private mLongPressOnAppSwitchBehavior:I

.field mLongPressOnBackBehavior:I

.field private mLongPressOnHomeBehavior:I

.field mLongPressVibePattern:[J

.field mMetaState:I

.field mMultiuserReceiver:Landroid/content/BroadcastReceiver;

.field mNavBarOpacityMode:I

.field private mNeedUnbindServcie:Z

.field private mPendingPanicGestureUptime:J

.field volatile mPowerKeyHandled:Z

.field volatile mPowerKeyPressCounter:I

.field mPreloadedRecentApps:Z

.field private mProximitySensor:Lcom/android/server/policy/HmctPhoneWindowManager$ProximitySensor;

.field private final mProximitySensorListener:Lcom/android/server/policy/HmctPhoneWindowManager$ProximitySensorListener;

.field private mProximitySensorManager:Lcom/android/server/policy/ProximitySensorManager;

.field private mPublicKeyMode:I

.field volatile mRecentsVisible:Z

.field private mRemVirbratorKey:Z

.field volatile mRightSlip:Z

.field mSafeModeDisabledVibePattern:[J

.field mSafeModeEnabledVibePattern:[J

.field mScreenOffSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

.field private mScreenshotChordEnabled:Z

.field private mScreenshotChordPowerKeyTime:J

.field private mScreenshotChordPowerKeyTriggered:Z

.field private mScreenshotChordVolumeDownKeyConsumed:Z

.field private mScreenshotChordVolumeDownKeyTime:J

.field private mScreenshotChordVolumeDownKeyTriggered:Z

.field private mScreenshotChordVolumeUpKeyTriggered:Z

.field mSearchManager:Landroid/app/SearchManager;

.field private mSecureDismissingKeyguard:Z

.field final mServiceAquireLock:Ljava/lang/Object;

.field private mShortCameraBehavior:I

.field mShowingDream:Z

.field mShowingLockscreen:Z

.field private mSlipHandler:Landroid/os/Handler;

.field mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

.field mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field private mSystemGestures:Lcom/android/server/policy/SystemGesturesPointerEventListener;

.field mTopDockedOpaqueOrDimmingWindowState:Landroid/view/WindowManagerPolicy$WindowState;

.field mTopDockedOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

.field mTopFullscreenOpaqueOrDimmingWindowState:Landroid/view/WindowManagerPolicy$WindowState;

.field mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

.field mTopIsFullscreen:Z

.field volatile mTvPictureInPictureVisible:Z

.field private mUnbindIQServiceRunnable:Ljava/lang/Runnable;

.field mVibrator:Landroid/os/Vibrator;

.field mVirtualKeyVibePattern:[J

.field mVolumeDownWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mVolumeUpKeyConsumedByScreenshotChord:Z

.field private mVolumeUpKeyTime:J

.field mVolumeUpWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWaitForConnection:Z

.field private mWinDismissingKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

.field private mWinShowWhenLocked:Landroid/view/WindowManagerPolicy$WindowState;

.field private final myHomeKeyRunnable:Ljava/lang/Runnable;

.field private final myResetSlipRunnable:Ljava/lang/Runnable;

.field volatile sIgnoreCurrentKey:Z

.field private serviceConnection:Landroid/content/ServiceConnection;


# direct methods
.method static synthetic -get0()I
    .locals 1

    sget v0, Lcom/android/server/policy/HmctPhoneWindowManager;->CurrentBatterylevel:I

    return v0
.end method

.method static synthetic -get1()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/policy/HmctPhoneWindowManager;->callNum:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/server/policy/HmctPhoneWindowManager;)Lcom/android/server/policy/HmctPhoneWindowManager$ProximitySensor;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mProximitySensor:Lcom/android/server/policy/HmctPhoneWindowManager$ProximitySensor;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/server/policy/HmctPhoneWindowManager;)Lcom/android/server/policy/ProximitySensorManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mProximitySensorManager:Lcom/android/server/policy/ProximitySensorManager;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/server/policy/HmctPhoneWindowManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mWaitForConnection:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/policy/HmctPhoneWindowManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->isNear:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/server/policy/HmctPhoneWindowManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mAutoUnbind:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/server/policy/HmctPhoneWindowManager;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mBurstCapture:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/policy/HmctPhoneWindowManager;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mCameraRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get6()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/policy/HmctPhoneWindowManager;->mFlightLightSupport:Z

    return v0
.end method

.method static synthetic -get7()J
    .locals 2

    sget-wide v0, Lcom/android/server/policy/HmctPhoneWindowManager;->mGestureKeyguardUnlockTime:J

    return-wide v0
.end method

.method static synthetic -get8(Lcom/android/server/policy/HmctPhoneWindowManager;)Lcom/android/camera/SnapshotService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mIQrservice:Lcom/android/camera/SnapshotService;

    return-object v0
.end method

.method static synthetic -get9()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/policy/HmctPhoneWindowManager;->mNeedMakeCallAfterUnlock:Z

    return v0
.end method

.method static synthetic -set0(I)I
    .locals 0

    sput p0, Lcom/android/server/policy/HmctPhoneWindowManager;->CurrentBatterylevel:I

    return p0
.end method

.method static synthetic -set1(Lcom/android/server/policy/HmctPhoneWindowManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->isDoubleTpNagivate:Z

    return p1
.end method

.method static synthetic -set10(I)I
    .locals 0

    sput p0, Lcom/android/server/policy/HmctPhoneWindowManager;->sOldDefaultKeyArrayIndex:I

    return p0
.end method

.method static synthetic -set2(Lcom/android/server/policy/HmctPhoneWindowManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->isNear:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/server/policy/HmctPhoneWindowManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mCameraLongPressAction:Z

    return p1
.end method

.method static synthetic -set4(J)J
    .locals 0

    sput-wide p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mGestureKeyguardUnlockTime:J

    return-wide p0
.end method

.method static synthetic -set5(Lcom/android/server/policy/HmctPhoneWindowManager;Lcom/android/camera/SnapshotService;)Lcom/android/camera/SnapshotService;
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mIQrservice:Lcom/android/camera/SnapshotService;

    return-object p1
.end method

.method static synthetic -set6(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mNeedMakeCallAfterUnlock:Z

    return p0
.end method

.method static synthetic -set7(Lcom/android/server/policy/HmctPhoneWindowManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mNeedUnbindServcie:Z

    return p1
.end method

.method static synthetic -set8(Lcom/android/server/policy/HmctPhoneWindowManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mWaitForConnection:Z

    return p1
.end method

.method static synthetic -set9(I)I
    .locals 0

    sput p0, Lcom/android/server/policy/HmctPhoneWindowManager;->sDefaultKeyArrayIndex:I

    return p0
.end method

.method static synthetic -wrap0(Lcom/android/server/policy/HmctPhoneWindowManager;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/policy/HmctPhoneWindowManager;->isPhoneIdle()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/policy/HmctPhoneWindowManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/HmctPhoneWindowManager;->backLongPress()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/policy/HmctPhoneWindowManager;JZI)V
    .locals 1
    .param p1, "eventTime"    # J
    .param p3, "interactive"    # Z
    .param p4, "count"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/policy/HmctPhoneWindowManager;->cameraLongPress(JZI)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/policy/HmctPhoneWindowManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/HmctPhoneWindowManager;->finishVolumeDownKeyPress()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/policy/HmctPhoneWindowManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/HmctPhoneWindowManager;->finishVolumeUpKeyPress()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/policy/HmctPhoneWindowManager;Ljava/lang/String;)V
    .locals 0
    .param p1, "phoneNumb"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/policy/HmctPhoneWindowManager;->handleCallKey(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/policy/HmctPhoneWindowManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/HmctPhoneWindowManager;->handleShortPressOnHome()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/policy/HmctPhoneWindowManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/HmctPhoneWindowManager;->releaseIQService()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/policy/HmctPhoneWindowManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/HmctPhoneWindowManager;->showLeftTime()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/policy/HmctPhoneWindowManager;ZZ)V
    .locals 0
    .param p1, "triggeredFromAltTab"    # Z
    .param p2, "fromHome"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/HmctPhoneWindowManager;->showRecentApps(ZZ)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 255
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v0, v5}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 257
    const/16 v1, 0xd

    .line 255
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/server/policy/HmctPhoneWindowManager;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    .line 339
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/policy/HmctPhoneWindowManager;->mTmpParentFrame:Landroid/graphics/Rect;

    .line 340
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/policy/HmctPhoneWindowManager;->mTmpDisplayFrame:Landroid/graphics/Rect;

    .line 341
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/policy/HmctPhoneWindowManager;->mTmpOverscanFrame:Landroid/graphics/Rect;

    .line 342
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/policy/HmctPhoneWindowManager;->mTmpContentFrame:Landroid/graphics/Rect;

    .line 343
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/policy/HmctPhoneWindowManager;->mTmpVisibleFrame:Landroid/graphics/Rect;

    .line 344
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/policy/HmctPhoneWindowManager;->mTmpDecorFrame:Landroid/graphics/Rect;

    .line 345
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/policy/HmctPhoneWindowManager;->mTmpStableFrame:Landroid/graphics/Rect;

    .line 346
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/policy/HmctPhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    .line 347
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/policy/HmctPhoneWindowManager;->mTmpOutsetFrame:Landroid/graphics/Rect;

    .line 348
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/policy/HmctPhoneWindowManager;->mTmpRect:Landroid/graphics/Rect;

    .line 1130
    const/16 v0, 0x7d3

    .line 1131
    const/16 v1, 0x7da

    .line 1129
    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/android/server/policy/HmctPhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    .line 2429
    sput-boolean v3, Lcom/android/server/policy/HmctPhoneWindowManager;->mAcceptVolumeDownKey:Z

    .line 2430
    sput-boolean v3, Lcom/android/server/policy/HmctPhoneWindowManager;->mBurstCapturePrepared:Z

    .line 2691
    sput v2, Lcom/android/server/policy/HmctPhoneWindowManager;->CurrentBatterylevel:I

    .line 2707
    sput-boolean v3, Lcom/android/server/policy/HmctPhoneWindowManager;->mFlashLightPrepared:Z

    .line 2708
    sput-boolean v3, Lcom/android/server/policy/HmctPhoneWindowManager;->mFlightLightSupport:Z

    .line 2709
    sput-boolean v2, Lcom/android/server/policy/HmctPhoneWindowManager;->mFlashLightAutoSupport:Z

    .line 2710
    sput-boolean v3, Lcom/android/server/policy/HmctPhoneWindowManager;->mAcceptVolumeUpKey:Z

    .line 2713
    sput-boolean v3, Lcom/android/server/policy/HmctPhoneWindowManager;->mOpenFlashLight:Z

    .line 3080
    sput-boolean v2, Lcom/android/server/policy/HmctPhoneWindowManager;->mEnableDropHover:Z

    .line 3082
    sput-boolean v2, Lcom/android/server/policy/HmctPhoneWindowManager;->FEATURE_DROPHOVER_SUPPORT:Z

    .line 3101
    sput-boolean v2, Lcom/android/server/policy/HmctPhoneWindowManager;->mNeedMakeCallAfterUnlock:Z

    .line 3102
    const-string/jumbo v0, ""

    sput-object v0, Lcom/android/server/policy/HmctPhoneWindowManager;->callNum:Ljava/lang/String;

    .line 3103
    const-wide/16 v0, 0x1770

    sput-wide v0, Lcom/android/server/policy/HmctPhoneWindowManager;->mStartdardInterval:J

    .line 3124
    sput-boolean v2, Lcom/android/server/policy/HmctPhoneWindowManager;->mSupportGesture:Z

    .line 3589
    sput v3, Lcom/android/server/policy/HmctPhoneWindowManager;->powerType:I

    .line 3620
    sput-boolean v2, Lcom/android/server/policy/HmctPhoneWindowManager;->vLongPressHomeStartVoiceassist:Z

    .line 3624
    sput-boolean v2, Lcom/android/server/policy/HmctPhoneWindowManager;->mEnableLaunchHmctAssistant:Z

    .line 3653
    sput-boolean v2, Lcom/android/server/policy/HmctPhoneWindowManager;->mSupportSingleHand:Z

    .line 3654
    sput-boolean v2, Lcom/android/server/policy/HmctPhoneWindowManager;->mEnableSinglHand:Z

    .line 3657
    const/16 v0, 0xbb

    const/4 v1, 0x3

    filled-new-array {v0, v1, v5}, [I

    move-result-object v0

    sput-object v0, Lcom/android/server/policy/HmctPhoneWindowManager;->sDefaultKeyArray:[I

    .line 3658
    sget-object v0, Lcom/android/server/policy/HmctPhoneWindowManager;->sDefaultKeyArray:[I

    array-length v0, v0

    sput v0, Lcom/android/server/policy/HmctPhoneWindowManager;->sDefaultKeyLength:I

    .line 3659
    sput v2, Lcom/android/server/policy/HmctPhoneWindowManager;->sDefaultKeyArrayIndex:I

    .line 3660
    sput v4, Lcom/android/server/policy/HmctPhoneWindowManager;->sOldDefaultKeyArrayIndex:I

    .line 3661
    const/16 v0, 0x3c

    sput v0, Lcom/android/server/policy/HmctPhoneWindowManager;->mSlipKeyInterval:I

    .line 3766
    sput-boolean v2, Lcom/android/server/policy/HmctPhoneWindowManager;->mDisableBottomKeys:Z

    .line 3778
    sput v4, Lcom/android/server/policy/HmctPhoneWindowManager;->mCameraKeyPressedBehavior:I

    .line 200
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 200
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;-><init>()V

    .line 273
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mLock:Ljava/lang/Object;

    .line 278
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mServiceAquireLock:Ljava/lang/Object;

    .line 337
    iput-object v2, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mInputConsumer:Landroid/view/WindowManagerPolicy$InputConsumer;

    .line 354
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mAppsToBeHidden:Ljava/util/HashSet;

    .line 355
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mAppsThatDismissKeyguard:Ljava/util/HashSet;

    .line 360
    iput v1, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mNavBarOpacityMode:I

    .line 369
    iput v1, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mDismissKeyguard:I

    .line 507
    new-instance v0, Lcom/android/server/policy/HmctPhoneWindowManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/HmctPhoneWindowManager$1;-><init>(Lcom/android/server/policy/HmctPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mHDMIObserver:Landroid/os/UEventObserver;

    .line 742
    new-instance v0, Lcom/android/server/policy/HmctPhoneWindowManager$2;

    invoke-direct {v0, p0}, Lcom/android/server/policy/HmctPhoneWindowManager$2;-><init>(Lcom/android/server/policy/HmctPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    .line 2134
    new-instance v0, Lcom/android/server/policy/HmctPhoneWindowManager$3;

    invoke-direct {v0, p0}, Lcom/android/server/policy/HmctPhoneWindowManager$3;-><init>(Lcom/android/server/policy/HmctPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mMultiuserReceiver:Landroid/content/BroadcastReceiver;

    .line 2357
    iput-boolean v1, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mRemVirbratorKey:Z

    .line 2428
    iput-boolean v1, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mIsBurstCapture:Z

    .line 2434
    iput-boolean v1, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mErrorDuringBind:Z

    .line 2435
    iput-boolean v1, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mAutoUnbind:Z

    .line 2436
    iput-boolean v1, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mWaitForConnection:Z

    .line 2437
    const-string/jumbo v0, "enable_burst_capture_from_idle"

    iput-object v0, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->ENABLE_BURST_CAPTURE:Ljava/lang/String;

    .line 2438
    iput-boolean v1, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mNeedUnbindServcie:Z

    .line 2440
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mBurstCapture:Ljava/lang/Object;

    .line 2443
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mCameraHandler:Landroid/os/Handler;

    .line 2444
    const v0, 0x31326

    iput v0, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mDoubleVolumeVibe:I

    .line 2482
    new-instance v0, Lcom/android/server/policy/HmctPhoneWindowManager$4;

    invoke-direct {v0, p0}, Lcom/android/server/policy/HmctPhoneWindowManager$4;-><init>(Lcom/android/server/policy/HmctPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mCameraRunnable:Ljava/lang/Runnable;

    .line 2547
    new-instance v0, Lcom/android/server/policy/HmctPhoneWindowManager$5;

    invoke-direct {v0, p0}, Lcom/android/server/policy/HmctPhoneWindowManager$5;-><init>(Lcom/android/server/policy/HmctPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->serviceConnection:Landroid/content/ServiceConnection;

    .line 2638
    new-instance v0, Lcom/android/server/policy/HmctPhoneWindowManager$6;

    invoke-direct {v0, p0}, Lcom/android/server/policy/HmctPhoneWindowManager$6;-><init>(Lcom/android/server/policy/HmctPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mUnbindIQServiceRunnable:Ljava/lang/Runnable;

    .line 2693
    new-instance v0, Lcom/android/server/policy/HmctPhoneWindowManager$7;

    invoke-direct {v0, p0}, Lcom/android/server/policy/HmctPhoneWindowManager$7;-><init>(Lcom/android/server/policy/HmctPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    .line 2714
    const-string/jumbo v0, "up_volume_keys_setting"

    iput-object v0, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->VOLUMEUP_FLASHLIGHT_ACTION:Ljava/lang/String;

    .line 2718
    new-instance v0, Lcom/android/server/policy/HmctPhoneWindowManager$8;

    invoke-direct {v0, p0}, Lcom/android/server/policy/HmctPhoneWindowManager$8;-><init>(Lcom/android/server/policy/HmctPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mFlashLightRunnable:Ljava/lang/Runnable;

    .line 2847
    iput-boolean v1, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mCameraKeyHandled:Z

    .line 2852
    iput-boolean v1, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mCameraLongPressAction:Z

    .line 2853
    iput v1, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mShortCameraBehavior:I

    .line 2854
    const-string/jumbo v0, "key_camera_short_press_action"

    iput-object v0, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->KEY_CAMERA_SHORT_PRESS_ACTION:Ljava/lang/String;

    .line 2855
    iput-boolean v1, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mDismissKeyguardCommen:Z

    .line 2996
    new-instance v0, Lcom/android/server/policy/HmctPhoneWindowManager$9;

    invoke-direct {v0, p0}, Lcom/android/server/policy/HmctPhoneWindowManager$9;-><init>(Lcom/android/server/policy/HmctPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mCameraLongPressActionRunnable:Ljava/lang/Runnable;

    .line 3081
    const-string/jumbo v0, "drophover_enable"

    iput-object v0, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->DROPHOVER_ENABLE_ACTION:Ljava/lang/String;

    .line 3083
    iput-boolean v1, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mDoubleHomeLaunchDropHover:Z

    .line 3104
    new-instance v0, Lcom/android/server/policy/HmctPhoneWindowManager$10;

    invoke-direct {v0, p0}, Lcom/android/server/policy/HmctPhoneWindowManager$10;-><init>(Lcom/android/server/policy/HmctPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mGestureMakeCallReceiver:Landroid/content/BroadcastReceiver;

    .line 3125
    iput v1, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mGestureKeycode:I

    .line 3126
    iput-boolean v1, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->isDoubleTpNagivate:Z

    .line 3127
    iput-boolean v1, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mDismissKeyguardForced:Z

    .line 3483
    new-instance v0, Lcom/android/server/policy/HmctPhoneWindowManager$11;

    invoke-direct {v0, p0}, Lcom/android/server/policy/HmctPhoneWindowManager$11;-><init>(Lcom/android/server/policy/HmctPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mDoubleTPChange:Ljava/lang/Runnable;

    .line 3526
    new-instance v0, Lcom/android/server/policy/HmctPhoneWindowManager$ProximitySensorListener;

    invoke-direct {v0, p0, v2}, Lcom/android/server/policy/HmctPhoneWindowManager$ProximitySensorListener;-><init>(Lcom/android/server/policy/HmctPhoneWindowManager;Lcom/android/server/policy/HmctPhoneWindowManager$ProximitySensorListener;)V

    iput-object v0, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mProximitySensorListener:Lcom/android/server/policy/HmctPhoneWindowManager$ProximitySensorListener;

    .line 3527
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->isNear:Z

    .line 3584
    iput v1, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mPublicKeyMode:I

    .line 3651
    iput-boolean v1, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mIgnoreSlip:Z

    .line 3663
    iput-boolean v1, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->sIgnoreCurrentKey:Z

    .line 3669
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mSlipHandler:Landroid/os/Handler;

    .line 3729
    new-instance v0, Lcom/android/server/policy/HmctPhoneWindowManager$12;

    invoke-direct {v0, p0}, Lcom/android/server/policy/HmctPhoneWindowManager$12;-><init>(Lcom/android/server/policy/HmctPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->myResetSlipRunnable:Ljava/lang/Runnable;

    .line 3756
    new-instance v0, Lcom/android/server/policy/HmctPhoneWindowManager$13;

    invoke-direct {v0, p0}, Lcom/android/server/policy/HmctPhoneWindowManager$13;-><init>(Lcom/android/server/policy/HmctPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->myHomeKeyRunnable:Ljava/lang/Runnable;

    .line 3777
    iput-boolean v1, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mCameraKeyPressedWaitForUnlock:Z

    .line 3813
    new-instance v0, Lcom/android/server/policy/HmctPhoneWindowManager$14;

    invoke-direct {v0, p0}, Lcom/android/server/policy/HmctPhoneWindowManager$14;-><init>(Lcom/android/server/policy/HmctPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 200
    return-void
.end method

.method private backLongPress()V
    .locals 2

    .prologue
    .line 643
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mBackKeyHandled:Z

    .line 645
    iget v1, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mLongPressOnBackBehavior:I

    packed-switch v1, :pswitch_data_0

    .line 642
    :goto_0
    :pswitch_0
    return-void

    .line 649
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VOICE_ASSIST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 650
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-direct {p0, v0, v1}, Lcom/android/server/policy/HmctPhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 645
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private cameraLongPress(JZI)V
    .locals 7
    .param p1, "eventTime"    # J
    .param p3, "interactive"    # Z
    .param p4, "count"    # I

    .prologue
    const/4 v6, 0x1

    .line 2956
    const-string/jumbo v3, "HmctWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "CTCamera cameraLongPress interactive : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " , isNear : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->isNear:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2958
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2959
    .local v1, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-nez v3, :cond_0

    const/4 v2, 0x0

    .line 2962
    :goto_0
    iput-boolean v6, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mCameraKeyHandled:Z

    .line 2964
    iget-boolean v3, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->isNear:Z

    if-eqz v3, :cond_1

    .line 2965
    iget-object v3, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mProximitySensor:Lcom/android/server/policy/HmctPhoneWindowManager$ProximitySensor;

    invoke-static {v3}, Lcom/android/server/policy/HmctPhoneWindowManager$ProximitySensor;->-wrap0(Lcom/android/server/policy/HmctPhoneWindowManager$ProximitySensor;)V

    .line 2966
    return-void

    .line 2960
    :cond_0
    iget-object v3, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v3}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v2

    .local v2, "keyguardActive":Z
    goto :goto_0

    .line 2970
    .end local v2    # "keyguardActive":Z
    :cond_1
    if-eqz v2, :cond_2

    .line 2971
    iget v3, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mCurrentUserId:I

    invoke-virtual {p0, v3}, Lcom/android/server/policy/HmctPhoneWindowManager;->isKeyguardSecure(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2972
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    const-string/jumbo v3, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2980
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_2
    :goto_1
    if-nez p3, :cond_3

    .line 2981
    iget-object v3, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager;->wakeUp(J)V

    .line 2982
    const-string/jumbo v3, "HmctWindowManager"

    const-string/jumbo v4, "CTCamera =====wakeUpFromCameraKey"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2985
    :cond_3
    const/high16 v3, 0x34000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2990
    :try_start_0
    iget-object v3, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2954
    :goto_2
    return-void

    .line 2974
    :cond_4
    const-string/jumbo v3, "HmctWindowManager"

    const-string/jumbo v4, "CTCamera =====dismissKeyguardLw after startedWakingUp"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2975
    iput-boolean v6, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mDismissKeyguardCommen:Z

    goto :goto_1

    .line 2991
    :catch_0
    move-exception v0

    .line 2992
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v3, "HmctWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "CTCamera Activity not found for intent + "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private cameraPress(Z)V
    .locals 4
    .param p1, "interactive"    # Z

    .prologue
    .line 2941
    const-string/jumbo v1, "HmctWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "CTCamera cameraPress interactive : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " mShortCameraBehavior : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mShortCameraBehavior:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2942
    invoke-virtual {p0}, Lcom/android/server/policy/HmctPhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v0

    .line 2943
    .local v0, "telecomManager":Landroid/telecom/TelecomManager;
    if-eqz v0, :cond_0

    .line 2944
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 2946
    const-string/jumbo v1, "HmctWindowManager"

    const-string/jumbo v2, "CTCamera telecom isInCall return"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2947
    return-void

    .line 2951
    :cond_0
    iget v1, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mShortCameraBehavior:I

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/server/policy/HmctPhoneWindowManager;->performKeyAction(II)V

    .line 2939
    return-void
.end method

.method private cancelPendingBackKeyAction()V
    .locals 2

    .prologue
    .line 636
    iget-boolean v0, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mBackKeyHandled:Z

    if-nez v0, :cond_0

    .line 637
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mBackKeyHandled:Z

    .line 638
    iget-object v0, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mHmctHandler:Landroid/os/Handler;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 635
    :cond_0
    return-void
.end method

.method private cancelPendingCameraKeyAction()V
    .locals 2

    .prologue
    .line 2932
    const-string/jumbo v0, "HmctWindowManager"

    const-string/jumbo v1, "CTCamera cancelPendingCameraKeyAction "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2933
    iget-boolean v0, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mCameraKeyHandled:Z

    if-nez v0, :cond_0

    .line 2934
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mCameraKeyHandled:Z

    .line 2935
    iget-object v0, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mHmctHandler:Landroid/os/Handler;

    const/16 v1, 0x19

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2930
    :cond_0
    return-void
.end method

.method private cancelPreloadRecentApps()V
    .locals 2

    .prologue
    .line 1556
    iget-boolean v1, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mPreloadedRecentApps:Z

    if-eqz v1, :cond_0

    .line 1557
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mPreloadedRecentApps:Z

    .line 1558
    invoke-virtual {p0}, Lcom/android/server/policy/HmctPhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    .line 1559
    .local v0, "statusbar":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-eqz v0, :cond_0

    .line 1560
    invoke-interface {v0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->cancelPreloadRecentApps()V

    .line 1555
    .end local v0    # "statusbar":Lcom/android/server/statusbar/StatusBarManagerInternal;
    :cond_0
    return-void
.end method

.method private detectSlipAction(Landroid/view/KeyEvent;Z)Z
    .locals 11
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "down"    # Z

    .prologue
    const/4 v10, -0x1

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 3673
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 3675
    .local v1, "keyCode":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v3, Lcom/android/server/policy/HmctPhoneWindowManager;->sDefaultKeyLength:I

    if-ge v0, v3, :cond_8

    .line 3676
    const-string/jumbo v3, "TS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "detectSlipAction keyCode :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " i = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3677
    const-string/jumbo v5, " sDefaultKeyArray[i]"

    .line 3676
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3677
    sget-object v5, Lcom/android/server/policy/HmctPhoneWindowManager;->sDefaultKeyArray:[I

    aget v5, v5, v0

    .line 3676
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3677
    const-string/jumbo v5, " sOldDefaultKeyArrayIndex : "

    .line 3676
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3677
    sget v5, Lcom/android/server/policy/HmctPhoneWindowManager;->sOldDefaultKeyArrayIndex:I

    .line 3676
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3677
    const-string/jumbo v5, " mIgnoreSlip : "

    .line 3676
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3677
    iget-boolean v5, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mIgnoreSlip:Z

    .line 3676
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3678
    sget-object v3, Lcom/android/server/policy/HmctPhoneWindowManager;->sDefaultKeyArray:[I

    aget v3, v3, v0

    if-ne v3, v1, :cond_3

    .line 3679
    if-eqz p2, :cond_7

    .line 3681
    iget-object v3, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mSlipHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->myResetSlipRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3682
    sput v0, Lcom/android/server/policy/HmctPhoneWindowManager;->sDefaultKeyArrayIndex:I

    .line 3684
    sget v3, Lcom/android/server/policy/HmctPhoneWindowManager;->sOldDefaultKeyArrayIndex:I

    if-ltz v3, :cond_2

    .line 3686
    sget v3, Lcom/android/server/policy/HmctPhoneWindowManager;->sDefaultKeyArrayIndex:I

    sget v4, Lcom/android/server/policy/HmctPhoneWindowManager;->sOldDefaultKeyArrayIndex:I

    sub-int v2, v3, v4

    .line 3687
    .local v2, "sSlipDirection":I
    if-eq v2, v10, :cond_0

    if-ne v2, v8, :cond_2

    .line 3688
    :cond_0
    sget v3, Lcom/android/server/policy/HmctPhoneWindowManager;->sOldDefaultKeyArrayIndex:I

    if-eqz v3, :cond_1

    sget v3, Lcom/android/server/policy/HmctPhoneWindowManager;->sOldDefaultKeyArrayIndex:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 3689
    :cond_1
    iput-boolean v8, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mIgnoreSlip:Z

    .line 3690
    return v9

    .line 3694
    .end local v2    # "sSlipDirection":I
    :cond_2
    sget v3, Lcom/android/server/policy/HmctPhoneWindowManager;->sOldDefaultKeyArrayIndex:I

    if-ne v3, v8, :cond_3

    iget-boolean v3, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mIgnoreSlip:Z

    if-eqz v3, :cond_4

    .line 3675
    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 3696
    :cond_4
    sget v3, Lcom/android/server/policy/HmctPhoneWindowManager;->sDefaultKeyArrayIndex:I

    sget v4, Lcom/android/server/policy/HmctPhoneWindowManager;->sOldDefaultKeyArrayIndex:I

    sub-int v2, v3, v4

    .line 3697
    .restart local v2    # "sSlipDirection":I
    if-eq v2, v10, :cond_5

    if-ne v2, v8, :cond_6

    .line 3699
    :cond_5
    iput-boolean v8, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->sIgnoreCurrentKey:Z

    .line 3701
    iget-object v3, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mHmctHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3702
    iput-boolean v9, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mHomeDoubleTapPending:Z

    .line 3704
    iget-object v3, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mHmctHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->myHomeKeyRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3706
    invoke-direct {p0, v2}, Lcom/android/server/policy/HmctPhoneWindowManager;->launchSingleHandleMode(I)V

    .line 3707
    return v8

    .line 3709
    :cond_6
    const-string/jumbo v3, "TS"

    const-string/jumbo v4, "valid key for slipping"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3713
    .end local v2    # "sSlipDirection":I
    :cond_7
    iget-object v3, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mSlipHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->myResetSlipRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3714
    iget-object v3, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mSlipHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->myResetSlipRunnable:Ljava/lang/Runnable;

    sget v5, Lcom/android/server/policy/HmctPhoneWindowManager;->mSlipKeyInterval:I

    int-to-long v6, v5

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3715
    sget v3, Lcom/android/server/policy/HmctPhoneWindowManager;->sDefaultKeyArrayIndex:I

    sput v3, Lcom/android/server/policy/HmctPhoneWindowManager;->sOldDefaultKeyArrayIndex:I

    .line 3716
    const-string/jumbo v3, "TS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "up sOldDefaultKeyArrayIndex : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/server/policy/HmctPhoneWindowManager;->sOldDefaultKeyArrayIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3717
    iget-boolean v3, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->sIgnoreCurrentKey:Z

    if-eqz v3, :cond_3

    .line 3718
    iput-boolean v9, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->sIgnoreCurrentKey:Z

    .line 3719
    return v8

    .line 3725
    :cond_8
    const-string/jumbo v4, "TS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "detectSlipAction keyCode : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p2, :cond_9

    const-string/jumbo v3, "down"

    :goto_2
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3726
    return v9

    .line 3725
    :cond_9
    const-string/jumbo v3, "up"

    goto :goto_2
.end method

.method private finishCameraKeyPress()V
    .locals 2

    .prologue
    .line 2924
    const-string/jumbo v0, "HmctWindowManager"

    const-string/jumbo v1, "CTCamera finishCameraKeyPress "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2925
    iget-object v0, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mCTCameraWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2926
    iget-object v0, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mCTCameraWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2922
    :cond_0
    return-void
.end method

.method private finishVolumeDownKeyPress()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2580
    const-string/jumbo v0, "HmctWindowManager"

    const-string/jumbo v1, "burst finishVolumeDKeyPress"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2581
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mWaitForConnection:Z

    .line 2582
    sput-boolean v2, Lcom/android/server/policy/HmctPhoneWindowManager;->mBurstCapturePrepared:Z

    .line 2583
    sput-boolean v2, Lcom/android/server/policy/HmctPhoneWindowManager;->mAcceptVolumeDownKey:Z

    .line 2584
    iput-boolean v2, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mAutoUnbind:Z

    .line 2586
    iget-object v0, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mVolumeDownWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2587
    const-string/jumbo v0, "HmctWindowManager"

    const-string/jumbo v1, "burst KEYCODE_VOLUME_DOWN release it"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2588
    iget-object v0, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mVolumeDownWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2578
    :cond_0
    return-void
.end method

.method private finishVolumeUpKeyPress()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2782
    sput-boolean v0, Lcom/android/server/policy/HmctPhoneWindowManager;->mFlashLightPrepared:Z

    .line 2783
    sput-boolean v0, Lcom/android/server/policy/HmctPhoneWindowManager;->mAcceptVolumeUpKey:Z

    .line 2785
    iget-object v0, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mVolumeUpWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2786
    const-string/jumbo v0, "HmctWindowManager"

    const-string/jumbo v1, "FVP finishVolumeUpKeyPress release it!!! mVolumeUpWakeLock"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2787
    iget-object v0, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mVolumeUpWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2780
    :cond_0
    return-void
.end method

.method private getCapture(Landroid/view/KeyEvent;Z)V
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "interactive"    # Z

    .prologue
    .line 2472
    const-string/jumbo v0, "HmctWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "burst getCapture interactive : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2473
    iget-object v0, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mHmctHandler:Landroid/os/Handler;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2474
    iget-object v0, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mIQrservice:Lcom/android/camera/SnapshotService;

    if-eqz v0, :cond_0

    .line 2475
    iget-object v0, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mCameraHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mCameraRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2470
    :goto_0
    return-void

    .line 2477
    :cond_0
    const-string/jumbo v0, "HmctWindowManager"

    const-string/jumbo v1, "burst mIQrservice not prepared yet, waiting for connect"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2478
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mWaitForConnection:Z

    goto :goto_0
.end method

.method static getDreamManager()Landroid/service/dreams/IDreamManager;
    .locals 1

    .prologue
    .line 1118
    const-string/jumbo v0, "dreams"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1117
    invoke-static {v0}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object v0

    return-object v0
.end method

.method private getGestureStr(I)Ljava/lang/String;
    .locals 5
    .param p1, "keyCode"    # I

    .prologue
    .line 3173
    const-string/jumbo v1, "Gesture_"

    .line 3174
    .local v1, "GesturePrefix":Ljava/lang/String;
    const-string/jumbo v0, ""

    .line 3175
    .local v0, "GestureDetail":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 3208
    :pswitch_0
    const-string/jumbo v2, "GESTURE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getGestureStr keyCode not right : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3209
    const-string/jumbo v0, "WARNING"

    .line 3214
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 3177
    :pswitch_1
    const-string/jumbo v0, "DOUBLE_TP"

    goto :goto_0

    .line 3180
    :pswitch_2
    const-string/jumbo v0, "O"

    goto :goto_0

    .line 3183
    :pswitch_3
    const-string/jumbo v0, "V"

    goto :goto_0

    .line 3186
    :pswitch_4
    const-string/jumbo v0, "W"

    goto :goto_0

    .line 3189
    :pswitch_5
    const-string/jumbo v0, "S"

    goto :goto_0

    .line 3192
    :pswitch_6
    const-string/jumbo v0, "Z"

    goto :goto_0

    .line 3195
    :pswitch_7
    const-string/jumbo v0, "Next"

    goto :goto_0

    .line 3198
    :pswitch_8
    const-string/jumbo v0, "Previous"

    goto :goto_0

    .line 3201
    :pswitch_9
    const-string/jumbo v0, "M"

    goto :goto_0

    .line 3204
    :pswitch_a
    const-string/jumbo v0, "E"

    goto :goto_0

    .line 3175
    :pswitch_data_0
    .packed-switch 0x136
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_1
    .end packed-switch
.end method

.method private getHdmiControl()Lcom/android/server/policy/HmctPhoneWindowManager$HdmiControl;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 681
    iget-object v2, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mHmctHdmiControl:Lcom/android/server/policy/HmctPhoneWindowManager$HdmiControl;

    if-nez v2, :cond_1

    .line 682
    iget-object v2, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mContext:Landroid/content/Context;

    .line 683
    const-string/jumbo v3, "hdmi_control"

    .line 682
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/hdmi/HdmiControlManager;

    .line 684
    .local v1, "manager":Landroid/hardware/hdmi/HdmiControlManager;
    const/4 v0, 0x0

    .line 685
    .local v0, "client":Landroid/hardware/hdmi/HdmiPlaybackClient;
    if-eqz v1, :cond_0

    .line 686
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiControlManager;->getPlaybackClient()Landroid/hardware/hdmi/HdmiPlaybackClient;

    move-result-object v0

    .line 688
    .end local v0    # "client":Landroid/hardware/hdmi/HdmiPlaybackClient;
    :cond_0
    new-instance v2, Lcom/android/server/policy/HmctPhoneWindowManager$HdmiControl;

    invoke-direct {v2, v0, v4}, Lcom/android/server/policy/HmctPhoneWindowManager$HdmiControl;-><init>(Landroid/hardware/hdmi/HdmiPlaybackClient;Lcom/android/server/policy/HmctPhoneWindowManager$HdmiControl;)V

    iput-object v2, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mHmctHdmiControl:Lcom/android/server/policy/HmctPhoneWindowManager$HdmiControl;

    .line 690
    .end local v1    # "manager":Landroid/hardware/hdmi/HdmiControlManager;
    :cond_1
    iget-object v2, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mHmctHdmiControl:Lcom/android/server/policy/HmctPhoneWindowManager$HdmiControl;

    return-object v2
.end method

.method private getSearchManager()Landroid/app/SearchManager;
    .locals 2

    .prologue
    .line 1541
    iget-object v0, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mSearchManager:Landroid/app/SearchManager;

    if-nez v0, :cond_0

    .line 1542
    iget-object v0, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "search"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    iput-object v0, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mSearchManager:Landroid/app/SearchManager;

    .line 1544
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mSearchManager:Landroid/app/SearchManager;

    return-object v0
.end method

.method private getTopApp()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 3009
    iget-object v3, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 3010
    .local v1, "mActivityManager":Landroid/app/ActivityManager;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    .line 3011
    .local v0, "RunningTask":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const-string/jumbo v2, "taskNull"

    .line 3012
    .local v2, "taskN":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 3013
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3014
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v3, :cond_0

    .line 3015
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3016
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3019
    :cond_0
    const-string/jumbo v3, "HmctWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "CTCamera Current top pkgName : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3020
    return-object v2
.end method

.method private handleCallKey(Ljava/lang/String;)V
    .locals 6
    .param p1, "phoneNumb"    # Ljava/lang/String;

    .prologue
    .line 3439
    invoke-direct {p0}, Lcom/android/server/policy/HmctPhoneWindowManager;->isPhoneIdle()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3440
    const-string/jumbo v3, "GESTURE"

    const-string/jumbo v4, "handleCallKey return for Phone is busy right now"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3441
    return-void

    .line 3443
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "tel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 3444
    .local v2, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.CALL"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3446
    .local v1, "intent":Landroid/content/Intent;
    :try_start_0
    const-string/jumbo v3, "GESTURE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleCallKey callNum : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3447
    iget-object v3, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3437
    :goto_0
    return-void

    .line 3448
    :catch_0
    move-exception v0

    .line 3449
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private handleDoubleTapOnHome()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 736
    iget v0, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    if-ne v0, v1, :cond_0

    .line 737
    iput-boolean v1, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mHomeConsumed:Z

    .line 738
    invoke-direct {p0}, Lcom/android/server/policy/HmctPhoneWindowManager;->toggleRecentApps()V

    .line 735
    :cond_0
    return-void
.end method

.method private handleGestureKey(I)V
    .locals 3
    .param p1, "keyCode"    # I

    .prologue
    .line 3356
    const-string/jumbo v0, "GESTURE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleGestureKey Key value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3358
    packed-switch p1, :pswitch_data_0

    .line 3398
    :pswitch_0
    const-string/jumbo v0, "GESTURE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleGestureKey keyCode not right return: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3354
    :goto_0
    :pswitch_1
    return-void

    .line 3372
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/server/policy/HmctPhoneWindowManager;->handleSelfDefinedKey(I)V

    goto :goto_0

    .line 3377
    :pswitch_3
    invoke-direct {p0}, Lcom/android/server/policy/HmctPhoneWindowManager;->handleTpSKey()V

    goto :goto_0

    .line 3382
    :pswitch_4
    const/16 v0, 0x57

    invoke-direct {p0, v0}, Lcom/android/server/policy/HmctPhoneWindowManager;->handleMediaKey(I)V

    goto :goto_0

    .line 3387
    :pswitch_5
    const/16 v0, 0x58

    invoke-direct {p0, v0}, Lcom/android/server/policy/HmctPhoneWindowManager;->handleMediaKey(I)V

    goto :goto_0

    .line 3392
    :pswitch_6
    const-string/jumbo v0, "GESTURE"

    const-string/jumbo v1, "GestureKey for MEDIA_PLAY_PAUSE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3393
    const/16 v0, 0x55

    invoke-direct {p0, v0}, Lcom/android/server/policy/HmctPhoneWindowManager;->handleMediaKey(I)V

    goto :goto_0

    .line 3358
    nop

    :pswitch_data_0
    .packed-switch 0x136
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private handleLongPressOnHome(I)V
    .locals 3
    .param p1, "deviceId"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 716
    iget v0, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mLongPressOnHomeBehavior:I

    if-nez v0, :cond_0

    .line 717
    return-void

    .line 719
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mHomeConsumed:Z

    .line 720
    invoke-virtual {p0, v2, v1, v1}, Lcom/android/server/policy/HmctPhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 722
    iget v0, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mLongPressOnHomeBehavior:I

    packed-switch v0, :pswitch_data_0

    .line 730
    const-string/jumbo v0, "HmctWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Undefined home long press behavior: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mLongPressOnHomeBehavior:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    :goto_0
    return-void

    .line 724
    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/policy/HmctPhoneWindowManager;->toggleRecentApps()V

    goto :goto_0

    .line 727
    :pswitch_1
    invoke-direct {p0, v2, p1}, Lcom/android/server/policy/HmctPhoneWindowManager;->launchAssistAction(Ljava/lang/String;I)V

    goto :goto_0

    .line 722
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private handleMediaKey(I)V
    .locals 14
    .param p1, "keyCode"    # I

    .prologue
    .line 3319
    sget v4, Lcom/android/server/policy/HmctPhoneWindowManager;->powerType:I

    if-nez v4, :cond_0

    invoke-direct {p0}, Lcom/android/server/policy/HmctPhoneWindowManager;->isPhoneIdle()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3320
    return-void

    .line 3323
    :cond_0
    const/16 v4, 0x55

    if-eq p1, v4, :cond_1

    invoke-virtual {p0}, Lcom/android/server/policy/HmctPhoneWindowManager;->isMusicActive()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-direct {p0}, Lcom/android/server/policy/HmctPhoneWindowManager;->isPhoneIdle()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3327
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 3328
    .local v2, "now":J
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v6, 0x0

    .line 3329
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/16 v12, 0x48

    .line 3332
    const/16 v13, 0x101

    move-wide v4, v2

    move v7, p1

    .line 3328
    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 3334
    .local v1, "ev":Landroid/view/KeyEvent;
    iget-object v4, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 3335
    iget-object v4, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mHmctHandler:Landroid/os/Handler;

    .line 3336
    new-instance v5, Landroid/view/KeyEvent;

    invoke-direct {v5, v1}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;)V

    .line 3335
    const/4 v6, 0x3

    invoke-virtual {v4, v6, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 3337
    .local v0, "msg":Landroid/os/Message;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 3338
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3340
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x64

    add-long v2, v4, v6

    .line 3341
    new-instance v1, Landroid/view/KeyEvent;

    .end local v1    # "ev":Landroid/view/KeyEvent;
    const/4 v6, 0x1

    .line 3342
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/16 v12, 0x48

    .line 3345
    const/16 v13, 0x101

    move-wide v4, v2

    move v7, p1

    .line 3341
    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 3347
    .restart local v1    # "ev":Landroid/view/KeyEvent;
    iget-object v4, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 3348
    iget-object v4, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mHmctHandler:Landroid/os/Handler;

    .line 3349
    new-instance v5, Landroid/view/KeyEvent;

    invoke-direct {v5, v1}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;)V

    .line 3348
    const/4 v6, 0x3

    invoke-virtual {v4, v6, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 3350
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 3351
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3316
    return-void

    .line 3324
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "ev":Landroid/view/KeyEvent;
    .end local v2    # "now":J
    :cond_2
    return-void
.end method

.method private handlePackaegKey(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appClass"    # Ljava/lang/String;

    .prologue
    .line 3455
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 3456
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3457
    .local v0, "compName":Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3459
    const/high16 v2, 0x34000000

    .line 3458
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3462
    const-string/jumbo v2, "hmct"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3463
    const-string/jumbo v2, "GESTURE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleCallKey packageName : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " , appClass : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3464
    invoke-direct {p0, v1}, Lcom/android/server/policy/HmctPhoneWindowManager;->sendGestureDelayIntent(Landroid/content/Intent;)V

    .line 3453
    return-void
.end method

.method private handleSelfDefinedKey(I)V
    .locals 5
    .param p1, "keyCode"    # I

    .prologue
    .line 3406
    const-string/jumbo v2, "GESTURE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleSelfDefinedKey Key value : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3408
    const/4 v1, 0x0

    .line 3409
    .local v1, "pkgName":Ljava/lang/String;
    const/4 v0, 0x0

    .line 3411
    .local v0, "className":Ljava/lang/String;
    const/16 v2, 0x137

    if-ne p1, v2, :cond_2

    .line 3413
    iget-object v2, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "screen_gesture_package_name_v"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3414
    .local v1, "pkgName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "screen_gesture_class_name_v"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3429
    .end local v0    # "className":Ljava/lang/String;
    .end local v1    # "pkgName":Ljava/lang/String;
    :cond_0
    :goto_0
    const-string/jumbo v2, "GESTURE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleSelfDefinedKey pkgName : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " , className : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3430
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3431
    :cond_1
    return-void

    .line 3415
    .restart local v0    # "className":Ljava/lang/String;
    .local v1, "pkgName":Ljava/lang/String;
    :cond_2
    const/16 v2, 0x138

    if-ne p1, v2, :cond_3

    .line 3417
    iget-object v2, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "screen_gesture_package_name_w"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3418
    .local v1, "pkgName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "screen_gesture_class_name_w"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "className":Ljava/lang/String;
    goto :goto_0

    .line 3419
    .local v0, "className":Ljava/lang/String;
    .local v1, "pkgName":Ljava/lang/String;
    :cond_3
    const/16 v2, 0x13a

    if-ne p1, v2, :cond_4

    .line 3421
    iget-object v2, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "screen_gesture_package_name_z"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3422
    .local v1, "pkgName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "screen_gesture_class_name_z"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "className":Ljava/lang/String;
    goto :goto_0

    .line 3423
    .local v0, "className":Ljava/lang/String;
    .local v1, "pkgName":Ljava/lang/String;
    :cond_4
    const/16 v2, 0x13f

    if-ne p1, v2, :cond_0

    .line 3425
    iget-object v2, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "screen_gesture_package_name_e"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3426
    .local v1, "pkgName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "screen_gesture_class_name_e"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "className":Ljava/lang/String;
    goto/16 :goto_0

    .line 3434
    .end local v0    # "className":Ljava/lang/String;
    .end local v1    # "pkgName":Ljava/lang/String;
    :cond_5
    invoke-direct {p0, v1, v0}, Lcom/android/server/policy/HmctPhoneWindowManager;->handlePackaegKey(Ljava/lang/String;Ljava/lang/String;)V

    .line 3404
    return-void
.end method

.method private handleSensor()V
    .locals 4

    .prologue
    .line 3514
    const-string/jumbo v1, "HmctWindowManager"

    const-string/jumbo v2, "handleSensor"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3516
    iget-object v1, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mProximitySensor:Lcom/android/server/policy/HmctPhoneWindowManager$ProximitySensor;

    invoke-static {v1}, Lcom/android/server/policy/HmctPhoneWindowManager$ProximitySensor;->-wrap1(Lcom/android/server/policy/HmctPhoneWindowManager$ProximitySensor;)V

    .line 3518
    iget-object v1, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mHmctHandler:Landroid/os/Handler;

    const/16 v2, 0x15

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3519
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 3520
    iget-object v1, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mHmctHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3512
    return-void
.end method

.method private handleShortPressOnHome()V
    .locals 2

    .prologue
    .line 661
    invoke-direct {p0}, Lcom/android/server/policy/HmctPhoneWindowManager;->getHdmiControl()Lcom/android/server/policy/HmctPhoneWindowManager$HdmiControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/policy/HmctPhoneWindowManager$HdmiControl;->turnOnTv()V

    .line 665
    iget-object v0, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mDreamManagerInternal:Landroid/service/dreams/DreamManagerInternal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mDreamManagerInternal:Landroid/service/dreams/DreamManagerInternal;

    invoke-virtual {v0}, Landroid/service/dreams/DreamManagerInternal;->isDreaming()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 666
    iget-object v0, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mDreamManagerInternal:Landroid/service/dreams/DreamManagerInternal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/service/dreams/DreamManagerInternal;->stopDream(Z)V

    .line 667
    return-void

    .line 671
    :cond_0
    const-string/jumbo v0, "HmctWindowManager"

    const-string/jumbo v1, "handleShortPressOnHome : launchHomeFromHotKey"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    invoke-virtual {p0}, Lcom/android/server/policy/HmctPhoneWindowManager;->launchHomeFromHotKey()V

    .line 659
    return-void
.end method

.method private handleTpSKey()V
    .locals 5

    .prologue
    .line 3299
    const-string/jumbo v2, "GESTURE"

    const-string/jumbo v3, "handleTpSKey GESTURE_S"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3302
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3304
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x34000000

    .line 3303
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3307
    invoke-direct {p0}, Lcom/android/server/policy/HmctPhoneWindowManager;->isPhoneIdle()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3309
    :try_start_0
    iget-object v2, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3297
    :cond_0
    :goto_0
    return-void

    .line 3310
    :catch_0
    move-exception v0

    .line 3311
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v2, "HmctWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Activity not found for intent + "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private hasLongPressOnBackBehavior()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 656
    iget v1, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mLongPressOnBackBehavior:I

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private hideRecentApps(ZZ)V
    .locals 2
    .param p1, "triggeredFromAltTab"    # Z
    .param p2, "triggeredFromHome"    # Z

    .prologue
    .line 1588
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mPreloadedRecentApps:Z

    .line 1589
    invoke-virtual {p0}, Lcom/android/server/policy/HmctPhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    .line 1590
    .local v0, "statusbar":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-eqz v0, :cond_0

    .line 1591
    invoke-interface {v0, p1, p2}, Lcom/android/server/statusbar/StatusBarManagerInternal;->hideRecentApps(ZZ)V

    .line 1587
    :cond_0
    return-void
.end method

.method private hmctInterceptPowerKeyDown(Landroid/view/KeyEvent;Z)V
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "interactive"    # Z

    .prologue
    .line 615
    const-string/jumbo v0, "HmctWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "hmctInterceptPowerKeyDown  interactive"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 616
    const-string/jumbo v2, " mScreenshotChordPowerKeyTriggered : "

    .line 615
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 616
    iget-boolean v2, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mScreenshotChordPowerKeyTriggered:Z

    .line 615
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    if-eqz p2, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mScreenshotChordPowerKeyTriggered:Z

    if-eqz v0, :cond_1

    .line 612
    :cond_0
    :goto_0
    return-void

    .line 618
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_0

    .line 619
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mScreenshotChordPowerKeyTriggered:Z

    .line 620
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mScreenshotChordPowerKeyTime:J

    .line 626
    invoke-direct {p0}, Lcom/android/server/policy/HmctPhoneWindowManager;->mPreventAccidentTouch()V

    goto :goto_0
.end method

.method private hmctInterceptPowerKeyUp(Landroid/view/KeyEvent;ZZ)V
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "interactive"    # Z
    .param p3, "canceled"    # Z

    .prologue
    .line 632
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mScreenshotChordPowerKeyTriggered:Z

    .line 631
    return-void
.end method

.method private initIQService()V
    .locals 10

    .prologue
    .line 2612
    iget-object v6, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mIQrservice:Lcom/android/camera/SnapshotService;

    if-nez v6, :cond_1

    .line 2613
    const-string/jumbo v6, "HmctWindowManager"

    const-string/jumbo v7, "burst initIQService init service "

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2614
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v6, "com.android.camera.Snapshotservice"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2615
    .local v5, "serviceIntent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 2616
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    .line 2617
    .local v4, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-nez v4, :cond_0

    .line 2618
    const-string/jumbo v6, "HmctWindowManager"

    const-string/jumbo v7, "burst Failed to locate WFD service"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2619
    return-void

    .line 2621
    :cond_0
    new-instance v2, Landroid/content/ComponentName;

    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2622
    .local v2, "name":Landroid/content/ComponentName;
    const-string/jumbo v6, "HmctWindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "burst service: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2623
    invoke-virtual {v5, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2625
    :try_start_0
    iget-object v6, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->serviceConnection:Landroid/content/ServiceConnection;

    const/4 v8, 0x1

    invoke-virtual {v6, v5, v7, v8}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 2626
    iget-object v6, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mHmctHandler:Landroid/os/Handler;

    const/16 v7, 0x17

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 2627
    .local v1, "msg":Landroid/os/Message;
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 2628
    const-string/jumbo v6, "HmctWindowManager"

    const-string/jumbo v7, "burst initIQService wait bind connect for 1s"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2629
    iget-object v6, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mHmctHandler:Landroid/os/Handler;

    const-wide/16 v8, 0x3e8

    invoke-virtual {v6, v1, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2610
    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "name":Landroid/content/ComponentName;
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    .end local v4    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v5    # "serviceIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 2630
    .restart local v2    # "name":Landroid/content/ComponentName;
    .restart local v3    # "pm":Landroid/content/pm/PackageManager;
    .restart local v4    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .restart local v5    # "serviceIntent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 2631
    .local v0, "ex":Ljava/lang/Exception;
    const-string/jumbo v6, "HmctWindowManager"

    const-string/jumbo v7, "burst initIQService Failed while bindService"

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2634
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v2    # "name":Landroid/content/ComponentName;
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    .end local v4    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v5    # "serviceIntent":Landroid/content/Intent;
    :cond_1
    const-string/jumbo v6, "HmctWindowManager"

    const-string/jumbo v7, "burst initIQService has instance"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private interceptCameraKeyDown(Landroid/view/KeyEvent;ZZ)Z
    .locals 12
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "interactive"    # Z
    .param p3, "keyguardActive"    # Z

    .prologue
    .line 2861
    iget-object v7, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mCTCameraWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v7

    if-nez v7, :cond_0

    .line 2862
    iget-object v7, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mCTCameraWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2865
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    .line 2866
    .local v4, "eventTime":J
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mCameraKeyHandled:Z

    .line 2868
    invoke-direct {p0}, Lcom/android/server/policy/HmctPhoneWindowManager;->getTopApp()Ljava/lang/String;

    move-result-object v3

    .line 2870
    .local v3, "mTopAppPName":Ljava/lang/String;
    if-eqz p2, :cond_2

    .line 2871
    const-string/jumbo v1, "com.android.camera2"

    .line 2872
    .local v1, "cameraPackageName":Ljava/lang/String;
    const-string/jumbo v0, "org.codeaurora.snapcam"

    .line 2873
    .local v0, "OrigincameraPackageName":Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2875
    :cond_1
    const-string/jumbo v7, "HmctWindowManager"

    const-string/jumbo v8, "CTCamera while securecamera is onTop, Camera has keyDown method"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2876
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mCameraKeyHandled:Z

    .line 2877
    const/4 v7, 0x1

    return v7

    .line 2883
    .end local v0    # "OrigincameraPackageName":Ljava/lang/String;
    .end local v1    # "cameraPackageName":Ljava/lang/String;
    :cond_2
    :try_start_0
    new-instance v7, Ljava/lang/Thread;

    iget-object v8, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mCameraLongPressActionRunnable:Ljava/lang/Runnable;

    invoke-direct {v7, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 2884
    const-string/jumbo v7, "HmctWindowManager"

    const-string/jumbo v8, "CTCamera MSG_CAMERA_LONG_PRESS delay 500ms"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2885
    iget-object v8, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mHmctHandler:Landroid/os/Handler;

    .line 2886
    if-eqz p2, :cond_3

    const/4 v7, 0x1

    :goto_0
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 2885
    const/16 v10, 0x19

    .line 2886
    const/4 v11, 0x0

    .line 2885
    invoke-virtual {v8, v10, v7, v11, v9}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 2887
    .local v6, "msg":Landroid/os/Message;
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 2889
    iget-object v7, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mHmctHandler:Landroid/os/Handler;

    .line 2890
    iget-object v8, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewConfiguration;->getDeviceGlobalActionKeyTimeout()J

    move-result-wide v8

    .line 2889
    invoke-virtual {v7, v6, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2894
    .end local v6    # "msg":Landroid/os/Message;
    :goto_1
    const/4 v7, 0x0

    return v7

    .line 2886
    :cond_3
    const/4 v7, 0x0

    goto :goto_0

    .line 2891
    :catch_0
    move-exception v2

    .line 2892
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "HmctWindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "CTCamera send msg MSG_CAMERA_LONG_PRESS failed for : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private interceptCameraKeyUp(Landroid/view/KeyEvent;ZZ)V
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "interactive"    # Z
    .param p3, "canceled"    # Z

    .prologue
    .line 2899
    if-nez p3, :cond_1

    iget-boolean v0, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mCameraKeyHandled:Z

    .line 2900
    :goto_0
    const-string/jumbo v1, "HmctWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "CTCamera finishCameraKeyPress handled : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " , mCameraLongPressAction : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mCameraLongPressAction:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2902
    invoke-direct {p0}, Lcom/android/server/policy/HmctPhoneWindowManager;->cancelPendingCameraKeyAction()V

    .line 2904
    iget-boolean v1, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mCameraLongPressAction:Z

    if-nez v1, :cond_2

    .line 2905
    iget-object v1, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mHmctHandler:Landroid/os/Handler;

    const/16 v2, 0x1a

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2911
    :goto_1
    if-nez v0, :cond_0

    .line 2913
    if-eqz p2, :cond_0

    .line 2915
    invoke-direct {p0, p2}, Lcom/android/server/policy/HmctPhoneWindowManager;->cameraPress(Z)V

    .line 2919
    :cond_0
    invoke-direct {p0}, Lcom/android/server/policy/HmctPhoneWindowManager;->finishCameraKeyPress()V

    .line 2897
    return-void

    .line 2899
    :cond_1
    const/4 v0, 0x1

    .local v0, "handled":Z
    goto :goto_0

    .line 2907
    .end local v0    # "handled":Z
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mCameraLongPressAction:Z

    .line 2908
    iget-object v1, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mProximitySensor:Lcom/android/server/policy/HmctPhoneWindowManager$ProximitySensor;

    invoke-static {v1}, Lcom/android/server/policy/HmctPhoneWindowManager$ProximitySensor;->-wrap0(Lcom/android/server/policy/HmctPhoneWindowManager$ProximitySensor;)V

    goto :goto_1
.end method

.method private interceptVolumeDownKeyDown(Landroid/view/KeyEvent;ZZI)V
    .locals 5
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "interactive"    # Z
    .param p3, "canceled"    # Z
    .param p4, "result"    # I

    .prologue
    const/4 v4, 0x0

    .line 2452
    const-string/jumbo v1, "HmctWindowManager"

    const-string/jumbo v2, "burst interceptVolumeDownKeyDown entrance"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2453
    iget-object v1, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mHmctHandler:Landroid/os/Handler;

    const/16 v2, 0x16

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2454
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 2455
    const-string/jumbo v1, "HmctWindowManager"

    const-string/jumbo v2, "burst interceptVolumeDownKeyUp sendMessageDelayed"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2456
    iget-object v1, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mHmctHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2458
    sput-boolean v4, Lcom/android/server/policy/HmctPhoneWindowManager;->mBurstCapturePrepared:Z

    .line 2459
    iput-boolean v4, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mAutoUnbind:Z

    .line 2462
    invoke-direct {p0}, Lcom/android/server/policy/HmctPhoneWindowManager;->handleSensor()V

    .line 2464
    iget-object v1, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mIQrservice:Lcom/android/camera/SnapshotService;

    if-nez v1, :cond_0

    .line 2465
    invoke-direct {p0}, Lcom/android/server/policy/HmctPhoneWindowManager;->initIQService()V

    .line 2467
    :cond_0
    const-string/jumbo v1, "HmctWindowManager"

    const-string/jumbo v2, "burst wait for mIQrservice"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2450
    return-void
.end method

.method private isDefineGestureKey(I)Z
    .locals 1
    .param p1, "KeyCode"    # I

    .prologue
    .line 3155
    packed-switch p1, :pswitch_data_0

    .line 3168
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 3166
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 3155
    nop

    :pswitch_data_0
    .packed-switch 0x136
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private isDissmissKeyguardCode(I)Z
    .locals 1
    .param p1, "keyCode"    # I

    .prologue
    .line 3219
    packed-switch p1, :pswitch_data_0

    .line 3228
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 3226
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 3219
    nop

    :pswitch_data_0
    .packed-switch 0x136
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isKeepScreenOffGestureKey(I)Z
    .locals 1
    .param p1, "keyCode"    # I

    .prologue
    .line 3233
    packed-switch p1, :pswitch_data_0

    .line 3240
    const/4 v0, 0x0

    return v0

    .line 3237
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 3233
    nop

    :pswitch_data_0
    .packed-switch 0x13c
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isKeyguardShowingAndNotOccluded()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2221
    iget-object v1, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-nez v1, :cond_0

    return v0

    .line 2222
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mKeyguardOccluded:Z

    if-eqz v1, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isMakeCallDirectly(I)Z
    .locals 6
    .param p1, "keyCode"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3245
    const-string/jumbo v3, "GESTURE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isMakeCallDirectly Key value : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3246
    const/4 v0, 0x0

    .line 3247
    .local v0, "makeCall":Z
    const/16 v3, 0x137

    if-ne p1, v3, :cond_2

    .line 3248
    iget-object v3, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 3249
    const-string/jumbo v4, "v_gesture_enabled"

    .line 3248
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_0

    move v0, v1

    .line 3250
    .local v0, "makeCall":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 3251
    iget-object v3, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "v_gesture_contact"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/server/policy/HmctPhoneWindowManager;->callNum:Ljava/lang/String;

    .line 3283
    :goto_1
    const-string/jumbo v3, "GESTURE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isMakeCallDirectly callNum : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/server/policy/HmctPhoneWindowManager;->callNum:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3284
    sget-object v3, Lcom/android/server/policy/HmctPhoneWindowManager;->callNum:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 3285
    return v2

    .local v0, "makeCall":Z
    :cond_0
    move v0, v2

    .line 3248
    goto :goto_0

    .line 3253
    .local v0, "makeCall":Z
    :cond_1
    return v2

    .line 3255
    .local v0, "makeCall":Z
    :cond_2
    const/16 v3, 0x138

    if-ne p1, v3, :cond_5

    .line 3256
    iget-object v3, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 3257
    const-string/jumbo v4, "w_gesture_enabled"

    .line 3256
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_3

    move v0, v1

    .line 3258
    .local v0, "makeCall":Z
    :goto_2
    if-eqz v0, :cond_4

    .line 3259
    iget-object v3, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "w_gesture_contact"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/server/policy/HmctPhoneWindowManager;->callNum:Ljava/lang/String;

    goto :goto_1

    .local v0, "makeCall":Z
    :cond_3
    move v0, v2

    .line 3256
    goto :goto_2

    .line 3261
    .local v0, "makeCall":Z
    :cond_4
    return v2

    .line 3263
    .local v0, "makeCall":Z
    :cond_5
    const/16 v3, 0x13a

    if-ne p1, v3, :cond_8

    .line 3264
    iget-object v3, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 3265
    const-string/jumbo v4, "z_gesture_enabled"

    .line 3264
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_6

    move v0, v1

    .line 3266
    .local v0, "makeCall":Z
    :goto_3
    if-eqz v0, :cond_7

    .line 3267
    iget-object v3, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "z_gesture_contact"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/server/policy/HmctPhoneWindowManager;->callNum:Ljava/lang/String;

    goto :goto_1

    .local v0, "makeCall":Z
    :cond_6
    move v0, v2

    .line 3264
    goto :goto_3

    .line 3269
    .local v0, "makeCall":Z
    :cond_7
    return v2

    .line 3271
    .local v0, "makeCall":Z
    :cond_8
    const/16 v3, 0x13f

    if-ne p1, v3, :cond_b

    .line 3272
    iget-object v3, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 3273
    const-string/jumbo v4, "e_gesture_enabled"

    .line 3272
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_9

    move v0, v1

    .line 3274
    .local v0, "makeCall":Z
    :goto_4
    if-eqz v0, :cond_a

    .line 3275
    iget-object v3, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "e_gesture_contact"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/server/policy/HmctPhoneWindowManager;->callNum:Ljava/lang/String;

    goto/16 :goto_1

    .local v0, "makeCall":Z
    :cond_9
    move v0, v2

    .line 3272
    goto :goto_4

    .line 3277
    .local v0, "makeCall":Z
    :cond_a
    return v2

    .line 3280
    .local v0, "makeCall":Z
    :cond_b
    return v2

    .line 3287
    .local v0, "makeCall":Z
    :cond_c
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/android/server/policy/HmctPhoneWindowManager;->mGestureScreenOnTime:J

    .line 3288
    const-string/jumbo v2, "GESTURE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mGestureScreenOnTime is : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-wide v4, Lcom/android/server/policy/HmctPhoneWindowManager;->mGestureScreenOnTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3289
    invoke-virtual {p0}, Lcom/android/server/policy/HmctPhoneWindowManager;->isKeyguardLocked()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 3290
    sput-boolean v1, Lcom/android/server/policy/HmctPhoneWindowManager;->mNeedMakeCallAfterUnlock:Z

    .line 3294
    :goto_5
    return v1

    .line 3292
    :cond_d
    sget-object v2, Lcom/android/server/policy/HmctPhoneWindowManager;->callNum:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/server/policy/HmctPhoneWindowManager;->handleCallKey(Ljava/lang/String;)V

    goto :goto_5
.end method

.method private isNeedStartCamera()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 2666
    const/4 v1, 0x0

    .line 2667
    .local v1, "ret":Z
    iget-object v2, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "enable_burst_capture_from_idle"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2673
    .local v0, "i":I
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    if-eqz v2, :cond_0

    .line 2674
    const-string/jumbo v2, "HmctWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " isNeedStartCamera  i = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " for not User_Owner"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2675
    const/4 v0, 0x0

    .line 2679
    :cond_0
    const-string/jumbo v2, "HmctWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " isNeedStartCamera  i = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2681
    if-ne v0, v5, :cond_1

    .line 2682
    const/4 v1, 0x1

    .line 2684
    :cond_1
    return v1
.end method

.method private isPhoneIdle()Z
    .locals 3

    .prologue
    .line 3493
    const/4 v0, 0x1

    .line 3494
    .local v0, "isIdle":Z
    invoke-virtual {p0}, Lcom/android/server/policy/HmctPhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v1

    .line 3495
    .local v1, "telecomManager":Landroid/telecom/TelecomManager;
    if-eqz v1, :cond_0

    .line 3497
    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    .line 3499
    :cond_0
    :goto_0
    return v0

    .line 3497
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isTheaterModeEnabled()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2259
    iget-object v2, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 2260
    const-string/jumbo v3, "theater_mode_on"

    .line 2259
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private static isValidGlobalKey(I)Z
    .locals 1
    .param p0, "keyCode"    # I

    .prologue
    .line 2051
    sparse-switch p0, :sswitch_data_0

    .line 2057
    const/4 v0, 0x1

    return v0

    .line 2055
    :sswitch_0
    const/4 v0, 0x0

    return v0

    .line 2051
    nop

    :sswitch_data_0
    .sparse-switch
        0x1a -> :sswitch_0
        0xdf -> :sswitch_0
        0xe0 -> :sswitch_0
    .end sparse-switch
.end method

.method private isWakeKeyWhenScreenOff(I)Z
    .locals 3
    .param p1, "keyCode"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2069
    sparse-switch p1, :sswitch_data_0

    .line 2092
    return v0

    .line 2074
    :sswitch_0
    iget v2, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mDockMode:I

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    .line 2090
    :sswitch_1
    return v1

    .line 2069
    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1b -> :sswitch_1
        0x4f -> :sswitch_1
        0x55 -> :sswitch_1
        0x56 -> :sswitch_1
        0x57 -> :sswitch_1
        0x58 -> :sswitch_1
        0x59 -> :sswitch_1
        0x5a -> :sswitch_1
        0x5b -> :sswitch_1
        0x7e -> :sswitch_1
        0x7f -> :sswitch_1
        0x82 -> :sswitch_1
        0xa4 -> :sswitch_0
        0xde -> :sswitch_1
    .end sparse-switch
.end method

.method private launchAssistAction(Ljava/lang/String;I)V
    .locals 4
    .param p1, "hint"    # Ljava/lang/String;
    .param p2, "deviceId"    # I

    .prologue
    .line 1503
    const-string/jumbo v2, "assist"

    invoke-virtual {p0, v2}, Lcom/android/server/policy/HmctPhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 1504
    invoke-virtual {p0}, Lcom/android/server/policy/HmctPhoneWindowManager;->isUserSetupComplete()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1506
    return-void

    .line 1508
    :cond_0
    const/4 v0, 0x0

    .line 1509
    .local v0, "args":Landroid/os/Bundle;
    const/high16 v2, -0x80000000

    if-le p2, v2, :cond_1

    .line 1510
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "args":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1511
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "android.intent.extra.ASSIST_INPUT_DEVICE_ID"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1513
    .end local v0    # "args":Landroid/os/Bundle;
    :cond_1
    iget-object v2, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0xf

    .line 1514
    const/4 v3, 0x4

    .line 1513
    if-ne v2, v3, :cond_3

    .line 1516
    iget-object v2, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "search"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/SearchManager;

    .line 1517
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    .line 1516
    invoke-virtual {v2, p1, v3, v0}, Landroid/app/SearchManager;->launchLegacyAssist(Ljava/lang/String;ILandroid/os/Bundle;)Z

    .line 1502
    :cond_2
    :goto_0
    return-void

    .line 1519
    :cond_3
    if-eqz p1, :cond_5

    .line 1520
    if-nez v0, :cond_4

    .line 1521
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1523
    :cond_4
    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1525
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/policy/HmctPhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v1

    .line 1526
    .local v1, "statusbar":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-eqz v1, :cond_2

    .line 1527
    invoke-interface {v1, v0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->startAssist(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private launchAssistLongPressAction()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1483
    invoke-virtual {p0, v4, v3, v3}, Lcom/android/server/policy/HmctPhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 1484
    const-string/jumbo v3, "assist"

    invoke-virtual {p0, v3}, Lcom/android/server/policy/HmctPhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 1487
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.SEARCH_LONG_PRESS"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1488
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1492
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/policy/HmctPhoneWindowManager;->getSearchManager()Landroid/app/SearchManager;

    move-result-object v2

    .line 1493
    .local v2, "searchManager":Landroid/app/SearchManager;
    if-eqz v2, :cond_0

    .line 1494
    invoke-virtual {v2}, Landroid/app/SearchManager;->stopSearch()V

    .line 1496
    :cond_0
    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-direct {p0, v1, v3}, Lcom/android/server/policy/HmctPhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1482
    .end local v2    # "searchManager":Landroid/app/SearchManager;
    :goto_0
    return-void

    .line 1497
    :catch_0
    move-exception v0

    .line 1498
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v3, "HmctWindowManager"

    const-string/jumbo v4, "No activity to handle assist long press action."

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private launchCameraAction()V
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 2403
    const-string/jumbo v0, "HmctWindowManager"

    const-string/jumbo v2, "launchCameraAction "

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2404
    invoke-virtual {p0}, Lcom/android/server/policy/HmctPhoneWindowManager;->sendCloseSystemWindows()V

    .line 2406
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v0, "android.intent.action.CAMERA_BUTTON"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2407
    .local v1, "intent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 2408
    const/4 v6, 0x0

    move-object v4, v3

    move-object v5, v3

    move-object v7, v3

    move-object v8, v3

    .line 2407
    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 2401
    return-void
.end method

.method private launchSingleHandleMode(I)V
    .locals 4
    .param p1, "sSlipDirection"    # I

    .prologue
    .line 3740
    const-string/jumbo v1, "TS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "launchSingleHandleMode sSlipDirection : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3741
    const/4 v0, 0x0

    .line 3742
    .local v0, "sIntent":Landroid/content/Intent;
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 3744
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "sIntent":Landroid/content/Intent;
    const-string/jumbo v1, "hmct.intent.action.singlehand_navbar_slip_right"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3751
    :goto_0
    if-eqz v0, :cond_0

    .line 3752
    iget-object v1, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3739
    :cond_0
    return-void

    .line 3745
    .restart local v0    # "sIntent":Landroid/content/Intent;
    :cond_1
    const/4 v1, -0x1

    if-ne p1, v1, :cond_2

    .line 3747
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "sIntent":Landroid/content/Intent;
    const-string/jumbo v1, "hmct.intent.action.singlehand_navbar_slip_left"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "sIntent":Landroid/content/Intent;
    goto :goto_0

    .line 3749
    .local v0, "sIntent":Landroid/content/Intent;
    :cond_2
    const-string/jumbo v1, "TS"

    const-string/jumbo v2, "WARNNING ... launchSingleHandleMode"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private launchTDropHover()V
    .locals 2

    .prologue
    .line 3085
    const-string/jumbo v0, "HmctWindowManager"

    const-string/jumbo v1, "launchTDropHover"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3084
    return-void
.end method

.method private mPreventAccidentTouch()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x96

    const/4 v10, 0x1

    .line 3037
    const-string/jumbo v5, "release"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mPreventAccidentTouch begin mScreenshotChordEnabled : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mScreenshotChordEnabled:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3038
    const-string/jumbo v7, " mScreenshotChordVolumeUpKeyTriggered : "

    .line 3037
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3038
    iget-boolean v7, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mScreenshotChordVolumeUpKeyTriggered:Z

    .line 3037
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3039
    const-string/jumbo v7, " mScreenshotChordPowerKeyTriggered : "

    .line 3037
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3039
    iget-boolean v7, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mScreenshotChordPowerKeyTriggered:Z

    .line 3037
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3040
    const-string/jumbo v7, " mScreenshotChordVolumeDownKeyTriggered : "

    .line 3037
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3040
    iget-boolean v7, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mScreenshotChordVolumeDownKeyTriggered:Z

    .line 3037
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3041
    iget-boolean v5, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mScreenshotChordEnabled:Z

    if-eqz v5, :cond_0

    .line 3042
    iget-boolean v5, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mScreenshotChordVolumeUpKeyTriggered:Z

    .line 3041
    if-eqz v5, :cond_0

    .line 3042
    iget-boolean v5, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mScreenshotChordPowerKeyTriggered:Z

    .line 3041
    if-eqz v5, :cond_0

    .line 3043
    iget-boolean v5, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mScreenshotChordVolumeDownKeyTriggered:Z

    if-eqz v5, :cond_1

    .line 3035
    :cond_0
    :goto_0
    return-void

    .line 3044
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 3045
    .local v2, "now":J
    const-string/jumbo v5, "release"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "interceptScreenshotLog now "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3046
    const-string/jumbo v7, " mVolumeUpKeyTime : "

    .line 3045
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3046
    iget-wide v8, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mVolumeUpKeyTime:J

    .line 3045
    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3047
    const-string/jumbo v7, " mScreenshotChordPowerKeyTime : "

    .line 3045
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3047
    iget-wide v8, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mScreenshotChordPowerKeyTime:J

    .line 3045
    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3048
    iget-wide v6, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mVolumeUpKeyTime:J

    add-long/2addr v6, v12

    cmp-long v5, v2, v6

    if-gtz v5, :cond_0

    .line 3049
    iget-wide v6, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mScreenshotChordPowerKeyTime:J

    add-long/2addr v6, v12

    cmp-long v5, v2, v6

    if-gtz v5, :cond_0

    .line 3051
    iput-boolean v10, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mVolumeUpKeyConsumedByScreenshotChord:Z

    .line 3053
    iget-object v5, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 3054
    const-string/jumbo v6, "accident_touch_prevent"

    .line 3053
    invoke-static {v5, v6, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 3055
    .local v4, "val":I
    const-string/jumbo v5, "release"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Release accident touch for val "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3056
    if-ne v4, v10, :cond_2

    .line 3057
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v5, "com.android.intent.action.FORCE_END_CURRENT_PREVENT"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3059
    .local v1, "intent":Landroid/content/Intent;
    :try_start_0
    const-string/jumbo v5, "HmctWindowManager"

    const-string/jumbo v6, "Force end current prevent"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3060
    iget-object v5, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v5, v1, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 3061
    :catch_0
    move-exception v0

    .line 3062
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "HmctWindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Release fail for : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3063
    iget-object v5, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "accident_touch_prevent"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 3066
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_2
    const-string/jumbo v5, "release"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Free for val "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private performCommenKeyAction(IZ)V
    .locals 5
    .param p1, "behavior"    # I
    .param p2, "workImediately"    # Z

    .prologue
    .line 3784
    const-string/jumbo v2, "HmctWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "tzyl Common behavior func val : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3785
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3786
    .local v1, "intent":Landroid/content/Intent;
    packed-switch p1, :pswitch_data_0

    .line 3796
    const-string/jumbo v2, "HmctWindowManager"

    const-string/jumbo v3, "tzyl You need to config the new action"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3798
    :cond_0
    :goto_0
    :pswitch_0
    const/high16 v2, 0x34000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3802
    :try_start_0
    const-string/jumbo v2, "HmctWindowManager"

    const-string/jumbo v3, "tzyl perform commen behavior"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3803
    iget-object v2, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3782
    :goto_1
    return-void

    .line 3788
    :pswitch_1
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    const-string/jumbo v2, "android.media.action.VIDEO_CAMERA"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3789
    .restart local v1    # "intent":Landroid/content/Intent;
    if-eqz p2, :cond_0

    .line 3790
    const-string/jumbo v2, "secure_camera_video"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    .line 3804
    :catch_0
    move-exception v0

    .line 3805
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v2, "HmctWindowManager"

    const-string/jumbo v3, "tzyl perform failed for not found "

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 3786
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private performKeyAction(II)V
    .locals 3
    .param p1, "behavior"    # I
    .param p2, "deviceId"    # I

    .prologue
    .line 2361
    const-string/jumbo v0, "HmctWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "performKeyAction behavior : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2362
    packed-switch p1, :pswitch_data_0

    .line 2359
    :goto_0
    :pswitch_0
    return-void

    .line 2366
    :pswitch_1
    invoke-direct {p0}, Lcom/android/server/policy/HmctPhoneWindowManager;->toggleRecentApps()V

    goto :goto_0

    .line 2369
    :pswitch_2
    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Lcom/android/server/policy/HmctPhoneWindowManager;->launchAssistAction(Ljava/lang/String;I)V

    goto :goto_0

    .line 2372
    :pswitch_3
    const/16 v0, 0x52

    invoke-direct {p0, v0}, Lcom/android/server/policy/HmctPhoneWindowManager;->triggerVirtualKeypress(I)V

    goto :goto_0

    .line 2375
    :pswitch_4
    invoke-direct {p0}, Lcom/android/server/policy/HmctPhoneWindowManager;->launchCameraAction()V

    goto :goto_0

    .line 2362
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private preloadRecentApps()V
    .locals 2

    .prologue
    .line 1548
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mPreloadedRecentApps:Z

    .line 1549
    invoke-virtual {p0}, Lcom/android/server/policy/HmctPhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    .line 1550
    .local v0, "statusbar":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-eqz v0, :cond_0

    .line 1551
    invoke-interface {v0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->preloadRecentApps()V

    .line 1547
    :cond_0
    return-void
.end method

.method private readConfigurationDependentBehaviors()V
    .locals 0

    .prologue
    .line 968
    return-void
.end method

.method private releaseIQService()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2594
    const-string/jumbo v1, "HmctWindowManager"

    const-string/jumbo v2, "burst releaseIQService "

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2595
    iget-object v1, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mIQrservice:Lcom/android/camera/SnapshotService;

    if-nez v1, :cond_0

    .line 2596
    const-string/jumbo v1, "HmctWindowManager"

    const-string/jumbo v2, "burst releaseIQService mIQrservice has already been null"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2592
    :goto_0
    return-void

    .line 2598
    :cond_0
    const-string/jumbo v1, "HmctWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "burst releaseIQService unbindService : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2600
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2604
    const-string/jumbo v1, "HmctWindowManager"

    const-string/jumbo v2, "burst releaseIQService finally reset mIQrservice"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2605
    :goto_1
    iput-object v4, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mIQrservice:Lcom/android/camera/SnapshotService;

    goto :goto_0

    .line 2601
    :catch_0
    move-exception v0

    .line 2602
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v1, "HmctWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "burst releaseIQService unbindService Failed for : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2604
    const-string/jumbo v1, "HmctWindowManager"

    const-string/jumbo v2, "burst releaseIQService finally reset mIQrservice"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2603
    .end local v0    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    .line 2604
    const-string/jumbo v2, "HmctWindowManager"

    const-string/jumbo v3, "burst releaseIQService finally reset mIQrservice"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2605
    iput-object v4, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mIQrservice:Lcom/android/camera/SnapshotService;

    .line 2603
    throw v1
.end method

.method private sendGestureDelayIntent(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 3469
    iget-object v0, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mHmctHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/HmctPhoneWindowManager$17;

    invoke-direct {v1, p0, p1}, Lcom/android/server/policy/HmctPhoneWindowManager$17;-><init>(Lcom/android/server/policy/HmctPhoneWindowManager;Landroid/content/Intent;)V

    .line 3480
    const-wide/16 v2, 0x1f4

    .line 3469
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3467
    return-void
.end method

.method private shouldDispatchInputWhenNonInteractive()Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2096
    iget-object v5, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mDisplay:Landroid/view/Display;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mDisplay:Landroid/view/Display;

    invoke-virtual {v5}, Landroid/view/Display;->getState()I

    move-result v5

    if-ne v5, v3, :cond_3

    :cond_0
    move v0, v3

    .line 2098
    .local v0, "displayOff":Z
    :goto_0
    if-eqz v0, :cond_1

    iget-boolean v5, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mHasFeatureWatch:Z

    if-eqz v5, :cond_4

    .line 2103
    :cond_1
    invoke-direct {p0}, Lcom/android/server/policy/HmctPhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz v0, :cond_5

    .line 2109
    :cond_2
    invoke-static {}, Lcom/android/server/policy/HmctPhoneWindowManager;->getDreamManager()Landroid/service/dreams/IDreamManager;

    move-result-object v1

    .line 2112
    .local v1, "dreamManager":Landroid/service/dreams/IDreamManager;
    if-eqz v1, :cond_6

    :try_start_0
    invoke-interface {v1}, Landroid/service/dreams/IDreamManager;->isDreaming()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_6

    .line 2113
    return v3

    .end local v0    # "displayOff":Z
    .end local v1    # "dreamManager":Landroid/service/dreams/IDreamManager;
    :cond_3
    move v0, v4

    .line 2096
    goto :goto_0

    .line 2099
    .restart local v0    # "displayOff":Z
    :cond_4
    return v4

    .line 2104
    :cond_5
    return v3

    .line 2115
    .restart local v1    # "dreamManager":Landroid/service/dreams/IDreamManager;
    :catch_0
    move-exception v2

    .line 2116
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "HmctWindowManager"

    const-string/jumbo v5, "RemoteException when checking if dreaming"

    invoke-static {v3, v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2121
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_6
    return v4
.end method

.method private showLeftTime()V
    .locals 4

    .prologue
    .line 2767
    const-string/jumbo v2, "HmctWindowManager"

    const-string/jumbo v3, "FL Start FlightLights showTime"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2768
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2769
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "android"

    .line 2770
    const-string/jumbo v3, "com.android.internal.app.FlashLightPWDialog"

    .line 2769
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2771
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2773
    :try_start_0
    const-string/jumbo v2, "HmctWindowManager"

    const-string/jumbo v3, "FL showTime showTime"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2774
    iget-object v2, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2765
    :goto_0
    return-void

    .line 2775
    :catch_0
    move-exception v0

    .line 2776
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v2, "HmctWindowManager"

    const-string/jumbo v3, "FL showTime not found for mStartFlightLights"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showRecentApps(ZZ)V
    .locals 2
    .param p1, "triggeredFromAltTab"    # Z
    .param p2, "fromHome"    # Z

    .prologue
    .line 1580
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mPreloadedRecentApps:Z

    .line 1581
    invoke-virtual {p0}, Lcom/android/server/policy/HmctPhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    .line 1582
    .local v0, "statusbar":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-eqz v0, :cond_0

    .line 1583
    invoke-interface {v0, p1, p2}, Lcom/android/server/statusbar/StatusBarManagerInternal;->showRecentApps(ZZ)V

    .line 1579
    :cond_0
    return-void
.end method

.method private startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "handle"    # Landroid/os/UserHandle;

    .prologue
    .line 1533
    invoke-virtual {p0}, Lcom/android/server/policy/HmctPhoneWindowManager;->isUserSetupComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1534
    iget-object v0, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1532
    :goto_0
    return-void

    .line 1536
    :cond_0
    const-string/jumbo v0, "HmctWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Not starting activity because user setup is in progress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private startGestureService(I)V
    .locals 4
    .param p1, "keycode"    # I

    .prologue
    .line 3132
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3133
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.android.gesture"

    .line 3134
    const-string/jumbo v3, "com.android.gesture.GestureWindowService"

    .line 3133
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3135
    const-string/jumbo v1, "keycode"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3136
    iget-object v1, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 3131
    return-void
.end method

.method private toggleRecentApps()V
    .locals 2

    .prologue
    .line 1566
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mPreloadedRecentApps:Z

    .line 1567
    invoke-virtual {p0}, Lcom/android/server/policy/HmctPhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    .line 1568
    .local v0, "statusbar":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-eqz v0, :cond_0

    .line 1569
    invoke-interface {v0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->toggleRecentApps()V

    .line 1565
    :cond_0
    return-void
.end method

.method private triggerVirtualKeypress(I)V
    .locals 15
    .param p1, "keyCode"    # I

    .prologue
    .line 2385
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mRemVirbratorKey:Z

    .line 2388
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    .line 2389
    .local v0, "im":Landroid/hardware/input/InputManager;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 2391
    .local v2, "now":J
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v6, 0x0

    .line 2392
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    .line 2393
    const/16 v12, 0x8

    const/16 v13, 0x101

    move-wide v4, v2

    move/from16 v7, p1

    .line 2391
    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 2394
    .local v1, "downEvent":Landroid/view/KeyEvent;
    const/4 v4, 0x1

    invoke-static {v1, v4}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v14

    .line 2396
    .local v14, "upEvent":Landroid/view/KeyEvent;
    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 2397
    const/4 v4, 0x0

    invoke-virtual {v0, v14, v4}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 2382
    return-void
.end method

.method private updateKeyAssignments()V
    .locals 10

    .prologue
    const/4 v8, 0x2

    const/4 v9, -0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1028
    iget v4, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mDeviceHardwareKeys:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_5

    const/4 v2, 0x1

    .line 1029
    .local v2, "hasHome":Z
    :goto_0
    iget v4, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mDeviceHardwareKeys:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_6

    const/4 v0, 0x1

    .line 1030
    .local v0, "hasAppSwitch":Z
    :goto_1
    iget v4, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mDeviceHardwareKeys:I

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_7

    const/4 v1, 0x1

    .line 1031
    .local v1, "hasCamera":Z
    :goto_2
    iget-object v4, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1034
    .local v3, "resolver":Landroid/content/ContentResolver;
    iget-object v4, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 1035
    const v7, 0x10e00e5

    .line 1034
    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mLongPressOnAppSwitchBehavior:I

    .line 1036
    iget-object v4, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 1037
    const v7, 0x10e0064

    .line 1036
    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mLongPressOnHomeBehavior:I

    .line 1038
    if-eqz v2, :cond_0

    .line 1039
    iget v4, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mFactoryTest:I

    if-ne v4, v8, :cond_8

    .line 1040
    iput v6, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mLongPressOnHomeBehavior:I

    .line 1048
    :cond_0
    :goto_3
    if-eqz v0, :cond_1

    .line 1049
    iget v4, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mFactoryTest:I

    if-ne v4, v8, :cond_9

    .line 1050
    iput v6, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mLongPressOnAppSwitchBehavior:I

    .line 1058
    :cond_1
    :goto_4
    if-eqz v1, :cond_2

    .line 1059
    iget v4, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mFactoryTest:I

    if-ne v4, v8, :cond_a

    .line 1060
    iput v6, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mShortCameraBehavior:I

    .line 1067
    :cond_2
    :goto_5
    const-string/jumbo v4, "HmctWindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateKeyAssignments : 4 hasHome "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " , hasAppSwitch "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    const-string/jumbo v4, "up_volume_keys_setting"

    .line 1070
    invoke-static {v3, v4, v5, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-ne v4, v5, :cond_b

    move v4, v5

    :goto_6
    sput-boolean v4, Lcom/android/server/policy/HmctPhoneWindowManager;->mOpenFlashLight:Z

    .line 1080
    const-string/jumbo v4, "touch_prevent_showing"

    .line 1079
    invoke-static {v3, v4, v6, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-ne v4, v5, :cond_c

    move v4, v5

    :goto_7
    sput-boolean v4, Lcom/android/server/policy/HmctPhoneWindowManager;->mDisableBottomKeys:Z

    .line 1088
    sget-boolean v4, Lcom/android/server/policy/HmctPhoneWindowManager;->mSupportSingleHand:Z

    if-eqz v4, :cond_3

    .line 1090
    const-string/jumbo v4, "single_hand_enable"

    .line 1089
    invoke-static {v3, v4, v6, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-ne v4, v5, :cond_d

    move v4, v5

    :goto_8
    sput-boolean v4, Lcom/android/server/policy/HmctPhoneWindowManager;->mEnableSinglHand:Z

    .line 1100
    :cond_3
    const-string/jumbo v4, "key_home_wake_up_voice_assistant_action"

    .line 1099
    invoke-static {v3, v4, v5, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-ne v4, v5, :cond_e

    move v4, v5

    :goto_9
    sput-boolean v4, Lcom/android/server/policy/HmctPhoneWindowManager;->mEnableLaunchHmctAssistant:Z

    .line 1108
    sget-boolean v4, Lcom/android/server/policy/HmctPhoneWindowManager;->FEATURE_DROPHOVER_SUPPORT:Z

    if-eqz v4, :cond_4

    .line 1110
    const-string/jumbo v4, "drophover_enable"

    .line 1109
    invoke-static {v3, v4, v6, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-ne v4, v5, :cond_f

    :goto_a
    sput-boolean v5, Lcom/android/server/policy/HmctPhoneWindowManager;->mEnableDropHover:Z

    .line 1026
    :cond_4
    return-void

    .line 1028
    .end local v0    # "hasAppSwitch":Z
    .end local v1    # "hasCamera":Z
    .end local v2    # "hasHome":Z
    .end local v3    # "resolver":Landroid/content/ContentResolver;
    :cond_5
    const/4 v2, 0x0

    .restart local v2    # "hasHome":Z
    goto/16 :goto_0

    .line 1029
    :cond_6
    const/4 v0, 0x0

    .restart local v0    # "hasAppSwitch":Z
    goto/16 :goto_1

    .line 1030
    :cond_7
    const/4 v1, 0x0

    .restart local v1    # "hasCamera":Z
    goto/16 :goto_2

    .line 1043
    .restart local v3    # "resolver":Landroid/content/ContentResolver;
    :cond_8
    const-string/jumbo v4, "key_home_long_press_action"

    .line 1044
    iget v7, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mLongPressOnHomeBehavior:I

    .line 1042
    invoke-static {v3, v4, v7, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    iput v4, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mLongPressOnHomeBehavior:I

    goto/16 :goto_3

    .line 1053
    :cond_9
    const-string/jumbo v4, "key_switch_long_press_action"

    .line 1054
    iget v7, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mLongPressOnAppSwitchBehavior:I

    .line 1052
    invoke-static {v3, v4, v7, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    iput v4, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mLongPressOnAppSwitchBehavior:I

    goto/16 :goto_4

    .line 1063
    :cond_a
    const-string/jumbo v4, "key_camera_short_press_action"

    .line 1064
    iget v7, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mShortCameraBehavior:I

    .line 1062
    invoke-static {v3, v4, v7, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    iput v4, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mShortCameraBehavior:I

    goto/16 :goto_5

    :cond_b
    move v4, v6

    .line 1070
    goto :goto_6

    :cond_c
    move v4, v6

    .line 1079
    goto :goto_7

    :cond_d
    move v4, v6

    .line 1089
    goto :goto_8

    :cond_e
    move v4, v6

    .line 1099
    goto :goto_9

    :cond_f
    move v5, v6

    .line 1109
    goto :goto_a
.end method

.method private vLaunchVoiceassist()V
    .locals 5

    .prologue
    .line 3628
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 3629
    .local v1, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string/jumbo v3, "com.hmct.voiceassist"

    const-string/jumbo v4, "com.hmct.voiceassist.activity.MainActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3631
    const/high16 v2, 0x34000000

    .line 3630
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3636
    :try_start_0
    const-string/jumbo v2, "HmctWindowManager"

    const-string/jumbo v3, "vLaunchVoiceassist startActivity"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3637
    iget-object v2, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3626
    :goto_0
    return-void

    .line 3638
    :catch_0
    move-exception v0

    .line 3639
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v2, "HmctWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "LaunchVoiceassist Activity not found for intent + "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private wakeUp(JZLjava/lang/String;)Z
    .locals 5
    .param p1, "wakeTime"    # J
    .param p3, "wakeInTheaterMode"    # Z
    .param p4, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 2157
    invoke-direct {p0}, Lcom/android/server/policy/HmctPhoneWindowManager;->isTheaterModeEnabled()Z

    move-result v0

    .line 2158
    .local v0, "theaterModeEnabled":Z
    if-nez p3, :cond_0

    if-eqz v0, :cond_0

    .line 2159
    return v3

    .line 2162
    :cond_0
    if-eqz v0, :cond_1

    .line 2163
    iget-object v1, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 2164
    const-string/jumbo v2, "theater_mode_on"

    .line 2163
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2167
    :cond_1
    iget-object v1, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1, p1, p2, p4}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V

    .line 2168
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method public beginLayoutLw(ZIIII)V
    .locals 2
    .param p1, "isDefaultDisplay"    # Z
    .param p2, "displayWidth"    # I
    .param p3, "displayHeight"    # I
    .param p4, "displayRotation"    # I
    .param p5, "uiMode"    # I

    .prologue
    .line 2232
    invoke-super/range {p0 .. p5}, Lcom/android/server/policy/PhoneWindowManager;->beginLayoutLw(ZIIII)V

    .line 2233
    iget-object v0, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mSystemGestures:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    iget v1, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mUnrestrictedScreenWidth:I

    iput v1, v0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->screenWidth:I

    .line 2234
    iget-object v0, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mSystemGestures:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    iget v1, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mUnrestrictedScreenHeight:I

    iput v1, v0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->screenHeight:I

    .line 2231
    return-void
.end method

.method createHomeDockIntent()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 3596
    const/4 v1, 0x0

    .line 3597
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "HmctWindowManager"

    const-string/jumbo v3, "createHomeDockIntent"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3599
    iget v2, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mPublicKeyMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 3600
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 3601
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    sget-object v2, Lcom/android/server/policy/HmctPhoneWindowManager;->POWERMANAGERMODE_PKG_NAME:Ljava/lang/String;

    sget-object v3, Lcom/android/server/policy/HmctPhoneWindowManager;->POWERMANAGERMODE_CLS_NAME:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3602
    .local v0, "compName":Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3604
    const/high16 v2, 0x34000000

    .line 3603
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3607
    return-object v1

    .line 3609
    .end local v0    # "compName":Landroid/content/ComponentName;
    .local v1, "intent":Landroid/content/Intent;
    :cond_0
    invoke-super {p0}, Lcom/android/server/policy/PhoneWindowManager;->createHomeDockIntent()Landroid/content/Intent;

    move-result-object v2

    return-object v2
.end method

.method public dispatchUnhandledKey(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;
    .locals 3
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    .prologue
    .line 1471
    const-string/jumbo v0, "HmctWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unhandled key: win="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1472
    const-string/jumbo v2, ", flags="

    .line 1471
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1472
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    .line 1471
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1473
    const-string/jumbo v2, ", keyCode="

    .line 1471
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1473
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    .line 1471
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1474
    const-string/jumbo v2, ", scanCode="

    .line 1471
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1474
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v2

    .line 1471
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1475
    const-string/jumbo v2, ", metaState="

    .line 1471
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1475
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v2

    .line 1471
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1476
    const-string/jumbo v2, ", repeatCount="

    .line 1471
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1476
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    .line 1471
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1477
    const-string/jumbo v2, ", policyFlags="

    .line 1471
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1479
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/policy/PhoneWindowManager;->dispatchUnhandledKey(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v0

    return-object v0
.end method

.method public getPointValue()I
    .locals 11

    .prologue
    .line 2794
    const/4 v3, 0x0

    .line 2795
    .local v3, "reader":Ljava/io/FileInputStream;
    const/4 v5, 0x0

    .line 2797
    .local v5, "s":I
    const/4 v7, 0x4

    :try_start_0
    new-array v2, v7, [B

    .line 2798
    .local v2, "mBuffer":[B
    new-instance v4, Ljava/io/FileInputStream;

    sget-object v7, Lcom/android/server/policy/HmctPhoneWindowManager;->FLASHLIGHT_BRIGHTNESS_POINT:Ljava/lang/String;

    invoke-direct {v4, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2799
    .end local v3    # "reader":Ljava/io/FileInputStream;
    .local v4, "reader":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v4, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    .line 2801
    .local v1, "len":I
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v2}, Ljava/lang/String;-><init>([B)V

    .line 2802
    .local v6, "str":Ljava/lang/String;
    add-int/lit8 v7, v1, -0x1

    const/4 v8, 0x0

    invoke-virtual {v6, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 2803
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v5

    .line 2807
    if-eqz v4, :cond_0

    .line 2809
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    move-object v3, v4

    .line 2815
    .end local v1    # "len":I
    .end local v2    # "mBuffer":[B
    .end local v4    # "reader":Ljava/io/FileInputStream;
    .end local v6    # "str":Ljava/lang/String;
    :cond_1
    :goto_1
    const-string/jumbo v7, "HmctWindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getPointValue flashlight val "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2816
    return v5

    .line 2810
    .restart local v1    # "len":I
    .restart local v2    # "mBuffer":[B
    .restart local v4    # "reader":Ljava/io/FileInputStream;
    .restart local v6    # "str":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 2811
    .local v0, "ex":Ljava/lang/Exception;
    const-string/jumbo v7, "HmctWindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Couldn\'t close from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/android/server/policy/HmctPhoneWindowManager;->FLASHLIGHT_BRIGHTNESS_POINT:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2804
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v1    # "len":I
    .end local v2    # "mBuffer":[B
    .end local v4    # "reader":Ljava/io/FileInputStream;
    .end local v6    # "str":Ljava/lang/String;
    .restart local v3    # "reader":Ljava/io/FileInputStream;
    :catch_1
    move-exception v0

    .line 2805
    .end local v3    # "reader":Ljava/io/FileInputStream;
    .restart local v0    # "ex":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    const-string/jumbo v7, "HmctWindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Couldn\'t read flashlight state from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/android/server/policy/HmctPhoneWindowManager;->FLASHLIGHT_BRIGHTNESS_POINT:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2807
    if-eqz v3, :cond_1

    .line 2809
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 2810
    :catch_2
    move-exception v0

    .line 2811
    const-string/jumbo v7, "HmctWindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Couldn\'t close from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/android/server/policy/HmctPhoneWindowManager;->FLASHLIGHT_BRIGHTNESS_POINT:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2806
    .end local v0    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 2807
    :goto_3
    if-eqz v3, :cond_2

    .line 2809
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 2806
    :cond_2
    :goto_4
    throw v7

    .line 2810
    :catch_3
    move-exception v0

    .line 2811
    .restart local v0    # "ex":Ljava/lang/Exception;
    const-string/jumbo v8, "HmctWindowManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Couldn\'t close from "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/android/server/policy/HmctPhoneWindowManager;->FLASHLIGHT_BRIGHTNESS_POINT:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 2806
    .end local v0    # "ex":Ljava/lang/Exception;
    .restart local v2    # "mBuffer":[B
    .restart local v4    # "reader":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/FileInputStream;
    .local v3, "reader":Ljava/io/FileInputStream;
    goto :goto_3

    .line 2804
    .end local v3    # "reader":Ljava/io/FileInputStream;
    .restart local v4    # "reader":Ljava/io/FileInputStream;
    :catch_4
    move-exception v0

    .restart local v0    # "ex":Ljava/lang/Exception;
    move-object v3, v4

    .end local v4    # "reader":Ljava/io/FileInputStream;
    .restart local v3    # "reader":Ljava/io/FileInputStream;
    goto/16 :goto_2
.end method

.method getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;
    .locals 2

    .prologue
    .line 602
    iget-object v1, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mServiceAquireLock:Ljava/lang/Object;

    monitor-enter v1

    .line 603
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    if-nez v0, :cond_0

    .line 605
    const-class v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 604
    iput-object v0, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 607
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 602
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    .locals 2

    .prologue
    .line 592
    iget-object v1, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mServiceAquireLock:Ljava/lang/Object;

    monitor-enter v1

    .line 593
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_0

    .line 595
    const-string/jumbo v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 594
    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 597
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 592
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method getTelecommService()Landroid/telecom/TelecomManager;
    .locals 2

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "telecom"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    return-object v0
.end method

.method public hmctUpdateSettings()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 998
    iget-object v3, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 999
    .local v1, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v3, "HmctWindowManager"

    const-string/jumbo v4, "hmctUpdateSettings : 3"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    iget-object v4, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1002
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/policy/HmctPhoneWindowManager;->updateKeyAssignments()V

    .line 1006
    iget-object v3, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v5, "driving_mode"

    const/4 v6, 0x0

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1007
    .local v0, "driveType":I
    iget-object v3, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v5, "driving_mode_foreground"

    const/4 v6, 0x0

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1008
    .local v2, "ret":I
    iget-object v3, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v5, "powermanager_mode"

    const/4 v6, 0x1

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/android/server/policy/HmctPhoneWindowManager;->powerType:I

    .line 1010
    const-string/jumbo v3, "HmctWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "dc --powerType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/android/server/policy/HmctPhoneWindowManager;->powerType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "-- driveType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " --ret = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    sget v3, Lcom/android/server/policy/HmctPhoneWindowManager;->powerType:I

    if-nez v3, :cond_0

    .line 1012
    const/4 v3, 0x1

    iput v3, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mPublicKeyMode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v4

    .line 997
    return-void

    .line 1013
    :cond_0
    if-ne v0, v7, :cond_2

    .line 1014
    if-ne v2, v7, :cond_1

    .line 1015
    const/4 v3, 0x2

    :try_start_1
    iput v3, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mPublicKeyMode:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1000
    .end local v0    # "driveType":I
    .end local v2    # "ret":I
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 1017
    .restart local v0    # "driveType":I
    .restart local v2    # "ret":I
    :cond_1
    const/4 v3, 0x0

    :try_start_2
    iput v3, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mPublicKeyMode:I

    goto :goto_0

    .line 1020
    :cond_2
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mPublicKeyMode:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public init(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManager"    # Landroid/view/IWindowManager;
    .param p3, "windowManagerFuncs"    # Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 757
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/policy/PhoneWindowManager;->init(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V

    .line 760
    const-string/jumbo v4, "HmctWindowManager"

    const-string/jumbo v5, "tzyl - PhoneWindowManager init function"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    new-instance v4, Lcom/android/server/policy/HmctPhoneWindowManager$HmctPolicyHandler;

    invoke-direct {v4, p0, v9}, Lcom/android/server/policy/HmctPhoneWindowManager$HmctPolicyHandler;-><init>(Lcom/android/server/policy/HmctPhoneWindowManager;Lcom/android/server/policy/HmctPhoneWindowManager$HmctPolicyHandler;)V

    iput-object v4, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mHmctHandler:Landroid/os/Handler;

    .line 765
    invoke-static {}, Landroid/os/FactoryTest;->getMode()I

    move-result v4

    iput v4, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mFactoryTest:I

    .line 773
    new-instance v4, Lcom/android/server/policy/HmctPhoneWindowManager$HmctSettingsObserver;

    iget-object v5, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mHmctHandler:Landroid/os/Handler;

    invoke-direct {v4, p0, v5}, Lcom/android/server/policy/HmctPhoneWindowManager$HmctSettingsObserver;-><init>(Lcom/android/server/policy/HmctPhoneWindowManager;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mHmctSettingsObserver:Lcom/android/server/policy/HmctPhoneWindowManager$HmctSettingsObserver;

    .line 774
    iget-object v4, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mHmctSettingsObserver:Lcom/android/server/policy/HmctPhoneWindowManager$HmctSettingsObserver;

    invoke-virtual {v4}, Lcom/android/server/policy/HmctPhoneWindowManager$HmctSettingsObserver;->observe()V

    .line 776
    iget-object v4, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 777
    const v5, 0x10e0052

    .line 776
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mLongPressOnBackBehavior:I

    .line 782
    iget-object v4, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    .line 783
    const-string/jumbo v5, "PhoneWindowManager.mVolumeDownWakeLock"

    .line 782
    invoke-virtual {v4, v7, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mVolumeDownWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 785
    iget-object v4, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    .line 786
    const-string/jumbo v5, "PhoneWindowManager.mVolumeUpWakeLock"

    .line 785
    invoke-virtual {v4, v7, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mVolumeUpWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 788
    iget-object v4, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    .line 789
    const-string/jumbo v5, "PhoneWindowManager.mGestureWakeLock"

    .line 788
    invoke-virtual {v4, v7, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 792
    iget-object v4, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    .line 793
    const-string/jumbo v5, "PhoneWindowManager.mCTCameraWakeLock"

    .line 792
    invoke-virtual {v4, v7, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mCTCameraWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 795
    invoke-direct {p0}, Lcom/android/server/policy/HmctPhoneWindowManager;->updateKeyAssignments()V

    .line 796
    iget-object v4, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 797
    const v5, 0x1120031

    .line 796
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mAllowTheaterModeWakeFromKey:Z

    .line 800
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 803
    .local v1, "filter":Landroid/content/IntentFilter;
    new-instance v1, Landroid/content/IntentFilter;

    .end local v1    # "filter":Landroid/content/IntentFilter;
    const-string/jumbo v4, "android.intent.action.USER_SWITCHED"

    invoke-direct {v1, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 804
    .restart local v1    # "filter":Landroid/content/IntentFilter;
    iget-object v4, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mMultiuserReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 807
    new-instance v1, Landroid/content/IntentFilter;

    .end local v1    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 808
    .restart local v1    # "filter":Landroid/content/IntentFilter;
    const-string/jumbo v4, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 809
    iget-object v4, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mGestureMakeCallReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 816
    new-instance v1, Landroid/content/IntentFilter;

    .end local v1    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 817
    .restart local v1    # "filter":Landroid/content/IntentFilter;
    const-string/jumbo v4, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 818
    iget-object v4, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 822
    new-instance v4, Lcom/android/server/policy/SystemGesturesPointerEventListener;

    .line 823
    new-instance v5, Lcom/android/server/policy/HmctPhoneWindowManager$15;

    invoke-direct {v5, p0}, Lcom/android/server/policy/HmctPhoneWindowManager$15;-><init>(Lcom/android/server/policy/HmctPhoneWindowManager;)V

    .line 822
    invoke-direct {v4, p1, v5}, Lcom/android/server/policy/SystemGesturesPointerEventListener;-><init>(Landroid/content/Context;Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;)V

    iput-object v4, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mSystemGestures:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    .line 877
    iget-object v4, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    iget-object v5, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mSystemGestures:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    invoke-interface {v4, v5}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->registerPointerEventListener(Landroid/view/WindowManagerPolicy$PointerEventListener;)V

    .line 883
    const-string/jumbo v4, "vibrator"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Vibrator;

    iput-object v4, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    .line 894
    invoke-static {}, Lcom/vision/featurequery/CommonFeature;->isSupportStartFlashLight()Z

    move-result v4

    sput-boolean v4, Lcom/android/server/policy/HmctPhoneWindowManager;->mFlightLightSupport:Z

    .line 898
    iget-object v4, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 899
    const v5, 0x1070022

    .line 898
    invoke-static {v4, v5}, Lcom/android/server/policy/HmctPhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mLongPressVibePattern:[J

    .line 900
    iget-object v4, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 901
    const v5, 0x1070023

    .line 900
    invoke-static {v4, v5}, Lcom/android/server/policy/HmctPhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mVirtualKeyVibePattern:[J

    .line 902
    iget-object v4, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 903
    const v5, 0x1070024

    .line 902
    invoke-static {v4, v5}, Lcom/android/server/policy/HmctPhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mKeyboardTapVibePattern:[J

    .line 904
    iget-object v4, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 905
    const v5, 0x1070025

    .line 904
    invoke-static {v4, v5}, Lcom/android/server/policy/HmctPhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mClockTickVibePattern:[J

    .line 906
    iget-object v4, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 907
    const v5, 0x1070026

    .line 906
    invoke-static {v4, v5}, Lcom/android/server/policy/HmctPhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mCalendarDateVibePattern:[J

    .line 908
    iget-object v4, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 909
    const v5, 0x1070027

    .line 908
    invoke-static {v4, v5}, Lcom/android/server/policy/HmctPhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mSafeModeDisabledVibePattern:[J

    .line 910
    iget-object v4, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 911
    const v5, 0x1070028

    .line 910
    invoke-static {v4, v5}, Lcom/android/server/policy/HmctPhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mSafeModeEnabledVibePattern:[J

    .line 912
    iget-object v4, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 913
    const v5, 0x107002a

    .line 912
    invoke-static {v4, v5}, Lcom/android/server/policy/HmctPhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mContextClickVibePattern:[J

    .line 915
    iget-object v4, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 916
    const v5, 0x112002c

    .line 915
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mScreenshotChordEnabled:Z

    .line 918
    new-instance v4, Lcom/android/server/policy/GlobalKeyManager;

    iget-object v5, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/server/policy/GlobalKeyManager;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mGlobalKeyManager:Lcom/android/server/policy/GlobalKeyManager;

    .line 922
    iget-object v4, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "screen_gesture_value"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 924
    .local v2, "mGestureValue":Ljava/lang/String;
    const-string/jumbo v4, "GESTURE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "During init mGestureValue = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 925
    const-string/jumbo v6, " mSupportGesture : "

    .line 924
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 925
    sget-boolean v6, Lcom/android/server/policy/HmctPhoneWindowManager;->mSupportGesture:Z

    .line 924
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    new-instance v4, Lcom/android/server/policy/ProximitySensorManager;

    iget-object v5, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mProximitySensorListener:Lcom/android/server/policy/HmctPhoneWindowManager$ProximitySensorListener;

    invoke-direct {v4, v5, v6}, Lcom/android/server/policy/ProximitySensorManager;-><init>(Landroid/content/Context;Lcom/android/server/policy/ProximitySensorManager$Listener;)V

    iput-object v4, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mProximitySensorManager:Lcom/android/server/policy/ProximitySensorManager;

    .line 928
    new-instance v4, Lcom/android/server/policy/HmctPhoneWindowManager$ProximitySensor;

    invoke-direct {v4, p0, v9}, Lcom/android/server/policy/HmctPhoneWindowManager$ProximitySensor;-><init>(Lcom/android/server/policy/HmctPhoneWindowManager;Lcom/android/server/policy/HmctPhoneWindowManager$ProximitySensor;)V

    iput-object v4, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mProximitySensor:Lcom/android/server/policy/HmctPhoneWindowManager$ProximitySensor;

    .line 931
    iget-object v4, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "powermanager_mode"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/android/server/policy/HmctPhoneWindowManager;->powerType:I

    .line 932
    iget-object v4, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "driving_mode"

    invoke-static {v4, v5, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 933
    .local v0, "driveType":I
    iget-object v4, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "driving_mode_foreground"

    invoke-static {v4, v5, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 934
    .local v3, "ret":I
    const-string/jumbo v4, "HmctWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "dc --  powerType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/android/server/policy/HmctPhoneWindowManager;->powerType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " driveType : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " ret : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    sget v4, Lcom/android/server/policy/HmctPhoneWindowManager;->powerType:I

    if-nez v4, :cond_0

    .line 936
    iput v7, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mPublicKeyMode:I

    .line 948
    :goto_0
    iget-object v4, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mContext:Landroid/content/Context;

    const v5, 0x1040667

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/server/policy/HmctPhoneWindowManager;->POWERMANAGERMODE_PKG_NAME:Ljava/lang/String;

    .line 949
    iget-object v4, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mContext:Landroid/content/Context;

    const v5, 0x1040668

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/server/policy/HmctPhoneWindowManager;->POWERMANAGERMODE_CLS_NAME:Ljava/lang/String;

    .line 755
    return-void

    .line 937
    :cond_0
    if-ne v0, v7, :cond_2

    .line 938
    if-ne v3, v7, :cond_1

    .line 939
    const/4 v4, 0x2

    iput v4, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mPublicKeyMode:I

    goto :goto_0

    .line 941
    :cond_1
    iput v8, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mPublicKeyMode:I

    goto :goto_0

    .line 944
    :cond_2
    iput v8, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mPublicKeyMode:I

    goto :goto_0
.end method

.method public interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J
    .locals 30
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    .prologue
    .line 1137
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/HmctPhoneWindowManager;->keyguardOn()Z

    move-result v13

    .line 1138
    .local v13, "keyguardOn":Z
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v12

    .line 1139
    .local v12, "keyCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v18

    .line 1140
    .local v18, "repeatCount":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v15

    .line 1141
    .local v15, "metaState":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v8

    .line 1142
    .local v8, "flags":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v26

    if-nez v26, :cond_2

    const/4 v6, 0x1

    .line 1143
    .local v6, "down":Z
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v5

    .line 1145
    .local v5, "canceled":Z
    and-int/lit16 v0, v8, 0x80

    move/from16 v26, v0

    if-eqz v26, :cond_3

    const/4 v14, 0x1

    .line 1146
    .local v14, "longPress":Z
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v26

    const/16 v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_4

    const/16 v25, 0x1

    .line 1153
    .local v25, "virtualKey":Z
    :goto_2
    const-string/jumbo v26, "HmctWindowManager"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "interceptKeyTi keyCode="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " down="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " repeatCount="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    .line 1154
    const-string/jumbo v28, " keyguardOn="

    .line 1153
    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v27

    .line 1154
    const-string/jumbo v28, " mHomePressed="

    .line 1153
    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    .line 1154
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/HmctPhoneWindowManager;->mHomePressed:Z

    move/from16 v28, v0

    .line 1153
    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v27

    .line 1155
    const-string/jumbo v28, " canceled="

    .line 1153
    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v27

    .line 1155
    const-string/jumbo v28, " , virtualKey : "

    .line 1153
    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    if-eqz v6, :cond_6

    .line 1163
    and-int/lit8 v26, p3, 0x2

    if-eqz v26, :cond_6

    .line 1164
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v26

    if-nez v26, :cond_5

    const/16 v24, 0x1

    .line 1165
    .local v24, "useHapticFeedback":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/HmctPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string/jumbo v27, "haptic_feedback_enabled"

    const/16 v28, 0x1

    invoke-static/range {v26 .. v28}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v26

    if-eqz v26, :cond_7

    const/4 v11, 0x1

    .line 1166
    .local v11, "isEnabled":Z
    :goto_4
    const-string/jumbo v26, "HmctWindowManager"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "performHapticFeedbackLw keyCode="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " down="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " repeatCount="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " isEnabled: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " mRemVirbratorKey :"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/HmctPhoneWindowManager;->mRemVirbratorKey:Z

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " , useHapticFeedback : "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    if-eqz v6, :cond_0

    if-eqz v11, :cond_0

    if-nez v18, :cond_0

    if-eqz v24, :cond_8

    .line 1176
    :cond_0
    :goto_5
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/HmctPhoneWindowManager;->mRemVirbratorKey:Z

    .line 1181
    const-string/jumbo v26, "ro.alarm_boot"

    const/16 v27, 0x0

    invoke-static/range {v26 .. v27}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    .line 1182
    .local v10, "isAlarmBoot":Z
    if-eqz v10, :cond_c

    const/16 v26, 0x3

    move/from16 v0, v26

    if-eq v12, v0, :cond_1

    .line 1183
    const/16 v26, 0x54

    move/from16 v0, v26

    if-ne v12, v0, :cond_b

    .line 1187
    :cond_1
    const-wide/16 v26, -0x1

    return-wide v26

    .line 1142
    .end local v5    # "canceled":Z
    .end local v6    # "down":Z
    .end local v10    # "isAlarmBoot":Z
    .end local v11    # "isEnabled":Z
    .end local v14    # "longPress":Z
    .end local v24    # "useHapticFeedback":Z
    .end local v25    # "virtualKey":Z
    :cond_2
    const/4 v6, 0x0

    .restart local v6    # "down":Z
    goto/16 :goto_0

    .line 1145
    .restart local v5    # "canceled":Z
    :cond_3
    const/4 v14, 0x0

    .restart local v14    # "longPress":Z
    goto/16 :goto_1

    .line 1146
    :cond_4
    const/16 v25, 0x0

    .restart local v25    # "virtualKey":Z
    goto/16 :goto_2

    .line 1164
    :cond_5
    const/16 v24, 0x0

    .restart local v24    # "useHapticFeedback":Z
    goto/16 :goto_3

    .line 1162
    .end local v24    # "useHapticFeedback":Z
    :cond_6
    const/16 v24, 0x0

    .restart local v24    # "useHapticFeedback":Z
    goto/16 :goto_3

    .line 1165
    :cond_7
    const/4 v11, 0x0

    .restart local v11    # "isEnabled":Z
    goto/16 :goto_4

    .line 1169
    :cond_8
    const/16 v26, 0x54

    move/from16 v0, v26

    if-eq v12, v0, :cond_9

    const/16 v26, 0x3

    move/from16 v0, v26

    if-ne v12, v0, :cond_a

    .line 1171
    :cond_9
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/HmctPhoneWindowManager;->mRemVirbratorKey:Z

    move/from16 v26, v0

    if-nez v26, :cond_0

    .line 1172
    const/16 v26, 0x0

    const/16 v27, 0x3

    const/16 v28, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/policy/HmctPhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    goto :goto_5

    .line 1169
    :cond_a
    const/16 v26, 0xbb

    move/from16 v0, v26

    if-eq v12, v0, :cond_9

    .line 1170
    const/16 v26, 0x52

    move/from16 v0, v26

    if-eq v12, v0, :cond_9

    const/16 v26, 0x4

    move/from16 v0, v26

    if-ne v12, v0, :cond_0

    goto :goto_6

    .line 1184
    .restart local v10    # "isAlarmBoot":Z
    :cond_b
    const/16 v26, 0x52

    move/from16 v0, v26

    if-eq v12, v0, :cond_1

    .line 1185
    const/16 v26, 0xbb

    move/from16 v0, v26

    if-eq v12, v0, :cond_1

    .line 1186
    const/16 v26, 0x4

    move/from16 v0, v26

    if-eq v12, v0, :cond_1

    .line 1193
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/HmctPhoneWindowManager;->mScreenshotChordEnabled:Z

    move/from16 v26, v0

    if-eqz v26, :cond_14

    and-int/lit16 v0, v8, 0x400

    move/from16 v26, v0

    if-nez v26, :cond_14

    .line 1194
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/HmctPhoneWindowManager;->mScreenshotChordVolumeDownKeyTriggered:Z

    move/from16 v26, v0

    if-eqz v26, :cond_d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/HmctPhoneWindowManager;->mScreenshotChordPowerKeyTriggered:Z

    move/from16 v26, v0

    if-eqz v26, :cond_f

    .line 1202
    :cond_d
    const/16 v26, 0x19

    move/from16 v0, v26

    if-ne v12, v0, :cond_10

    .line 1203
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/HmctPhoneWindowManager;->mScreenshotChordVolumeDownKeyConsumed:Z

    move/from16 v26, v0

    .line 1202
    if-eqz v26, :cond_10

    .line 1204
    if-nez v6, :cond_e

    .line 1205
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/HmctPhoneWindowManager;->mScreenshotChordVolumeDownKeyConsumed:Z

    .line 1207
    :cond_e
    const-wide/16 v26, -0x1

    return-wide v26

    .line 1195
    :cond_f
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    .line 1196
    .local v16, "now":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/policy/HmctPhoneWindowManager;->mScreenshotChordVolumeDownKeyTime:J

    move-wide/from16 v26, v0

    .line 1197
    const-wide/16 v28, 0x96

    .line 1196
    add-long v20, v26, v28

    .line 1198
    .local v20, "timeoutTime":J
    cmp-long v26, v16, v20

    if-gez v26, :cond_d

    .line 1199
    sub-long v26, v20, v16

    return-wide v26

    .line 1214
    .end local v16    # "now":J
    .end local v20    # "timeoutTime":J
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/HmctPhoneWindowManager;->mScreenshotChordVolumeUpKeyTriggered:Z

    move/from16 v26, v0

    if-eqz v26, :cond_11

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/HmctPhoneWindowManager;->mScreenshotChordPowerKeyTriggered:Z

    move/from16 v26, v0

    if-eqz v26, :cond_13

    .line 1221
    :cond_11
    const/16 v26, 0x18

    move/from16 v0, v26

    if-ne v12, v0, :cond_14

    .line 1222
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/HmctPhoneWindowManager;->mVolumeUpKeyConsumedByScreenshotChord:Z

    move/from16 v26, v0

    .line 1221
    if-eqz v26, :cond_14

    .line 1223
    if-nez v6, :cond_12

    .line 1224
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/HmctPhoneWindowManager;->mVolumeUpKeyConsumedByScreenshotChord:Z

    .line 1226
    :cond_12
    const-wide/16 v26, -0x1

    return-wide v26

    .line 1215
    :cond_13
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    .line 1216
    .restart local v16    # "now":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/policy/HmctPhoneWindowManager;->mVolumeUpKeyTime:J

    move-wide/from16 v26, v0

    const-wide/16 v28, 0x96

    add-long v20, v26, v28

    .line 1217
    .restart local v20    # "timeoutTime":J
    cmp-long v26, v16, v20

    if-gez v26, :cond_11

    .line 1218
    sub-long v26, v20, v16

    return-wide v26

    .line 1234
    .end local v16    # "now":J
    .end local v20    # "timeoutTime":J
    :cond_14
    const/16 v26, 0x4

    move/from16 v0, v26

    if-ne v12, v0, :cond_15

    .line 1235
    if-eqz v14, :cond_15

    .line 1237
    :try_start_0
    const-string/jumbo v26, "HmctWindowManager"

    const-string/jumbo v27, "UNPIN THE SCREEN VIA LONGPRESS BACK "

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1238
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Landroid/app/IActivityManager;->stopSystemLockTaskMode()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1250
    :cond_15
    :goto_7
    const/16 v26, 0x3

    move/from16 v0, v26

    if-ne v12, v0, :cond_2c

    .line 1253
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/HmctPhoneWindowManager;->mPublicKeyMode:I

    move/from16 v26, v0

    const/16 v27, 0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_16

    .line 1254
    const-wide/16 v26, 0x0

    return-wide v26

    .line 1239
    :catch_0
    move-exception v7

    .line 1240
    .local v7, "e":Landroid/os/RemoteException;
    const-string/jumbo v26, "HmctWindowManager"

    const-string/jumbo v27, "Failed to stop app pinning"

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 1257
    .end local v7    # "e":Landroid/os/RemoteException;
    :cond_16
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/HmctPhoneWindowManager;->mPublicKeyMode:I

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_17

    .line 1258
    if-eqz p1, :cond_17

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v26

    if-eqz v26, :cond_17

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v26

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    move-object/from16 v26, v0

    if-eqz v26, :cond_17

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v26

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    move-object/from16 v26, v0

    const-string/jumbo v27, "com.hmct.vision"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_17

    .line 1259
    const-wide/16 v26, 0x0

    return-wide v26

    .line 1264
    :cond_17
    const-string/jumbo v26, "HmctWindowManager"

    const-string/jumbo v27, "During interceptKeyBeforeDispatching keycode is KEYCODE_HOME"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1267
    if-nez v6, :cond_1e

    .line 1268
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/HmctPhoneWindowManager;->cancelPreloadRecentApps()V

    .line 1270
    sget-boolean v26, Lcom/android/server/policy/HmctPhoneWindowManager;->mEnableDropHover:Z

    if-eqz v26, :cond_18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/HmctPhoneWindowManager;->mDoubleHomeLaunchDropHover:Z

    move/from16 v26, v0

    if-eqz v26, :cond_18

    .line 1271
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/HmctPhoneWindowManager;->mDoubleHomeLaunchDropHover:Z

    .line 1272
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/HmctPhoneWindowManager;->launchTDropHover()V

    .line 1275
    :cond_18
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/HmctPhoneWindowManager;->mHomePressed:Z

    .line 1276
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/HmctPhoneWindowManager;->mHomeConsumed:Z

    move/from16 v26, v0

    if-eqz v26, :cond_19

    .line 1277
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/HmctPhoneWindowManager;->mHomeConsumed:Z

    .line 1278
    const-wide/16 v26, -0x1

    return-wide v26

    .line 1281
    :cond_19
    if-eqz v5, :cond_1a

    .line 1282
    const-string/jumbo v26, "HmctWindowManager"

    const-string/jumbo v27, "Ignoring HOME; event canceled."

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1283
    const-wide/16 v26, -0x1

    return-wide v26

    .line 1289
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/HmctPhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v19

    .line 1290
    .local v19, "telecomManager":Landroid/telecom/TelecomManager;
    if-eqz v19, :cond_1b

    invoke-virtual/range {v19 .. v19}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v26

    if-eqz v26, :cond_1b

    .line 1291
    const-string/jumbo v26, "HmctWindowManager"

    const-string/jumbo v27, "Ignoring HOME; there\'s a ringing incoming call."

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1292
    const-wide/16 v26, -0x1

    return-wide v26

    .line 1297
    :cond_1b
    sget-boolean v26, Lcom/android/server/policy/HmctPhoneWindowManager;->mEnableDropHover:Z

    if-eqz v26, :cond_1c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/HmctPhoneWindowManager;->mFactoryTest:I

    move/from16 v26, v0

    const/16 v27, 0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_1c

    .line 1299
    const-string/jumbo v26, "HmctWindowManager"

    const-string/jumbo v27, "HOME prepare DoubleTapOnHomeBehavior"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/HmctPhoneWindowManager;->mHmctHandler:Landroid/os/Handler;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/HmctPhoneWindowManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1310
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/HmctPhoneWindowManager;->mHomeDoubleTapPending:Z

    .line 1311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/HmctPhoneWindowManager;->mHmctHandler:Landroid/os/Handler;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/HmctPhoneWindowManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    move-object/from16 v27, v0

    .line 1312
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v28

    move/from16 v0, v28

    int-to-long v0, v0

    move-wide/from16 v28, v0

    .line 1311
    invoke-virtual/range {v26 .. v29}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1313
    const-wide/16 v26, -0x1

    return-wide v26

    .line 1318
    :cond_1c
    sget-boolean v26, Lcom/android/server/policy/HmctPhoneWindowManager;->mEnableSinglHand:Z

    if-eqz v26, :cond_1d

    .line 1319
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/HmctPhoneWindowManager;->mHmctHandler:Landroid/os/Handler;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/HmctPhoneWindowManager;->myHomeKeyRunnable:Ljava/lang/Runnable;

    move-object/from16 v27, v0

    sget v28, Lcom/android/server/policy/HmctPhoneWindowManager;->mSlipKeyInterval:I

    move/from16 v0, v28

    int-to-long v0, v0

    move-wide/from16 v28, v0

    invoke-virtual/range {v26 .. v29}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1323
    :goto_8
    const-wide/16 v26, -0x1

    return-wide v26

    .line 1321
    :cond_1d
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/HmctPhoneWindowManager;->handleShortPressOnHome()V

    goto :goto_8

    .line 1328
    .end local v19    # "telecomManager":Landroid/telecom/TelecomManager;
    :cond_1e
    if-eqz p1, :cond_1f

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 1329
    .local v4, "attrs":Landroid/view/WindowManager$LayoutParams;
    :goto_9
    if-eqz v4, :cond_24

    .line 1330
    iget v0, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v22, v0

    .line 1332
    .local v22, "type":I
    iget-object v0, v4, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    move-object/from16 v26, v0

    if-eqz v26, :cond_20

    iget-object v0, v4, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    move-object/from16 v26, v0

    const-string/jumbo v27, "com.android.engtest"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_20

    .line 1333
    const-wide/16 v26, 0x0

    return-wide v26

    .line 1328
    .end local v4    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v22    # "type":I
    :cond_1f
    const/4 v4, 0x0

    goto :goto_9

    .line 1336
    .restart local v4    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .restart local v22    # "type":I
    :cond_20
    const/16 v26, 0x7ed

    move/from16 v0, v22

    move/from16 v1, v26

    if-eq v0, v1, :cond_21

    .line 1337
    const/16 v26, 0x7d9

    move/from16 v0, v22

    move/from16 v1, v26

    if-ne v0, v1, :cond_22

    .line 1340
    :cond_21
    const-wide/16 v26, 0x0

    return-wide v26

    .line 1338
    :cond_22
    iget v0, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    move/from16 v26, v0

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0x400

    move/from16 v26, v0

    if-nez v26, :cond_21

    .line 1342
    sget-object v26, Lcom/android/server/policy/HmctPhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v23, v0

    .line 1343
    .local v23, "typeCount":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_a
    move/from16 v0, v23

    if-ge v9, v0, :cond_24

    .line 1344
    sget-object v26, Lcom/android/server/policy/HmctPhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    aget v26, v26, v9

    move/from16 v0, v22

    move/from16 v1, v26

    if-ne v0, v1, :cond_23

    .line 1346
    const-wide/16 v26, -0x1

    return-wide v26

    .line 1343
    :cond_23
    add-int/lit8 v9, v9, 0x1

    goto :goto_a

    .line 1352
    .end local v9    # "i":I
    .end local v22    # "type":I
    .end local v23    # "typeCount":I
    :cond_24
    if-nez v18, :cond_28

    .line 1353
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/HmctPhoneWindowManager;->mHomePressed:Z

    .line 1354
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/HmctPhoneWindowManager;->mHomeDoubleTapPending:Z

    move/from16 v26, v0

    if-eqz v26, :cond_27

    .line 1355
    const-string/jumbo v26, "HmctWindowManager"

    const-string/jumbo v27, "HOME : DoubleTapOnHomeBehavior"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1356
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/HmctPhoneWindowManager;->mHomeDoubleTapPending:Z

    .line 1357
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/HmctPhoneWindowManager;->mHmctHandler:Landroid/os/Handler;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/HmctPhoneWindowManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1359
    sget-boolean v26, Lcom/android/server/policy/HmctPhoneWindowManager;->mEnableDropHover:Z

    if-eqz v26, :cond_25

    if-eqz v13, :cond_26

    .line 1394
    :cond_25
    :goto_b
    const-wide/16 v26, -0x1

    return-wide v26

    .line 1360
    :cond_26
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/HmctPhoneWindowManager;->mHomeConsumed:Z

    .line 1361
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/HmctPhoneWindowManager;->mDoubleHomeLaunchDropHover:Z

    goto :goto_b

    .line 1363
    :cond_27
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/HmctPhoneWindowManager;->mLongPressOnHomeBehavior:I

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_25

    .line 1365
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/HmctPhoneWindowManager;->preloadRecentApps()V

    goto :goto_b

    .line 1367
    :cond_28
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v26

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0x80

    move/from16 v26, v0

    if-eqz v26, :cond_25

    .line 1369
    sget-boolean v26, Lcom/android/server/policy/HmctPhoneWindowManager;->mEnableDropHover:Z

    if-eqz v26, :cond_29

    .line 1370
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/HmctPhoneWindowManager;->mDoubleHomeLaunchDropHover:Z

    .line 1373
    :cond_29
    if-nez v13, :cond_25

    .line 1375
    const-string/jumbo v26, "HmctWindowManager"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "HOME : mLongPressOnHomeBehavior : "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/HmctPhoneWindowManager;->mLongPressOnHomeBehavior:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1376
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/HmctPhoneWindowManager;->mLongPressOnHomeBehavior:I

    move/from16 v26, v0

    if-nez v26, :cond_2a

    sget-boolean v26, Lcom/android/server/policy/HmctPhoneWindowManager;->vLongPressHomeStartVoiceassist:Z

    if-eqz v26, :cond_25

    sget-boolean v26, Lcom/android/server/policy/HmctPhoneWindowManager;->mEnableLaunchHmctAssistant:Z

    if-eqz v26, :cond_25

    .line 1377
    :cond_2a
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/HmctPhoneWindowManager;->mHomeConsumed:Z

    .line 1378
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/HmctPhoneWindowManager;->mPublicKeyMode:I

    move/from16 v26, v0

    if-nez v26, :cond_25

    .line 1379
    sget-boolean v26, Lcom/android/server/policy/HmctPhoneWindowManager;->vLongPressHomeStartVoiceassist:Z

    if-eqz v26, :cond_2b

    sget-boolean v26, Lcom/android/server/policy/HmctPhoneWindowManager;->mEnableLaunchHmctAssistant:Z

    if-eqz v26, :cond_2b

    .line 1381
    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/policy/HmctPhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 1382
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/HmctPhoneWindowManager;->vLaunchVoiceassist()V

    .line 1383
    const-wide/16 v26, -0x1

    return-wide v26

    .line 1385
    :cond_2b
    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/policy/HmctPhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 1386
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/HmctPhoneWindowManager;->mLongPressOnHomeBehavior:I

    move/from16 v26, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v27

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/HmctPhoneWindowManager;->performKeyAction(II)V

    .line 1387
    const-wide/16 v26, -0x1

    return-wide v26

    .line 1395
    .end local v4    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_2c
    const/16 v26, 0xbb

    move/from16 v0, v26

    if-ne v12, v0, :cond_36

    .line 1397
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/HmctPhoneWindowManager;->mFactoryTest:I

    move/from16 v26, v0

    const/16 v27, 0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_2d

    .line 1398
    const-string/jumbo v26, "HmctWindowManager"

    const-string/jumbo v27, "KEYCODE_APP_SWITCH return for factory"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1399
    const-wide/16 v26, 0x0

    return-wide v26

    .line 1402
    :cond_2d
    const-string/jumbo v26, "HmctWindowManager"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "KEYCODE_APP_SWITCH keyguardOn"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v27

    .line 1403
    const-string/jumbo v28, " longPress : "

    .line 1402
    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v27

    .line 1403
    const-string/jumbo v28, " mLongPressOnAppSwitchBehavior : "

    .line 1402
    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    .line 1403
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/HmctPhoneWindowManager;->mLongPressOnAppSwitchBehavior:I

    move/from16 v28, v0

    .line 1402
    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1408
    if-nez v13, :cond_2e

    .line 1409
    if-eqz v6, :cond_32

    .line 1410
    if-nez v18, :cond_2f

    .line 1411
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/HmctPhoneWindowManager;->preloadRecentApps()V

    .line 1412
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/HmctPhoneWindowManager;->mAppSwitchLongPressed:Z

    .line 1444
    :cond_2e
    :goto_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/HmctPhoneWindowManager;->mPublicKeyMode:I

    move/from16 v26, v0

    if-eqz v26, :cond_35

    .line 1445
    const-wide/16 v26, 0x0

    return-wide v26

    .line 1413
    :cond_2f
    if-eqz v14, :cond_2e

    .line 1414
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/HmctPhoneWindowManager;->mLongPressOnAppSwitchBehavior:I

    move/from16 v26, v0

    if-eqz v26, :cond_2e

    .line 1415
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/HmctPhoneWindowManager;->mLongPressOnAppSwitchBehavior:I

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_30

    .line 1416
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/HmctPhoneWindowManager;->cancelPreloadRecentApps()V

    .line 1419
    :cond_30
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/HmctPhoneWindowManager;->mPublicKeyMode:I

    move/from16 v26, v0

    if-eqz v26, :cond_31

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/HmctPhoneWindowManager;->mLongPressOnAppSwitchBehavior:I

    move/from16 v26, v0

    const/16 v27, 0x3

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_31

    .line 1420
    const-wide/16 v26, 0x0

    return-wide v26

    .line 1423
    :cond_31
    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/policy/HmctPhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 1424
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/HmctPhoneWindowManager;->mLongPressOnAppSwitchBehavior:I

    move/from16 v26, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v27

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/HmctPhoneWindowManager;->performKeyAction(II)V

    .line 1425
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/HmctPhoneWindowManager;->mAppSwitchLongPressed:Z

    goto :goto_c

    .line 1429
    :cond_32
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/HmctPhoneWindowManager;->mAppSwitchLongPressed:Z

    move/from16 v26, v0

    if-eqz v26, :cond_33

    .line 1430
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/HmctPhoneWindowManager;->mAppSwitchLongPressed:Z

    goto :goto_c

    .line 1432
    :cond_33
    if-nez v5, :cond_2e

    .line 1434
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/HmctPhoneWindowManager;->mPublicKeyMode:I

    move/from16 v26, v0

    if-eqz v26, :cond_34

    .line 1435
    const-wide/16 v26, 0x0

    return-wide v26

    .line 1438
    :cond_34
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/HmctPhoneWindowManager;->toggleRecentApps()V

    goto/16 :goto_c

    .line 1458
    :cond_35
    const-wide/16 v26, -0x1

    return-wide v26

    .line 1462
    :cond_36
    const-string/jumbo v26, "HmctWindowManager"

    const-string/jumbo v27, "Let PhoneWindowManager hanle other keys"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1463
    invoke-super/range {p0 .. p3}, Lcom/android/server/policy/PhoneWindowManager;->interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J

    move-result-wide v26

    return-wide v26
.end method

.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I
    .locals 28
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 1598
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/HmctPhoneWindowManager;->mSystemBooted:Z

    move/from16 v23, v0

    if-nez v23, :cond_0

    .line 1600
    const/16 v23, 0x0

    return v23

    .line 1603
    :cond_0
    const/high16 v23, 0x20000000

    and-int v23, v23, p2

    if-eqz v23, :cond_5

    const/4 v12, 0x1

    .line 1604
    .local v12, "interactive":Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v23

    if-nez v23, :cond_6

    const/4 v7, 0x1

    .line 1605
    .local v7, "down":Z
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v6

    .line 1606
    .local v6, "canceled":Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v15

    .line 1608
    .local v15, "keyCode":I
    const/high16 v23, 0x1000000

    and-int v23, v23, p2

    if-eqz v23, :cond_7

    const/4 v13, 0x1

    .line 1614
    .local v13, "isInjected":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/HmctPhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    move-object/from16 v23, v0

    if-nez v23, :cond_8

    const/16 v16, 0x0

    .line 1620
    :goto_3
    const-string/jumbo v23, "HmctWindowManager"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "interceptKeyTq keycode="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, " down= "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, " canceled= "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 1621
    const-string/jumbo v25, " interactive="

    .line 1620
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 1621
    const-string/jumbo v25, " keyguardActive="

    .line 1620
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 1622
    const-string/jumbo v25, " policyFlags="

    .line 1620
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 1622
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v25

    .line 1620
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 1623
    const-string/jumbo v25, " isInjected="

    .line 1620
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1628
    and-int/lit8 v23, p2, 0x1

    if-nez v23, :cond_a

    .line 1629
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isWakeKey()Z

    move-result v14

    .line 1631
    :goto_4
    if-nez v12, :cond_b

    if-eqz v13, :cond_1

    if-eqz v14, :cond_b

    .line 1636
    :cond_1
    if-nez v12, :cond_c

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/HmctPhoneWindowManager;->shouldDispatchInputWhenNonInteractive()Z

    move-result v23

    if-eqz v23, :cond_c

    .line 1641
    const/16 v20, 0x1

    .line 1652
    .local v20, "result":I
    :cond_2
    :goto_5
    sget-boolean v23, Lcom/android/server/policy/HmctPhoneWindowManager;->mSupportGesture:Z

    if-eqz v23, :cond_3

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/policy/HmctPhoneWindowManager;->isDefineGestureKey(I)Z

    move-result v23

    if-eqz v23, :cond_3

    if-eqz v12, :cond_e

    .line 1716
    :cond_3
    invoke-static {v15}, Lcom/android/server/policy/HmctPhoneWindowManager;->isValidGlobalKey(I)Z

    move-result v23

    if-eqz v23, :cond_18

    .line 1717
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/HmctPhoneWindowManager;->mGlobalKeyManager:Lcom/android/server/policy/GlobalKeyManager;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v15, v1}, Lcom/android/server/policy/GlobalKeyManager;->shouldHandleGlobalKey(ILandroid/view/KeyEvent;)Z

    move-result v23

    .line 1716
    if-eqz v23, :cond_18

    .line 1718
    if-eqz v14, :cond_4

    .line 1719
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v24

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/HmctPhoneWindowManager;->mAllowTheaterModeWakeFromKey:Z

    move/from16 v23, v0

    const-string/jumbo v26, "android.policy:KEY"

    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    move/from16 v3, v23

    move-object/from16 v4, v26

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/policy/HmctPhoneWindowManager;->wakeUp(JZLjava/lang/String;)Z

    .line 1721
    :cond_4
    return v20

    .line 1603
    .end local v6    # "canceled":Z
    .end local v7    # "down":Z
    .end local v12    # "interactive":Z
    .end local v13    # "isInjected":Z
    .end local v15    # "keyCode":I
    .end local v20    # "result":I
    :cond_5
    const/4 v12, 0x0

    .restart local v12    # "interactive":Z
    goto/16 :goto_0

    .line 1604
    :cond_6
    const/4 v7, 0x0

    .restart local v7    # "down":Z
    goto/16 :goto_1

    .line 1608
    .restart local v6    # "canceled":Z
    .restart local v15    # "keyCode":I
    :cond_7
    const/4 v13, 0x0

    .restart local v13    # "isInjected":Z
    goto/16 :goto_2

    .line 1615
    :cond_8
    if-eqz v12, :cond_9

    .line 1616
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/HmctPhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v16

    .local v16, "keyguardActive":Z
    goto/16 :goto_3

    .line 1617
    .end local v16    # "keyguardActive":Z
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/HmctPhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v16

    .restart local v16    # "keyguardActive":Z
    goto/16 :goto_3

    .line 1628
    .end local v16    # "keyguardActive":Z
    :cond_a
    const/4 v14, 0x1

    .local v14, "isWakeKey":Z
    goto :goto_4

    .line 1634
    .end local v14    # "isWakeKey":Z
    :cond_b
    const/16 v20, 0x1

    .line 1635
    .restart local v20    # "result":I
    const/4 v14, 0x0

    .line 1631
    .restart local v14    # "isWakeKey":Z
    goto :goto_5

    .line 1645
    .end local v14    # "isWakeKey":Z
    .end local v20    # "result":I
    :cond_c
    const/16 v20, 0x0

    .line 1646
    .restart local v20    # "result":I
    if-eqz v14, :cond_2

    if-eqz v7, :cond_d

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/policy/HmctPhoneWindowManager;->isWakeKeyWhenScreenOff(I)Z

    move-result v23

    if-nez v23, :cond_2

    .line 1647
    :cond_d
    const/4 v14, 0x0

    .restart local v14    # "isWakeKey":Z
    goto :goto_5

    .line 1654
    .end local v14    # "isWakeKey":Z
    :cond_e
    const-string/jumbo v23, "GESTURE"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "interceptKeyBeforeQueueing : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/policy/HmctPhoneWindowManager;->getGestureStr(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, " isDoubleTpNagivate = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 1655
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/HmctPhoneWindowManager;->isDoubleTpNagivate:Z

    move/from16 v25, v0

    .line 1654
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 1655
    const-string/jumbo v25, " down = "

    .line 1654
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 1655
    const-string/jumbo v25, " isWakeKey = "

    .line 1654
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1657
    if-eqz v14, :cond_17

    if-eqz v7, :cond_17

    .line 1660
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/HmctPhoneWindowManager;->isDoubleTpNagivate:Z

    move/from16 v23, v0

    if-eqz v23, :cond_f

    .line 1661
    const/16 v23, 0x0

    return v23

    .line 1663
    :cond_f
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/HmctPhoneWindowManager;->isDoubleTpNagivate:Z

    .line 1664
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/HmctPhoneWindowManager;->mHmctHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/HmctPhoneWindowManager;->mDoubleTPChange:Ljava/lang/Runnable;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1665
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/HmctPhoneWindowManager;->mHmctHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/HmctPhoneWindowManager;->mDoubleTPChange:Ljava/lang/Runnable;

    move-object/from16 v24, v0

    const-wide/16 v26, 0x1f4

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-wide/from16 v2, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1668
    const-string/jumbo v24, "GESTURE"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, " GESTURE current state is :"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/HmctPhoneWindowManager;->isNear:Z

    move/from16 v23, v0

    if-eqz v23, :cond_13

    const-string/jumbo v23, "NEAR"

    :goto_6
    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v25, " , then enable sensor"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1670
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/HmctPhoneWindowManager;->mProximitySensor:Lcom/android/server/policy/HmctPhoneWindowManager$ProximitySensor;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/server/policy/HmctPhoneWindowManager$ProximitySensor;->-wrap1(Lcom/android/server/policy/HmctPhoneWindowManager$ProximitySensor;)V

    .line 1671
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/HmctPhoneWindowManager;->mHmctHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    const/16 v24, 0x15

    invoke-virtual/range {v23 .. v24}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v17

    .line 1672
    .local v17, "msg":Landroid/os/Message;
    const/16 v23, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 1673
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/HmctPhoneWindowManager;->mHmctHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    const-wide/16 v24, 0xc8

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1675
    const-wide/16 v24, 0xc8

    :try_start_0
    invoke-static/range {v24 .. v25}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1679
    :goto_7
    const-string/jumbo v24, "GESTURE"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "GESTURE Current state is : "

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/HmctPhoneWindowManager;->isNear:Z

    move/from16 v23, v0

    if-eqz v23, :cond_14

    const-string/jumbo v23, "NEAR"

    :goto_8
    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1682
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/HmctPhoneWindowManager;->isNear:Z

    move/from16 v23, v0

    if-nez v23, :cond_15

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/HmctPhoneWindowManager;->isPhoneIdle()Z

    move-result v23

    if-eqz v23, :cond_15

    .line 1687
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/policy/HmctPhoneWindowManager;->isDissmissKeyguardCode(I)Z

    move-result v23

    if-eqz v23, :cond_16

    .line 1689
    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/server/policy/HmctPhoneWindowManager;->mGestureKeycode:I

    .line 1690
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/HmctPhoneWindowManager;->mDismissKeyguardForced:Z

    .line 1691
    const/4 v14, 0x0

    .line 1692
    .restart local v14    # "isWakeKey":Z
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v23

    if-nez v23, :cond_10

    .line 1693
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/policy/HmctPhoneWindowManager;->startGestureService(I)V

    .line 1698
    .end local v14    # "isWakeKey":Z
    :cond_10
    :goto_9
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/policy/HmctPhoneWindowManager;->isKeepScreenOffGestureKey(I)Z

    move-result v23

    if-eqz v23, :cond_11

    .line 1699
    const/4 v14, 0x0

    .line 1706
    .end local v17    # "msg":Landroid/os/Message;
    :cond_11
    :goto_a
    if-eqz v14, :cond_12

    .line 1707
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/HmctPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    move-object/from16 v23, v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v24

    invoke-virtual/range {v23 .. v25}, Landroid/os/PowerManager;->wakeUp(J)V

    .line 1708
    const-string/jumbo v23, "GESTURE"

    const-string/jumbo v24, "wakeUp key"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1710
    :cond_12
    and-int/lit8 v20, v20, -0x2

    .line 1711
    return v20

    .line 1668
    :cond_13
    const-string/jumbo v23, "FAR"

    goto/16 :goto_6

    .line 1676
    .restart local v17    # "msg":Landroid/os/Message;
    :catch_0
    move-exception v8

    .line 1677
    .local v8, "e":Ljava/lang/Exception;
    const-string/jumbo v23, "GESTURE"

    const-string/jumbo v24, "WARNING WARNING WARNING - there is sth wrong during sleep"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 1679
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_14
    const-string/jumbo v23, "FAR"

    goto :goto_8

    .line 1683
    :cond_15
    const-string/jumbo v23, "GESTURE"

    const-string/jumbo v24, "GESTURE IS NEAR so we treat this as ERROR OPERATE"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1684
    const/4 v14, 0x0

    .restart local v14    # "isWakeKey":Z
    goto :goto_a

    .line 1696
    .end local v14    # "isWakeKey":Z
    :cond_16
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/policy/HmctPhoneWindowManager;->handleGestureKey(I)V

    goto :goto_9

    .line 1703
    .end local v17    # "msg":Landroid/os/Message;
    :cond_17
    const/4 v14, 0x0

    .restart local v14    # "isWakeKey":Z
    goto :goto_a

    .line 1729
    .end local v14    # "isWakeKey":Z
    :cond_18
    sget-boolean v23, Lcom/android/server/policy/HmctPhoneWindowManager;->mDisableBottomKeys:Z

    if-eqz v23, :cond_1d

    .line 1730
    const/16 v23, 0x3

    move/from16 v0, v23

    if-eq v15, v0, :cond_19

    const/16 v23, 0x4

    move/from16 v0, v23

    if-ne v15, v0, :cond_1c

    .line 1732
    :cond_19
    const/16 v18, 0x0

    .line 1733
    .local v18, "phoneIsRing":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/HmctPhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v21

    .line 1734
    .local v21, "telecomManager":Landroid/telecom/TelecomManager;
    if-eqz v21, :cond_1a

    .line 1735
    invoke-virtual/range {v21 .. v21}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v18

    .line 1737
    .end local v18    # "phoneIsRing":Z
    :cond_1a
    if-nez v16, :cond_1b

    if-eqz v18, :cond_1f

    .line 1738
    :cond_1b
    const-string/jumbo v23, "HmctWindowManager"

    const-string/jumbo v24, "return for prevent touch"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1739
    and-int/lit8 v20, v20, -0x2

    .line 1740
    return v20

    .line 1731
    .end local v21    # "telecomManager":Landroid/telecom/TelecomManager;
    :cond_1c
    const/16 v23, 0xbb

    move/from16 v0, v23

    if-eq v15, v0, :cond_19

    .line 1752
    :cond_1d
    :goto_b
    sget-boolean v23, Lcom/android/server/policy/HmctPhoneWindowManager;->mEnableSinglHand:Z

    if-eqz v23, :cond_21

    .line 1753
    const-string/jumbo v23, "HmctWindowManager"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "detectSlipAction keycode="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, " mDisableBottomKeys : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    sget-boolean v25, Lcom/android/server/policy/HmctPhoneWindowManager;->mDisableBottomKeys:Z

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1754
    const/16 v23, 0x3

    move/from16 v0, v23

    if-eq v15, v0, :cond_1e

    const/16 v23, 0x4

    move/from16 v0, v23

    if-ne v15, v0, :cond_20

    .line 1756
    :cond_1e
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v7}, Lcom/android/server/policy/HmctPhoneWindowManager;->detectSlipAction(Landroid/view/KeyEvent;Z)Z

    move-result v23

    if-eqz v23, :cond_21

    .line 1757
    and-int/lit8 v20, v20, -0x2

    .line 1758
    return v20

    .line 1742
    .restart local v21    # "telecomManager":Landroid/telecom/TelecomManager;
    :cond_1f
    const-string/jumbo v23, "HmctWindowManager"

    const-string/jumbo v24, "WARNING STOUCH_PREVENT_SHOWING State Error, then Reset"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1743
    const/16 v23, 0x0

    sput-boolean v23, Lcom/android/server/policy/HmctPhoneWindowManager;->mDisableBottomKeys:Z

    .line 1744
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/HmctPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const-string/jumbo v24, "touch_prevent_showing"

    const/16 v25, 0x0

    invoke-static/range {v23 .. v25}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_b

    .line 1755
    .end local v21    # "telecomManager":Landroid/telecom/TelecomManager;
    :cond_20
    const/16 v23, 0xbb

    move/from16 v0, v23

    if-eq v15, v0, :cond_1e

    .line 1761
    sget v23, Lcom/android/server/policy/HmctPhoneWindowManager;->sOldDefaultKeyArrayIndex:I

    if-ltz v23, :cond_21

    .line 1762
    const/16 v23, -0x1

    sput v23, Lcom/android/server/policy/HmctPhoneWindowManager;->sOldDefaultKeyArrayIndex:I

    .line 1763
    const/16 v23, 0x0

    sput v23, Lcom/android/server/policy/HmctPhoneWindowManager;->sDefaultKeyArrayIndex:I

    .line 1764
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/HmctPhoneWindowManager;->mIgnoreSlip:Z

    .line 1770
    :cond_21
    if-eqz v7, :cond_24

    .line 1771
    and-int/lit8 v23, p2, 0x2

    if-eqz v23, :cond_24

    .line 1772
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v23

    if-nez v23, :cond_23

    const/16 v22, 0x1

    .line 1775
    .local v22, "useHapticFeedback":Z
    :goto_c
    sparse-switch v15, :sswitch_data_0

    .line 2033
    :cond_22
    const-string/jumbo v24, "HmctWindowManager"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Unhandle the key, use origin Action "

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    if-eqz v7, :cond_42

    const-string/jumbo v23, "DOWN"

    :goto_d
    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2034
    invoke-super/range {p0 .. p2}, Lcom/android/server/policy/PhoneWindowManager;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I

    move-result v23

    return v23

    .line 1772
    .end local v22    # "useHapticFeedback":Z
    :cond_23
    const/16 v22, 0x0

    .restart local v22    # "useHapticFeedback":Z
    goto :goto_c

    .line 1770
    .end local v22    # "useHapticFeedback":Z
    :cond_24
    const/16 v22, 0x0

    .restart local v22    # "useHapticFeedback":Z
    goto :goto_c

    .line 1777
    :sswitch_0
    if-eqz v7, :cond_27

    .line 1778
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/HmctPhoneWindowManager;->mBackKeyHandled:Z

    .line 1779
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/HmctPhoneWindowManager;->hasLongPressOnBackBehavior()Z

    move-result v23

    if-eqz v23, :cond_25

    .line 1780
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/HmctPhoneWindowManager;->mHmctHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    const/16 v24, 0x12

    invoke-virtual/range {v23 .. v24}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v17

    .line 1781
    .restart local v17    # "msg":Landroid/os/Message;
    const/16 v23, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 1782
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/HmctPhoneWindowManager;->mHmctHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    .line 1783
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/HmctPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/view/ViewConfiguration;->getDeviceGlobalActionKeyTimeout()J

    move-result-wide v24

    .line 1782
    move-object/from16 v0, v23

    move-object/from16 v1, v17

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2037
    .end local v17    # "msg":Landroid/os/Message;
    :cond_25
    :goto_e
    if-eqz v22, :cond_26

    .line 2039
    const/16 v23, 0x0

    const/16 v24, 0x3

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/policy/HmctPhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 2042
    :cond_26
    return v20

    .line 1786
    :cond_27
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/android/server/policy/HmctPhoneWindowManager;->mBackKeyHandled:Z

    .line 1789
    .local v9, "handled":Z
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/HmctPhoneWindowManager;->cancelPendingBackKeyAction()V

    .line 1792
    if-eqz v9, :cond_25

    .line 1793
    and-int/lit8 v20, v20, -0x2

    goto :goto_e

    .line 1799
    .end local v9    # "handled":Z
    :sswitch_1
    or-int/lit8 v20, v20, 0x1

    .line 1802
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/HmctPhoneWindowManager;->mFactoryTest:I

    move/from16 v23, v0

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_28

    .line 1803
    const-string/jumbo v23, "HmctWindowManager"

    const-string/jumbo v24, "T_CAMERA Is FactoryTestMode"

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 1806
    :cond_28
    if-eqz v7, :cond_29

    .line 1807
    const-string/jumbo v23, "HmctWindowManager"

    const-string/jumbo v24, "KEYCODE_T_CAMERA DOWN : interceptCameraKeyDown"

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1808
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    invoke-direct {v0, v1, v12, v2}, Lcom/android/server/policy/HmctPhoneWindowManager;->interceptCameraKeyDown(Landroid/view/KeyEvent;ZZ)Z

    goto :goto_e

    .line 1810
    :cond_29
    const-string/jumbo v23, "HmctWindowManager"

    const-string/jumbo v24, "KEYCODE_T_CAMERA UP : interceptCameraKeyUp"

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1811
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12, v6}, Lcom/android/server/policy/HmctPhoneWindowManager;->interceptCameraKeyUp(Landroid/view/KeyEvent;ZZ)V

    goto :goto_e

    .line 1817
    :sswitch_2
    or-int/lit8 v20, v20, 0x1

    .line 1820
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/HmctPhoneWindowManager;->mFactoryTest:I

    move/from16 v23, v0

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_2a

    .line 1821
    const-string/jumbo v23, "HmctWindowManager"

    const-string/jumbo v24, "Cameram Is FactoryTestMode"

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 1825
    :cond_2a
    if-eqz v7, :cond_2b

    .line 1827
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    invoke-direct {v0, v1, v12, v2}, Lcom/android/server/policy/HmctPhoneWindowManager;->interceptCameraKeyDown(Landroid/view/KeyEvent;ZZ)Z

    move-result v19

    .line 1828
    .local v19, "res":Z
    if-nez v19, :cond_25

    .line 1829
    const-string/jumbo v23, "HmctWindowManager"

    const-string/jumbo v24, "CTCamera down : interceptCameraKeyDown np pass"

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1830
    and-int/lit8 v20, v20, -0x2

    goto/16 :goto_e

    .line 1833
    .end local v19    # "res":Z
    :cond_2b
    const-string/jumbo v23, "HmctWindowManager"

    const-string/jumbo v24, "CTCamera UP : interceptCameraKeyUp"

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1835
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12, v6}, Lcom/android/server/policy/HmctPhoneWindowManager;->interceptCameraKeyUp(Landroid/view/KeyEvent;ZZ)V

    goto/16 :goto_e

    .line 1841
    :sswitch_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/HmctPhoneWindowManager;->mUseTvRouting:Z

    move/from16 v23, v0

    if-eqz v23, :cond_2c

    .line 1843
    and-int/lit8 v20, v20, -0x2

    .line 1845
    :cond_2c
    const/16 v23, 0x19

    move/from16 v0, v23

    if-ne v15, v0, :cond_35

    .line 1846
    if-eqz v7, :cond_34

    .line 1848
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/HmctPhoneWindowManager;->mIsBurstCapture:Z

    move/from16 v23, v0

    if-eqz v23, :cond_2d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/HmctPhoneWindowManager;->mScreenOnFully:Z

    move/from16 v23, v0

    if-eqz v23, :cond_2f

    .line 1870
    :cond_2d
    :goto_f
    if-eqz v12, :cond_2e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/HmctPhoneWindowManager;->mScreenshotChordVolumeDownKeyTriggered:Z

    move/from16 v23, v0

    if-eqz v23, :cond_33

    .line 1942
    :cond_2e
    :goto_10
    const-string/jumbo v24, "HmctWindowManager"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Unhandle the key, use origin Action "

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    if-eqz v7, :cond_3b

    const-string/jumbo v23, "DOWN"

    :goto_11
    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1943
    invoke-super/range {p0 .. p2}, Lcom/android/server/policy/PhoneWindowManager;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I

    move-result v23

    return v23

    .line 1848
    :cond_2f
    sget v23, Lcom/android/server/policy/HmctPhoneWindowManager;->CurrentBatterylevel:I

    const/16 v24, 0x5

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_2d

    .line 1849
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/HmctPhoneWindowManager;->isMusicActive()Z

    move-result v23

    if-nez v23, :cond_2d

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/HmctPhoneWindowManager;->isPhoneIdle()Z

    move-result v23

    if-eqz v23, :cond_2d

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/HmctPhoneWindowManager;->isNeedStartCamera()Z

    move-result v23

    if-eqz v23, :cond_2d

    .line 1850
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/HmctPhoneWindowManager;->mVolumeDownWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v23

    if-nez v23, :cond_30

    .line 1851
    const-string/jumbo v23, "HmctWindowManager"

    const-string/jumbo v24, "burst acquire WakeLock"

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1852
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/HmctPhoneWindowManager;->mVolumeDownWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1854
    :cond_30
    const-string/jumbo v23, "HmctWindowManager"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "burst mBurstCapturePrepared : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    sget-boolean v25, Lcom/android/server/policy/HmctPhoneWindowManager;->mBurstCapturePrepared:Z

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 1855
    const-string/jumbo v25, " , mAcceptVolumeDownKey :"

    .line 1854
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 1855
    sget-boolean v25, Lcom/android/server/policy/HmctPhoneWindowManager;->mAcceptVolumeDownKey:Z

    .line 1854
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1856
    sget-boolean v23, Lcom/android/server/policy/HmctPhoneWindowManager;->mAcceptVolumeDownKey:Z

    if-eqz v23, :cond_32

    .line 1857
    sget-boolean v23, Lcom/android/server/policy/HmctPhoneWindowManager;->mBurstCapturePrepared:Z

    if-eqz v23, :cond_31

    .line 1858
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-direct {v0, v1, v12, v6, v2}, Lcom/android/server/policy/HmctPhoneWindowManager;->interceptVolumeDownKeyDown(Landroid/view/KeyEvent;ZZI)V

    goto/16 :goto_f

    .line 1860
    :cond_31
    const/16 v23, 0x0

    sput-boolean v23, Lcom/android/server/policy/HmctPhoneWindowManager;->mAcceptVolumeDownKey:Z

    .line 1861
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/HmctPhoneWindowManager;->mHmctHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    const/16 v24, 0x16

    invoke-virtual/range {v23 .. v24}, Landroid/os/Handler;->removeMessages(I)V

    .line 1862
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12}, Lcom/android/server/policy/HmctPhoneWindowManager;->getCapture(Landroid/view/KeyEvent;Z)V

    goto/16 :goto_f

    .line 1865
    :cond_32
    const-string/jumbo v23, "HmctWindowManager"

    const-string/jumbo v24, "burst on the way, ignore current keyEvent"

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    .line 1871
    :cond_33
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v23

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0x400

    move/from16 v23, v0

    if-nez v23, :cond_2e

    .line 1872
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/HmctPhoneWindowManager;->mScreenshotChordVolumeDownKeyTriggered:Z

    .line 1873
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/policy/HmctPhoneWindowManager;->mScreenshotChordVolumeDownKeyTime:J

    .line 1874
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/HmctPhoneWindowManager;->mScreenshotChordVolumeDownKeyConsumed:Z

    goto/16 :goto_10

    .line 1879
    :cond_34
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/HmctPhoneWindowManager;->mScreenshotChordVolumeDownKeyTriggered:Z

    goto/16 :goto_10

    .line 1882
    :cond_35
    const/16 v23, 0x18

    move/from16 v0, v23

    if-ne v15, v0, :cond_2e

    .line 1883
    if-eqz v7, :cond_3a

    .line 1885
    const-string/jumbo v23, "HmctWindowManager"

    const-string/jumbo v24, "FL KEYCODE_VOLUME_UP  down"

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1891
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/HmctPhoneWindowManager;->mScreenOnFully:Z

    move/from16 v23, v0

    if-nez v23, :cond_37

    sget-boolean v23, Lcom/android/server/policy/HmctPhoneWindowManager;->mFlightLightSupport:Z

    if-eqz v23, :cond_37

    sget-boolean v23, Lcom/android/server/policy/HmctPhoneWindowManager;->mOpenFlashLight:Z

    if-eqz v23, :cond_37

    .line 1892
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/HmctPhoneWindowManager;->isMusicActive()Z

    move-result v23

    if-nez v23, :cond_37

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/HmctPhoneWindowManager;->isPhoneIdle()Z

    move-result v23

    if-eqz v23, :cond_37

    .line 1893
    const-string/jumbo v23, "HmctWindowManager"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "FL KEYCODE_VOLUME_UP  start flashlight well prepared : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    sget-boolean v25, Lcom/android/server/policy/HmctPhoneWindowManager;->mFlashLightPrepared:Z

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 1894
    const-string/jumbo v25, " , accept current Key : "

    .line 1893
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 1894
    sget-boolean v25, Lcom/android/server/policy/HmctPhoneWindowManager;->mAcceptVolumeUpKey:Z

    .line 1893
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1895
    sget-boolean v23, Lcom/android/server/policy/HmctPhoneWindowManager;->mAcceptVolumeUpKey:Z

    if-eqz v23, :cond_39

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/HmctPhoneWindowManager;->getPointValue()I

    move-result v23

    const/16 v24, 0xff

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_39

    .line 1896
    sget-boolean v23, Lcom/android/server/policy/HmctPhoneWindowManager;->mFlashLightPrepared:Z

    if-eqz v23, :cond_38

    .line 1897
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/HmctPhoneWindowManager;->mVolumeUpWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v23

    if-nez v23, :cond_36

    .line 1898
    const-string/jumbo v23, "HmctWindowManager"

    const-string/jumbo v24, "FL KEYCODE_VOLUME_UP lock it!!! mVolumeDownWakeLock"

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1899
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/HmctPhoneWindowManager;->mVolumeUpWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1902
    :cond_36
    const/16 v23, 0x0

    sput-boolean v23, Lcom/android/server/policy/HmctPhoneWindowManager;->mFlashLightPrepared:Z

    .line 1903
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/HmctPhoneWindowManager;->handleSensor()V

    .line 1904
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/HmctPhoneWindowManager;->mHmctHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    const/16 v24, 0x18

    invoke-virtual/range {v23 .. v24}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v17

    .line 1905
    .restart local v17    # "msg":Landroid/os/Message;
    const/16 v23, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 1906
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/HmctPhoneWindowManager;->mHmctHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v24

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1922
    .end local v17    # "msg":Landroid/os/Message;
    :cond_37
    :goto_12
    if-eqz v12, :cond_2e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/HmctPhoneWindowManager;->mScreenshotChordVolumeUpKeyTriggered:Z

    move/from16 v23, v0

    if-nez v23, :cond_2e

    .line 1923
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v23

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0x400

    move/from16 v23, v0

    if-nez v23, :cond_2e

    .line 1924
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/HmctPhoneWindowManager;->mScreenshotChordVolumeUpKeyTriggered:Z

    .line 1931
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/policy/HmctPhoneWindowManager;->mVolumeUpKeyTime:J

    .line 1932
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/HmctPhoneWindowManager;->mVolumeUpKeyConsumedByScreenshotChord:Z

    .line 1933
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/HmctPhoneWindowManager;->mPreventAccidentTouch()V

    goto/16 :goto_10

    .line 1908
    :cond_38
    const/16 v23, 0x0

    sput-boolean v23, Lcom/android/server/policy/HmctPhoneWindowManager;->mAcceptVolumeUpKey:Z

    .line 1909
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/HmctPhoneWindowManager;->mHmctHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    const/16 v24, 0x18

    invoke-virtual/range {v23 .. v24}, Landroid/os/Handler;->removeMessages(I)V

    .line 1910
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/HmctPhoneWindowManager;->mHmctHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    const/16 v24, 0x15

    invoke-virtual/range {v23 .. v24}, Landroid/os/Handler;->removeMessages(I)V

    .line 1911
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/HmctPhoneWindowManager;->mCameraHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/HmctPhoneWindowManager;->mFlashLightRunnable:Ljava/lang/Runnable;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1912
    const-string/jumbo v23, "HmctWindowManager"

    const-string/jumbo v24, "FL KEYCODE_VOLUME_UP  prevent event deliver"

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1913
    and-int/lit8 v20, v20, -0x2

    goto :goto_12

    .line 1916
    :cond_39
    const-string/jumbo v23, "HmctWindowManager"

    const-string/jumbo v24, "FL KEYCODE_VOLUME_UP FlashLight on the way, ignore current keyEvent"

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    .line 1938
    :cond_3a
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/HmctPhoneWindowManager;->mScreenshotChordVolumeUpKeyTriggered:Z

    goto/16 :goto_10

    .line 1942
    :cond_3b
    const-string/jumbo v23, "UP"

    goto/16 :goto_11

    .line 1947
    :sswitch_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/HmctPhoneWindowManager;->mFactoryTest:I

    move/from16 v23, v0

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_3c

    .line 1948
    or-int/lit8 v20, v20, 0x1

    .line 1949
    const-string/jumbo v23, "HmctWindowManager"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "powerkey return result = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    .line 1955
    :cond_3c
    if-eqz v7, :cond_3d

    .line 1958
    new-instance v11, Landroid/content/Intent;

    const-string/jumbo v23, "com.hmct.intent.POWER_KEY_PRESSED"

    move-object/from16 v0, v23

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1960
    .local v11, "intent":Landroid/content/Intent;
    :try_start_1
    const-string/jumbo v23, "HmctWindowManager"

    const-string/jumbo v24, "sendbroadcast destory the alarm clock"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1961
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/HmctPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    sget-object v24, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v11, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1969
    .end local v11    # "intent":Landroid/content/Intent;
    :cond_3d
    :goto_13
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/HmctPhoneWindowManager;->getPointValue()I

    move-result v23

    if-lez v23, :cond_3e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/HmctPhoneWindowManager;->mScreenOnFully:Z

    move/from16 v23, v0

    if-eqz v23, :cond_3f

    .line 1983
    :cond_3e
    if-eqz v7, :cond_41

    .line 1989
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/HmctPhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v21

    .line 1990
    .restart local v21    # "telecomManager":Landroid/telecom/TelecomManager;
    const/4 v10, 0x0

    .line 1991
    .local v10, "hungUp":Z
    if-eqz v21, :cond_40

    .line 1992
    invoke-virtual/range {v21 .. v21}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v23

    if-eqz v23, :cond_40

    .line 1996
    invoke-virtual/range {v21 .. v21}, Landroid/telecom/TelecomManager;->isRingtonePlaying()Z

    move-result v23

    if-eqz v23, :cond_40

    .line 1997
    invoke-virtual/range {v21 .. v21}, Landroid/telecom/TelecomManager;->silenceRinger()V

    .line 1998
    const-string/jumbo v23, "HmctWindowManager"

    const-string/jumbo v24, "telecomManager isRinging break"

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1999
    and-int/lit8 v20, v20, -0x2

    .line 2000
    goto/16 :goto_e

    .line 1962
    .end local v10    # "hungUp":Z
    .end local v21    # "telecomManager":Landroid/telecom/TelecomManager;
    .restart local v11    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v8

    .line 1963
    .restart local v8    # "e":Ljava/lang/Exception;
    const-string/jumbo v23, "HmctWindowManager"

    const-string/jumbo v24, "sendbroadcast failed for destory the alarm clock"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    .line 1971
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v11    # "intent":Landroid/content/Intent;
    :cond_3f
    new-instance v11, Landroid/content/Intent;

    const-string/jumbo v23, "com.android.intent.action.CLOSE_FLASHLIGHT"

    move-object/from16 v0, v23

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1973
    .restart local v11    # "intent":Landroid/content/Intent;
    :try_start_2
    const-string/jumbo v23, "HmctWindowManager"

    const-string/jumbo v24, "sendbroadcast destory the apk"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1974
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/HmctPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    sget-object v24, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v11, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1978
    :goto_14
    and-int/lit8 v20, v20, -0x2

    .line 1979
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/server/policy/HmctPhoneWindowManager;->setPointValue(Z)V

    goto/16 :goto_e

    .line 1975
    :catch_2
    move-exception v8

    .line 1976
    .restart local v8    # "e":Ljava/lang/Exception;
    const-string/jumbo v23, "HmctWindowManager"

    const-string/jumbo v24, "sendbroadcast failed for destorying the apk"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    .line 2005
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v11    # "intent":Landroid/content/Intent;
    .restart local v10    # "hungUp":Z
    .restart local v21    # "telecomManager":Landroid/telecom/TelecomManager;
    :cond_40
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12}, Lcom/android/server/policy/HmctPhoneWindowManager;->hmctInterceptPowerKeyDown(Landroid/view/KeyEvent;Z)V

    .line 2009
    .end local v10    # "hungUp":Z
    .end local v21    # "telecomManager":Landroid/telecom/TelecomManager;
    :goto_15
    const-string/jumbo v23, "HmctWindowManager"

    const-string/jumbo v24, "Unhandle the power ke, use origin"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2010
    invoke-super/range {p0 .. p2}, Lcom/android/server/policy/PhoneWindowManager;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I

    move-result v23

    return v23

    .line 2007
    :cond_41
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12, v6}, Lcom/android/server/policy/HmctPhoneWindowManager;->hmctInterceptPowerKeyUp(Landroid/view/KeyEvent;ZZ)V

    goto :goto_15

    .line 2026
    :sswitch_5
    sget v23, Lcom/android/server/policy/HmctPhoneWindowManager;->powerType:I

    if-nez v23, :cond_22

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/HmctPhoneWindowManager;->isPhoneIdle()Z

    move-result v23

    if-eqz v23, :cond_22

    .line 2027
    and-int/lit8 v20, v20, -0x2

    .line 2028
    goto/16 :goto_e

    .line 2033
    :cond_42
    const-string/jumbo v23, "UP"

    goto/16 :goto_d

    .line 1775
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x18 -> :sswitch_3
        0x19 -> :sswitch_3
        0x1a -> :sswitch_4
        0x1b -> :sswitch_2
        0x4f -> :sswitch_5
        0x55 -> :sswitch_5
        0x56 -> :sswitch_5
        0x57 -> :sswitch_5
        0x58 -> :sswitch_5
        0x59 -> :sswitch_5
        0x5a -> :sswitch_5
        0x5b -> :sswitch_5
        0x7e -> :sswitch_5
        0x7f -> :sswitch_5
        0x82 -> :sswitch_5
        0xde -> :sswitch_5
        0x130 -> :sswitch_1
    .end sparse-switch
.end method

.method isMusicActive()Z
    .locals 3

    .prologue
    .line 3504
    iget-object v1, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 3505
    .local v0, "am":Landroid/media/AudioManager;
    if-nez v0, :cond_0

    .line 3506
    const-string/jumbo v1, "HmctWindowManager"

    const-string/jumbo v2, "isMusicActive: couldn\'t get AudioManager reference"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3507
    const/4 v1, 0x0

    return v1

    .line 3509
    :cond_0
    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActiveRemotely()Z

    move-result v1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method keyguardOn()Z
    .locals 1

    .prologue
    .line 1126
    invoke-direct {p0}, Lcom/android/server/policy/HmctPhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/policy/HmctPhoneWindowManager;->inKeyguardRestrictedKeyInputMode()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z
    .locals 9
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "effectId"    # I
    .param p3, "always"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 2265
    iget-object v1, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v1}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2266
    return v5

    .line 2268
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 2269
    const-string/jumbo v6, "haptic_feedback_enabled"

    const/4 v8, -0x2

    .line 2268
    invoke-static {v1, v6, v5, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_2

    move v0, v7

    .line 2270
    .local v0, "hapticsDisabled":Z
    :goto_0
    if-eqz v0, :cond_1

    if-eqz p3, :cond_3

    .line 2273
    :cond_1
    const/4 v4, 0x0

    .line 2274
    .local v4, "pattern":[J
    sparse-switch p2, :sswitch_data_0

    .line 2300
    return v5

    .end local v0    # "hapticsDisabled":Z
    .end local v4    # "pattern":[J
    :cond_2
    move v0, v5

    .line 2268
    goto :goto_0

    .line 2271
    .restart local v0    # "hapticsDisabled":Z
    :cond_3
    return v5

    .line 2276
    .restart local v4    # "pattern":[J
    :sswitch_0
    iget-object v4, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mLongPressVibePattern:[J

    .line 2304
    .local v4, "pattern":[J
    :goto_1
    if-eqz p1, :cond_4

    .line 2305
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getOwningUid()I

    move-result v2

    .line 2306
    .local v2, "owningUid":I
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v3

    .line 2311
    .local v3, "owningPackage":Ljava/lang/String;
    :goto_2
    array-length v1, v4

    if-ne v1, v7, :cond_5

    .line 2313
    iget-object v1, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    aget-wide v4, v4, v5

    .end local v4    # "pattern":[J
    sget-object v6, Lcom/android/server/policy/HmctPhoneWindowManager;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual/range {v1 .. v6}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;JLandroid/media/AudioAttributes;)V

    .line 2318
    :goto_3
    return v7

    .line 2279
    .end local v2    # "owningUid":I
    .end local v3    # "owningPackage":Ljava/lang/String;
    .local v4, "pattern":[J
    :sswitch_1
    iget-object v4, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mVirtualKeyVibePattern:[J

    .local v4, "pattern":[J
    goto :goto_1

    .line 2282
    .local v4, "pattern":[J
    :sswitch_2
    iget-object v4, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mKeyboardTapVibePattern:[J

    .local v4, "pattern":[J
    goto :goto_1

    .line 2285
    .local v4, "pattern":[J
    :sswitch_3
    iget-object v4, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mClockTickVibePattern:[J

    .local v4, "pattern":[J
    goto :goto_1

    .line 2288
    .local v4, "pattern":[J
    :sswitch_4
    iget-object v4, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mCalendarDateVibePattern:[J

    .local v4, "pattern":[J
    goto :goto_1

    .line 2291
    .local v4, "pattern":[J
    :sswitch_5
    iget-object v4, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mSafeModeDisabledVibePattern:[J

    .local v4, "pattern":[J
    goto :goto_1

    .line 2294
    .local v4, "pattern":[J
    :sswitch_6
    iget-object v4, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mSafeModeEnabledVibePattern:[J

    .local v4, "pattern":[J
    goto :goto_1

    .line 2297
    .local v4, "pattern":[J
    :sswitch_7
    iget-object v4, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mContextClickVibePattern:[J

    .local v4, "pattern":[J
    goto :goto_1

    .line 2308
    :cond_4
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    .line 2309
    .restart local v2    # "owningUid":I
    iget-object v1, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "owningPackage":Ljava/lang/String;
    goto :goto_2

    .line 2316
    :cond_5
    iget-object v1, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    sget-object v6, Lcom/android/server/policy/HmctPhoneWindowManager;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    const/4 v5, -0x1

    invoke-virtual/range {v1 .. v6}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;[JILandroid/media/AudioAttributes;)V

    goto :goto_3

    .line 2274
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_7
        0x2710 -> :sswitch_5
        0x2711 -> :sswitch_6
    .end sparse-switch
.end method

.method public screenTurnedOff()V
    .locals 2

    .prologue
    .line 2128
    invoke-super {p0}, Lcom/android/server/policy/PhoneWindowManager;->screenTurnedOff()V

    .line 2129
    const-string/jumbo v0, "HmctWindowManager"

    const-string/jumbo v1, "Screen turned off..."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2130
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/policy/HmctPhoneWindowManager;->mNeedMakeCallAfterUnlock:Z

    .line 2127
    return-void
.end method

.method public screenTurnedOn()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2189
    invoke-super {p0}, Lcom/android/server/policy/PhoneWindowManager;->screenTurnedOn()V

    .line 2190
    const-string/jumbo v0, "HmctWindowManager"

    const-string/jumbo v1, "screenTurnedOn..."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2192
    iget-boolean v0, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mIsBurstCapture:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mNeedUnbindServcie:Z

    if-eqz v0, :cond_0

    .line 2193
    const-string/jumbo v0, "HmctWindowManager"

    const-string/jumbo v1, "burst unbindService during Screen turning on..."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2194
    iput-boolean v2, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mNeedUnbindServcie:Z

    .line 2195
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mUnbindIQServiceRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2198
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mDismissKeyguardForced:Z

    if-eqz v0, :cond_2

    .line 2204
    iget v0, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mGestureKeycode:I

    if-eqz v0, :cond_1

    .line 2205
    invoke-virtual {p0}, Lcom/android/server/policy/HmctPhoneWindowManager;->dismissKeyguardLw()V

    .line 2206
    const-string/jumbo v0, "GESTURE"

    const-string/jumbo v1, "unlock keyguard end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2207
    iget v0, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mGestureKeycode:I

    invoke-direct {p0, v0}, Lcom/android/server/policy/HmctPhoneWindowManager;->isMakeCallDirectly(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2208
    const-string/jumbo v0, "GESTURE"

    const-string/jumbo v1, "make phone call"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2212
    :goto_0
    iput v2, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mGestureKeycode:I

    .line 2214
    :cond_1
    iput-boolean v2, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mDismissKeyguardForced:Z

    .line 2187
    :cond_2
    return-void

    .line 2210
    :cond_3
    iget v0, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mGestureKeycode:I

    invoke-direct {p0, v0}, Lcom/android/server/policy/HmctPhoneWindowManager;->handleGestureKey(I)V

    goto :goto_0
.end method

.method public setCurrentUserLw(I)V
    .locals 3
    .param p1, "newUserId"    # I

    .prologue
    .line 2323
    invoke-super {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->setCurrentUserLw(I)V

    .line 2324
    iput p1, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mCurrentUserId:I

    .line 2325
    const-string/jumbo v0, "HmctWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCurrentUserLw  mCurrentUserId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mCurrentUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2322
    return-void
.end method

.method public setPointValue(Z)V
    .locals 8
    .param p1, "on"    # Z

    .prologue
    .line 2821
    const/4 v1, 0x0

    .line 2822
    .local v1, "fwriter":Ljava/io/FileWriter;
    const-string/jumbo v3, "0"

    .line 2823
    .local v3, "val":Ljava/lang/String;
    if-eqz p1, :cond_2

    const-string/jumbo v3, "255"

    .line 2825
    :goto_0
    :try_start_0
    new-instance v2, Ljava/io/FileWriter;

    sget-object v4, Lcom/android/server/policy/HmctPhoneWindowManager;->FLASHLIGHT_BRIGHTNESS_POINT:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2826
    .end local v1    # "fwriter":Ljava/io/FileWriter;
    .local v2, "fwriter":Ljava/io/FileWriter;
    :try_start_1
    invoke-virtual {v2, v3}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2830
    if-eqz v2, :cond_0

    .line 2832
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_1
    move-object v1, v2

    .line 2819
    .end local v2    # "fwriter":Ljava/io/FileWriter;
    :cond_1
    :goto_2
    return-void

    .line 2823
    .restart local v1    # "fwriter":Ljava/io/FileWriter;
    :cond_2
    const-string/jumbo v3, "0"

    goto :goto_0

    .line 2833
    .end local v1    # "fwriter":Ljava/io/FileWriter;
    .restart local v2    # "fwriter":Ljava/io/FileWriter;
    :catch_0
    move-exception v0

    .line 2834
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "HmctWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setPointValue ex:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2827
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "fwriter":Ljava/io/FileWriter;
    .restart local v1    # "fwriter":Ljava/io/FileWriter;
    :catch_1
    move-exception v0

    .line 2828
    .end local v1    # "fwriter":Ljava/io/FileWriter;
    .restart local v0    # "e":Ljava/lang/Exception;
    :goto_3
    :try_start_3
    const-string/jumbo v4, "HmctWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "gesture ex:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2830
    if-eqz v1, :cond_1

    .line 2832
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    .line 2833
    :catch_2
    move-exception v0

    .line 2834
    const-string/jumbo v4, "HmctWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setPointValue ex:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2829
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 2830
    :goto_4
    if-eqz v1, :cond_3

    .line 2832
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 2829
    :cond_3
    :goto_5
    throw v4

    .line 2833
    :catch_3
    move-exception v0

    .line 2834
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v5, "HmctWindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setPointValue ex:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 2829
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "fwriter":Ljava/io/FileWriter;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2    # "fwriter":Ljava/io/FileWriter;
    .local v1, "fwriter":Ljava/io/FileWriter;
    goto :goto_4

    .line 2827
    .end local v1    # "fwriter":Ljava/io/FileWriter;
    .restart local v2    # "fwriter":Ljava/io/FileWriter;
    :catch_4
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    move-object v1, v2

    .end local v2    # "fwriter":Ljava/io/FileWriter;
    .restart local v1    # "fwriter":Ljava/io/FileWriter;
    goto :goto_3
.end method

.method public showRecentApps(Z)V
    .locals 4
    .param p1, "fromHome"    # Z

    .prologue
    const/16 v3, 0x9

    const/4 v1, 0x0

    .line 1575
    iget-object v0, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mHmctHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1576
    iget-object v2, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mHmctHandler:Landroid/os/Handler;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1574
    return-void

    :cond_0
    move v0, v1

    .line 1576
    goto :goto_0
.end method

.method public startedWakingUp()V
    .locals 2

    .prologue
    .line 2175
    invoke-super {p0}, Lcom/android/server/policy/PhoneWindowManager;->startedWakingUp()V

    .line 2176
    const-string/jumbo v0, "HmctWindowManager"

    const-string/jumbo v1, "Started waking up..."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2177
    iget-boolean v0, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mDismissKeyguardCommen:Z

    if-eqz v0, :cond_0

    .line 2178
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mDismissKeyguardCommen:Z

    .line 2179
    const-string/jumbo v0, "HmctWindowManager"

    const-string/jumbo v1, "dismiss keyGuard after waking up"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2180
    invoke-virtual {p0}, Lcom/android/server/policy/HmctPhoneWindowManager;->dismissKeyguardLw()V

    .line 2174
    :cond_0
    return-void
.end method

.method public systemReady()V
    .locals 2

    .prologue
    .line 2243
    const-string/jumbo v0, "HmctWindowManager"

    const-string/jumbo v1, "systemReady : 2"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2245
    invoke-super {p0}, Lcom/android/server/policy/PhoneWindowManager;->systemReady()V

    .line 2246
    iget-object v0, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mHmctHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/HmctPhoneWindowManager$16;

    invoke-direct {v1, p0}, Lcom/android/server/policy/HmctPhoneWindowManager$16;-><init>(Lcom/android/server/policy/HmctPhoneWindowManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2252
    iget-object v0, p0, Lcom/android/server/policy/HmctPhoneWindowManager;->mSystemGestures:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    invoke-virtual {v0}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->systemReady()V

    .line 2253
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/policy/HmctPhoneWindowManager;->startGestureService(I)V

    .line 2241
    return-void
.end method
