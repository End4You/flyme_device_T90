.class public Lcom/android/server/safe/MobileSafeService;
.super Lcom/android/server/SystemService;
.source "MobileSafeService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/safe/MobileSafeService$AutoRunHandler;,
        Lcom/android/server/safe/MobileSafeService$AutoRunMsgBody;,
        Lcom/android/server/safe/MobileSafeService$AutoRunRecord;,
        Lcom/android/server/safe/MobileSafeService$AutoRunRecordBody;,
        Lcom/android/server/safe/MobileSafeService$DialogHandler;,
        Lcom/android/server/safe/MobileSafeService$MobileSafeServiceWrapper;,
        Lcom/android/server/safe/MobileSafeService$PackageIntentReceiver;,
        Lcom/android/server/safe/MobileSafeService$PermissionDenyBody;,
        Lcom/android/server/safe/MobileSafeService$SafeAlertDialog;,
        Lcom/android/server/safe/MobileSafeService$SafeClientDeathRecipient;,
        Lcom/android/server/safe/MobileSafeService$SafetySettingsObserver;,
        Lcom/android/server/safe/MobileSafeService$UserRemovedReceiver;
    }
.end annotation


# static fields
.field private static final ASSOCIATE_RUN_RECORD_DIR:Ljava/lang/String; = "/data/system/associaterun/"

.field private static final COUNTDOWN_TIME:I = 0x14

.field private static final INQUIRE_TIMEOUT:I = 0x4e20

.field private static final MSG_DISMISS_DIALOG:I = 0x3e9

.field private static final MSG_SAVE_ASSOCIATE_INFO:I = 0x7d1

.field private static final MSG_SAVE_AUTORUN_INFO:I = 0x7d2

.field private static final MSG_SHOW_DIALOG:I = 0x3e8

.field private static final MSG_SHOW_NOT_ALLOWED_DIALOG:I = 0x3eb

.field private static final MSG_START_SERVICE_NOTIFY:I = 0x7d0

.field private static final MSG_UPDATE_BUTTON_TEXT:I = 0x3ea

.field private static final SERVICE_NAME:Ljava/lang/String; = "mobile_safe"

.field private static final TAG:Ljava/lang/String; = "MobileSafeService"


# instance fields
.field private final CTA_ENABLE:Z

.field private FEATURE_HMCT_VISION4_UI_FLAG:Z

.field private mAllow:I

.field final mAssoRunWhiteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mAutoRunHandler:Lcom/android/server/safe/MobileSafeService$AutoRunHandler;

.field private final mAutoRunLock:Ljava/lang/Object;

.field final mAutoRunMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mAutoRunMsgCount:I

.field final mAutoRunRecordMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/safe/MobileSafeService$AutoRunRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mAutoRunThread:Landroid/os/HandlerThread;

.field private final mBlackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mCheckLock:Ljava/lang/Object;

.field private mCheckResultCached:I

.field final mClientsForUsers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/safe/IMobileSafeClient;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCount:I

.field private mDialog:Landroid/app/AlertDialog;

.field private mEnableMonitor:Z

.field private final mHandler:Lcom/android/server/safe/MobileSafeService$DialogHandler;

.field private mHmctDialog:Lcom/hmct/hmcttheme/HmctAlertDialog;

.field private mIndexArray:[I

.field private final mLock:Ljava/lang/Object;

.field private mNegativeButtonText:Ljava/lang/String;

.field private mNegativeButtonText1:Ljava/lang/String;

.field private mPermIDCached:I

.field final mPkgInfoExMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/safe/PackageInfoEx;",
            ">;"
        }
    .end annotation
.end field

.field private mPm:Landroid/content/pm/PackageManager;

.field private mPmInterface:Landroid/content/pm/IPackageManager;

.field private mSafetyMode:Z

.field private mThread:Landroid/os/HandlerThread;

.field private mTimeCached:J

.field private mUidCached:I

.field private mUpdateWhiteList:Z

.field private mUserID:I

.field mUserList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mUserRemovedReceiver:Lcom/android/server/safe/MobileSafeService$UserRemovedReceiver;

.field private final mWhiteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWhiteListVersion:I

.field private final mWriteLock:Ljava/lang/Object;


# direct methods
.method static synthetic -get0(Lcom/android/server/safe/MobileSafeService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/safe/MobileSafeService;->FEATURE_HMCT_VISION4_UI_FLAG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/safe/MobileSafeService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/safe/MobileSafeService;->mAutoRunMsgCount:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/safe/MobileSafeService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/safe/MobileSafeService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/safe/MobileSafeService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/safe/MobileSafeService;->mCount:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/server/safe/MobileSafeService;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/server/safe/MobileSafeService;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/safe/MobileSafeService;)Lcom/android/server/safe/MobileSafeService$DialogHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/safe/MobileSafeService;->mHandler:Lcom/android/server/safe/MobileSafeService$DialogHandler;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/safe/MobileSafeService;)Lcom/hmct/hmcttheme/HmctAlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/server/safe/MobileSafeService;->mHmctDialog:Lcom/hmct/hmcttheme/HmctAlertDialog;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/safe/MobileSafeService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/safe/MobileSafeService;->mUserID:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/server/safe/MobileSafeService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/safe/MobileSafeService;->mAutoRunMsgCount:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/safe/MobileSafeService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/safe/MobileSafeService;->mCount:I

    return p1
.end method

.method static synthetic -set2(Lcom/android/server/safe/MobileSafeService;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/server/safe/MobileSafeService;->mDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/server/safe/MobileSafeService;Lcom/hmct/hmcttheme/HmctAlertDialog;)Lcom/hmct/hmcttheme/HmctAlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/server/safe/MobileSafeService;->mHmctDialog:Lcom/hmct/hmcttheme/HmctAlertDialog;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/safe/MobileSafeService;I)Landroid/safe/IMobileSafeClient;
    .locals 1
    .param p1, "userID"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/safe/MobileSafeService;->getSafeClient(I)Landroid/safe/IMobileSafeClient;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/safe/MobileSafeService;I)Landroid/safe/PackageInfoEx;
    .locals 1
    .param p1, "uid"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/safe/MobileSafeService;->getPackageInfoExByUidL(I)Landroid/safe/PackageInfoEx;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap10(Lcom/android/server/safe/MobileSafeService;Ljava/util/List;)V
    .locals 0
    .param p1, "pkgNames"    # Ljava/util/List;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/safe/MobileSafeService;->addWhiteListL(Ljava/util/List;)V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/server/safe/MobileSafeService;Z)V
    .locals 0
    .param p1, "allow"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/safe/MobileSafeService;->confirmPermission(Z)V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/server/safe/MobileSafeService;I)V
    .locals 0
    .param p1, "removedUserId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/safe/MobileSafeService;->deleteXmlFileForRemovedUser(I)V

    return-void
.end method

.method static synthetic -wrap13(Lcom/android/server/safe/MobileSafeService;ILjava/lang/String;)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/safe/MobileSafeService;->deleteXmlL(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap14(Lcom/android/server/safe/MobileSafeService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/safe/MobileSafeService;->dismissConfirmDialog()V

    return-void
.end method

.method static synthetic -wrap15(Lcom/android/server/safe/MobileSafeService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/safe/MobileSafeService;->dismissConfirmHmctDialog()V

    return-void
.end method

.method static synthetic -wrap16(Lcom/android/server/safe/MobileSafeService;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/safe/MobileSafeService;->dumpInternal(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap17(Lcom/android/server/safe/MobileSafeService;Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/safe/MobileSafeService;->enableL(Z)V

    return-void
.end method

.method static synthetic -wrap18(Lcom/android/server/safe/MobileSafeService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/safe/MobileSafeService;->enterSafteyModeL()V

    return-void
.end method

.method static synthetic -wrap19(Lcom/android/server/safe/MobileSafeService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/safe/MobileSafeService;->exitSafteyModeL()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/safe/MobileSafeService;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "callingUid"    # I
    .param p2, "callingPkgName"    # Ljava/lang/String;
    .param p3, "pkgName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/safe/MobileSafeService;->checkStartServicePermL(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap20(Lcom/android/server/safe/MobileSafeService;Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/safe/MobileSafeService;->handlePackageIntent(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic -wrap21(Lcom/android/server/safe/MobileSafeService;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "allowAssociateRun"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/safe/MobileSafeService;->modifyAssociateRunAppStateL(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic -wrap22(Lcom/android/server/safe/MobileSafeService;III)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "permId"    # I
    .param p3, "action"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/safe/MobileSafeService;->modifyPermissionAction(III)V

    return-void
.end method

.method static synthetic -wrap23(Lcom/android/server/safe/MobileSafeService;IJZ)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "action"    # J
    .param p4, "trusted"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/safe/MobileSafeService;->modifyPermissionL(IJZ)V

    return-void
.end method

.method static synthetic -wrap24(Lcom/android/server/safe/MobileSafeService;Landroid/safe/IMobileSafeClient;I)V
    .locals 0
    .param p1, "client"    # Landroid/safe/IMobileSafeClient;
    .param p2, "currentUserId"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/safe/MobileSafeService;->registerClientL(Landroid/safe/IMobileSafeClient;I)V

    return-void
.end method

.method static synthetic -wrap25(Lcom/android/server/safe/MobileSafeService;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "state"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/safe/MobileSafeService;->saveAssociateRunPkgfile(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic -wrap26(Lcom/android/server/safe/MobileSafeService;IILjava/lang/String;)V
    .locals 0
    .param p1, "permID"    # I
    .param p2, "uid"    # I
    .param p3, "msg"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/safe/MobileSafeService;->showConfirmDialog(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap27(Lcom/android/server/safe/MobileSafeService;IILjava/lang/String;)V
    .locals 0
    .param p1, "permID"    # I
    .param p2, "uid"    # I
    .param p3, "msg"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/safe/MobileSafeService;->showConfirmHmctDialog(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap28(Lcom/android/server/safe/MobileSafeService;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "allowAutoRun"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/safe/MobileSafeService;->storeAutoRunRecordL(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/safe/MobileSafeService;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .param p1, "phoneNum"    # Ljava/lang/String;
    .param p2, "smsText"    # Ljava/lang/String;
    .param p3, "slotId"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/safe/MobileSafeService;->interceptIncomingSmsL(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/android/server/safe/MobileSafeService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/safe/MobileSafeService;->isInSafetyModeL()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap5(Lcom/android/server/safe/MobileSafeService;IILjava/lang/String;Landroid/os/Bundle;)I
    .locals 1
    .param p1, "permID"    # I
    .param p2, "uid"    # I
    .param p3, "callingPkg"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/safe/MobileSafeService;->checkPermissionL(IILjava/lang/String;Landroid/os/Bundle;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap6(Lcom/android/server/safe/MobileSafeService;I)Ljava/lang/String;
    .locals 1
    .param p1, "count"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/safe/MobileSafeService;->getNegativeButtonText(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap7(Lcom/android/server/safe/MobileSafeService;)Ljava/util/List;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/safe/MobileSafeService;->getAssociatePkgAndStateL()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap8(Lcom/android/server/safe/MobileSafeService;)Ljava/util/List;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/safe/MobileSafeService;->getWhiteListL()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap9(Lcom/android/server/safe/MobileSafeService;Landroid/safe/PackageInfoEx;)V
    .locals 0
    .param p1, "pkgInfoEx"    # Landroid/safe/PackageInfoEx;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/safe/MobileSafeService;->addPermissionL(Landroid/safe/PackageInfoEx;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    .line 335
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 113
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/safe/MobileSafeService;->mPmInterface:Landroid/content/pm/IPackageManager;

    .line 116
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/safe/MobileSafeService;->mPkgInfoExMap:Ljava/util/HashMap;

    .line 119
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/safe/MobileSafeService;->mClientsForUsers:Ljava/util/HashMap;

    .line 125
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/safe/MobileSafeService;->mLock:Ljava/lang/Object;

    .line 126
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/safe/MobileSafeService;->mCheckLock:Ljava/lang/Object;

    .line 127
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/safe/MobileSafeService;->mWriteLock:Ljava/lang/Object;

    .line 128
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/safe/MobileSafeService;->mAutoRunLock:Ljava/lang/Object;

    .line 137
    iput v4, p0, Lcom/android/server/safe/MobileSafeService;->mAutoRunMsgCount:I

    .line 142
    iput v3, p0, Lcom/android/server/safe/MobileSafeService;->mAllow:I

    .line 143
    const/16 v2, 0x14

    iput v2, p0, Lcom/android/server/safe/MobileSafeService;->mCount:I

    .line 147
    iput v3, p0, Lcom/android/server/safe/MobileSafeService;->mUidCached:I

    .line 148
    iput v3, p0, Lcom/android/server/safe/MobileSafeService;->mPermIDCached:I

    .line 150
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/safe/MobileSafeService;->mTimeCached:J

    .line 151
    iput-boolean v6, p0, Lcom/android/server/safe/MobileSafeService;->mEnableMonitor:Z

    .line 154
    iput v4, p0, Lcom/android/server/safe/MobileSafeService;->mUserID:I

    .line 157
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/safe/MobileSafeService;->mAutoRunRecordMap:Ljava/util/HashMap;

    .line 160
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/safe/MobileSafeService;->mAutoRunMap:Ljava/util/HashMap;

    .line 162
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/safe/MobileSafeService;->mAssoRunWhiteList:Ljava/util/ArrayList;

    .line 164
    iput-boolean v4, p0, Lcom/android/server/safe/MobileSafeService;->mUpdateWhiteList:Z

    .line 165
    const-string/jumbo v2, "persist.sys.whitelist.version"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/server/safe/MobileSafeService;->mWhiteListVersion:I

    .line 168
    const/4 v2, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/server/safe/MobileSafeService;->mIndexArray:[I

    .line 171
    const-string/jumbo v2, "ro.hmct.cta.test"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/safe/MobileSafeService;->CTA_ENABLE:Z

    .line 173
    iput-boolean v4, p0, Lcom/android/server/safe/MobileSafeService;->FEATURE_HMCT_VISION4_UI_FLAG:Z

    .line 1635
    iput-boolean v4, p0, Lcom/android/server/safe/MobileSafeService;->mSafetyMode:Z

    .line 1636
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/safe/MobileSafeService;->mWhiteList:Ljava/util/ArrayList;

    .line 1637
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/safe/MobileSafeService;->mBlackList:Ljava/util/ArrayList;

    .line 336
    iput-object p1, p0, Lcom/android/server/safe/MobileSafeService;->mContext:Landroid/content/Context;

    .line 338
    iget-boolean v2, p0, Lcom/android/server/safe/MobileSafeService;->FEATURE_HMCT_VISION4_UI_FLAG:Z

    if-eqz v2, :cond_0

    .line 339
    invoke-static {p1}, Lcom/hmct/hmcttheme/VisionUtils;->initVisionTheme(Landroid/content/Context;)V

    .line 343
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 344
    .local v0, "startTime":J
    invoke-direct {p0}, Lcom/android/server/safe/MobileSafeService;->readPkgInfoExFromXml()V

    .line 345
    invoke-direct {p0}, Lcom/android/server/safe/MobileSafeService;->parseAutorunWhiteListXml()V

    .line 346
    const-string/jumbo v2, "MobileSafeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "parse xml consume "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    new-instance v2, Landroid/os/HandlerThread;

    const-string/jumbo v3, "mobile_safe"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/safe/MobileSafeService;->mThread:Landroid/os/HandlerThread;

    .line 350
    iget-object v2, p0, Lcom/android/server/safe/MobileSafeService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 351
    new-instance v2, Lcom/android/server/safe/MobileSafeService$DialogHandler;

    iget-object v3, p0, Lcom/android/server/safe/MobileSafeService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/server/safe/MobileSafeService$DialogHandler;-><init>(Lcom/android/server/safe/MobileSafeService;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/safe/MobileSafeService;->mHandler:Lcom/android/server/safe/MobileSafeService$DialogHandler;

    .line 354
    new-instance v2, Landroid/os/HandlerThread;

    const-string/jumbo v3, "mobile_safe.autorun"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/safe/MobileSafeService;->mAutoRunThread:Landroid/os/HandlerThread;

    .line 355
    iget-object v2, p0, Lcom/android/server/safe/MobileSafeService;->mAutoRunThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 356
    new-instance v2, Lcom/android/server/safe/MobileSafeService$AutoRunHandler;

    iget-object v3, p0, Lcom/android/server/safe/MobileSafeService;->mAutoRunThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/server/safe/MobileSafeService$AutoRunHandler;-><init>(Lcom/android/server/safe/MobileSafeService;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/safe/MobileSafeService;->mAutoRunHandler:Lcom/android/server/safe/MobileSafeService$AutoRunHandler;

    .line 358
    const-string/jumbo v2, "persist.sys.hmct.safe.monitor"

    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/safe/MobileSafeService;->mEnableMonitor:Z

    .line 360
    iget-object v2, p0, Lcom/android/server/safe/MobileSafeService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "user"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    invoke-virtual {v2}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/safe/MobileSafeService;->mUserList:Ljava/util/List;

    .line 334
    return-void
.end method

.method private addPermissionL(Landroid/safe/PackageInfoEx;)V
    .locals 3
    .param p1, "pkgInfoEx"    # Landroid/safe/PackageInfoEx;

    .prologue
    .line 445
    iget-object v0, p0, Lcom/android/server/safe/MobileSafeService;->mPkgInfoExMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    iget v2, p1, Landroid/safe/PackageInfoEx;->uid:I

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    iget-object v0, p0, Lcom/android/server/safe/MobileSafeService;->mWriteLock:Ljava/lang/Object;

    monitor-enter v0

    .line 447
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/safe/MobileSafeService;->save2file(Landroid/safe/PackageInfoEx;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 444
    return-void

    .line 446
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private addWhiteListL(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1734
    .local p1, "pkgNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/safe/MobileSafeService;->mWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1735
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 1736
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/data/system/s_white_list.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1737
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1738
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1740
    :cond_1
    return-void

    .line 1742
    .end local v0    # "file":Ljava/io/File;
    :cond_2
    iget-object v1, p0, Lcom/android/server/safe/MobileSafeService;->mWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1743
    iget-object v1, p0, Lcom/android/server/safe/MobileSafeService;->mWhiteList:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/android/server/safe/MobileSafeService;->saveWhiteList2file(Ljava/util/ArrayList;)V

    .line 1733
    return-void
.end method

.method private checkPermissionL(IILjava/lang/String;Landroid/os/Bundle;)I
    .locals 2
    .param p1, "permID"    # I
    .param p2, "uid"    # I
    .param p3, "callingPkg"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 411
    iget-object v0, p0, Lcom/android/server/safe/MobileSafeService;->mCheckLock:Ljava/lang/Object;

    monitor-enter v0

    .line 412
    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/safe/MobileSafeService;->checkUidPermissionInternal(IILjava/lang/String;Landroid/os/Bundle;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v0

    return v1

    .line 411
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private checkStartServicePermL(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "callingUid"    # I
    .param p2, "callingPkgName"    # Ljava/lang/String;
    .param p3, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 534
    sget-boolean v3, Landroid/safe/SafeFeature;->CTS_ENABLE:Z

    if-eqz v3, :cond_0

    .line 535
    return v5

    .line 538
    :cond_0
    if-eqz p2, :cond_1

    if-nez p3, :cond_2

    .line 539
    :cond_1
    const-string/jumbo v3, "MobileSafeService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "checkStartServicePerm callingPkgName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " pkgName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    return v6

    .line 544
    :cond_2
    const-string/jumbo v3, ".gts."

    invoke-virtual {p3, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string/jumbo v3, ".gts"

    invoke-virtual {p3, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 545
    :cond_3
    return v5

    .line 550
    :cond_4
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-interface {v3, p3, v4}, Landroid/content/pm/IPackageManager;->isPackageAlive(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_5

    .line 551
    return v5

    .line 553
    :catch_0
    move-exception v0

    .line 557
    :cond_5
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string/jumbo v3, "android"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string/jumbo v3, "com.android.settings"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 558
    :cond_6
    return v5

    .line 562
    :cond_7
    invoke-direct {p0, p1, p3}, Lcom/android/server/safe/MobileSafeService;->isSystemApp(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 563
    return v5

    .line 566
    :cond_8
    iget-object v4, p0, Lcom/android/server/safe/MobileSafeService;->mAutoRunLock:Ljava/lang/Object;

    monitor-enter v4

    .line 567
    :try_start_1
    iget-object v3, p0, Lcom/android/server/safe/MobileSafeService;->mAutoRunMap:Ljava/util/HashMap;

    invoke-virtual {v3, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_9

    .line 568
    iget-object v3, p0, Lcom/android/server/safe/MobileSafeService;->mAutoRunMap:Ljava/util/HashMap;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, p3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    iget-object v3, p0, Lcom/android/server/safe/MobileSafeService;->mAutoRunHandler:Lcom/android/server/safe/MobileSafeService$AutoRunHandler;

    iget-object v5, p0, Lcom/android/server/safe/MobileSafeService;->mAutoRunHandler:Lcom/android/server/safe/MobileSafeService$AutoRunHandler;

    const/16 v6, 0x7d1

    invoke-virtual {v5, v6, p3}, Lcom/android/server/safe/MobileSafeService$AutoRunHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/server/safe/MobileSafeService$AutoRunHandler;->sendMessage(Landroid/os/Message;)Z

    .line 571
    :cond_9
    iget-object v3, p0, Lcom/android/server/safe/MobileSafeService;->mAutoRunMap:Ljava/util/HashMap;

    invoke-virtual {v3, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 573
    .local v1, "grant":Z
    iget v3, p0, Lcom/android/server/safe/MobileSafeService;->mAutoRunMsgCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/safe/MobileSafeService;->mAutoRunMsgCount:I

    .line 574
    new-instance v2, Lcom/android/server/safe/MobileSafeService$AutoRunMsgBody;

    invoke-direct {v2}, Lcom/android/server/safe/MobileSafeService$AutoRunMsgBody;-><init>()V

    .line 575
    .local v2, "msgbody":Lcom/android/server/safe/MobileSafeService$AutoRunMsgBody;
    iput p1, v2, Lcom/android/server/safe/MobileSafeService$AutoRunMsgBody;->callingUid:I

    .line 576
    iput-object p2, v2, Lcom/android/server/safe/MobileSafeService$AutoRunMsgBody;->callingPkgName:Ljava/lang/String;

    .line 577
    iput-object p3, v2, Lcom/android/server/safe/MobileSafeService$AutoRunMsgBody;->calledPkgName:Ljava/lang/String;

    .line 578
    iput-boolean v1, v2, Lcom/android/server/safe/MobileSafeService$AutoRunMsgBody;->allow:Z

    .line 579
    iget-object v3, p0, Lcom/android/server/safe/MobileSafeService;->mAutoRunHandler:Lcom/android/server/safe/MobileSafeService$AutoRunHandler;

    iget-object v5, p0, Lcom/android/server/safe/MobileSafeService;->mAutoRunHandler:Lcom/android/server/safe/MobileSafeService$AutoRunHandler;

    const/16 v6, 0x7d0

    invoke-virtual {v5, v6, v2}, Lcom/android/server/safe/MobileSafeService$AutoRunHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/server/safe/MobileSafeService$AutoRunHandler;->sendMessage(Landroid/os/Message;)Z

    .line 580
    const-string/jumbo v3, "MobileSafeService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "checkStartServicePerm "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    .line 581
    return v1

    .line 566
    .end local v1    # "grant":Z
    .end local v2    # "msgbody":Lcom/android/server/safe/MobileSafeService$AutoRunMsgBody;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private checkUidPermissionInternal(IILjava/lang/String;Landroid/os/Bundle;)I
    .locals 18
    .param p1, "permID"    # I
    .param p2, "uid"    # I
    .param p3, "callingPkg"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 666
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/server/safe/MobileSafeService;->mEnableMonitor:Z

    if-nez v12, :cond_0

    .line 667
    const/4 v12, 0x0

    return v12

    .line 669
    :cond_0
    sget-boolean v12, Landroid/safe/SafeFeature;->CTS_ENABLE:Z

    if-eqz v12, :cond_1

    .line 670
    const/4 v12, 0x0

    return v12

    .line 672
    :cond_1
    const/4 v11, 0x0

    .line 673
    .local v11, "pkgInfoEx":Landroid/safe/PackageInfoEx;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/safe/MobileSafeService;->mPkgInfoExMap:Ljava/util/HashMap;

    new-instance v13, Ljava/lang/Integer;

    move/from16 v0, p2

    invoke-direct {v13, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "pkgInfoEx":Landroid/safe/PackageInfoEx;
    check-cast v11, Landroid/safe/PackageInfoEx;

    .line 675
    .local v11, "pkgInfoEx":Landroid/safe/PackageInfoEx;
    const/4 v7, 0x0

    .line 676
    .local v7, "isRuntimePerm":Z
    const/16 v12, 0x8

    move/from16 v0, p1

    if-eq v0, v12, :cond_2

    const/16 v12, 0x14

    move/from16 v0, p1

    if-ne v0, v12, :cond_6

    .line 677
    :cond_2
    :goto_0
    const/4 v7, 0x1

    .line 680
    :cond_3
    if-eqz v7, :cond_4

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/server/safe/MobileSafeService;->isSystemApp(ILjava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 700
    :cond_4
    :goto_1
    if-eqz v11, :cond_5

    iget-boolean v12, v11, Landroid/safe/PackageInfoEx;->trusted:Z

    if-nez v12, :cond_5

    iget v12, v11, Landroid/safe/PackageInfoEx;->shield:I

    const/4 v13, 0x1

    shl-int v13, v13, p1

    and-int/2addr v12, v13

    if-nez v12, :cond_a

    .line 701
    :cond_5
    const/4 v12, 0x0

    return v12

    .line 676
    :cond_6
    const/16 v12, 0x12

    move/from16 v0, p1

    if-ne v0, v12, :cond_3

    goto :goto_0

    .line 681
    :cond_7
    if-nez v11, :cond_8

    .line 682
    new-instance v11, Landroid/safe/PackageInfoEx;

    .end local v11    # "pkgInfoEx":Landroid/safe/PackageInfoEx;
    move-object/from16 v0, p3

    invoke-direct {v11, v0}, Landroid/safe/PackageInfoEx;-><init>(Ljava/lang/String;)V

    .line 683
    .restart local v11    # "pkgInfoEx":Landroid/safe/PackageInfoEx;
    move/from16 v0, p2

    iput v0, v11, Landroid/safe/PackageInfoEx;->uid:I

    .line 684
    const/4 v12, 0x0

    iput-boolean v12, v11, Landroid/safe/PackageInfoEx;->prebuild:Z

    .line 685
    const/4 v12, 0x0

    iput-boolean v12, v11, Landroid/safe/PackageInfoEx;->trusted:Z

    .line 686
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/safe/MobileSafeService;->mPkgInfoExMap:Ljava/util/HashMap;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 689
    :cond_8
    iget v12, v11, Landroid/safe/PackageInfoEx;->shield:I

    const/4 v13, 0x1

    shl-int v13, v13, p1

    and-int/2addr v12, v13

    if-nez v12, :cond_4

    .line 690
    iget v12, v11, Landroid/safe/PackageInfoEx;->shield:I

    const/4 v13, 0x1

    shl-int v13, v13, p1

    or-int/2addr v12, v13

    iput v12, v11, Landroid/safe/PackageInfoEx;->shield:I

    .line 691
    iget-boolean v12, v11, Landroid/safe/PackageInfoEx;->prebuild:Z

    if-nez v12, :cond_9

    .line 692
    iget-wide v12, v11, Landroid/safe/PackageInfoEx;->action:J

    mul-int/lit8 v14, p1, 0x2

    const-wide/16 v16, 0x2

    shl-long v14, v16, v14

    or-long/2addr v12, v14

    iput-wide v12, v11, Landroid/safe/PackageInfoEx;->action:J

    .line 694
    :cond_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/safe/MobileSafeService;->mWriteLock:Ljava/lang/Object;

    monitor-enter v12

    .line 695
    :try_start_0
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/server/safe/MobileSafeService;->save2file(Landroid/safe/PackageInfoEx;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v12

    goto :goto_1

    .line 694
    :catchall_0
    move-exception v13

    monitor-exit v12

    throw v13

    .line 703
    :cond_a
    iget-wide v12, v11, Landroid/safe/PackageInfoEx;->action:J

    mul-int/lit8 v14, p1, 0x2

    shr-long/2addr v12, v14

    const-wide/16 v14, 0x3

    and-long/2addr v12, v14

    long-to-int v4, v12

    .line 704
    .local v4, "action":I
    if-nez v4, :cond_b

    .line 705
    const/4 v12, 0x0

    return v12

    .line 707
    :cond_b
    const/4 v12, 0x1

    if-ne v4, v12, :cond_c

    .line 710
    new-instance v10, Lcom/android/server/safe/MobileSafeService$PermissionDenyBody;

    invoke-direct {v10}, Lcom/android/server/safe/MobileSafeService$PermissionDenyBody;-><init>()V

    .line 711
    .local v10, "permissionDenyBody":Lcom/android/server/safe/MobileSafeService$PermissionDenyBody;
    move/from16 v0, p2

    iput v0, v10, Lcom/android/server/safe/MobileSafeService$PermissionDenyBody;->uid:I

    .line 712
    move/from16 v0, p1

    iput v0, v10, Lcom/android/server/safe/MobileSafeService$PermissionDenyBody;->permID:I

    .line 713
    iget-object v12, v11, Landroid/safe/PackageInfoEx;->pkgName:Ljava/lang/String;

    iput-object v12, v10, Lcom/android/server/safe/MobileSafeService$PermissionDenyBody;->pkgName:Ljava/lang/String;

    .line 714
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/safe/MobileSafeService;->mHandler:Lcom/android/server/safe/MobileSafeService$DialogHandler;

    const/16 v13, 0x3eb

    invoke-virtual {v12, v13, v10}, Lcom/android/server/safe/MobileSafeService$DialogHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 715
    .local v9, "msg0":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/safe/MobileSafeService;->mHandler:Lcom/android/server/safe/MobileSafeService$DialogHandler;

    invoke-virtual {v12, v9}, Lcom/android/server/safe/MobileSafeService$DialogHandler;->sendMessage(Landroid/os/Message;)Z

    .line 718
    const/4 v12, -0x1

    return v12

    .line 722
    .end local v9    # "msg0":Landroid/os/Message;
    .end local v10    # "permissionDenyBody":Lcom/android/server/safe/MobileSafeService$PermissionDenyBody;
    :cond_c
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/safe/MobileSafeService;->mUidCached:I

    move/from16 v0, p2

    if-ne v12, v0, :cond_e

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/safe/MobileSafeService;->mPermIDCached:I

    move/from16 v0, p1

    if-ne v12, v0, :cond_e

    .line 723
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/server/safe/MobileSafeService;->mTimeCached:J

    sub-long/2addr v12, v14

    const-wide/16 v14, 0x3e8

    cmp-long v12, v12, v14

    if-gez v12, :cond_e

    .line 724
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/android/server/safe/MobileSafeService;->mTimeCached:J

    .line 726
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/safe/MobileSafeService;->mCheckResultCached:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_d

    .line 727
    const/4 v12, 0x0

    return v12

    .line 729
    :cond_d
    const/4 v12, -0x1

    return v12

    .line 734
    :cond_e
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/safe/MobileSafeService;->mUserID:I

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/server/safe/MobileSafeService;->getSafeClient(I)Landroid/safe/IMobileSafeClient;

    move-result-object v12

    if-nez v12, :cond_f

    .line 735
    const-string/jumbo v12, "MobileSafeService"

    const-string/jumbo v13, "safeClient == null"

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    const/4 v12, 0x0

    return v12

    .line 739
    :cond_f
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/safe/MobileSafeService;->mUidCached:I

    .line 740
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/safe/MobileSafeService;->mPermIDCached:I

    .line 743
    const/4 v12, -0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/server/safe/MobileSafeService;->mAllow:I

    .line 744
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/safe/MobileSafeService;->mHandler:Lcom/android/server/safe/MobileSafeService$DialogHandler;

    .line 745
    iget-object v13, v11, Landroid/safe/PackageInfoEx;->pkgName:Ljava/lang/String;

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v13, v1, v2, v3}, Lcom/android/server/safe/MobileSafeService;->getDialogMsgForClient(Ljava/lang/String;IILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v13

    .line 744
    const/16 v14, 0x3e8

    move/from16 v0, p2

    move/from16 v1, p1

    invoke-virtual {v12, v14, v0, v1, v13}, Lcom/android/server/safe/MobileSafeService$DialogHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .line 746
    .local v8, "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/safe/MobileSafeService;->mHandler:Lcom/android/server/safe/MobileSafeService$DialogHandler;

    invoke-virtual {v12, v8}, Lcom/android/server/safe/MobileSafeService$DialogHandler;->sendMessage(Landroid/os/Message;)Z

    .line 748
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/safe/MobileSafeService;->mLock:Ljava/lang/Object;

    monitor-enter v13

    .line 750
    :try_start_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/safe/MobileSafeService;->mLock:Ljava/lang/Object;

    const-wide/16 v14, 0x4e20

    invoke-virtual {v12, v14, v15}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_2
    monitor-exit v13

    .line 755
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/safe/MobileSafeService;->mAllow:I

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/server/safe/MobileSafeService;->mCheckResultCached:I

    .line 756
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/android/server/safe/MobileSafeService;->mTimeCached:J

    .line 758
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/safe/MobileSafeService;->mAllow:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_10

    .line 759
    const/4 v12, 0x0

    return v12

    .line 748
    :catchall_1
    move-exception v12

    monitor-exit v13

    throw v12

    .line 763
    :cond_10
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/safe/MobileSafeService;->mAllow:I

    const/4 v13, -0x1

    if-ne v12, v13, :cond_11

    .line 764
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/safe/MobileSafeService;->mHandler:Lcom/android/server/safe/MobileSafeService$DialogHandler;

    const/16 v13, 0x3e9

    invoke-virtual {v12, v13}, Lcom/android/server/safe/MobileSafeService$DialogHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 765
    .local v5, "dismissMsg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/safe/MobileSafeService;->mHandler:Lcom/android/server/safe/MobileSafeService$DialogHandler;

    invoke-virtual {v12, v5}, Lcom/android/server/safe/MobileSafeService$DialogHandler;->sendMessage(Landroid/os/Message;)Z

    .line 767
    .end local v5    # "dismissMsg":Landroid/os/Message;
    :cond_11
    const/4 v12, -0x1

    return v12

    .line 751
    :catch_0
    move-exception v6

    .local v6, "ex":Ljava/lang/InterruptedException;
    goto :goto_2
.end method

.method private confirmPermission(Z)V
    .locals 2
    .param p1, "allow"    # Z

    .prologue
    .line 794
    iget-object v1, p0, Lcom/android/server/safe/MobileSafeService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 795
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    :try_start_0
    iput v0, p0, Lcom/android/server/safe/MobileSafeService;->mAllow:I

    .line 796
    iget-object v0, p0, Lcom/android/server/safe/MobileSafeService;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 793
    return-void

    .line 795
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 794
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private deleteXmlFileForRemovedUser(I)V
    .locals 9
    .param p1, "removedUserId"    # I

    .prologue
    .line 1188
    const-string/jumbo v6, "MobileSafeService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "userId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " is removed, delete xml file."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1189
    iget-object v6, p0, Lcom/android/server/safe/MobileSafeService;->mClientsForUsers:Ljava/util/HashMap;

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1191
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1192
    .local v3, "delList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v6, p0, Lcom/android/server/safe/MobileSafeService;->mPkgInfoExMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "be$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1193
    .local v0, "be":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/safe/PackageInfoEx;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 1194
    .local v5, "tempUserId":I
    if-ne v5, p1, :cond_0

    .line 1195
    new-instance v7, Ljava/lang/Integer;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {v7, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1196
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Lcom/android/server/safe/MobileSafeService;->getPermissionFile(I)Ljava/io/File;

    move-result-object v2

    .line 1197
    .local v2, "delFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1198
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 1200
    :cond_1
    const-string/jumbo v6, "MobileSafeService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "delete file for uid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1203
    .end local v0    # "be":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/safe/PackageInfoEx;>;"
    .end local v2    # "delFile":Ljava/io/File;
    .end local v5    # "tempUserId":I
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1204
    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1205
    iget-object v7, p0, Lcom/android/server/safe/MobileSafeService;->mPkgInfoExMap:Ljava/util/HashMap;

    new-instance v8, Ljava/lang/Integer;

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {v8, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1206
    const-string/jumbo v6, "MobileSafeService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mPkgInfoExMap.remove("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1187
    :cond_3
    return-void
.end method

.method private deleteXmlL(ILjava/lang/String;)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 454
    iget-object v0, p0, Lcom/android/server/safe/MobileSafeService;->mPkgInfoExMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    invoke-static {p1}, Lcom/android/server/safe/MobileSafeService;->getPermissionFile(I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 458
    iget-object v0, p0, Lcom/android/server/safe/MobileSafeService;->mAssoRunWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/android/server/safe/MobileSafeService;->mAutoRunMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    invoke-virtual {p0, p2}, Lcom/android/server/safe/MobileSafeService;->delAssociateRunAppFile(Ljava/lang/String;)V

    .line 452
    :cond_0
    return-void
.end method

.method private dismissConfirmDialog()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 989
    iget-object v0, p0, Lcom/android/server/safe/MobileSafeService;->mDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    .line 990
    return-void

    .line 991
    :cond_0
    iget-object v0, p0, Lcom/android/server/safe/MobileSafeService;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 992
    iput-object v1, p0, Lcom/android/server/safe/MobileSafeService;->mDialog:Landroid/app/AlertDialog;

    .line 988
    return-void
.end method

.method private dismissConfirmHmctDialog()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 996
    iget-object v0, p0, Lcom/android/server/safe/MobileSafeService;->mHmctDialog:Lcom/hmct/hmcttheme/HmctAlertDialog;

    if-nez v0, :cond_0

    .line 997
    return-void

    .line 998
    :cond_0
    iget-object v0, p0, Lcom/android/server/safe/MobileSafeService;->mHmctDialog:Lcom/hmct/hmcttheme/HmctAlertDialog;

    invoke-virtual {v0}, Lcom/hmct/hmcttheme/HmctAlertDialog;->dismiss()V

    .line 999
    iput-object v1, p0, Lcom/android/server/safe/MobileSafeService;->mHmctDialog:Lcom/hmct/hmcttheme/HmctAlertDialog;

    .line 995
    return-void
.end method

.method private dumpInternal(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 13
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .prologue
    .line 1463
    const-string/jumbo v9, "mobile_safe service state:"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1466
    if-eqz p2, :cond_0

    array-length v9, p2

    if-nez v9, :cond_1

    .line 1461
    :cond_0
    :goto_0
    return-void

    .line 1469
    :cond_1
    array-length v9, p2

    const/4 v10, 0x1

    if-ne v9, v10, :cond_3

    const-string/jumbo v9, "autorun"

    const/4 v10, 0x0

    aget-object v10, p2, v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1470
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "mAutoRunRecordMap size = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/safe/MobileSafeService;->mAutoRunRecordMap:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1471
    const-string/jumbo v9, ""

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1473
    const/4 v6, 0x0

    .line 1474
    .local v6, "i":I
    iget-object v9, p0, Lcom/android/server/safe/MobileSafeService;->mAutoRunRecordMap:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "be$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1475
    .local v1, "be":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/safe/MobileSafeService$AutoRunRecord;>;"
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "mAutoRunRecordMap.key["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "]="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1476
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/safe/MobileSafeService$AutoRunRecord;

    .line 1477
    .local v0, "arRecord":Lcom/android/server/safe/MobileSafeService$AutoRunRecord;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "    allowAutoRun="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, v0, Lcom/android/server/safe/MobileSafeService$AutoRunRecord;->allowAutoRun:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1478
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "    flag="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v0, Lcom/android/server/safe/MobileSafeService$AutoRunRecord;->flag:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1479
    iget-object v9, v0, Lcom/android/server/safe/MobileSafeService$AutoRunRecord;->autorunReceiverList:Ljava/util/ArrayList;

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "className$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1480
    .local v4, "className":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "    receiverClassName="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 1483
    .end local v4    # "className":Ljava/lang/String;
    :cond_2
    add-int/lit8 v6, v6, 0x1

    .line 1484
    const-string/jumbo v9, ""

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1488
    .end local v0    # "arRecord":Lcom/android/server/safe/MobileSafeService$AutoRunRecord;
    .end local v1    # "be":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/safe/MobileSafeService$AutoRunRecord;>;"
    .end local v3    # "be$iterator":Ljava/util/Iterator;
    .end local v5    # "className$iterator":Ljava/util/Iterator;
    .end local v6    # "i":I
    :cond_3
    array-length v9, p2

    const/4 v10, 0x4

    if-ne v9, v10, :cond_5

    const-string/jumbo v9, "sms"

    const/4 v10, 0x0

    aget-object v10, p2, v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1489
    const/4 v9, 0x1

    aget-object v10, p2, v9

    const/4 v9, 0x2

    aget-object v11, p2, v9

    const/4 v9, 0x3

    aget-object v9, p2, v9

    const-string/jumbo v12, "0"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    const/4 v9, 0x0

    :goto_3
    invoke-direct {p0, v10, v11, v9}, Lcom/android/server/safe/MobileSafeService;->interceptIncomingSmsL(Ljava/lang/String;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_4
    const/4 v9, 0x1

    goto :goto_3

    .line 1492
    :cond_5
    array-length v9, p2

    const/4 v10, 0x1

    if-ne v9, v10, :cond_6

    const-string/jumbo v9, "reload"

    const/4 v10, 0x0

    aget-object v10, p2, v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 1493
    const-string/jumbo v9, "reload debug policy"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1494
    const-string/jumbo v9, "selinux.reload_policy"

    const-string/jumbo v10, "2"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1497
    :cond_6
    const-string/jumbo v9, "listautorun"

    const/4 v10, 0x0

    aget-object v10, p2, v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1498
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "mAutoRunMap.size="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/safe/MobileSafeService;->mAutoRunMap:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1499
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "mAutoRunMsgCount="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/safe/MobileSafeService;->mAutoRunMsgCount:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1500
    const-string/jumbo v9, ""

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1502
    const/4 v6, 0x0

    .line 1503
    .restart local v6    # "i":I
    iget-object v9, p0, Lcom/android/server/safe/MobileSafeService;->mAutoRunMap:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "be$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1504
    .local v2, "be":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "mAutoRunMap.key["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "]="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1505
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "mAutoRunMap.value["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "]="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1506
    add-int/lit8 v6, v6, 0x1

    .line 1507
    const-string/jumbo v9, ""

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4

    .line 1509
    .end local v2    # "be":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :cond_7
    iget-object v9, p0, Lcom/android/server/safe/MobileSafeService;->mAssoRunWhiteList:Ljava/util/ArrayList;

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "str$iterator":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1510
    .local v7, "str":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "--"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_5
.end method

.method private enableL(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 477
    iput-boolean p1, p0, Lcom/android/server/safe/MobileSafeService;->mEnableMonitor:Z

    .line 478
    const-string/jumbo v1, "persist.sys.hmct.safe.monitor"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    return-void

    .line 478
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private enterSafteyModeL()V
    .locals 7

    .prologue
    .line 1691
    const-string/jumbo v4, "MobileSafeService"

    const-string/jumbo v5, "+ enterSafteyMode"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1692
    iget-boolean v4, p0, Lcom/android/server/safe/MobileSafeService;->mSafetyMode:Z

    if-eqz v4, :cond_0

    .line 1693
    return-void

    .line 1695
    :cond_0
    iget-object v4, p0, Lcom/android/server/safe/MobileSafeService;->mBlackList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1696
    iget-object v4, p0, Lcom/android/server/safe/MobileSafeService;->mBlackList:Ljava/util/ArrayList;

    invoke-direct {p0, v4}, Lcom/android/server/safe/MobileSafeService;->obtainBlackList(Ljava/util/ArrayList;)V

    .line 1697
    const-string/jumbo v4, "MobileSafeService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "enterSafteyMode: mBlackList="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/safe/MobileSafeService;->mBlackList:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1699
    iget-object v4, p0, Lcom/android/server/safe/MobileSafeService;->mBlackList:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "pkgName$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1700
    .local v2, "pkgName":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/safe/MobileSafeService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v4, v2}, Lcom/android/server/safe/MobileSafeService;->isInputMethodApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1703
    invoke-direct {p0}, Lcom/android/server/safe/MobileSafeService;->getPM()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-virtual {v4, v2, v5, v6}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    goto :goto_0

    .line 1708
    .end local v2    # "pkgName":Ljava/lang/String;
    :cond_2
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 1709
    .local v0, "am":Landroid/app/IActivityManager;
    invoke-interface {v0}, Landroid/app/IActivityManager;->killAllBackgroundProcesses()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1714
    .end local v0    # "am":Landroid/app/IActivityManager;
    :goto_1
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/safe/MobileSafeService;->mSafetyMode:Z

    .line 1715
    const-string/jumbo v4, "persist.sys.safety.mode"

    const-string/jumbo v5, "true"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1716
    const-string/jumbo v4, "MobileSafeService"

    const-string/jumbo v5, "- enterSafteyMode"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1690
    return-void

    .line 1710
    :catch_0
    move-exception v1

    .line 1711
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "MobileSafeService"

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private exitSafteyModeL()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1721
    const-string/jumbo v2, "MobileSafeService"

    const-string/jumbo v3, "- exitSafteyMode"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1722
    iget-boolean v2, p0, Lcom/android/server/safe/MobileSafeService;->mSafetyMode:Z

    if-nez v2, :cond_0

    .line 1723
    return-void

    .line 1724
    :cond_0
    const-string/jumbo v2, "persist.sys.safety.mode"

    const-string/jumbo v3, "false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1725
    iput-boolean v4, p0, Lcom/android/server/safe/MobileSafeService;->mSafetyMode:Z

    .line 1727
    iget-object v2, p0, Lcom/android/server/safe/MobileSafeService;->mBlackList:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "pkgName$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1728
    .local v0, "pkgName":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/safe/MobileSafeService;->getPM()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    goto :goto_0

    .line 1720
    .end local v0    # "pkgName":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private getAntiTheftData(I)Ljava/lang/String;
    .locals 10
    .param p1, "dataType"    # I

    .prologue
    const/4 v2, 0x0

    .line 1292
    const/4 v9, 0x0

    .line 1293
    .local v9, "result":Ljava/lang/String;
    const-string/jumbo v0, "content://com.hmct.antitheft.provider/information"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1295
    .local v1, "uri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/server/safe/MobileSafeService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1296
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1297
    if-nez p1, :cond_2

    const-string/jumbo v0, "friend_number"

    :goto_0
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1298
    .local v8, "encrypted":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1300
    :try_start_0
    const-string/jumbo v0, "1111111111111111"

    invoke-static {v0, v8}, Lcom/android/server/safe/CipherUtils;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 1305
    .end local v9    # "result":Ljava/lang/String;
    :cond_0
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1308
    .end local v8    # "encrypted":Ljava/lang/String;
    :cond_1
    return-object v9

    .line 1297
    .restart local v9    # "result":Ljava/lang/String;
    :cond_2
    const-string/jumbo v0, "password"

    goto :goto_0

    .line 1301
    .restart local v8    # "encrypted":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 1302
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private getAssociatePkgAndStateL()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/safe/AutoRunPkgInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 587
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 588
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/safe/AutoRunPkgInfo;>;"
    iget-object v3, p0, Lcom/android/server/safe/MobileSafeService;->mAutoRunMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "key$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 589
    .local v0, "key":Ljava/lang/String;
    new-instance v4, Landroid/safe/AutoRunPkgInfo;

    iget-object v3, p0, Lcom/android/server/safe/MobileSafeService;->mAutoRunMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v5, 0x0

    invoke-direct {v4, v0, v3, v5}, Landroid/safe/AutoRunPkgInfo;-><init>(Ljava/lang/String;ZI)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 591
    .end local v0    # "key":Ljava/lang/String;
    :cond_0
    return-object v2
.end method

.method private getDialogMsgForClient(Ljava/lang/String;IILandroid/os/Bundle;)Ljava/lang/String;
    .locals 11
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "permID"    # I
    .param p3, "uid"    # I
    .param p4, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1003
    const/4 v10, 0x0

    .line 1005
    .local v10, "result":Ljava/lang/String;
    const/4 v9, 0x0

    .line 1006
    .local v9, "isSendSMS":Z
    const/4 v1, 0x5

    if-ne p2, v1, :cond_0

    const/4 v9, 0x1

    .line 1007
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 1009
    .local v6, "callingIdentity":J
    :try_start_0
    iget v1, p0, Lcom/android/server/safe/MobileSafeService;->mUserID:I

    invoke-direct {p0, v1}, Lcom/android/server/safe/MobileSafeService;->getSafeClient(I)Landroid/safe/IMobileSafeClient;

    move-result-object v0

    .line 1010
    .local v0, "safeClient":Landroid/safe/IMobileSafeClient;
    if-eqz v0, :cond_1

    .line 1011
    if-eqz v9, :cond_2

    .line 1012
    iget-object v5, p0, Lcom/android/server/safe/MobileSafeService;->mIndexArray:[I

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/safe/IMobileSafeClient;->obtainDialogMessageEx(Ljava/lang/String;IILandroid/os/Bundle;[I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v10

    .line 1020
    .end local v10    # "result":Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1023
    .end local v0    # "safeClient":Landroid/safe/IMobileSafeClient;
    :goto_1
    return-object v10

    .line 1014
    .restart local v0    # "safeClient":Landroid/safe/IMobileSafeClient;
    .restart local v10    # "result":Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/safe/IMobileSafeClient;->obtainDialogMessage(Ljava/lang/String;IILandroid/os/Bundle;)Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v10

    .local v10, "result":Ljava/lang/String;
    goto :goto_0

    .line 1017
    .end local v0    # "safeClient":Landroid/safe/IMobileSafeClient;
    .local v10, "result":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 1018
    .local v8, "ex":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v1, "MobileSafeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getDialogMsgForClient() throws exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1020
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .line 1019
    .end local v8    # "ex":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    .line 1020
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1019
    throw v1
.end method

.method private getNegativeButtonText(I)Ljava/lang/String;
    .locals 4
    .param p1, "count"    # I

    .prologue
    .line 1028
    iget-object v0, p0, Lcom/android/server/safe/MobileSafeService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040636

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/safe/MobileSafeService;->mNegativeButtonText:Ljava/lang/String;

    .line 1030
    const-string/jumbo v0, "%s(%d)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/safe/MobileSafeService;->mNegativeButtonText:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPM()Landroid/content/pm/PackageManager;
    .locals 1

    .prologue
    .line 801
    iget-object v0, p0, Lcom/android/server/safe/MobileSafeService;->mPm:Landroid/content/pm/PackageManager;

    if-nez v0, :cond_0

    .line 802
    iget-object v0, p0, Lcom/android/server/safe/MobileSafeService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/safe/MobileSafeService;->mPm:Landroid/content/pm/PackageManager;

    .line 804
    :cond_0
    iget-object v0, p0, Lcom/android/server/safe/MobileSafeService;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method private getPackageInfoExByUidL(I)Landroid/safe/PackageInfoEx;
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 430
    iget-object v0, p0, Lcom/android/server/safe/MobileSafeService;->mPkgInfoExMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/safe/PackageInfoEx;

    return-object v0
.end method

.method private getPackageNameFromUid(I)Ljava/lang/String;
    .locals 4
    .param p1, "uid"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 821
    invoke-direct {p0}, Lcom/android/server/safe/MobileSafeService;->getPM()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 822
    .local v0, "pkgNames":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_1

    .line 823
    :cond_0
    return-object v3

    .line 825
    :cond_1
    aget-object v1, v0, v2

    return-object v1
.end method

.method static getPermissionFile(I)Ljava/io/File;
    .locals 3
    .param p0, "uid"    # I

    .prologue
    .line 808
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "/data/system/refuse/refuse-permission-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 809
    .local v0, "file":Ljava/io/File;
    return-object v0
.end method

.method static getPermissionFileDir()Ljava/io/File;
    .locals 2

    .prologue
    .line 813
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/data/system/refuse"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 814
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 815
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 817
    :cond_0
    return-object v0
.end method

.method private getSafeClient(I)Landroid/safe/IMobileSafeClient;
    .locals 2
    .param p1, "userID"    # I

    .prologue
    .line 1449
    iget-object v0, p0, Lcom/android/server/safe/MobileSafeService;->mClientsForUsers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/safe/IMobileSafeClient;

    return-object v0
.end method

.method private getWhiteListL()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1748
    iget-object v0, p0, Lcom/android/server/safe/MobileSafeService;->mWhiteList:Ljava/util/ArrayList;

    return-object v0
.end method

.method private handlePackageIntent(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 1259
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1261
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v3, "android.intent.extra.REPLACING"

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 1262
    .local v2, "replace":Z
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 1265
    .local v1, "pkgName":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string/jumbo v3, "cn.testin.itestin"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1266
    :cond_0
    const-string/jumbo v3, "MobileSafeService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "skip package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1267
    return-void

    .line 1270
    :cond_1
    const-string/jumbo v3, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1271
    invoke-direct {p0, v1, v2, v4}, Lcom/android/server/safe/MobileSafeService;->onPackageAdded(Ljava/lang/String;ZZ)V

    .line 1258
    :cond_2
    :goto_0
    return-void

    .line 1273
    :cond_3
    const-string/jumbo v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1274
    if-nez v2, :cond_2

    .line 1275
    invoke-direct {p0, v1}, Lcom/android/server/safe/MobileSafeService;->onPackageRemoved(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initSafetyMode()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1657
    const-string/jumbo v5, "MobileSafeService"

    const-string/jumbo v6, "initSafetyMode"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1659
    iget-object v5, p0, Lcom/android/server/safe/MobileSafeService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "safety_mode_enabled"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-lez v5, :cond_0

    :goto_0
    iput-boolean v3, p0, Lcom/android/server/safe/MobileSafeService;->mSafetyMode:Z

    .line 1660
    invoke-direct {p0}, Lcom/android/server/safe/MobileSafeService;->readWhiteListFromXml()V

    .line 1662
    iget-boolean v3, p0, Lcom/android/server/safe/MobileSafeService;->mSafetyMode:Z

    if-nez v3, :cond_1

    .line 1663
    return-void

    :cond_0
    move v3, v4

    .line 1659
    goto :goto_0

    .line 1667
    :cond_1
    iget-object v3, p0, Lcom/android/server/safe/MobileSafeService;->mBlackList:Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Lcom/android/server/safe/MobileSafeService;->obtainBlackList(Ljava/util/ArrayList;)V

    .line 1668
    iget-object v3, p0, Lcom/android/server/safe/MobileSafeService;->mBlackList:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    .line 1670
    iget-object v3, p0, Lcom/android/server/safe/MobileSafeService;->mBlackList:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "pkgName$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1671
    .local v1, "pkgName":Ljava/lang/String;
    const-string/jumbo v3, "MobileSafeService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "initSafetyMode pkgName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1673
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/safe/MobileSafeService;->getPM()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v3, v1, v5, v6}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1674
    :catch_0
    move-exception v0

    .line 1675
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "MobileSafeService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "exception pkgName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1679
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "pkgName":Ljava/lang/String;
    .end local v2    # "pkgName$iterator":Ljava/util/Iterator;
    :cond_2
    iget-object v3, p0, Lcom/android/server/safe/MobileSafeService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v5, "safety_mode_enabled"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1680
    const-string/jumbo v3, "persist.sys.safety.mode"

    const-string/jumbo v5, "false"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1681
    iput-boolean v4, p0, Lcom/android/server/safe/MobileSafeService;->mSafetyMode:Z

    .line 1656
    return-void
.end method

.method private initWhiteListXmlFile()V
    .locals 5

    .prologue
    .line 1442
    const-string/jumbo v2, "MobileSafeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "initWhiteListXmlFile, mAssoRunWhiteList.size() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/safe/MobileSafeService;->mAssoRunWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1443
    iget-object v2, p0, Lcom/android/server/safe/MobileSafeService;->mAssoRunWhiteList:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "key$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1444
    .local v0, "key":Ljava/lang/String;
    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/android/server/safe/MobileSafeService;->saveAssociateRunPkgfile(Ljava/lang/String;Z)V

    goto :goto_0

    .line 1441
    .end local v0    # "key":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private interceptIncomingSmsL(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 9
    .param p1, "phoneNum"    # Ljava/lang/String;
    .param p2, "smsText"    # Ljava/lang/String;
    .param p3, "slotId"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 483
    const-string/jumbo v4, "MobileSafeService"

    const-string/jumbo v5, "+ interceptIncomingSms"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    const-string/jumbo v4, "MobileSafeService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "phoneNum="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", smsText="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", slotId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 486
    :cond_0
    return v7

    .line 488
    :cond_1
    const/4 v1, 0x0

    .line 489
    .local v1, "cmdType":I
    const-string/jumbo v4, "hisensexlbj#"

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 490
    const/4 v1, 0x1

    .line 502
    :goto_0
    const-string/jumbo v4, "#"

    invoke-virtual {p2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 503
    .local v0, "args":[Ljava/lang/String;
    const-string/jumbo v4, "MobileSafeService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "args.length="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    array-length v4, v0

    if-ne v4, v8, :cond_8

    .line 506
    invoke-direct {p0, v7}, Lcom/android/server/safe/MobileSafeService;->getAntiTheftData(I)Ljava/lang/String;

    move-result-object v2

    .line 507
    .local v2, "friendNum":Ljava/lang/String;
    const-string/jumbo v4, "MobileSafeService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "friendNum="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x5

    if-ge v4, v5, :cond_6

    .line 509
    :cond_2
    return v7

    .line 492
    .end local v0    # "args":[Ljava/lang/String;
    .end local v2    # "friendNum":Ljava/lang/String;
    :cond_3
    const-string/jumbo v4, "hisensesdsj#"

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 493
    const/4 v1, 0x2

    goto :goto_0

    .line 495
    :cond_4
    const-string/jumbo v4, "hisensescsj#"

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 496
    const/4 v1, 0x3

    goto :goto_0

    .line 499
    :cond_5
    return v7

    .line 508
    .restart local v0    # "args":[Ljava/lang/String;
    .restart local v2    # "friendNum":Ljava/lang/String;
    :cond_6
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_2

    .line 522
    .end local v2    # "friendNum":Ljava/lang/String;
    :cond_7
    iget-object v4, p0, Lcom/android/server/safe/MobileSafeService;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v6, "com.hmct.antitheft.CMD_RECEIVED"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 523
    const-string/jumbo v6, "cmd_sender"

    .line 522
    invoke-virtual {v5, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    .line 524
    const-string/jumbo v6, "card_index"

    .line 522
    invoke-virtual {v5, v6, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v5

    .line 525
    const-string/jumbo v6, "cmd_type"

    .line 522
    invoke-virtual {v5, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 527
    const-string/jumbo v4, "MobileSafeService"

    const-string/jumbo v5, "- interceptIncomingSms"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    return v8

    .line 511
    :cond_8
    array-length v4, v0

    const/4 v5, 0x2

    if-ne v4, v5, :cond_a

    .line 512
    invoke-direct {p0, v8}, Lcom/android/server/safe/MobileSafeService;->getAntiTheftData(I)Ljava/lang/String;

    move-result-object v3

    .line 513
    .local v3, "password":Ljava/lang/String;
    const-string/jumbo v4, "MobileSafeService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "password="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    if-eqz v3, :cond_9

    aget-object v4, v0, v8

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 515
    :cond_9
    return v7

    .line 518
    .end local v3    # "password":Ljava/lang/String;
    :cond_a
    return v7
.end method

.method private isInSafetyModeL()Z
    .locals 1

    .prologue
    .line 1686
    iget-boolean v0, p0, Lcom/android/server/safe/MobileSafeService;->mSafetyMode:Z

    return v0
.end method

.method private isInputMethodApp(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1314
    const-string/jumbo v5, "input_method"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 1313
    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    .line 1315
    .local v3, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodList()Ljava/util/List;

    move-result-object v4

    .line 1316
    .local v4, "listIMI":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    const/4 v0, 0x0

    .line 1317
    .local v0, "flag":Z
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "imi$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    .line 1318
    .local v1, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1319
    const/4 v0, 0x1

    .line 1323
    .end local v1    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_1
    return v0
.end method

.method private isSystemApp(ILjava/lang/String;)Z
    .locals 8
    .param p1, "uid"    # I
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 772
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 773
    .local v0, "appID":I
    if-lez p1, :cond_0

    const/16 v3, 0x2710

    if-gt p1, v3, :cond_0

    .line 774
    return v7

    .line 776
    :cond_0
    if-nez p2, :cond_1

    .line 777
    invoke-direct {p0, p1}, Lcom/android/server/safe/MobileSafeService;->getPackageNameFromUid(I)Ljava/lang/String;

    move-result-object p2

    .line 779
    :cond_1
    if-nez p2, :cond_2

    .line 780
    return v7

    .line 783
    :cond_2
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    iget v4, p0, Lcom/android/server/safe/MobileSafeService;->mUserID:I

    const/4 v5, 0x0

    invoke-interface {v3, p2, v5, v4}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 784
    .local v2, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v2, :cond_3

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_3

    .line 785
    return v7

    .line 787
    .end local v2    # "pi":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v1

    .line 788
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "MobileSafeService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isSystemApp e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_3
    return v6
.end method

.method private isUserIdExist(I)Z
    .locals 3
    .param p1, "userID"    # I

    .prologue
    .line 1453
    iget-object v2, p0, Lcom/android/server/safe/MobileSafeService;->mUserList:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "user$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 1454
    .local v0, "user":Landroid/content/pm/UserInfo;
    iget v2, v0, Landroid/content/pm/UserInfo;->id:I

    if-ne v2, p1, :cond_0

    .line 1455
    const/4 v2, 0x1

    return v2

    .line 1458
    .end local v0    # "user":Landroid/content/pm/UserInfo;
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method private modifyAssociateRunAppStateL(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "allowAssociateRun"    # Z

    .prologue
    .line 596
    iget-object v0, p0, Lcom/android/server/safe/MobileSafeService;->mAutoRunMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 597
    invoke-direct {p0, p1, p2}, Lcom/android/server/safe/MobileSafeService;->saveAssociateRunPkgfile(Ljava/lang/String;Z)V

    .line 595
    return-void
.end method

.method private modifyPermissionAction(III)V
    .locals 6
    .param p1, "uid"    # I
    .param p2, "permId"    # I
    .param p3, "action"    # I

    .prologue
    .line 1178
    iget-object v1, p0, Lcom/android/server/safe/MobileSafeService;->mPkgInfoExMap:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/safe/PackageInfoEx;

    .line 1179
    .local v0, "piEx":Landroid/safe/PackageInfoEx;
    iget-wide v2, v0, Landroid/safe/PackageInfoEx;->action:J

    mul-int/lit8 v1, p2, 0x2

    const-wide/16 v4, 0x3

    shl-long/2addr v4, v1

    not-long v4, v4

    and-long/2addr v2, v4

    iput-wide v2, v0, Landroid/safe/PackageInfoEx;->action:J

    .line 1180
    iget-wide v2, v0, Landroid/safe/PackageInfoEx;->action:J

    int-to-long v4, p3

    mul-int/lit8 v1, p2, 0x2

    shl-long/2addr v4, v1

    or-long/2addr v2, v4

    iput-wide v2, v0, Landroid/safe/PackageInfoEx;->action:J

    .line 1181
    iget-object v1, p0, Lcom/android/server/safe/MobileSafeService;->mWriteLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1182
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/safe/MobileSafeService;->save2file(Landroid/safe/PackageInfoEx;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1177
    return-void

    .line 1181
    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method private modifyPermissionL(IJZ)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "action"    # J
    .param p4, "trusted"    # Z

    .prologue
    .line 435
    iget-object v1, p0, Lcom/android/server/safe/MobileSafeService;->mPkgInfoExMap:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/safe/PackageInfoEx;

    .line 436
    .local v0, "piEx":Landroid/safe/PackageInfoEx;
    iput-wide p2, v0, Landroid/safe/PackageInfoEx;->action:J

    .line 437
    iput-boolean p4, v0, Landroid/safe/PackageInfoEx;->trusted:Z

    .line 438
    iget-object v1, p0, Lcom/android/server/safe/MobileSafeService;->mWriteLock:Ljava/lang/Object;

    monitor-enter v1

    .line 439
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/safe/MobileSafeService;->save2file(Landroid/safe/PackageInfoEx;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 434
    return-void

    .line 438
    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method private obtainBlackList(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "blacklist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 1833
    invoke-direct {p0}, Lcom/android/server/safe/MobileSafeService;->getPM()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v2

    .line 1834
    .local v2, "pkgInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1835
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/pm/PackageInfo;>;"
    const-string/jumbo v3, "MobileSafeService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "obtainBlackList: pkgInfos="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1836
    const-string/jumbo v3, "MobileSafeService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "obtainBlackList: mWhiteList="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/safe/MobileSafeService;->mWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1837
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1838
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 1839
    .local v1, "pi":Landroid/content/pm/PackageInfo;
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    .line 1840
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v4, "com.hmct.studymode"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1841
    const-string/jumbo v3, "com.hmct.studymode"

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1843
    :cond_1
    iget-object v3, p0, Lcom/android/server/safe/MobileSafeService;->mWhiteList:Ljava/util/ArrayList;

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1844
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1832
    .end local v1    # "pi":Landroid/content/pm/PackageInfo;
    :cond_2
    return-void
.end method

.method private onPackageAdded(Ljava/lang/String;ZZ)V
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "replace"    # Z
    .param p3, "isPrebuild"    # Z

    .prologue
    .line 1281
    const-string/jumbo v0, "MobileSafeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPackageAdded, pkgName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1280
    return-void
.end method

.method private onPackageRemoved(Ljava/lang/String;)V
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 1285
    const-string/jumbo v0, "MobileSafeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPackageRemoved, pkgName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1284
    return-void
.end method

.method private parseAutorunWhiteListXml()V
    .locals 18

    .prologue
    .line 1379
    new-instance v5, Ljava/io/File;

    const-string/jumbo v13, "/system/etc/ar_white_list.xml"

    invoke-direct {v5, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1380
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-gtz v13, :cond_1

    .line 1381
    :cond_0
    return-void

    .line 1385
    :cond_1
    :try_start_0
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1386
    .local v9, "str":Ljava/io/FileInputStream;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v7

    .line 1387
    .local v7, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v13, 0x0

    invoke-interface {v7, v9, v13}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1390
    :cond_2
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v11

    .local v11, "type":I
    const/4 v13, 0x2

    if-eq v11, v13, :cond_3

    .line 1391
    const/4 v13, 0x1

    if-ne v11, v13, :cond_2

    .line 1395
    :cond_3
    const/4 v13, 0x2

    if-eq v11, v13, :cond_4

    .line 1396
    const-string/jumbo v13, "MobileSafeService"

    const-string/jumbo v14, "Error: No start tag found in permission file\n"

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1397
    return-void

    .line 1400
    :cond_4
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    .line 1401
    .local v6, "outerDepth":I
    :cond_5
    :goto_0
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v11

    const/4 v13, 0x1

    if-eq v11, v13, :cond_9

    .line 1402
    const/4 v13, 0x3

    if-ne v11, v13, :cond_6

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v13

    if-le v13, v6, :cond_9

    .line 1403
    :cond_6
    const/4 v13, 0x3

    if-eq v11, v13, :cond_5

    const/4 v13, 0x4

    if-eq v11, v13, :cond_5

    .line 1407
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 1408
    .local v10, "tagName":Ljava/lang/String;
    const-string/jumbo v13, "version"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v13

    if-eqz v13, :cond_7

    .line 1409
    const/4 v12, 0x0

    .line 1411
    .local v12, "version":I
    :try_start_1
    const-string/jumbo v13, "value"

    const/4 v14, 0x0

    invoke-interface {v7, v14, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v12

    .line 1414
    :goto_1
    :try_start_2
    const-string/jumbo v13, "MobileSafeService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "whitelist version="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1415
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/safe/MobileSafeService;->mWhiteListVersion:I

    if-le v12, v13, :cond_7

    .line 1416
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/safe/MobileSafeService;->mUpdateWhiteList:Z

    .line 1417
    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/server/safe/MobileSafeService;->mWhiteListVersion:I

    .line 1421
    .end local v12    # "version":I
    :cond_7
    const-string/jumbo v13, "pkgname"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 1422
    const-string/jumbo v13, "name"

    const/4 v14, 0x0

    invoke-interface {v7, v14, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1423
    .local v8, "pkgName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/safe/MobileSafeService;->mAssoRunWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1424
    const-string/jumbo v13, "MobileSafeService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "----Add "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " to associaterun whitelist"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 1434
    .end local v6    # "outerDepth":I
    .end local v7    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "pkgName":Ljava/lang/String;
    .end local v9    # "str":Ljava/io/FileInputStream;
    .end local v10    # "tagName":Ljava/lang/String;
    .end local v11    # "type":I
    :catch_0
    move-exception v4

    .line 1435
    .local v4, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string/jumbo v13, "MobileSafeService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Error reading: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v4}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1378
    .end local v4    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_2
    return-void

    .line 1427
    .restart local v6    # "outerDepth":I
    .restart local v7    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v9    # "str":Ljava/io/FileInputStream;
    .restart local v10    # "tagName":Ljava/lang/String;
    .restart local v11    # "type":I
    :cond_8
    :try_start_3
    const-string/jumbo v13, "MobileSafeService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Unknown element under <associaterun-whitelist>: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1428
    invoke-static {v7}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 1436
    .end local v6    # "outerDepth":I
    .end local v7    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v9    # "str":Ljava/io/FileInputStream;
    .end local v10    # "tagName":Ljava/lang/String;
    .end local v11    # "type":I
    :catch_1
    move-exception v2

    .line 1437
    .local v2, "e":Ljava/io/IOException;
    const-string/jumbo v13, "MobileSafeService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Error reading: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1432
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v6    # "outerDepth":I
    .restart local v7    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v9    # "str":Ljava/io/FileInputStream;
    .restart local v11    # "type":I
    :cond_9
    :try_start_4
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 1412
    .restart local v10    # "tagName":Ljava/lang/String;
    .restart local v12    # "version":I
    :catch_2
    move-exception v3

    .local v3, "e":Ljava/lang/NumberFormatException;
    goto/16 :goto_1
.end method

.method private readAssociateRunPkgFromXml(Ljava/io/File;)V
    .locals 14
    .param p1, "file"    # Ljava/io/File;

    .prologue
    const/4 v13, 0x3

    const/4 v10, 0x2

    const/4 v12, 0x1

    .line 1328
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1329
    .local v6, "str":Ljava/io/FileInputStream;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 1330
    .local v4, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v9, 0x0

    invoke-interface {v4, v6, v9}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1333
    :cond_0
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    .local v8, "type":I
    if-eq v8, v10, :cond_1

    .line 1334
    if-ne v8, v12, :cond_0

    .line 1337
    :cond_1
    if-eq v8, v10, :cond_2

    .line 1338
    const-string/jumbo v9, "MobileSafeService"

    const-string/jumbo v10, "Error: No start tag found in associaterun file\n"

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1339
    return-void

    .line 1342
    :cond_2
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    .line 1343
    .local v3, "outerDepth":I
    :cond_3
    :goto_0
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    if-eq v8, v12, :cond_6

    .line 1344
    if-ne v8, v13, :cond_4

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    if-le v9, v3, :cond_6

    .line 1345
    :cond_4
    if-eq v8, v13, :cond_3

    const/4 v9, 0x4

    if-eq v8, v9, :cond_3

    .line 1349
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 1350
    .local v7, "tagName":Ljava/lang/String;
    const-string/jumbo v9, "pkgname"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1351
    const-string/jumbo v9, "name"

    const/4 v10, 0x0

    invoke-interface {v4, v10, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1352
    .local v5, "pkgName":Ljava/lang/String;
    const-string/jumbo v9, "allowassociaterun"

    const/4 v10, 0x0

    invoke-interface {v4, v10, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 1353
    .local v0, "allowAssociateRun":Z
    iget-object v9, p0, Lcom/android/server/safe/MobileSafeService;->mAutoRunMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v9, v5, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1362
    .end local v0    # "allowAssociateRun":Z
    .end local v3    # "outerDepth":I
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "pkgName":Ljava/lang/String;
    .end local v6    # "str":Ljava/io/FileInputStream;
    .end local v7    # "tagName":Ljava/lang/String;
    .end local v8    # "type":I
    :catch_0
    move-exception v2

    .line 1363
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string/jumbo v9, "MobileSafeService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Error reading: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1326
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_1
    return-void

    .line 1356
    .restart local v3    # "outerDepth":I
    .restart local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6    # "str":Ljava/io/FileInputStream;
    .restart local v7    # "tagName":Ljava/lang/String;
    .restart local v8    # "type":I
    :cond_5
    :try_start_1
    const-string/jumbo v9, "MobileSafeService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Unknown element under <item>: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1357
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1364
    .end local v3    # "outerDepth":I
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "str":Ljava/io/FileInputStream;
    .end local v7    # "tagName":Ljava/lang/String;
    .end local v8    # "type":I
    :catch_1
    move-exception v1

    .line 1365
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v9, "MobileSafeService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Error reading: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1361
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v3    # "outerDepth":I
    .restart local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6    # "str":Ljava/io/FileInputStream;
    .restart local v8    # "type":I
    :cond_6
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1
.end method

.method private readPkgInfoExFromXml()V
    .locals 8

    .prologue
    .line 1107
    invoke-static {}, Lcom/android/server/safe/MobileSafeService;->getPermissionFileDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 1108
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 1109
    invoke-direct {p0, v0}, Lcom/android/server/safe/MobileSafeService;->readPkgInfoExFromXml(Ljava/io/File;)V

    .line 1107
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1106
    .end local v0    # "file":Ljava/io/File;
    :cond_1
    return-void
.end method

.method private readPkgInfoExFromXml(Ljava/io/File;)V
    .locals 14
    .param p1, "file"    # Ljava/io/File;

    .prologue
    const/4 v13, 0x3

    const/4 v10, 0x2

    const/4 v12, 0x1

    .line 1115
    new-instance v5, Landroid/safe/PackageInfoEx;

    invoke-direct {v5}, Landroid/safe/PackageInfoEx;-><init>()V

    .line 1118
    .local v5, "piEx":Landroid/safe/PackageInfoEx;
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1119
    .local v6, "str":Ljava/io/FileInputStream;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 1120
    .local v4, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v9, 0x0

    invoke-interface {v4, v6, v9}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1123
    :cond_0
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    .local v8, "type":I
    if-eq v8, v10, :cond_1

    .line 1124
    if-ne v8, v12, :cond_0

    .line 1128
    :cond_1
    if-eq v8, v10, :cond_2

    .line 1129
    const-string/jumbo v9, "MobileSafeService"

    const-string/jumbo v10, "Error: No start tag found in permission file\n"

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    return-void

    .line 1133
    :cond_2
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    .line 1134
    .local v3, "outerDepth":I
    :cond_3
    :goto_0
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    if-eq v8, v12, :cond_7

    .line 1135
    if-ne v8, v13, :cond_4

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    if-le v9, v3, :cond_7

    .line 1136
    :cond_4
    if-eq v8, v13, :cond_3

    const/4 v9, 0x4

    if-eq v8, v9, :cond_3

    .line 1140
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 1141
    .local v7, "tagName":Ljava/lang/String;
    const-string/jumbo v9, "pkginfoEx"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v9

    if-eqz v9, :cond_6

    .line 1143
    :try_start_1
    const-string/jumbo v9, "uid"

    const/4 v10, 0x0

    invoke-interface {v4, v10, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v5, Landroid/safe/PackageInfoEx;->uid:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1147
    :goto_1
    :try_start_2
    const-string/jumbo v9, "pkg"

    const/4 v10, 0x0

    invoke-interface {v4, v10, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v5, Landroid/safe/PackageInfoEx;->pkgName:Ljava/lang/String;
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1149
    :try_start_3
    const-string/jumbo v9, "shield"

    const/4 v10, 0x0

    invoke-interface {v4, v10, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v5, Landroid/safe/PackageInfoEx;->shield:I

    .line 1150
    const-string/jumbo v9, "action"

    const/4 v10, 0x0

    invoke-interface {v4, v10, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v5, Landroid/safe/PackageInfoEx;->action:J
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1154
    :goto_2
    :try_start_4
    const-string/jumbo v9, "prebuild"

    const/4 v10, 0x0

    invoke-interface {v4, v10, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    iput-boolean v9, v5, Landroid/safe/PackageInfoEx;->prebuild:Z

    .line 1155
    const-string/jumbo v9, "trusted"

    const/4 v10, 0x0

    invoke-interface {v4, v10, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    iput-boolean v9, v5, Landroid/safe/PackageInfoEx;->trusted:Z
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 1165
    .end local v3    # "outerDepth":I
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "str":Ljava/io/FileInputStream;
    .end local v7    # "tagName":Ljava/lang/String;
    .end local v8    # "type":I
    :catch_0
    move-exception v2

    .line 1166
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string/jumbo v9, "MobileSafeService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Error reading: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_3
    iget v9, v5, Landroid/safe/PackageInfoEx;->uid:I

    if-lez v9, :cond_5

    .line 1172
    iget-object v9, p0, Lcom/android/server/safe/MobileSafeService;->mPkgInfoExMap:Ljava/util/HashMap;

    new-instance v10, Ljava/lang/Integer;

    iget v11, v5, Landroid/safe/PackageInfoEx;->uid:I

    invoke-direct {v10, v11}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v9, v10, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1114
    :cond_5
    return-void

    .line 1144
    .restart local v3    # "outerDepth":I
    .restart local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6    # "str":Ljava/io/FileInputStream;
    .restart local v7    # "tagName":Ljava/lang/String;
    .restart local v8    # "type":I
    :catch_1
    move-exception v1

    .line 1145
    .local v1, "e":Ljava/lang/NumberFormatException;
    const/4 v9, 0x0

    :try_start_5
    iput v9, v5, Landroid/safe/PackageInfoEx;->uid:I
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 1167
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .end local v3    # "outerDepth":I
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "str":Ljava/io/FileInputStream;
    .end local v7    # "tagName":Ljava/lang/String;
    .end local v8    # "type":I
    :catch_2
    move-exception v0

    .line 1168
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v9, "MobileSafeService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Error reading: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1151
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v3    # "outerDepth":I
    .restart local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6    # "str":Ljava/io/FileInputStream;
    .restart local v7    # "tagName":Ljava/lang/String;
    .restart local v8    # "type":I
    :catch_3
    move-exception v1

    .line 1152
    .restart local v1    # "e":Ljava/lang/NumberFormatException;
    const/4 v9, 0x0

    :try_start_6
    iput v9, v5, Landroid/safe/PackageInfoEx;->uid:I

    goto :goto_2

    .line 1158
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_6
    const-string/jumbo v9, "MobileSafeService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Unknown element under <pkginfoEx>: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1159
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 1163
    .end local v7    # "tagName":Ljava/lang/String;
    :cond_7
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_3
.end method

.method private readWhiteListFromXml()V
    .locals 14

    .prologue
    .line 1784
    new-instance v3, Ljava/io/File;

    const-string/jumbo v9, "/data/system/s_white_list.xml"

    invoke-direct {v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1785
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-gtz v9, :cond_1

    .line 1786
    :cond_0
    return-void

    .line 1790
    :cond_1
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1791
    .local v6, "str":Ljava/io/FileInputStream;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 1792
    .local v5, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v9, 0x0

    invoke-interface {v5, v6, v9}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1795
    :cond_2
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    .local v8, "type":I
    const/4 v9, 0x2

    if-eq v8, v9, :cond_3

    .line 1796
    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    .line 1800
    :cond_3
    const/4 v9, 0x2

    if-eq v8, v9, :cond_4

    .line 1801
    const-string/jumbo v9, "MobileSafeService"

    const-string/jumbo v10, "Error: No start tag found in autorun file\n"

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1802
    return-void

    .line 1805
    :cond_4
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    .line 1806
    .local v4, "outerDepth":I
    :cond_5
    :goto_0
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_8

    .line 1807
    const/4 v9, 0x3

    if-ne v8, v9, :cond_6

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    if-le v9, v4, :cond_8

    .line 1808
    :cond_6
    const/4 v9, 0x3

    if-eq v8, v9, :cond_5

    const/4 v9, 0x4

    if-eq v8, v9, :cond_5

    .line 1812
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 1813
    .local v7, "tagName":Ljava/lang/String;
    const-string/jumbo v9, "package"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 1814
    const-string/jumbo v9, "name"

    const/4 v10, 0x0

    invoke-interface {v5, v10, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1815
    .local v0, "className":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/safe/MobileSafeService;->mWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1825
    .end local v0    # "className":Ljava/lang/String;
    .end local v4    # "outerDepth":I
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "str":Ljava/io/FileInputStream;
    .end local v7    # "tagName":Ljava/lang/String;
    .end local v8    # "type":I
    :catch_0
    move-exception v2

    .line 1826
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string/jumbo v9, "MobileSafeService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Error reading: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1783
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_1
    return-void

    .line 1818
    .restart local v4    # "outerDepth":I
    .restart local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6    # "str":Ljava/io/FileInputStream;
    .restart local v7    # "tagName":Ljava/lang/String;
    .restart local v8    # "type":I
    :cond_7
    :try_start_1
    const-string/jumbo v9, "MobileSafeService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Unknown element under <item>: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1819
    invoke-static {v5}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1827
    .end local v4    # "outerDepth":I
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "str":Ljava/io/FileInputStream;
    .end local v7    # "tagName":Ljava/lang/String;
    .end local v8    # "type":I
    :catch_1
    move-exception v1

    .line 1828
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v9, "MobileSafeService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Error reading: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1822
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v4    # "outerDepth":I
    .restart local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6    # "str":Ljava/io/FileInputStream;
    .restart local v8    # "type":I
    :cond_8
    :try_start_2
    const-string/jumbo v9, "MobileSafeService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "readWhiteListFromXml: mWhiteList="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/safe/MobileSafeService;->mWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1823
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1
.end method

.method private registerClientL(Landroid/safe/IMobileSafeClient;I)V
    .locals 4
    .param p1, "client"    # Landroid/safe/IMobileSafeClient;
    .param p2, "currentUserId"    # I

    .prologue
    .line 466
    iget-object v1, p0, Lcom/android/server/safe/MobileSafeService;->mClientsForUsers:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    :try_start_0
    const-string/jumbo v1, "MobileSafeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerClientL for currentUserId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    invoke-interface {p1}, Landroid/safe/IMobileSafeClient;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    new-instance v2, Lcom/android/server/safe/MobileSafeService$SafeClientDeathRecipient;

    invoke-direct {v2, p0, p2}, Lcom/android/server/safe/MobileSafeService$SafeClientDeathRecipient;-><init>(Lcom/android/server/safe/MobileSafeService;I)V

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 465
    :goto_0
    return-void

    .line 471
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private save2file(Landroid/safe/PackageInfoEx;)V
    .locals 8
    .param p1, "piex"    # Landroid/safe/PackageInfoEx;

    .prologue
    .line 1072
    iget v5, p1, Landroid/safe/PackageInfoEx;->uid:I

    invoke-static {v5}, Lcom/android/server/safe/MobileSafeService;->getPermissionFile(I)Ljava/io/File;

    move-result-object v1

    .line 1074
    .local v1, "file":Ljava/io/File;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1075
    .local v2, "fstr":Ljava/io/FileOutputStream;
    new-instance v4, Ljava/io/BufferedOutputStream;

    invoke-direct {v4, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1077
    .local v4, "str":Ljava/io/BufferedOutputStream;
    new-instance v3, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v3}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 1078
    .local v3, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    const-string/jumbo v5, "utf-8"

    invoke-interface {v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1079
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v3, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1080
    const-string/jumbo v5, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v6, 0x1

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 1082
    const-string/jumbo v5, "permission"

    const/4 v6, 0x0

    invoke-interface {v3, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1084
    const-string/jumbo v5, "pkginfoEx"

    const/4 v6, 0x0

    invoke-interface {v3, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1085
    const-string/jumbo v5, "uid"

    iget v6, p1, Landroid/safe/PackageInfoEx;->uid:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v3, v7, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1086
    const-string/jumbo v5, "pkg"

    iget-object v6, p1, Landroid/safe/PackageInfoEx;->pkgName:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-interface {v3, v7, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1087
    const-string/jumbo v5, "shield"

    iget v6, p1, Landroid/safe/PackageInfoEx;->shield:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v3, v7, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1088
    const-string/jumbo v5, "action"

    iget-wide v6, p1, Landroid/safe/PackageInfoEx;->action:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v3, v7, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1089
    const-string/jumbo v5, "prebuild"

    iget-boolean v6, p1, Landroid/safe/PackageInfoEx;->prebuild:Z

    invoke-static {v6}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v3, v7, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1090
    const-string/jumbo v5, "trusted"

    iget-boolean v6, p1, Landroid/safe/PackageInfoEx;->trusted:Z

    invoke-static {v6}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v3, v7, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1091
    const-string/jumbo v5, "pkginfoEx"

    const/4 v6, 0x0

    invoke-interface {v3, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1093
    const-string/jumbo v5, "permission"

    const/4 v6, 0x0

    invoke-interface {v3, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1095
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 1097
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->flush()V

    .line 1098
    invoke-static {v2}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 1099
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1071
    .end local v2    # "fstr":Ljava/io/FileOutputStream;
    .end local v3    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .end local v4    # "str":Ljava/io/BufferedOutputStream;
    :goto_0
    return-void

    .line 1100
    :catch_0
    move-exception v0

    .line 1101
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v5, "MobileSafeService"

    const-string/jumbo v6, "Error: write pkginfoEx to xml. "

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    const-string/jumbo v5, "MobileSafeService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private saveAssociateRunPkgfile(Ljava/lang/String;Z)V
    .locals 9
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "state"    # Z

    .prologue
    .line 610
    new-instance v2, Ljava/io/File;

    const-string/jumbo v6, "/data/system/associaterun/"

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 611
    .local v2, "fileDir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 612
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 614
    :cond_0
    const-string/jumbo v6, "MobileSafeService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "saveAssociateRunPkgfile--- pkgName = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "; state = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    new-instance v1, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "/data/system/associaterun/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ".xml"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 617
    .local v1, "file":Ljava/io/File;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 618
    .local v3, "fstr":Ljava/io/FileOutputStream;
    new-instance v5, Ljava/io/BufferedOutputStream;

    invoke-direct {v5, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 620
    .local v5, "str":Ljava/io/BufferedOutputStream;
    new-instance v4, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v4}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 621
    .local v4, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    const-string/jumbo v6, "utf-8"

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 622
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v4, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 623
    const-string/jumbo v6, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v7, 0x1

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 625
    const-string/jumbo v6, "associaterun"

    const/4 v7, 0x0

    invoke-interface {v4, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 627
    const-string/jumbo v6, "pkgname"

    const/4 v7, 0x0

    invoke-interface {v4, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 628
    const-string/jumbo v6, "name"

    const/4 v7, 0x0

    invoke-interface {v4, v7, v6, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 629
    const-string/jumbo v6, "allowassociaterun"

    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v4, v8, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 630
    const-string/jumbo v6, "pkgname"

    const/4 v7, 0x0

    invoke-interface {v4, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 632
    const-string/jumbo v6, "associaterun"

    const/4 v7, 0x0

    invoke-interface {v4, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 634
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 636
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->flush()V

    .line 637
    invoke-static {v3}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 638
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 609
    .end local v3    # "fstr":Ljava/io/FileOutputStream;
    .end local v4    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .end local v5    # "str":Ljava/io/BufferedOutputStream;
    :goto_0
    return-void

    .line 639
    :catch_0
    move-exception v0

    .line 640
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v6, "MobileSafeService"

    const-string/jumbo v7, "Error: write associaterun item to xml. "

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    const-string/jumbo v6, "MobileSafeService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private savePrebuildAppPermission()V
    .locals 18

    .prologue
    .line 1034
    invoke-static {}, Lcom/android/server/safe/MobileSafeService;->getPermissionFileDir()Ljava/io/File;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    .line 1035
    .local v6, "files":[Ljava/io/File;
    if-eqz v6, :cond_0

    array-length v14, v6

    if-lez v14, :cond_0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/safe/MobileSafeService;->mUserID:I

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/safe/MobileSafeService;->isUserIdExist(I)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 1036
    const-string/jumbo v14, "MobileSafeService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "file for userId = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/safe/MobileSafeService;->mUserID:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " is exist, return !"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    return-void

    .line 1039
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/safe/MobileSafeService;->getPM()Landroid/content/pm/PackageManager;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/safe/MobileSafeService;->mUserID:I

    const/16 v16, 0x1000

    move/from16 v0, v16

    invoke-virtual {v14, v0, v15}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v12

    .line 1040
    .local v12, "pkgInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 1041
    .local v7, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/pm/PackageInfo;>;"
    :cond_1
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 1042
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/PackageInfo;

    .line 1043
    .local v10, "pi":Landroid/content/pm/PackageInfo;
    const/4 v13, 0x0

    .line 1044
    .local v13, "shield":I
    const-wide/16 v2, 0x0

    .line 1045
    .local v2, "action":J
    iget-object v14, v10, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v14, v14, 0x1

    if-nez v14, :cond_3

    iget-object v14, v10, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v14, :cond_3

    .line 1047
    iget-object v15, v10, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    const/4 v14, 0x0

    array-length v0, v15

    move/from16 v16, v0

    :goto_1
    move/from16 v0, v16

    if-ge v14, v0, :cond_3

    aget-object v9, v15, v14

    .line 1048
    .local v9, "perm":Ljava/lang/String;
    sget-object v17, Landroid/safe/SafeConst;->PERM_MAP:Ljava/util/HashMap;

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 1049
    .local v8, "mask":Ljava/lang/Integer;
    if-eqz v8, :cond_2

    .line 1050
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v17

    or-int v13, v13, v17

    .line 1047
    :cond_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 1055
    .end local v8    # "mask":Ljava/lang/Integer;
    .end local v9    # "perm":Ljava/lang/String;
    :cond_3
    if-lez v13, :cond_1

    .line 1056
    new-instance v11, Landroid/safe/PackageInfoEx;

    invoke-direct {v11}, Landroid/safe/PackageInfoEx;-><init>()V

    .line 1057
    .local v11, "piEx":Landroid/safe/PackageInfoEx;
    iget-object v14, v10, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v14, v11, Landroid/safe/PackageInfoEx;->uid:I

    .line 1058
    iget-object v14, v10, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v14, v11, Landroid/safe/PackageInfoEx;->pkgName:Ljava/lang/String;

    .line 1059
    iput v13, v11, Landroid/safe/PackageInfoEx;->shield:I

    .line 1060
    const-wide/16 v14, 0x0

    iput-wide v14, v11, Landroid/safe/PackageInfoEx;->action:J

    .line 1062
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/safe/MobileSafeService;->mPkgInfoExMap:Ljava/util/HashMap;

    new-instance v15, Ljava/lang/Integer;

    iget v0, v11, Landroid/safe/PackageInfoEx;->uid:I

    move/from16 v16, v0

    invoke-direct/range {v15 .. v16}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v14, v15, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1066
    .end local v2    # "action":J
    .end local v10    # "pi":Landroid/content/pm/PackageInfo;
    .end local v11    # "piEx":Landroid/safe/PackageInfoEx;
    .end local v13    # "shield":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/safe/MobileSafeService;->mPkgInfoExMap:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "be$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 1067
    .local v4, "be":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/safe/PackageInfoEx;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/safe/PackageInfoEx;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/safe/MobileSafeService;->save2file(Landroid/safe/PackageInfoEx;)V

    goto :goto_2

    .line 1033
    .end local v4    # "be":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/safe/PackageInfoEx;>;"
    :cond_5
    return-void
.end method

.method private saveWhiteList2file(Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1752
    .local p1, "pkgNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/io/File;

    const-string/jumbo v7, "/data/system/s_white_list.xml"

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1755
    .local v1, "file":Ljava/io/File;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1756
    .local v2, "fstr":Ljava/io/FileOutputStream;
    new-instance v6, Ljava/io/BufferedOutputStream;

    invoke-direct {v6, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1758
    .local v6, "str":Ljava/io/BufferedOutputStream;
    new-instance v5, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v5}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 1759
    .local v5, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    const-string/jumbo v7, "utf-8"

    invoke-interface {v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1760
    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v5, v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1761
    const-string/jumbo v7, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v8, 0x1

    invoke-interface {v5, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 1763
    const-string/jumbo v7, "safemode-whitelist"

    const/4 v8, 0x0

    invoke-interface {v5, v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1765
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "pkgName$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1766
    .local v3, "pkgName":Ljava/lang/String;
    const-string/jumbo v7, "package"

    const/4 v8, 0x0

    invoke-interface {v5, v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1767
    const-string/jumbo v7, "name"

    const/4 v8, 0x0

    invoke-interface {v5, v8, v7, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1768
    const-string/jumbo v7, "package"

    const/4 v8, 0x0

    invoke-interface {v5, v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1778
    .end local v2    # "fstr":Ljava/io/FileOutputStream;
    .end local v3    # "pkgName":Ljava/lang/String;
    .end local v4    # "pkgName$iterator":Ljava/util/Iterator;
    .end local v5    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .end local v6    # "str":Ljava/io/BufferedOutputStream;
    :catch_0
    move-exception v0

    .line 1779
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v7, "MobileSafeService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Error: write white list to xml, ex="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1751
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1
    return-void

    .line 1771
    .restart local v2    # "fstr":Ljava/io/FileOutputStream;
    .restart local v4    # "pkgName$iterator":Ljava/util/Iterator;
    .restart local v5    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v6    # "str":Ljava/io/BufferedOutputStream;
    :cond_0
    :try_start_1
    const-string/jumbo v7, "safemode-whitelist"

    const/4 v8, 0x0

    invoke-interface {v5, v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1773
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 1775
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->flush()V

    .line 1776
    invoke-static {v2}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 1777
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private showConfirmDialog(IILjava/lang/String;)V
    .locals 17
    .param p1, "permID"    # I
    .param p2, "uid"    # I
    .param p3, "msg"    # Ljava/lang/String;

    .prologue
    .line 829
    const/4 v7, 0x0

    .line 830
    .local v7, "isSendSms":Z
    const/4 v14, 0x5

    move/from16 v0, p1

    if-ne v0, v14, :cond_0

    const/4 v7, 0x1

    .line 831
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/safe/MobileSafeService;->mDialog:Landroid/app/AlertDialog;

    if-eqz v14, :cond_1

    .line 832
    return-void

    .line 834
    :cond_1
    if-nez p3, :cond_2

    .line 835
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "permission <"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "> is dangrous, whether or not grant it ?"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 838
    :cond_2
    new-instance v10, Lcom/android/server/safe/MobileSafeService$SafeAlertDialog;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/safe/MobileSafeService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v10, v0, v14}, Lcom/android/server/safe/MobileSafeService$SafeAlertDialog;-><init>(Lcom/android/server/safe/MobileSafeService;Landroid/content/Context;)V

    .line 843
    .local v10, "safeDlg":Lcom/android/server/safe/MobileSafeService$SafeAlertDialog;
    invoke-virtual {v10}, Lcom/android/server/safe/MobileSafeService$SafeAlertDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v14

    const v15, 0x10900cf

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    .line 844
    .local v13, "v":Landroid/view/View;
    const v14, 0x1020422

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    .line 845
    .local v5, "cb":Landroid/widget/CheckBox;
    const v14, 0x1040637

    invoke-virtual {v5, v14}, Landroid/widget/CheckBox;->setText(I)V

    .line 846
    if-eqz v7, :cond_4

    .line 847
    const/4 v14, 0x0

    invoke-virtual {v5, v14}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 851
    :goto_0
    if-eqz v7, :cond_5

    .line 852
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/safe/MobileSafeService;->mIndexArray:[I

    const/4 v15, 0x0

    aget v4, v14, v15

    .line 853
    .local v4, "beginIndex":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/safe/MobileSafeService;->mIndexArray:[I

    const/4 v15, 0x1

    aget v6, v14, v15

    .line 854
    .local v6, "endIndex":I
    const-string/jumbo v14, "xulei"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "mIndexArray[0] = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    const-string/jumbo v14, "xulei"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "mIndexArray[1] = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    new-instance v8, Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, p3

    invoke-direct {v8, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 857
    .local v8, "mSpannableStringBuilder":Landroid/text/SpannableStringBuilder;
    new-instance v14, Landroid/text/style/ForegroundColorSpan;

    const/high16 v15, -0x10000

    invoke-direct {v14, v15}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v15, 0x22

    invoke-virtual {v8, v14, v4, v6, v15}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 858
    const v14, 0x1020421

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 859
    .local v11, "tv_msg":Landroid/widget/TextView;
    invoke-virtual {v11, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 864
    .end local v4    # "beginIndex":I
    .end local v6    # "endIndex":I
    .end local v8    # "mSpannableStringBuilder":Landroid/text/SpannableStringBuilder;
    :goto_1
    const v14, 0x1020420

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 865
    .local v12, "tv_title":Landroid/widget/TextView;
    const v14, 0x1040633

    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setText(I)V

    .line 866
    sget-object v14, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v15, 0x1

    invoke-virtual {v12, v14, v15}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 867
    invoke-virtual {v10, v13}, Lcom/android/server/safe/MobileSafeService$SafeAlertDialog;->setView(Landroid/view/View;)V

    .line 868
    const/4 v14, 0x0

    invoke-virtual {v10, v14}, Lcom/android/server/safe/MobileSafeService$SafeAlertDialog;->setCancelable(Z)V

    .line 869
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/safe/MobileSafeService;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x1040635

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    new-instance v15, Lcom/android/server/safe/MobileSafeService$1;

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    invoke-direct {v15, v0, v1, v2}, Lcom/android/server/safe/MobileSafeService$1;-><init>(Lcom/android/server/safe/MobileSafeService;II)V

    const/16 v16, -0x1

    move/from16 v0, v16

    invoke-virtual {v10, v0, v14, v15}, Lcom/android/server/safe/MobileSafeService$SafeAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 879
    const/16 v14, 0x14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/safe/MobileSafeService;->getNegativeButtonText(I)Ljava/lang/String;

    move-result-object v14

    new-instance v15, Lcom/android/server/safe/MobileSafeService$2;

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    invoke-direct {v15, v0, v5, v1, v2}, Lcom/android/server/safe/MobileSafeService$2;-><init>(Lcom/android/server/safe/MobileSafeService;Landroid/widget/CheckBox;II)V

    const/16 v16, -0x2

    move/from16 v0, v16

    invoke-virtual {v10, v0, v14, v15}, Lcom/android/server/safe/MobileSafeService$SafeAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 891
    invoke-virtual {v10}, Lcom/android/server/safe/MobileSafeService$SafeAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v14

    const/16 v15, 0x7da

    invoke-virtual {v14, v15}, Landroid/view/Window;->setType(I)V

    .line 894
    invoke-virtual {v10}, Lcom/android/server/safe/MobileSafeService$SafeAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 895
    .local v3, "attrs":Landroid/view/WindowManager$LayoutParams;
    const-string/jumbo v14, "permDialog"

    invoke-virtual {v3, v14}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 896
    iget v14, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v14, v14, 0x110

    iput v14, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 898
    invoke-virtual {v10}, Lcom/android/server/safe/MobileSafeService$SafeAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v14

    invoke-virtual {v14, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 900
    invoke-virtual {v10}, Lcom/android/server/safe/MobileSafeService$SafeAlertDialog;->show()V

    .line 901
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/server/safe/MobileSafeService;->mDialog:Landroid/app/AlertDialog;

    .line 902
    if-eqz v7, :cond_3

    .line 903
    const/4 v14, -0x1

    invoke-virtual {v10, v14}, Lcom/android/server/safe/MobileSafeService$SafeAlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v9

    .line 904
    .local v9, "positiveButton":Landroid/widget/Button;
    const/high16 v14, -0x10000

    invoke-virtual {v9, v14}, Landroid/widget/Button;->setTextColor(I)V

    .line 828
    .end local v9    # "positiveButton":Landroid/widget/Button;
    :cond_3
    return-void

    .line 849
    .end local v3    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v11    # "tv_msg":Landroid/widget/TextView;
    .end local v12    # "tv_title":Landroid/widget/TextView;
    :cond_4
    const/4 v14, 0x1

    invoke-virtual {v5, v14}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_0

    .line 861
    :cond_5
    const v14, 0x1020421

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 862
    .restart local v11    # "tv_msg":Landroid/widget/TextView;
    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method

.method private showConfirmHmctDialog(IILjava/lang/String;)V
    .locals 19
    .param p1, "permID"    # I
    .param p2, "uid"    # I
    .param p3, "msg"    # Ljava/lang/String;

    .prologue
    .line 909
    const/4 v9, 0x0

    .line 910
    .local v9, "isSendSms":Z
    const/16 v16, 0x5

    move/from16 v0, p1

    move/from16 v1, v16

    if-ne v0, v1, :cond_0

    const/4 v9, 0x1

    .line 911
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/safe/MobileSafeService;->mHmctDialog:Lcom/hmct/hmcttheme/HmctAlertDialog;

    move-object/from16 v16, v0

    if-eqz v16, :cond_1

    .line 912
    return-void

    .line 914
    :cond_1
    if-nez p3, :cond_2

    .line 915
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "permission <"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "> is dangrous, whether or not grant it ?"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 918
    :cond_2
    new-instance v6, Lcom/hmct/hmcttheme/HmctAlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/safe/MobileSafeService;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-static {}, Lcom/hmct/hmcttheme/VisionUtils;->getHmctDialogTheme()I

    move-result v17

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v6, v0, v1}, Lcom/hmct/hmcttheme/HmctAlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 922
    .local v6, "builder":Lcom/hmct/hmcttheme/HmctAlertDialog$Builder;
    invoke-virtual {v6}, Lcom/hmct/hmcttheme/HmctAlertDialog$Builder;->create()Lcom/hmct/hmcttheme/HmctAlertDialog;

    move-result-object v12

    .line 923
    .local v12, "safeHmctDlg":Lcom/hmct/hmcttheme/HmctAlertDialog;
    invoke-virtual {v12}, Lcom/hmct/hmcttheme/HmctAlertDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v16

    const v17, 0x10900cf

    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v18}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v15

    .line 924
    .local v15, "v":Landroid/view/View;
    const v16, 0x1020422

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckBox;

    .line 925
    .local v7, "cb":Landroid/widget/CheckBox;
    const v16, 0x1040637

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/widget/CheckBox;->setText(I)V

    .line 926
    if-eqz v9, :cond_4

    .line 927
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 931
    :goto_0
    if-eqz v9, :cond_5

    .line 932
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/safe/MobileSafeService;->mIndexArray:[I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget v5, v16, v17

    .line 933
    .local v5, "beginIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/safe/MobileSafeService;->mIndexArray:[I

    move-object/from16 v16, v0

    const/16 v17, 0x1

    aget v8, v16, v17

    .line 934
    .local v8, "endIndex":I
    const-string/jumbo v16, "xulei"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "mIndexArray[0] = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    const-string/jumbo v16, "xulei"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "mIndexArray[1] = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    new-instance v10, Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, p3

    invoke-direct {v10, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 937
    .local v10, "mSpannableStringBuilder":Landroid/text/SpannableStringBuilder;
    new-instance v16, Landroid/text/style/ForegroundColorSpan;

    const/high16 v17, -0x10000

    invoke-direct/range {v16 .. v17}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v17, 0x22

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v10, v0, v5, v8, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 938
    const v16, 0x1020421

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 939
    .local v13, "tv_msg":Landroid/widget/TextView;
    invoke-virtual {v13, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 944
    .end local v5    # "beginIndex":I
    .end local v8    # "endIndex":I
    .end local v10    # "mSpannableStringBuilder":Landroid/text/SpannableStringBuilder;
    :goto_1
    const v16, 0x1020420

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 945
    .local v14, "tv_title":Landroid/widget/TextView;
    const v16, 0x1040633

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(I)V

    .line 946
    sget-object v16, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/16 v17, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v14, v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 947
    invoke-virtual {v12, v15}, Lcom/hmct/hmcttheme/HmctAlertDialog;->setView(Landroid/view/View;)V

    .line 948
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/hmct/hmcttheme/HmctAlertDialog;->setCancelable(Z)V

    .line 949
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/safe/MobileSafeService;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x1040635

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    new-instance v17, Lcom/android/server/safe/MobileSafeService$3;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, p2

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/safe/MobileSafeService$3;-><init>(Lcom/android/server/safe/MobileSafeService;II)V

    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v12, v0, v1, v2}, Lcom/hmct/hmcttheme/HmctAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 959
    const/16 v16, 0x14

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/server/safe/MobileSafeService;->getNegativeButtonText(I)Ljava/lang/String;

    move-result-object v16

    new-instance v17, Lcom/android/server/safe/MobileSafeService$4;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, p2

    move/from16 v3, p1

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/android/server/safe/MobileSafeService$4;-><init>(Lcom/android/server/safe/MobileSafeService;Landroid/widget/CheckBox;II)V

    const/16 v18, -0x2

    move/from16 v0, v18

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v12, v0, v1, v2}, Lcom/hmct/hmcttheme/HmctAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 971
    invoke-virtual {v12}, Lcom/hmct/hmcttheme/HmctAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v16

    const/16 v17, 0x7da

    invoke-virtual/range {v16 .. v17}, Landroid/view/Window;->setType(I)V

    .line 974
    invoke-virtual {v12}, Lcom/hmct/hmcttheme/HmctAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 975
    .local v4, "attrs":Landroid/view/WindowManager$LayoutParams;
    const-string/jumbo v16, "permDialog"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 976
    iget v0, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    move/from16 v16, v0

    move/from16 v0, v16

    or-int/lit16 v0, v0, 0x110

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 978
    invoke-virtual {v12}, Lcom/hmct/hmcttheme/HmctAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 980
    invoke-virtual {v12}, Lcom/hmct/hmcttheme/HmctAlertDialog;->show()V

    .line 981
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/server/safe/MobileSafeService;->mHmctDialog:Lcom/hmct/hmcttheme/HmctAlertDialog;

    .line 982
    if-eqz v9, :cond_3

    .line 983
    const/16 v16, -0x1

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/hmct/hmcttheme/HmctAlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v11

    .line 984
    .local v11, "positiveButton":Landroid/widget/Button;
    const/high16 v16, -0x10000

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 908
    .end local v11    # "positiveButton":Landroid/widget/Button;
    :cond_3
    return-void

    .line 929
    .end local v4    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v13    # "tv_msg":Landroid/widget/TextView;
    .end local v14    # "tv_title":Landroid/widget/TextView;
    :cond_4
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_0

    .line 941
    :cond_5
    const v16, 0x1020421

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 942
    .restart local v13    # "tv_msg":Landroid/widget/TextView;
    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method

.method private storeAutoRunRecordL(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "allowAutoRun"    # Z

    .prologue
    .line 602
    new-instance v0, Lcom/android/server/safe/MobileSafeService$AutoRunRecordBody;

    invoke-direct {v0, p0}, Lcom/android/server/safe/MobileSafeService$AutoRunRecordBody;-><init>(Lcom/android/server/safe/MobileSafeService;)V

    .line 603
    .local v0, "arbody":Lcom/android/server/safe/MobileSafeService$AutoRunRecordBody;
    iput-object p1, v0, Lcom/android/server/safe/MobileSafeService$AutoRunRecordBody;->pkgName:Ljava/lang/String;

    .line 604
    iput-boolean p2, v0, Lcom/android/server/safe/MobileSafeService$AutoRunRecordBody;->allow:Z

    .line 605
    iget-object v1, p0, Lcom/android/server/safe/MobileSafeService;->mAutoRunHandler:Lcom/android/server/safe/MobileSafeService$AutoRunHandler;

    iget-object v2, p0, Lcom/android/server/safe/MobileSafeService;->mAutoRunHandler:Lcom/android/server/safe/MobileSafeService$AutoRunHandler;

    const/16 v3, 0x7d2

    invoke-virtual {v2, v3, v0}, Lcom/android/server/safe/MobileSafeService$AutoRunHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/safe/MobileSafeService$AutoRunHandler;->sendMessage(Landroid/os/Message;)Z

    .line 601
    return-void
.end method


# virtual methods
.method public delAssociateRunAppFile(Ljava/lang/String;)V
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 1371
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "/data/system/associaterun/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1372
    .local v0, "delFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1373
    return-void

    .line 1375
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1370
    return-void
.end method

.method public getAllPackageInfoExL()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/safe/PackageInfoEx;",
            ">;"
        }
    .end annotation

    .prologue
    .line 418
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 419
    .local v3, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/safe/PackageInfoEx;>;"
    iget-object v4, p0, Lcom/android/server/safe/MobileSafeService;->mPkgInfoExMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "be$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 420
    .local v1, "be":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/safe/PackageInfoEx;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 421
    .local v0, "appUserId":I
    iget v4, p0, Lcom/android/server/safe/MobileSafeService;->mUserID:I

    if-ne v0, v4, :cond_0

    .line 422
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/safe/PackageInfoEx;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 425
    .end local v0    # "appUserId":I
    .end local v1    # "be":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/safe/PackageInfoEx;>;"
    :cond_1
    return-object v3
.end method

.method public getAssociateRunAPPList()V
    .locals 7

    .prologue
    .line 646
    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "/data/system/associaterun/"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 647
    .local v3, "root":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 648
    return-void

    .line 650
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 651
    .local v0, "files":[Ljava/io/File;
    array-length v1, v0

    .line 652
    .local v1, "filesLength":I
    if-nez v1, :cond_1

    .line 653
    return-void

    .line 654
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 655
    aget-object v4, v0, v2

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 656
    const-string/jumbo v4, "MobileSafeService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "files[i]: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v0, v2

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    aget-object v4, v0, v2

    invoke-direct {p0, v4}, Lcom/android/server/safe/MobileSafeService;->readAssociateRunPkgFromXml(Ljava/io/File;)V

    .line 654
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 645
    :cond_3
    return-void
.end method

.method public onBootPhase(I)V
    .locals 4
    .param p1, "phase"    # I

    .prologue
    .line 371
    const-string/jumbo v0, "MobileSafeService"

    const-string/jumbo v1, "onBootPhase"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_1

    .line 373
    invoke-direct {p0}, Lcom/android/server/safe/MobileSafeService;->savePrebuildAppPermission()V

    .line 376
    const-string/jumbo v0, "MobileSafeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mUpdateWhiteList = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/safe/MobileSafeService;->mUpdateWhiteList:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    iget-boolean v0, p0, Lcom/android/server/safe/MobileSafeService;->mUpdateWhiteList:Z

    if-eqz v0, :cond_0

    .line 378
    invoke-direct {p0}, Lcom/android/server/safe/MobileSafeService;->initWhiteListXmlFile()V

    .line 379
    const-string/jumbo v0, "persist.sys.whitelist.version"

    iget v1, p0, Lcom/android/server/safe/MobileSafeService;->mWhiteListVersion:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/safe/MobileSafeService;->getAssociateRunAPPList()V

    .line 385
    invoke-direct {p0}, Lcom/android/server/safe/MobileSafeService;->initSafetyMode()V

    .line 388
    iget-object v0, p0, Lcom/android/server/safe/MobileSafeService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 389
    const-string/jumbo v1, "safety_mode_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/safe/MobileSafeService$SafetySettingsObserver;

    invoke-direct {v2, p0}, Lcom/android/server/safe/MobileSafeService$SafetySettingsObserver;-><init>(Lcom/android/server/safe/MobileSafeService;)V

    const/4 v3, 0x0

    .line 388
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 392
    new-instance v0, Lcom/android/server/safe/MobileSafeService$UserRemovedReceiver;

    iget-object v1, p0, Lcom/android/server/safe/MobileSafeService;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/server/safe/MobileSafeService$UserRemovedReceiver;-><init>(Lcom/android/server/safe/MobileSafeService;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/safe/MobileSafeService;->mUserRemovedReceiver:Lcom/android/server/safe/MobileSafeService$UserRemovedReceiver;

    .line 370
    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 365
    const-string/jumbo v0, "MobileSafeService"

    const-string/jumbo v1, "onStart, publish service"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    const-string/jumbo v0, "mobile_safe"

    new-instance v1, Lcom/android/server/safe/MobileSafeService$MobileSafeServiceWrapper;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/safe/MobileSafeService$MobileSafeServiceWrapper;-><init>(Lcom/android/server/safe/MobileSafeService;Lcom/android/server/safe/MobileSafeService$MobileSafeServiceWrapper;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/safe/MobileSafeService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 364
    return-void
.end method

.method public onStartUser(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 404
    const-string/jumbo v0, "MobileSafeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStartUser userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    iput p1, p0, Lcom/android/server/safe/MobileSafeService;->mUserID:I

    .line 406
    invoke-direct {p0}, Lcom/android/server/safe/MobileSafeService;->savePrebuildAppPermission()V

    .line 403
    return-void
.end method

.method public onSwitchUser(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 398
    const-string/jumbo v0, "MobileSafeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSwitchUser userId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    iput p1, p0, Lcom/android/server/safe/MobileSafeService;->mUserID:I

    .line 397
    return-void
.end method
