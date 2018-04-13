.class public final Lorg/ifaa/android/manager/IFAAManagerImpl;
.super Lorg/ifaa/android/manager/IFAAManager;
.source "IFAAManagerImpl.java"


# static fields
.field public static final DEBUG:Z = true

.field public static final TAG:Ljava/lang/String; = "IFAAManager"

.field private static final mLock:Ljava/lang/Object;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/ifaa/android/manager/IFAAManagerImpl;->mLock:Ljava/lang/Object;

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0}, Lorg/ifaa/android/manager/IFAAManager;-><init>()V

    .line 33
    iput-object p1, p0, Lorg/ifaa/android/manager/IFAAManagerImpl;->mContext:Landroid/content/Context;

    .line 32
    return-void
.end method

.method private ifaaLog(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 28
    const-string/jumbo v0, "IFAAManager"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    return-void
.end method


# virtual methods
.method public getDeviceModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    const-string/jumbo v0, "getDeviceModel"

    invoke-direct {p0, v0}, Lorg/ifaa/android/manager/IFAAManagerImpl;->ifaaLog(Ljava/lang/String;)V

    .line 39
    const-string/jumbo v0, "hisense-hs8937qc"

    return-object v0
.end method

.method public getSupportBIOTypes(Landroid/content/Context;)I
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    const-string/jumbo v0, "getSupportBIOTypes"

    invoke-direct {p0, v0}, Lorg/ifaa/android/manager/IFAAManagerImpl;->ifaaLog(Ljava/lang/String;)V

    .line 51
    const/4 v0, 0x1

    return v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 44
    const-string/jumbo v0, "getVersion"

    invoke-direct {p0, v0}, Lorg/ifaa/android/manager/IFAAManagerImpl;->ifaaLog(Ljava/lang/String;)V

    .line 45
    const/4 v0, 0x1

    return v0
.end method

.method public startBIOManager(Landroid/content/Context;I)I
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "authType"    # I

    .prologue
    .line 56
    const-string/jumbo v1, "startBIOManager"

    invoke-direct {p0, v1}, Lorg/ifaa/android/manager/IFAAManagerImpl;->ifaaLog(Ljava/lang/String;)V

    .line 57
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 58
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "ro.hmct.style.vision"

    const-string/jumbo v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    const-string/jumbo v1, "com.android.settings"

    const-string/jumbo v2, "com.android.settings.Settings$HmctFingerprintSettingsActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    :goto_0
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 65
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 66
    const/4 v1, 0x0

    return v1

    .line 61
    :cond_0
    const-string/jumbo v1, "com.android.settings"

    const-string/jumbo v2, "com.android.settings.fingerprint.FingerprintSettings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method
