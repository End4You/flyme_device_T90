.class public Lcom/android/internal/telephony/HmctTelephonyNotifier;
.super Landroid/os/Handler;
.source "HmctTelephonyNotifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/HmctTelephonyNotifier$1;
    }
.end annotation


# static fields
.field private static final CARD_NOT_PRESENT:I = -0x2

.field private static final INVALID_STATE:I = -0x1

.field private static final NOT_PROVISIONED:I = 0x0

.field private static final PROVISIONED:I = 0x1


# instance fields
.field private final DBG:I

.field private final EVENT_NOTIFY_NW_REG_STATE_DELAY:I

.field private final EVENT_NOTIFY_SIGNALSTRENGTH_DELAY:I

.field private final EVENT_NOTIFY_SIGNALSTRENGTH_DELAY_CS:I

.field private final EVENT_NOTIFY_SIGNALSTRENGTH_DELAY_PS:I

.field private final SIM_COUNT:I

.field private final TAG:Ljava/lang/String;

.field private final TAG_SIG:Ljava/lang/String;

.field private final TAG_SS:Ljava/lang/String;

.field private final mCi:Lcom/android/internal/telephony/CommandsInterface;

.field private final mContext:Landroid/content/Context;

.field private mCr:Landroid/content/ContentResolver;

.field private mDdsChanged:Z

.field private mDdsObserver:Landroid/database/ContentObserver;

.field private mDefaultSignalStrengthMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mFiveSignalStrengthDelay:[I

.field private final mFourSignalStrengthDelay:[I

.field private final mHmctFiveSignalStrength:[[Ljava/lang/String;

.field private final mHmctFourSignalStrength:[[Ljava/lang/String;

.field private mHmctSignalStrength:[[Ljava/lang/String;

.field private final mName:Ljava/lang/String;

.field private final mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

.field private final mPhoneId:I

.field private mReportSignalStrength:Landroid/telephony/SignalStrength;

.field private mSSLock:Ljava/lang/Object;

.field private final mServiceStateDelaySeconds:I

.field private final mShowSigLevel0:Z

.field private mSigLock:Ljava/lang/Object;

.field private mSignalStrengthDelaySeconds:[I

.field private mSignalStrengthLength:I

.field private final mSstChangedRegistrants:Landroid/os/RegistrantList;

.field private mUiServiceState:Landroid/telephony/ServiceState;

.field private mUiSignalStrength:Landroid/telephony/SignalStrength;


# direct methods
.method static synthetic -set0(Lcom/android/internal/telephony/HmctTelephonyNotifier;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mDdsChanged:Z

    return p1
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/android/internal/telephony/PhoneNotifier;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;ZI)V
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "notifier"    # Lcom/android/internal/telephony/PhoneNotifier;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p5, "unitTestMode"    # Z
    .param p6, "phoneId"    # I

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x5

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 124
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 32
    const-string/jumbo v0, "TelephonyNotifier"

    iput-object v0, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->TAG:Ljava/lang/String;

    .line 33
    const-string/jumbo v0, "[SIG]"

    iput-object v0, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->TAG_SIG:Ljava/lang/String;

    .line 34
    const-string/jumbo v0, "[SS]"

    iput-object v0, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->TAG_SS:Ljava/lang/String;

    .line 39
    const-string/jumbo v0, "persist.radio.hmct.log_level"

    invoke-static {v0, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->DBG:I

    .line 45
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mSstChangedRegistrants:Landroid/os/RegistrantList;

    .line 47
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->SIM_COUNT:I

    .line 61
    const/16 v0, 0xa

    filled-new-array {v0, v6, v6, v6, v6}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mFiveSignalStrengthDelay:[I

    .line 62
    const/16 v0, 0xa

    filled-new-array {v0, v6, v6, v6}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mFourSignalStrengthDelay:[I

    .line 65
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mServiceStateDelaySeconds:I

    .line 67
    iput v3, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->EVENT_NOTIFY_SIGNALSTRENGTH_DELAY:I

    .line 68
    iput v4, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->EVENT_NOTIFY_NW_REG_STATE_DELAY:I

    .line 70
    iput v7, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->EVENT_NOTIFY_SIGNALSTRENGTH_DELAY_CS:I

    .line 71
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->EVENT_NOTIFY_SIGNALSTRENGTH_DELAY_PS:I

    .line 77
    new-array v0, v6, [[Ljava/lang/String;

    .line 79
    new-array v1, v4, [Ljava/lang/String;

    const-string/jumbo v2, "gw"

    aput-object v2, v1, v5

    const-string/jumbo v2, "-90,-95,-100,-105,-109"

    aput-object v2, v1, v3

    aput-object v1, v0, v5

    .line 80
    new-array v1, v4, [Ljava/lang/String;

    const-string/jumbo v2, "1x"

    aput-object v2, v1, v5

    const-string/jumbo v2, "-95,-102,-105,-112,-125"

    aput-object v2, v1, v3

    aput-object v1, v0, v3

    .line 81
    new-array v1, v4, [Ljava/lang/String;

    const-string/jumbo v2, "evdo"

    aput-object v2, v1, v5

    const-string/jumbo v2, "-95,-102,-105,-112,-125"

    aput-object v2, v1, v3

    aput-object v1, v0, v4

    .line 82
    new-array v1, v4, [Ljava/lang/String;

    const-string/jumbo v2, "td"

    aput-object v2, v1, v5

    const-string/jumbo v2, "-82,-89,-95,-100,-110"

    aput-object v2, v1, v3

    aput-object v1, v0, v7

    .line 83
    new-array v1, v4, [Ljava/lang/String;

    const-string/jumbo v2, "lte"

    aput-object v2, v1, v5

    const-string/jumbo v2, "-97,-105,-110,-115,-120"

    aput-object v2, v1, v3

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 77
    iput-object v0, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mHmctFiveSignalStrength:[[Ljava/lang/String;

    .line 86
    new-array v0, v6, [[Ljava/lang/String;

    .line 88
    new-array v1, v4, [Ljava/lang/String;

    const-string/jumbo v2, "gw"

    aput-object v2, v1, v5

    const-string/jumbo v2, "-90,-97,-103,-110"

    aput-object v2, v1, v3

    aput-object v1, v0, v5

    .line 89
    new-array v1, v4, [Ljava/lang/String;

    const-string/jumbo v2, "1x"

    aput-object v2, v1, v5

    const-string/jumbo v2, "-95,-104,-112,-125"

    aput-object v2, v1, v3

    aput-object v1, v0, v3

    .line 90
    new-array v1, v4, [Ljava/lang/String;

    const-string/jumbo v2, "evdo"

    aput-object v2, v1, v5

    const-string/jumbo v2, "-95,-104,-112,-125"

    aput-object v2, v1, v3

    aput-object v1, v0, v4

    .line 91
    new-array v1, v4, [Ljava/lang/String;

    const-string/jumbo v2, "td"

    aput-object v2, v1, v5

    const-string/jumbo v2, "-90,-97,-103,-110"

    aput-object v2, v1, v3

    aput-object v1, v0, v7

    .line 92
    new-array v1, v4, [Ljava/lang/String;

    const-string/jumbo v2, "lte"

    aput-object v2, v1, v5

    const-string/jumbo v2, "-97,-105,-113,-120"

    aput-object v2, v1, v3

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 86
    iput-object v0, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mHmctFourSignalStrength:[[Ljava/lang/String;

    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mDefaultSignalStrengthMap:Ljava/util/HashMap;

    .line 98
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mSigLock:Ljava/lang/Object;

    .line 99
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mSSLock:Ljava/lang/Object;

    .line 104
    iput-boolean v3, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mShowSigLevel0:Z

    .line 113
    iput-boolean v5, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mDdsChanged:Z

    .line 114
    new-instance v0, Lcom/android/internal/telephony/HmctTelephonyNotifier$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/HmctTelephonyNotifier$1;-><init>(Lcom/android/internal/telephony/HmctTelephonyNotifier;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mDdsObserver:Landroid/database/ContentObserver;

    .line 126
    iput p6, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mPhoneId:I

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "TelephonyNotifier init for phone"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", log_level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->DBG:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->logd(Ljava/lang/String;)V

    .line 128
    iput-object p1, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mName:Ljava/lang/String;

    .line 129
    iput-object p2, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    .line 130
    iput-object p3, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mContext:Landroid/content/Context;

    .line 131
    iput-object p4, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 132
    iget-object v0, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mCr:Landroid/content/ContentResolver;

    .line 133
    invoke-direct {p0}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->init()V

    .line 125
    return-void
.end method

.method private delayNotifySignal(I)V
    .locals 4
    .param p1, "message"    # I

    .prologue
    .line 1125
    iget-object v2, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mSignalStrengthDelaySeconds:[I

    const/4 v3, 0x0

    aget v0, v2, v3

    .line 1126
    .local v0, "delaySec":I
    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 1127
    .local v1, "msg":Landroid/os/Message;
    iput p1, v1, Landroid/os/Message;->what:I

    .line 1128
    mul-int/lit16 v2, v0, 0x3e8

    int-to-long v2, v2

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1124
    return-void
.end method

.method private getDataNetworkRat(Landroid/telephony/ServiceState;)I
    .locals 2
    .param p1, "ss"    # Landroid/telephony/ServiceState;

    .prologue
    .line 864
    if-eqz p1, :cond_0

    .line 865
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v0

    return v0

    .line 867
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->DBG:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    const-string/jumbo v0, "getNetworkRat(): ss=null"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->loge(Ljava/lang/String;)V

    .line 868
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private getDbmValueWithLevel(Ljava/lang/String;I)I
    .locals 10
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "level"    # I

    .prologue
    const/4 v9, 0x3

    const/4 v8, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 446
    iget-object v5, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mHmctSignalStrength:[[Ljava/lang/String;

    array-length v2, v5

    .line 447
    .local v2, "len":I
    const/4 v0, 0x0

    .line 448
    .local v0, "i":I
    if-ltz p2, :cond_0

    iget v5, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mSignalStrengthLength:I

    if-le p2, v5, :cond_2

    .line 449
    :cond_0
    iget v5, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->DBG:I

    if-lt v5, v7, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getDbmValueWithLevel(): param error, level="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", return -1"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->loge(Ljava/lang/String;)V

    .line 450
    :cond_1
    const-string/jumbo v5, "getDbmValueWithLevel():"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->printStackTrace(Ljava/lang/String;)V

    .line 451
    return v8

    .line 453
    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_3

    .line 454
    iget-object v5, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mHmctSignalStrength:[[Ljava/lang/String;

    aget-object v5, v5, v0

    aget-object v5, v5, v6

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 458
    :cond_3
    if-lt v0, v2, :cond_6

    .line 459
    iget v5, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->DBG:I

    if-lt v5, v7, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getDbmValueWithLevel(): un-matched key: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", level="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", return -1"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->loge(Ljava/lang/String;)V

    .line 460
    :cond_4
    const-string/jumbo v5, "getDbmValueWithLevel():"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->printStackTrace(Ljava/lang/String;)V

    .line 461
    return v8

    .line 453
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 464
    :cond_6
    iget-object v5, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mHmctSignalStrength:[[Ljava/lang/String;

    aget-object v5, v5, v0

    aget-object v5, v5, v7

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 466
    .local v4, "tmp":[Ljava/lang/String;
    iget v5, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mSignalStrengthLength:I

    new-array v3, v5, [I

    .line 467
    .local v3, "sigScope":[I
    const/4 v1, 0x0

    .line 468
    .local v1, "j":I
    const/4 v1, 0x0

    :goto_1
    array-length v5, v4

    if-ge v1, v5, :cond_7

    .line 469
    aget-object v5, v4, v1

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v3, v1

    .line 468
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 472
    :cond_7
    if-nez p2, :cond_9

    .line 473
    iget v5, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->DBG:I

    if-lt v5, v9, :cond_8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getDbmValueWithLevel("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mSignalStrengthLength:I

    add-int/lit8 v6, v6, -0x1

    aget v6, v3, v6

    add-int/lit8 v6, v6, -0x2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "dBm"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->logd(Ljava/lang/String;)V

    .line 474
    :cond_8
    iget v5, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mSignalStrengthLength:I

    add-int/lit8 v5, v5, -0x1

    aget v5, v3, v5

    add-int/lit8 v5, v5, -0x2

    return v5

    .line 476
    :cond_9
    iget v5, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->DBG:I

    if-lt v5, v9, :cond_a

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getDbmValueWithLevel("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mSignalStrengthLength:I

    sub-int/2addr v6, p2

    aget v6, v3, v6

    add-int/lit8 v6, v6, 0x2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "dBm"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->logd(Ljava/lang/String;)V

    .line 477
    :cond_a
    iget v5, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mSignalStrengthLength:I

    sub-int/2addr v5, p2

    aget v5, v3, v5

    add-int/lit8 v5, v5, 0x2

    return v5
.end method

.method private getNetworkClass(Landroid/telephony/ServiceState;)I
    .locals 2
    .param p1, "ss"    # Landroid/telephony/ServiceState;

    .prologue
    const/4 v1, 0x0

    .line 635
    if-eqz p1, :cond_0

    .line 636
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->getNetworkRat(Landroid/telephony/ServiceState;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 661
    return v1

    .line 643
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 655
    :pswitch_1
    const/4 v0, 0x2

    return v0

    .line 659
    :pswitch_2
    const/4 v0, 0x3

    return v0

    .line 665
    :cond_0
    return v1

    .line 636
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private getNetworkRat(Landroid/telephony/ServiceState;)I
    .locals 4
    .param p1, "ss"    # Landroid/telephony/ServiceState;

    .prologue
    const/4 v3, 0x0

    .line 842
    if-eqz p1, :cond_1

    .line 843
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v0

    .line 844
    .local v0, "ps_rat":I
    if-eqz v0, :cond_0

    .line 845
    return v0

    .line 848
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v1

    return v1

    .line 851
    .end local v0    # "ps_rat":I
    :cond_1
    iget v1, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->DBG:I

    const/4 v2, 0x1

    if-lt v1, v2, :cond_2

    const-string/jumbo v1, "getNetworkRat(): ss=null"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->loge(Ljava/lang/String;)V

    .line 852
    :cond_2
    return v3
.end method

.method private getProvisionStatus(I)I
    .locals 6
    .param p1, "slotId"    # I

    .prologue
    .line 352
    const/4 v3, -0x1

    .line 356
    .local v3, "state":I
    :try_start_0
    const-string/jumbo v4, "extphone"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 355
    invoke-static {v4}, Lorg/codeaurora/internal/IExtTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lorg/codeaurora/internal/IExtTelephony;

    move-result-object v2

    .line 357
    .local v2, "mExtTelephony":Lorg/codeaurora/internal/IExtTelephony;
    invoke-interface {v2, p1}, Lorg/codeaurora/internal/IExtTelephony;->getCurrentUiccCardProvisioningStatus(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 363
    .end local v2    # "mExtTelephony":Lorg/codeaurora/internal/IExtTelephony;
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getProvisionStatus("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "): state="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->logd(Ljava/lang/String;)V

    .line 364
    return v3

    .line 360
    :catch_0
    move-exception v1

    .line 361
    .local v1, "ex":Ljava/lang/NullPointerException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getProvisionStatus("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "): Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 358
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 359
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getProvisionStatus("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "): Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getSigDbmValueWithRat(Landroid/telephony/ServiceState;Landroid/telephony/SignalStrength;I)I
    .locals 4
    .param p1, "ss"    # Landroid/telephony/ServiceState;
    .param p2, "sig"    # Landroid/telephony/SignalStrength;
    .param p3, "rat"    # I

    .prologue
    const/4 v3, 0x3

    .line 382
    const/4 v1, -0x1

    .line 383
    .local v1, "value":I
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 384
    :cond_0
    iget v2, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->DBG:I

    const/4 v3, 0x1

    if-lt v2, v3, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getSigDbmValueWithRat(): parameter invalid. (ss="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")    (sig="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->loge(Ljava/lang/String;)V

    .line 385
    :cond_1
    const-string/jumbo v2, "getSigDbmValueWithRat():"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->printStackTrace(Ljava/lang/String;)V

    .line 386
    return v1

    .line 389
    :cond_2
    packed-switch p3, :pswitch_data_0

    .line 442
    :cond_3
    :goto_0
    iget v2, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->DBG:I

    if-lt v2, v3, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getSigDbmValueWithRat(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p3}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "dBm"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->logd(Ljava/lang/String;)V

    .line 443
    :cond_4
    return v1

    .line 391
    :pswitch_0
    const/4 v1, -0x1

    .line 392
    goto :goto_0

    .line 396
    :pswitch_1
    invoke-virtual {p2}, Landroid/telephony/SignalStrength;->getGsmDbm()I

    move-result v1

    goto :goto_0

    .line 400
    :pswitch_2
    invoke-virtual {p2}, Landroid/telephony/SignalStrength;->getGsmDbm()I

    move-result v1

    goto :goto_0

    .line 405
    :pswitch_3
    invoke-virtual {p2}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v1

    goto :goto_0

    .line 411
    :pswitch_4
    invoke-virtual {p2}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v1

    goto :goto_0

    .line 420
    :pswitch_5
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v0

    .line 421
    .local v0, "cs":I
    const/16 v2, 0x11

    if-ne v2, v0, :cond_5

    .line 422
    invoke-virtual {p2}, Landroid/telephony/SignalStrength;->getTdScdmaDbm()I

    move-result v1

    goto :goto_0

    .line 424
    :cond_5
    invoke-virtual {p2}, Landroid/telephony/SignalStrength;->getGsmDbm()I

    move-result v1

    goto :goto_0

    .line 429
    .end local v0    # "cs":I
    :pswitch_6
    invoke-virtual {p2}, Landroid/telephony/SignalStrength;->getLteDbm()I

    move-result v1

    goto :goto_0

    .line 433
    :pswitch_7
    invoke-virtual {p2}, Landroid/telephony/SignalStrength;->getTdScdmaDbm()I

    move-result v1

    goto :goto_0

    .line 436
    :pswitch_8
    iget v2, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->DBG:I

    if-lt v2, v3, :cond_3

    const-string/jumbo v2, "IWLAN, sig unknown"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 389
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_1
        :pswitch_7
        :pswitch_8
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method private getSigKeyWithRat(Landroid/telephony/ServiceState;I)Ljava/lang/String;
    .locals 4
    .param p1, "ss"    # Landroid/telephony/ServiceState;
    .param p2, "rat"    # I

    .prologue
    .line 481
    const-string/jumbo v1, ""

    .line 482
    .local v1, "key":Ljava/lang/String;
    if-nez p1, :cond_1

    .line 483
    iget v2, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->DBG:I

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    const-string/jumbo v2, "getSigKeyWithRat(): parameter invalid. ss=null"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->loge(Ljava/lang/String;)V

    .line 484
    :cond_0
    const-string/jumbo v2, "getSigKeyWithRat():"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->printStackTrace(Ljava/lang/String;)V

    .line 485
    return-object v1

    .line 487
    :cond_1
    packed-switch p2, :pswitch_data_0

    .line 538
    :goto_0
    :pswitch_0
    iget v2, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->DBG:I

    const/4 v3, 0x3

    if-lt v2, v3, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getSigKeyWithRat(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ----> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->logd(Ljava/lang/String;)V

    .line 539
    :cond_2
    return-object v1

    .line 495
    :pswitch_1
    const-string/jumbo v1, "gw"

    goto :goto_0

    .line 500
    :pswitch_2
    const-string/jumbo v1, "1x"

    goto :goto_0

    .line 506
    :pswitch_3
    const-string/jumbo v1, "evdo"

    goto :goto_0

    .line 515
    :pswitch_4
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v0

    .line 516
    .local v0, "cs":I
    const/16 v2, 0x11

    if-ne v2, v0, :cond_3

    .line 517
    const-string/jumbo v1, "td"

    goto :goto_0

    .line 519
    :cond_3
    const-string/jumbo v1, "gw"

    goto :goto_0

    .line 524
    .end local v0    # "cs":I
    :pswitch_5
    const-string/jumbo v1, "lte"

    goto :goto_0

    .line 528
    :pswitch_6
    const-string/jumbo v1, "td"

    goto :goto_0

    .line 531
    :pswitch_7
    iget v2, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->DBG:I

    const/4 v3, 0x2

    if-lt v2, v3, :cond_4

    const-string/jumbo v2, "IWLAN, sig unknown"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->logd(Ljava/lang/String;)V

    .line 532
    :cond_4
    const-string/jumbo v1, "iwlan"

    goto :goto_0

    .line 487
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_1
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method private getSigLevel(Ljava/lang/String;I)I
    .locals 11
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "dBm"    # I

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x1

    .line 542
    iget-object v7, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mHmctSignalStrength:[[Ljava/lang/String;

    array-length v3, v7

    .line 543
    .local v3, "len":I
    const/4 v0, 0x0

    .line 544
    .local v0, "i":I
    const/4 v4, 0x0

    .line 545
    .local v4, "level":I
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    .line 546
    iget-object v7, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mHmctSignalStrength:[[Ljava/lang/String;

    aget-object v7, v7, v0

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 550
    :cond_0
    if-lt v0, v3, :cond_3

    .line 551
    iget v7, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->DBG:I

    if-lt v7, v9, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getSigLevel(): un-matched key: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "dBm"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->loge(Ljava/lang/String;)V

    .line 552
    :cond_1
    const-string/jumbo v7, "getSigLevel():"

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->printStackTrace(Ljava/lang/String;)V

    .line 553
    return v4

    .line 545
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 555
    :cond_3
    iget v7, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->DBG:I

    if-lt v7, v10, :cond_4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getSigLevel("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "): i="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", value="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mHmctSignalStrength:[[Ljava/lang/String;

    aget-object v8, v8, v0

    aget-object v8, v8, v9

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->logd(Ljava/lang/String;)V

    .line 557
    :cond_4
    iget-object v7, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mHmctSignalStrength:[[Ljava/lang/String;

    aget-object v7, v7, v0

    aget-object v7, v7, v9

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 559
    .local v6, "tmp":[Ljava/lang/String;
    iget v7, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mSignalStrengthLength:I

    new-array v5, v7, [I

    .line 560
    .local v5, "sigScope":[I
    const/4 v1, 0x0

    .line 561
    .local v1, "j":I
    const/4 v1, 0x0

    :goto_1
    array-length v7, v6

    if-ge v1, v7, :cond_6

    .line 562
    aget-object v7, v6, v1

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput v7, v5, v1

    .line 563
    iget v7, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->DBG:I

    if-lt v7, v10, :cond_5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getSigLevel("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "): sigScope_value["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "]="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v8, v5, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->logd(Ljava/lang/String;)V

    .line 561
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 566
    :cond_6
    const/4 v7, -0x1

    if-eq v7, p2, :cond_7

    const v7, 0x7fffffff

    if-ne v7, p2, :cond_a

    .line 567
    :cond_7
    const/4 v4, 0x0

    .line 577
    :cond_8
    :goto_2
    iget v7, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->DBG:I

    if-lt v7, v10, :cond_9

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getSigLevel("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "): sigValue="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "dBm, level="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->logd(Ljava/lang/String;)V

    .line 578
    :cond_9
    return v4

    .line 569
    :cond_a
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_3
    iget v7, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mSignalStrengthLength:I

    if-ge v2, v7, :cond_8

    .line 570
    aget v7, v5, v2

    if-lt p2, v7, :cond_b

    .line 571
    iget v7, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mSignalStrengthLength:I

    sub-int v4, v7, v2

    .line 572
    goto :goto_2

    .line 569
    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method

.method private getSigLevelExt(Ljava/lang/String;Landroid/telephony/SignalStrength;)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "mSignalStrength"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 582
    if-nez p2, :cond_1

    .line 583
    iget v0, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->DBG:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getSigLevelExt(): parameter invalid. mSignalStrength ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->loge(Ljava/lang/String;)V

    .line 584
    :cond_0
    const-string/jumbo v0, "getSigLevelExt():"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->printStackTrace(Ljava/lang/String;)V

    .line 585
    const/4 v0, 0x0

    return v0

    .line 587
    :cond_1
    const-string/jumbo v0, "gw"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 588
    invoke-virtual {p2}, Landroid/telephony/SignalStrength;->getGsmLevel()I

    move-result v0

    return v0

    .line 589
    :cond_2
    const-string/jumbo v0, "1x"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 590
    invoke-virtual {p2}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v0

    return v0

    .line 591
    :cond_3
    const-string/jumbo v0, "evdo"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 592
    invoke-virtual {p2}, Landroid/telephony/SignalStrength;->getEvdoLevel()I

    move-result v0

    return v0

    .line 593
    :cond_4
    const-string/jumbo v0, "td"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 594
    invoke-virtual {p2}, Landroid/telephony/SignalStrength;->getTdScdmaLevel()I

    move-result v0

    return v0

    .line 596
    :cond_5
    invoke-virtual {p2}, Landroid/telephony/SignalStrength;->getLteLevel()I

    move-result v0

    return v0
.end method

.method private getVoiceNetworkRat(Landroid/telephony/ServiceState;)I
    .locals 2
    .param p1, "ss"    # Landroid/telephony/ServiceState;

    .prologue
    .line 856
    if-eqz p1, :cond_0

    .line 857
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v0

    return v0

    .line 859
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->DBG:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    const-string/jumbo v0, "getNetworkRat(): ss=null"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->loge(Ljava/lang/String;)V

    .line 860
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private hasService(Landroid/telephony/ServiceState;)Z
    .locals 3
    .param p1, "state"    # Landroid/telephony/ServiceState;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 371
    if-eqz p1, :cond_2

    .line 372
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v2

    if-eqz v2, :cond_0

    .line 373
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v2

    if-nez v2, :cond_1

    .line 371
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 373
    goto :goto_0

    :cond_2
    move v0, v1

    .line 371
    goto :goto_0
.end method

.method private init()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/16 v4, -0x68

    .line 145
    new-instance v0, Landroid/telephony/ServiceState;

    invoke-direct {v0}, Landroid/telephony/ServiceState;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mUiServiceState:Landroid/telephony/ServiceState;

    .line 146
    new-instance v0, Landroid/telephony/SignalStrength;

    invoke-direct {v0}, Landroid/telephony/SignalStrength;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mUiSignalStrength:Landroid/telephony/SignalStrength;

    .line 147
    new-instance v0, Landroid/telephony/SignalStrength;

    invoke-direct {v0}, Landroid/telephony/SignalStrength;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mReportSignalStrength:Landroid/telephony/SignalStrength;

    .line 148
    iget-object v0, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mCr:Landroid/content/ContentResolver;

    .line 149
    const-string/jumbo v1, "multi_sim_data_call"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 150
    iget-object v2, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mDdsObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    .line 148
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 159
    iget-object v0, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mDefaultSignalStrengthMap:Ljava/util/HashMap;

    const-string/jumbo v1, "gw"

    const/16 v2, -0x61

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    iget-object v0, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mDefaultSignalStrengthMap:Ljava/util/HashMap;

    const-string/jumbo v1, "1x"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    iget-object v0, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mDefaultSignalStrengthMap:Ljava/util/HashMap;

    const-string/jumbo v1, "evdo"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    iget-object v0, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mDefaultSignalStrengthMap:Ljava/util/HashMap;

    const-string/jumbo v1, "td"

    const/16 v2, -0x5b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    iget-object v0, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mDefaultSignalStrengthMap:Ljava/util/HashMap;

    const-string/jumbo v1, "lte"

    const/16 v2, -0x6b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    iget-object v0, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00eb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mSignalStrengthLength:I

    .line 166
    iget v0, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mSignalStrengthLength:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 167
    iget-object v0, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mHmctFiveSignalStrength:[[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mHmctSignalStrength:[[Ljava/lang/String;

    .line 168
    iget-object v0, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mFiveSignalStrengthDelay:[I

    iput-object v0, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mSignalStrengthDelaySeconds:[I

    .line 173
    :goto_0
    iget v0, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->DBG:I

    if-lt v0, v5, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mSignalStrengthLength = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mSignalStrengthLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->logd(Ljava/lang/String;)V

    .line 174
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->DBG:I

    if-lt v0, v5, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mSignalStrengthDelaySeconds = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mSignalStrengthDelaySeconds:[I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->logd(Ljava/lang/String;)V

    .line 143
    :cond_1
    return-void

    .line 170
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mHmctFourSignalStrength:[[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mHmctSignalStrength:[[Ljava/lang/String;

    .line 171
    iget-object v0, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mFourSignalStrengthDelay:[I

    iput-object v0, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mSignalStrengthDelaySeconds:[I

    goto :goto_0
.end method

.method private isAirplaneModeOn()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 367
    iget-object v2, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 368
    const-string/jumbo v3, "airplane_mode_on"

    .line 367
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private isAnyCallsInProgress(I)Z
    .locals 5
    .param p1, "phoneId"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 872
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 873
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_1

    .line 874
    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v4

    if-eq v3, v4, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0

    .line 877
    :cond_1
    iget v3, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->DBG:I

    if-lt v3, v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isAnyCallsInProgress("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "): phone=null"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->loge(Ljava/lang/String;)V

    .line 878
    :cond_2
    return v2
.end method

.method private isNeedtoSetDefaultSignalStrengthValue(Landroid/telephony/ServiceState;Landroid/telephony/SignalStrength;)Z
    .locals 11
    .param p1, "ss"    # Landroid/telephony/ServiceState;
    .param p2, "sig"    # Landroid/telephony/SignalStrength;

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 601
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 602
    :cond_0
    iget v6, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->DBG:I

    if-lt v6, v9, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isNeedtoSetDefaultSignalStrengthValue(): parameter invalid. (ss="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ")    (sig="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->loge(Ljava/lang/String;)V

    .line 603
    :cond_1
    const-string/jumbo v6, "isNeedtoSetDefaultSignalStrengthValue():"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->printStackTrace(Ljava/lang/String;)V

    .line 604
    return v8

    .line 607
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->getNetworkRat(Landroid/telephony/ServiceState;)I

    move-result v1

    .line 608
    .local v1, "rat":I
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->getSigKeyWithRat(Landroid/telephony/ServiceState;I)Ljava/lang/String;

    move-result-object v3

    .line 609
    .local v3, "sigKey":Ljava/lang/String;
    invoke-direct {p0, p1, p2, v1}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->getSigDbmValueWithRat(Landroid/telephony/ServiceState;Landroid/telephony/SignalStrength;I)I

    move-result v2

    .line 611
    .local v2, "sigDbm":I
    if-eqz v1, :cond_7

    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->getSigLevelExt(Ljava/lang/String;Landroid/telephony/SignalStrength;)I

    move-result v6

    if-nez v6, :cond_7

    .line 613
    iget v6, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->DBG:I

    const/4 v7, 0x3

    if-lt v6, v7, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isNeedtoSetDefaultSignalStrengthValue(): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 614
    const-string/jumbo v7, ": "

    .line 613
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 614
    const-string/jumbo v7, "dBm, changed to default value."

    .line 613
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->logd(Ljava/lang/String;)V

    .line 617
    :cond_3
    const/4 v0, -0x1

    .line 618
    .local v0, "defaultSigValue":I
    iget-object v6, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mDefaultSignalStrengthMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "tag$iterator":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 619
    .local v4, "tag":Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 620
    iget-object v6, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mDefaultSignalStrengthMap:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 624
    .end local v4    # "tag":Ljava/lang/String;
    :cond_5
    iget v6, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->DBG:I

    if-lt v6, v10, :cond_6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isNeedtoSetDefaultSignalStrengthValue(): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 625
    const-string/jumbo v7, "("

    .line 624
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 625
    const-string/jumbo v7, ") ----> "

    .line 624
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 625
    const-string/jumbo v7, "dBm (default)"

    .line 624
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->logd(Ljava/lang/String;)V

    .line 626
    :cond_6
    invoke-virtual {p2, v3, v0}, Landroid/telephony/SignalStrength;->setSigValue(Ljava/lang/String;I)V

    .line 627
    return v9

    .line 630
    .end local v0    # "defaultSigValue":I
    .end local v5    # "tag$iterator":Ljava/util/Iterator;
    :cond_7
    iget v6, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->DBG:I

    if-lt v6, v10, :cond_8

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isNeedtoSetDefaultSignalStrengthValue(): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 631
    const-string/jumbo v7, "("

    .line 630
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 631
    const-string/jumbo v7, ") ----> "

    .line 630
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 631
    const-string/jumbo v7, "dBm"

    .line 630
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->logd(Ljava/lang/String;)V

    .line 632
    :cond_8
    return v8
.end method

.method private isPhoneIdValid(I)Z
    .locals 2
    .param p1, "phoneId"    # I

    .prologue
    const/4 v0, 0x0

    .line 122
    if-ltz p1, :cond_0

    iget v1, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->SIM_COUNT:I

    if-ge p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isRoaming(Landroid/telephony/ServiceState;)Z
    .locals 1
    .param p1, "state"    # Landroid/telephony/ServiceState;

    .prologue
    .line 376
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSigDelayContinue(Lcom/android/internal/telephony/Phone;I)Z
    .locals 7
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "sigLevelUi"    # I

    .prologue
    const/4 v6, 0x0

    .line 307
    const/4 v3, 0x0

    .line 308
    .local v3, "sigLevelTmp":I
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->getNetworkRat(Landroid/telephony/ServiceState;)I

    move-result v0

    .line 309
    .local v0, "ratTmp":I
    if-eqz v0, :cond_0

    .line 310
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-direct {p0, v4, v0}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->getSigKeyWithRat(Landroid/telephony/ServiceState;I)Ljava/lang/String;

    move-result-object v2

    .line 311
    .local v2, "sigKeyTmp":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v5

    invoke-direct {p0, v4, v5, v0}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->getSigDbmValueWithRat(Landroid/telephony/ServiceState;Landroid/telephony/SignalStrength;I)I

    move-result v1

    .line 313
    .local v1, "sigDbmTmp":I
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v4

    invoke-direct {p0, v2, v4}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->getSigLevelExt(Ljava/lang/String;Landroid/telephony/SignalStrength;)I

    move-result v3

    .line 315
    .end local v1    # "sigDbmTmp":I
    .end local v2    # "sigKeyTmp":Ljava/lang/String;
    :cond_0
    if-le p2, v3, :cond_1

    .line 317
    const/4 v4, 0x1

    return v4

    .line 319
    :cond_1
    return v6
.end method

.method private isSigDelayNeedContinue(Lcom/android/internal/telephony/Phone;II)V
    .locals 12
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "sigLevelUi"    # I
    .param p3, "message"    # I

    .prologue
    .line 322
    const/4 v8, 0x0

    .line 323
    .local v8, "sigLevelTmp":I
    const/4 v9, 0x3

    if-ne p3, v9, :cond_3

    .line 324
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->getVoiceNetworkRat(Landroid/telephony/ServiceState;)I

    move-result v3

    .line 325
    .local v3, "ratVoiceTmp":I
    if-eqz v3, :cond_0

    .line 326
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v9

    invoke-direct {p0, v9, v3}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->getSigKeyWithRat(Landroid/telephony/ServiceState;I)Ljava/lang/String;

    move-result-object v7

    .line 327
    .local v7, "sigKeyVoiceTmp":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v9

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v10

    invoke-direct {p0, v9, v10, v3}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->getSigDbmValueWithRat(Landroid/telephony/ServiceState;Landroid/telephony/SignalStrength;I)I

    move-result v5

    .line 329
    .local v5, "sigDbmVoiceTmp":I
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v9

    invoke-direct {p0, v7, v9}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->getSigLevelExt(Ljava/lang/String;Landroid/telephony/SignalStrength;)I

    move-result v8

    .line 340
    .end local v3    # "ratVoiceTmp":I
    .end local v5    # "sigDbmVoiceTmp":I
    .end local v7    # "sigKeyVoiceTmp":Ljava/lang/String;
    :cond_0
    :goto_0
    if-le p2, v8, :cond_2

    .line 341
    iget-object v9, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mSignalStrengthDelaySeconds:[I

    iget v10, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mSignalStrengthLength:I

    sub-int/2addr v10, p2

    aget v0, v9, v10

    .line 342
    .local v0, "delaySec":I
    iget v9, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->DBG:I

    const/4 v10, 0x2

    if-lt v9, v10, :cond_1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "EVENT_NOTIFY_SIGNALSTRENGTH_DELAY: update sig LEVEL"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " to LEVEL"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int/lit8 v10, p2, -0x1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 343
    const-string/jumbo v10, " after "

    .line 342
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 343
    const-string/jumbo v10, "s later."

    .line 342
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->logd(Ljava/lang/String;)V

    .line 344
    :cond_1
    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 345
    .local v1, "msg1":Landroid/os/Message;
    iput p3, v1, Landroid/os/Message;->what:I

    .line 346
    mul-int/lit16 v9, v0, 0x3e8

    int-to-long v10, v9

    invoke-virtual {p0, v1, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 321
    .end local v0    # "delaySec":I
    .end local v1    # "msg1":Landroid/os/Message;
    :cond_2
    return-void

    .line 332
    :cond_3
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->getDataNetworkRat(Landroid/telephony/ServiceState;)I

    move-result v2

    .line 333
    .local v2, "ratDataTmp":I
    if-eqz v2, :cond_0

    .line 334
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v9

    invoke-direct {p0, v9, v2}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->getSigKeyWithRat(Landroid/telephony/ServiceState;I)Ljava/lang/String;

    move-result-object v6

    .line 335
    .local v6, "sigKeyDataTmp":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v9

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v10

    invoke-direct {p0, v9, v10, v2}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->getSigDbmValueWithRat(Landroid/telephony/ServiceState;Landroid/telephony/SignalStrength;I)I

    move-result v4

    .line 337
    .local v4, "sigDbmDataTmp":I
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v9

    invoke-direct {p0, v6, v9}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->getSigLevelExt(Ljava/lang/String;Landroid/telephony/SignalStrength;)I

    move-result v8

    goto :goto_0
.end method

.method private logd(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "TelephonyNotifier["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1186
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "TelephonyNotifier["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1189
    return-void
.end method

.method private notifyDualSignalStrength(Lcom/android/internal/telephony/Phone;)V
    .locals 22
    .param p1, "sender"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 1027
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->DBG:I

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_0

    const-string/jumbo v20, "notifyDualSignalStrength +"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->logd(Ljava/lang/String;)V

    .line 1028
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v19

    .line 1029
    .local v19, "tmpServiceState":Landroid/telephony/ServiceState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mReportSignalStrength:Landroid/telephony/SignalStrength;

    move-object/from16 v20, v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Phone;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/telephony/SignalStrength;->update(Landroid/telephony/SignalStrength;)V

    .line 1032
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->getVoiceNetworkRat(Landroid/telephony/ServiceState;)I

    move-result v5

    .line 1033
    .local v5, "ratVoiceTmp":I
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->getDataNetworkRat(Landroid/telephony/ServiceState;)I

    move-result v3

    .line 1034
    .local v3, "ratDataTmp":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mUiServiceState:Landroid/telephony/ServiceState;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->getVoiceNetworkRat(Landroid/telephony/ServiceState;)I

    move-result v6

    .line 1035
    .local v6, "ratVoiceUi":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mUiServiceState:Landroid/telephony/ServiceState;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->getDataNetworkRat(Landroid/telephony/ServiceState;)I

    move-result v4

    .line 1037
    .local v4, "ratDataUi":I
    const-string/jumbo v13, "unknown"

    .line 1038
    .local v13, "sigKeyVoiceTmp":Ljava/lang/String;
    const/4 v9, -0x1

    .line 1039
    .local v9, "sigDbmVoiceTmp":I
    const/16 v17, 0x0

    .line 1040
    .local v17, "sigLevelVoiceTmp":I
    if-eqz v5, :cond_1

    .line 1041
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v5}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->getSigKeyWithRat(Landroid/telephony/ServiceState;I)Ljava/lang/String;

    move-result-object v13

    .line 1042
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mReportSignalStrength:Landroid/telephony/SignalStrength;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2, v5}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->getSigDbmValueWithRat(Landroid/telephony/ServiceState;Landroid/telephony/SignalStrength;I)I

    move-result v9

    .line 1044
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mReportSignalStrength:Landroid/telephony/SignalStrength;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v13, v1}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->getSigLevelExt(Ljava/lang/String;Landroid/telephony/SignalStrength;)I

    move-result v17

    .line 1047
    :cond_1
    const-string/jumbo v11, "unknown"

    .line 1048
    .local v11, "sigKeyDataTmp":Ljava/lang/String;
    const/4 v7, -0x1

    .line 1049
    .local v7, "sigDbmDataTmp":I
    const/4 v15, 0x0

    .line 1050
    .local v15, "sigLevelDataTmp":I
    if-eqz v3, :cond_2

    .line 1051
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->getSigKeyWithRat(Landroid/telephony/ServiceState;I)Ljava/lang/String;

    move-result-object v11

    .line 1052
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mReportSignalStrength:Landroid/telephony/SignalStrength;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->getSigDbmValueWithRat(Landroid/telephony/ServiceState;Landroid/telephony/SignalStrength;I)I

    move-result v7

    .line 1054
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mReportSignalStrength:Landroid/telephony/SignalStrength;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v11, v1}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->getSigLevelExt(Ljava/lang/String;Landroid/telephony/SignalStrength;)I

    move-result v15

    .line 1057
    :cond_2
    const-string/jumbo v14, "unknown"

    .line 1058
    .local v14, "sigKeyVoiceUi":Ljava/lang/String;
    const/4 v10, -0x1

    .line 1059
    .local v10, "sigDbmVoiceUi":I
    const/16 v18, 0x0

    .line 1060
    .local v18, "sigLevelVoiceUi":I
    if-eqz v6, :cond_3

    .line 1061
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mUiServiceState:Landroid/telephony/ServiceState;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v6}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->getSigKeyWithRat(Landroid/telephony/ServiceState;I)Ljava/lang/String;

    move-result-object v14

    .line 1062
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mUiServiceState:Landroid/telephony/ServiceState;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mUiSignalStrength:Landroid/telephony/SignalStrength;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2, v6}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->getSigDbmValueWithRat(Landroid/telephony/ServiceState;Landroid/telephony/SignalStrength;I)I

    move-result v10

    .line 1064
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mUiSignalStrength:Landroid/telephony/SignalStrength;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v14, v1}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->getSigLevelExt(Ljava/lang/String;Landroid/telephony/SignalStrength;)I

    move-result v18

    .line 1067
    :cond_3
    const-string/jumbo v12, "unknown"

    .line 1068
    .local v12, "sigKeyDataUi":Ljava/lang/String;
    const/4 v8, -0x1

    .line 1069
    .local v8, "sigDbmDataUi":I
    const/16 v16, 0x0

    .line 1070
    .local v16, "sigLevelDataUi":I
    if-eqz v4, :cond_4

    .line 1071
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mUiServiceState:Landroid/telephony/ServiceState;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->getSigKeyWithRat(Landroid/telephony/ServiceState;I)Ljava/lang/String;

    move-result-object v12

    .line 1072
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mUiServiceState:Landroid/telephony/ServiceState;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mUiSignalStrength:Landroid/telephony/SignalStrength;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2, v4}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->getSigDbmValueWithRat(Landroid/telephony/ServiceState;Landroid/telephony/SignalStrength;I)I

    move-result v8

    .line 1074
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mUiSignalStrength:Landroid/telephony/SignalStrength;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v12, v1}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->getSigLevelExt(Ljava/lang/String;Landroid/telephony/SignalStrength;)I

    move-result v16

    .line 1076
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->DBG:I

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_5

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "[SIG]Voiceui  ("

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "--->"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ":"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "dBm --->"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ")"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->logd(Ljava/lang/String;)V

    .line 1077
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->DBG:I

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_6

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "[SIG]Voicetemp("

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "--->"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ":"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "dBm --->"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ")"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->logd(Ljava/lang/String;)V

    .line 1078
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->DBG:I

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_7

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "[SIG]Dataui  ("

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "--->"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ":"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "dBm --->"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ")"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->logd(Ljava/lang/String;)V

    .line 1079
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->DBG:I

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_8

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "[SIG]Datatemp("

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "--->"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ":"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "dBm --->"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ")"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->logd(Ljava/lang/String;)V

    .line 1080
    :cond_8
    invoke-static {v11, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_12

    .line 1081
    invoke-static {v13, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v20

    .line 1080
    if-eqz v20, :cond_12

    .line 1082
    move/from16 v0, v16

    if-lt v15, v0, :cond_b

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_b

    .line 1084
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->DBG:I

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_9

    const-string/jumbo v20, "[SIG]case 1.1"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->logd(Ljava/lang/String;)V

    .line 1085
    :cond_9
    const/16 v20, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1086
    const/16 v20, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1087
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->notifySignalStrength(Lcom/android/internal/telephony/Phone;)V

    .line 1026
    :cond_a
    :goto_0
    return-void

    .line 1088
    :cond_b
    move/from16 v0, v16

    if-lt v15, v0, :cond_d

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_d

    .line 1090
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->DBG:I

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_c

    const-string/jumbo v20, "[SIG]case 1.2"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->logd(Ljava/lang/String;)V

    .line 1091
    :cond_c
    const/16 v20, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1092
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mReportSignalStrength:Landroid/telephony/SignalStrength;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v14, v10}, Landroid/telephony/SignalStrength;->setSigValue(Ljava/lang/String;I)V

    .line 1093
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->notifySignalStrength(Lcom/android/internal/telephony/Phone;)V

    .line 1094
    const/16 v20, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v20

    if-nez v20, :cond_a

    .line 1095
    const/16 v20, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->delayNotifySignal(I)V

    goto :goto_0

    .line 1097
    :cond_d
    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_f

    move/from16 v0, v16

    if-ge v15, v0, :cond_f

    .line 1099
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->DBG:I

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_e

    const-string/jumbo v20, "[SIG]case 1.3"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->logd(Ljava/lang/String;)V

    .line 1100
    :cond_e
    const/16 v20, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mReportSignalStrength:Landroid/telephony/SignalStrength;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12, v8}, Landroid/telephony/SignalStrength;->setSigValue(Ljava/lang/String;I)V

    .line 1102
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->notifySignalStrength(Lcom/android/internal/telephony/Phone;)V

    .line 1103
    const/16 v20, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v20

    if-nez v20, :cond_a

    .line 1104
    const/16 v20, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->delayNotifySignal(I)V

    goto/16 :goto_0

    .line 1107
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->DBG:I

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_10

    const-string/jumbo v20, "[SIG]case 1.4"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->logd(Ljava/lang/String;)V

    .line 1108
    :cond_10
    const/16 v20, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v20

    if-nez v20, :cond_11

    .line 1109
    const/16 v20, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->delayNotifySignal(I)V

    .line 1111
    :cond_11
    const/16 v20, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v20

    if-nez v20, :cond_a

    .line 1112
    const/16 v20, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->delayNotifySignal(I)V

    goto/16 :goto_0

    .line 1116
    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->DBG:I

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_13

    const-string/jumbo v20, "[SIG]case 2.1"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->logd(Ljava/lang/String;)V

    .line 1117
    :cond_13
    const/16 v20, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1118
    const/16 v20, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1119
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->notifySignalStrength(Lcom/android/internal/telephony/Phone;)V

    goto/16 :goto_0
.end method

.method private notifyServiceStateChanged(Lcom/android/internal/telephony/Phone;)V
    .locals 6
    .param p1, "sender"    # Lcom/android/internal/telephony/Phone;

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 1132
    iget v1, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->DBG:I

    if-lt v1, v5, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notify UI service state changed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->logd(Ljava/lang/String;)V

    .line 1133
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mUiServiceState:Landroid/telephony/ServiceState;

    if-eqz v1, :cond_1

    .line 1134
    iget-object v1, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mUiServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/telephony/ServiceState;->update(Landroid/telephony/ServiceState;)V

    .line 1136
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/PhoneNotifier;->notifyServiceState(Lcom/android/internal/telephony/Phone;)V

    .line 1137
    iget-object v1, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mSstChangedRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_3

    .line 1138
    iget v1, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->DBG:I

    if-lt v1, v5, :cond_2

    const-string/jumbo v1, "notify sst changed internal."

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->logd(Ljava/lang/String;)V

    .line 1139
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mSstChangedRegistrants:Landroid/os/RegistrantList;

    .line 1140
    new-instance v2, Landroid/os/AsyncResult;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-direct {v2, v4, v3, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1139
    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1143
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.hmct.action.SST_CHANGED_INTERNAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1144
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1145
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1146
    invoke-virtual {p0, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1153
    :cond_4
    iget v1, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->DBG:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_5

    const-string/jumbo v1, "delayed sig msg existed."

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->logd(Ljava/lang/String;)V

    .line 1131
    :cond_5
    :goto_0
    return-void

    .line 1147
    :cond_6
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1150
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mReportSignalStrength:Landroid/telephony/SignalStrength;

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->isNeedtoSetDefaultSignalStrengthValue(Landroid/telephony/ServiceState;Landroid/telephony/SignalStrength;)Z

    .line 1151
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->notifySignalStrength(Lcom/android/internal/telephony/Phone;)V

    goto :goto_0
.end method

.method private notifySignalStrength(Lcom/android/internal/telephony/Phone;)V
    .locals 3
    .param p1, "sender"    # Lcom/android/internal/telephony/Phone;

    .prologue
    const/4 v2, 0x3

    .line 1157
    iget v0, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->DBG:I

    if-lt v0, v2, :cond_0

    const-string/jumbo v0, "notify UI signal strength changed."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->logd(Ljava/lang/String;)V

    .line 1158
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->DBG:I

    if-lt v0, v2, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "UI  sig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mUiSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->logd(Ljava/lang/String;)V

    .line 1159
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->DBG:I

    if-lt v0, v2, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "NEW sig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mReportSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->logd(Ljava/lang/String;)V

    .line 1160
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mUiSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v0, :cond_3

    .line 1161
    iget-object v0, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mUiSignalStrength:Landroid/telephony/SignalStrength;

    iget-object v1, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mReportSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v0, v1}, Landroid/telephony/SignalStrength;->update(Landroid/telephony/SignalStrength;)V

    .line 1163
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    iget-object v1, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mReportSignalStrength:Landroid/telephony/SignalStrength;

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/PhoneNotifier;->notifySignalStrengthHmct(Lcom/android/internal/telephony/Phone;Landroid/telephony/SignalStrength;)V

    .line 1156
    return-void
.end method

.method private notifySingleSignalStrength(Lcom/android/internal/telephony/Phone;)V
    .locals 15
    .param p1, "sender"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 917
    iget v12, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->DBG:I

    const/4 v13, 0x2

    if-lt v12, v13, :cond_0

    const-string/jumbo v12, "notifySingleSignalStrength +"

    invoke-direct {p0, v12}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->logd(Ljava/lang/String;)V

    .line 918
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v11

    .line 919
    .local v11, "tmpServiceState":Landroid/telephony/ServiceState;
    iget-object v12, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mReportSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Phone;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/telephony/SignalStrength;->update(Landroid/telephony/SignalStrength;)V

    .line 921
    invoke-direct {p0, v11}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->getNetworkRat(Landroid/telephony/ServiceState;)I

    move-result v3

    .line 922
    .local v3, "ratTmp":I
    iget-object v12, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mUiServiceState:Landroid/telephony/ServiceState;

    invoke-direct {p0, v12}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->getNetworkRat(Landroid/telephony/ServiceState;)I

    move-result v4

    .line 923
    .local v4, "ratUi":I
    if-nez v4, :cond_1

    .line 925
    const/4 v12, 0x1

    invoke-virtual {p0, v12}, Landroid/os/Handler;->removeMessages(I)V

    .line 926
    return-void

    .line 929
    :cond_1
    const-string/jumbo v7, "unknown"

    .line 930
    .local v7, "sigKeyTmp":Ljava/lang/String;
    const/4 v5, -0x1

    .line 931
    .local v5, "sigDbmTmp":I
    const/4 v9, 0x0

    .line 932
    .local v9, "sigLevelTmp":I
    if-eqz v3, :cond_2

    .line 933
    invoke-direct {p0, v11, v3}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->getSigKeyWithRat(Landroid/telephony/ServiceState;I)Ljava/lang/String;

    move-result-object v7

    .line 934
    iget-object v12, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mReportSignalStrength:Landroid/telephony/SignalStrength;

    invoke-direct {p0, v11, v12, v3}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->getSigDbmValueWithRat(Landroid/telephony/ServiceState;Landroid/telephony/SignalStrength;I)I

    move-result v5

    .line 936
    iget-object v12, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mReportSignalStrength:Landroid/telephony/SignalStrength;

    invoke-direct {p0, v7, v12}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->getSigLevelExt(Ljava/lang/String;Landroid/telephony/SignalStrength;)I

    move-result v9

    .line 938
    :cond_2
    iget-object v12, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mUiServiceState:Landroid/telephony/ServiceState;

    invoke-direct {p0, v12, v4}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->getSigKeyWithRat(Landroid/telephony/ServiceState;I)Ljava/lang/String;

    move-result-object v8

    .line 939
    .local v8, "sigKeyUi":Ljava/lang/String;
    iget-object v12, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mUiServiceState:Landroid/telephony/ServiceState;

    iget-object v13, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mUiSignalStrength:Landroid/telephony/SignalStrength;

    invoke-direct {p0, v12, v13, v4}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->getSigDbmValueWithRat(Landroid/telephony/ServiceState;Landroid/telephony/SignalStrength;I)I

    move-result v6

    .line 941
    .local v6, "sigDbmUi":I
    iget-object v12, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mUiSignalStrength:Landroid/telephony/SignalStrength;

    invoke-direct {p0, v8, v12}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->getSigLevelExt(Ljava/lang/String;Landroid/telephony/SignalStrength;)I

    move-result v10

    .line 942
    .local v10, "sigLevelUi":I
    iget v12, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->DBG:I

    const/4 v13, 0x2

    if-lt v12, v13, :cond_3

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "[SIG]ui  ("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "--->"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "dBm --->"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->logd(Ljava/lang/String;)V

    .line 943
    :cond_3
    iget v12, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->DBG:I

    const/4 v13, 0x2

    if-lt v12, v13, :cond_4

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "[SIG]temp("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "--->"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "dBm --->"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->logd(Ljava/lang/String;)V

    .line 945
    :cond_4
    iget-object v12, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mSignalStrengthDelaySeconds:[I

    const/4 v13, 0x0

    aget v0, v12, v13

    .line 946
    .local v0, "delaySec":I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "delaySec = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->logd(Ljava/lang/String;)V

    .line 947
    const/4 v2, 0x1

    .line 949
    .local v2, "notify":Z
    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_e

    .line 951
    if-le v9, v10, :cond_8

    .line 953
    iget v12, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->DBG:I

    const/4 v13, 0x2

    if-lt v12, v13, :cond_5

    const-string/jumbo v12, "[SIG]case 1.1"

    invoke-direct {p0, v12}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->logd(Ljava/lang/String;)V

    .line 954
    :cond_5
    const/4 v0, 0x0

    .line 1004
    :cond_6
    :goto_0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "notify = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " delaySec = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " sigLevelUi = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 1005
    const-string/jumbo v13, " mSignalStrengthLength = "

    .line 1004
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 1005
    iget v13, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mSignalStrengthLength:I

    .line 1004
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->logd(Ljava/lang/String;)V

    .line 1007
    if-eqz v2, :cond_7

    .line 1009
    const/4 v12, 0x1

    invoke-virtual {p0, v12}, Landroid/os/Handler;->removeMessages(I)V

    .line 1010
    if-nez v0, :cond_12

    .line 1012
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->notifySignalStrength(Lcom/android/internal/telephony/Phone;)V

    .line 916
    :cond_7
    :goto_1
    return-void

    .line 955
    :cond_8
    if-ne v9, v10, :cond_a

    .line 957
    iget v12, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->DBG:I

    const/4 v13, 0x2

    if-lt v12, v13, :cond_9

    const-string/jumbo v12, "[SIG]case 1.2"

    invoke-direct {p0, v12}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->logd(Ljava/lang/String;)V

    .line 958
    :cond_9
    const/4 v12, 0x1

    invoke-virtual {p0, v12}, Landroid/os/Handler;->removeMessages(I)V

    .line 959
    const/4 v0, 0x0

    goto :goto_0

    .line 962
    :cond_a
    const/4 v12, 0x1

    invoke-virtual {p0, v12}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 964
    iget v12, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->DBG:I

    const/4 v13, 0x2

    if-lt v12, v13, :cond_b

    const-string/jumbo v12, "[SIG]case 1.3.1"

    invoke-direct {p0, v12}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->logd(Ljava/lang/String;)V

    .line 965
    :cond_b
    const/4 v2, 0x0

    goto :goto_0

    .line 966
    :cond_c
    const/4 v12, 0x2

    invoke-virtual {p0, v12}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v12

    if-eqz v12, :cond_d

    .line 975
    iget v12, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->DBG:I

    const/4 v13, 0x2

    if-lt v12, v13, :cond_6

    const-string/jumbo v12, "[SIG]case 1.3.2.2"

    invoke-direct {p0, v12}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 985
    :cond_d
    iget v12, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->DBG:I

    const/4 v13, 0x2

    if-lt v12, v13, :cond_6

    const-string/jumbo v12, "[SIG]case 1.3.3.2"

    invoke-direct {p0, v12}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 991
    :cond_e
    const-string/jumbo v12, "enable"

    const-string/jumbo v13, "persist.radio.hmct.nw_optimize"

    const-string/jumbo v14, ""

    invoke-static {v13, v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_10

    .line 993
    iget v12, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->DBG:I

    const/4 v13, 0x2

    if-lt v12, v13, :cond_f

    const-string/jumbo v12, "[SIG]case 2.1"

    invoke-direct {p0, v12}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->logd(Ljava/lang/String;)V

    .line 994
    :cond_f
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 997
    :cond_10
    iget v12, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->DBG:I

    const/4 v13, 0x2

    if-lt v12, v13, :cond_11

    const-string/jumbo v12, "[SIG]case 2.2"

    invoke-direct {p0, v12}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->logd(Ljava/lang/String;)V

    .line 998
    :cond_11
    const/4 v0, 0x0

    .line 999
    const/4 v12, 0x1

    invoke-virtual {p0, v12}, Landroid/os/Handler;->removeMessages(I)V

    .line 1000
    iget-object v12, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mReportSignalStrength:Landroid/telephony/SignalStrength;

    invoke-direct {p0, v11, v12}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->isNeedtoSetDefaultSignalStrengthValue(Landroid/telephony/ServiceState;Landroid/telephony/SignalStrength;)Z

    goto/16 :goto_0

    .line 1014
    :cond_12
    if-lez v10, :cond_7

    iget v12, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mSignalStrengthLength:I

    if-gt v10, v12, :cond_7

    .line 1016
    iget v12, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->DBG:I

    const/4 v13, 0x2

    if-lt v12, v13, :cond_13

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "[SIG]update sig LEVEL"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " to LEVEL"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    add-int/lit8 v13, v10, -0x1

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 1017
    const-string/jumbo v13, " after "

    .line 1016
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 1017
    const-string/jumbo v13, "s later."

    .line 1016
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->logd(Ljava/lang/String;)V

    .line 1018
    :cond_13
    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 1019
    .local v1, "msg":Landroid/os/Message;
    const/4 v12, 0x1

    iput v12, v1, Landroid/os/Message;->what:I

    .line 1020
    mul-int/lit16 v12, v0, 0x3e8

    int-to-long v12, v12

    invoke-virtual {p0, v1, v12, v13}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_1
.end method

.method private printStackTrace(Ljava/lang/String;)V
    .locals 8
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    .line 1173
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    .line 1174
    .local v1, "re":Ljava/lang/RuntimeException;
    iget v4, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->DBG:I

    if-lt v4, v7, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "StackTrace - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->logd(Ljava/lang/String;)V

    .line 1175
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 1176
    .local v2, "st":[Ljava/lang/StackTraceElement;
    const/4 v0, 0x1

    .line 1177
    .local v0, "first":Z
    const/4 v4, 0x0

    array-length v5, v2

    :goto_0
    if-ge v4, v5, :cond_3

    aget-object v3, v2, v4

    .line 1178
    .local v3, "ste":Ljava/lang/StackTraceElement;
    if-eqz v0, :cond_2

    .line 1179
    const/4 v0, 0x0

    .line 1177
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1181
    :cond_2
    iget v6, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->DBG:I

    if-lt v6, v7, :cond_1

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 1172
    .end local v3    # "ste":Ljava/lang/StackTraceElement;
    :cond_3
    return-void
.end method


# virtual methods
.method protected dispose()V
    .locals 2

    .prologue
    .line 136
    const-string/jumbo v1, "dispose"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->logd(Ljava/lang/String;)V

    .line 137
    iget v1, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mPhoneId:I

    invoke-static {v1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 138
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_0

    .line 140
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->notifyServiceStateChanged(Lcom/android/internal/telephony/Phone;)V

    .line 135
    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 22
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 179
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v20, v0

    packed-switch v20, :pswitch_data_0

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 181
    :pswitch_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mPhoneId:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v9

    .line 182
    .local v9, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v9, :cond_0

    .line 183
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->notifyServiceStateChanged(Lcom/android/internal/telephony/Phone;)V

    goto :goto_0

    .line 188
    .end local v9    # "phone":Lcom/android/internal/telephony/Phone;
    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mPhoneId:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v9

    .line 189
    .restart local v9    # "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v9, :cond_0

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mUiServiceState:Landroid/telephony/ServiceState;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->getNetworkRat(Landroid/telephony/ServiceState;)I

    move-result v11

    .line 191
    .local v11, "ratUi":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mUiServiceState:Landroid/telephony/ServiceState;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v11}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->getSigKeyWithRat(Landroid/telephony/ServiceState;I)Ljava/lang/String;

    move-result-object v14

    .line 192
    .local v14, "sigKeyUi":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mUiServiceState:Landroid/telephony/ServiceState;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mUiSignalStrength:Landroid/telephony/SignalStrength;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2, v11}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->getSigDbmValueWithRat(Landroid/telephony/ServiceState;Landroid/telephony/SignalStrength;I)I

    move-result v5

    .line 194
    .local v5, "dBmUi":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mUiSignalStrength:Landroid/telephony/SignalStrength;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v14, v1}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->getSigLevelExt(Ljava/lang/String;Landroid/telephony/SignalStrength;)I

    move-result v17

    .line 195
    .local v17, "sigLevelUi":I
    if-lez v17, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mSignalStrengthLength:I

    move/from16 v20, v0

    move/from16 v0, v17

    move/from16 v1, v20

    if-le v0, v1, :cond_3

    .line 196
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->DBG:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_2

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "EVENT_NOTIFY_SIGNALSTRENGTH_DELAY: it shouldn\'t happen, sigLevel="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ". return!"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->loge(Ljava/lang/String;)V

    .line 197
    :cond_2
    const-string/jumbo v20, "EVENT_NOTIFY_SIGNALSTRENGTH_DELAY: print ERROR stack trace"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->printStackTrace(Ljava/lang/String;)V

    .line 198
    return-void

    .line 201
    :cond_3
    add-int/lit8 v20, v17, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v14, v1}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->getDbmValueWithLevel(Ljava/lang/String;I)I

    move-result v19

    .line 202
    .local v19, "value":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->DBG:I

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_4

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "EVENT_NOTIFY_SIGNALSTRENGTH_DELAY: update "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " to LEVEL"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    add-int/lit8 v21, v17, -0x1

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 203
    const-string/jumbo v21, "  "

    .line 202
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 203
    const-string/jumbo v21, "dBm immediatelly."

    .line 202
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->logd(Ljava/lang/String;)V

    .line 204
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mReportSignalStrength:Landroid/telephony/SignalStrength;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v14, v1}, Landroid/telephony/SignalStrength;->setSigValue(Ljava/lang/String;I)V

    .line 205
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->notifySignalStrength(Lcom/android/internal/telephony/Phone;)V

    .line 207
    add-int/lit8 v20, v17, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v9, v1}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->isSigDelayContinue(Lcom/android/internal/telephony/Phone;I)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 209
    add-int/lit8 v17, v17, -0x1

    .line 210
    if-lez v17, :cond_0

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mSignalStrengthDelaySeconds:[I

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mSignalStrengthLength:I

    move/from16 v21, v0

    sub-int v21, v21, v17

    aget v7, v20, v21

    .line 218
    .local v7, "delaySec":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->DBG:I

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_5

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "EVENT_NOTIFY_SIGNALSTRENGTH_DELAY: update sig LEVEL"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " to LEVEL"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    add-int/lit8 v21, v17, -0x1

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 219
    const-string/jumbo v21, " after "

    .line 218
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 219
    const-string/jumbo v21, "s later."

    .line 218
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->logd(Ljava/lang/String;)V

    .line 220
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v8

    .line 221
    .local v8, "msg1":Landroid/os/Message;
    const/16 v20, 0x1

    move/from16 v0, v20

    iput v0, v8, Landroid/os/Message;->what:I

    .line 222
    mul-int/lit16 v0, v7, 0x3e8

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-virtual {v0, v8, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 229
    .end local v5    # "dBmUi":I
    .end local v7    # "delaySec":I
    .end local v8    # "msg1":Landroid/os/Message;
    .end local v9    # "phone":Lcom/android/internal/telephony/Phone;
    .end local v11    # "ratUi":I
    .end local v14    # "sigKeyUi":Ljava/lang/String;
    .end local v17    # "sigLevelUi":I
    .end local v19    # "value":I
    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mPhoneId:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v9

    .line 230
    .restart local v9    # "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v9, :cond_0

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mUiServiceState:Landroid/telephony/ServiceState;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->getVoiceNetworkRat(Landroid/telephony/ServiceState;)I

    move-result v12

    .line 232
    .local v12, "ratVoiceUi":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mUiServiceState:Landroid/telephony/ServiceState;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v12}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->getSigKeyWithRat(Landroid/telephony/ServiceState;I)Ljava/lang/String;

    move-result-object v15

    .line 233
    .local v15, "sigKeyVoiceUi":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mUiServiceState:Landroid/telephony/ServiceState;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mUiSignalStrength:Landroid/telephony/SignalStrength;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2, v12}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->getSigDbmValueWithRat(Landroid/telephony/ServiceState;Landroid/telephony/SignalStrength;I)I

    move-result v6

    .line 235
    .local v6, "dBmVoiceUi":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mUiSignalStrength:Landroid/telephony/SignalStrength;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v15, v1}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->getSigLevelExt(Ljava/lang/String;Landroid/telephony/SignalStrength;)I

    move-result v18

    .line 236
    .local v18, "sigLevelVoiceUi":I
    if-lez v18, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mSignalStrengthLength:I

    move/from16 v20, v0

    move/from16 v0, v18

    move/from16 v1, v20

    if-le v0, v1, :cond_8

    .line 237
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->DBG:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_7

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "EVENT_NOTIFY_SIGNALSTRENGTH_DELAY_CS: it shouldn\'t happen, sigLevel="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ". return!"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->loge(Ljava/lang/String;)V

    .line 238
    :cond_7
    const-string/jumbo v20, "EVENT_NOTIFY_SIGNALSTRENGTH_DELAY_CS: print ERROR stack trace"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->printStackTrace(Ljava/lang/String;)V

    .line 239
    return-void

    .line 242
    :cond_8
    add-int/lit8 v20, v18, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v15, v1}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->getDbmValueWithLevel(Ljava/lang/String;I)I

    move-result v19

    .line 243
    .restart local v19    # "value":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->DBG:I

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_9

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "EVENT_NOTIFY_SIGNALSTRENGTH_DELAY_CS: update "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " to LEVEL"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    add-int/lit8 v21, v18, -0x1

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 244
    const-string/jumbo v21, "  "

    .line 243
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 244
    const-string/jumbo v21, "dBm immediatelly."

    .line 243
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->logd(Ljava/lang/String;)V

    .line 245
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mReportSignalStrength:Landroid/telephony/SignalStrength;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v15, v1}, Landroid/telephony/SignalStrength;->setSigValue(Ljava/lang/String;I)V

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mUiServiceState:Landroid/telephony/ServiceState;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->getDataNetworkRat(Landroid/telephony/ServiceState;)I

    move-result v10

    .line 248
    .local v10, "ratDataUi":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mUiServiceState:Landroid/telephony/ServiceState;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v10}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->getSigKeyWithRat(Landroid/telephony/ServiceState;I)Ljava/lang/String;

    move-result-object v13

    .line 249
    .local v13, "sigKeyDataUi":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mUiServiceState:Landroid/telephony/ServiceState;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mUiSignalStrength:Landroid/telephony/SignalStrength;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2, v10}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->getSigDbmValueWithRat(Landroid/telephony/ServiceState;Landroid/telephony/SignalStrength;I)I

    move-result v4

    .line 250
    .local v4, "dBmDataUi":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mReportSignalStrength:Landroid/telephony/SignalStrength;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13, v4}, Landroid/telephony/SignalStrength;->setSigValue(Ljava/lang/String;I)V

    .line 251
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->notifySignalStrength(Lcom/android/internal/telephony/Phone;)V

    .line 252
    add-int/lit8 v18, v18, -0x1

    .line 253
    if-lez v18, :cond_0

    .line 259
    const/16 v20, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v20

    invoke-direct {v0, v9, v1, v2}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->isSigDelayNeedContinue(Lcom/android/internal/telephony/Phone;II)V

    goto/16 :goto_0

    .line 266
    .end local v4    # "dBmDataUi":I
    .end local v6    # "dBmVoiceUi":I
    .end local v9    # "phone":Lcom/android/internal/telephony/Phone;
    .end local v10    # "ratDataUi":I
    .end local v12    # "ratVoiceUi":I
    .end local v13    # "sigKeyDataUi":Ljava/lang/String;
    .end local v15    # "sigKeyVoiceUi":Ljava/lang/String;
    .end local v18    # "sigLevelVoiceUi":I
    .end local v19    # "value":I
    :pswitch_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mPhoneId:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v9

    .line 267
    .restart local v9    # "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v9, :cond_0

    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mUiServiceState:Landroid/telephony/ServiceState;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->getDataNetworkRat(Landroid/telephony/ServiceState;)I

    move-result v10

    .line 269
    .restart local v10    # "ratDataUi":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mUiServiceState:Landroid/telephony/ServiceState;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v10}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->getSigKeyWithRat(Landroid/telephony/ServiceState;I)Ljava/lang/String;

    move-result-object v13

    .line 270
    .restart local v13    # "sigKeyDataUi":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mUiServiceState:Landroid/telephony/ServiceState;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mUiSignalStrength:Landroid/telephony/SignalStrength;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2, v10}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->getSigDbmValueWithRat(Landroid/telephony/ServiceState;Landroid/telephony/SignalStrength;I)I

    move-result v4

    .line 272
    .restart local v4    # "dBmDataUi":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mUiSignalStrength:Landroid/telephony/SignalStrength;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v13, v1}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->getSigLevelExt(Ljava/lang/String;Landroid/telephony/SignalStrength;)I

    move-result v16

    .line 273
    .local v16, "sigLevelDataUi":I
    if-lez v16, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mSignalStrengthLength:I

    move/from16 v20, v0

    move/from16 v0, v16

    move/from16 v1, v20

    if-le v0, v1, :cond_c

    .line 274
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->DBG:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_b

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "EVENT_NOTIFY_SIGNALSTRENGTH_DELAY_PS: it shouldn\'t happen, sigLevel="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ". return!"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->loge(Ljava/lang/String;)V

    .line 275
    :cond_b
    const-string/jumbo v20, "EVENT_NOTIFY_SIGNALSTRENGTH_DELAY_PS: print ERROR stack trace"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->printStackTrace(Ljava/lang/String;)V

    .line 276
    return-void

    .line 279
    :cond_c
    add-int/lit8 v20, v16, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v13, v1}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->getDbmValueWithLevel(Ljava/lang/String;I)I

    move-result v19

    .line 280
    .restart local v19    # "value":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->DBG:I

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_d

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "EVENT_NOTIFY_SIGNALSTRENGTH_DELAY_PS: update "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " to LEVEL"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    add-int/lit8 v21, v16, -0x1

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 281
    const-string/jumbo v21, "  "

    .line 280
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 281
    const-string/jumbo v21, "dBm immediatelly."

    .line 280
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->logd(Ljava/lang/String;)V

    .line 282
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mReportSignalStrength:Landroid/telephony/SignalStrength;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v13, v1}, Landroid/telephony/SignalStrength;->setSigValue(Ljava/lang/String;I)V

    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mUiServiceState:Landroid/telephony/ServiceState;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->getVoiceNetworkRat(Landroid/telephony/ServiceState;)I

    move-result v12

    .line 285
    .restart local v12    # "ratVoiceUi":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mUiServiceState:Landroid/telephony/ServiceState;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v12}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->getSigKeyWithRat(Landroid/telephony/ServiceState;I)Ljava/lang/String;

    move-result-object v15

    .line 286
    .restart local v15    # "sigKeyVoiceUi":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mUiServiceState:Landroid/telephony/ServiceState;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mUiSignalStrength:Landroid/telephony/SignalStrength;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2, v12}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->getSigDbmValueWithRat(Landroid/telephony/ServiceState;Landroid/telephony/SignalStrength;I)I

    move-result v6

    .line 287
    .restart local v6    # "dBmVoiceUi":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mReportSignalStrength:Landroid/telephony/SignalStrength;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v15, v6}, Landroid/telephony/SignalStrength;->setSigValue(Ljava/lang/String;I)V

    .line 288
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->notifySignalStrength(Lcom/android/internal/telephony/Phone;)V

    .line 289
    add-int/lit8 v16, v16, -0x1

    .line 290
    if-lez v16, :cond_0

    .line 296
    const/16 v20, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v20

    invoke-direct {v0, v9, v1, v2}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->isSigDelayNeedContinue(Lcom/android/internal/telephony/Phone;II)V

    goto/16 :goto_0

    .line 179
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected notifyServiceStatChangedIfNeeded(Lcom/android/internal/telephony/Phone;)V
    .locals 12
    .param p1, "sender"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 668
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v8

    .line 669
    .local v8, "tmpServiceState":Landroid/telephony/ServiceState;
    iget-object v9, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mReportSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/telephony/SignalStrength;->update(Landroid/telephony/SignalStrength;)V

    .line 670
    const-string/jumbo v9, "ro.hmct.ct.test"

    const/4 v10, 0x0

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 671
    const-string/jumbo v10, "ro.hmct.cmcc.test"

    const/4 v11, 0x0

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v10

    .line 670
    add-int v1, v9, v10

    .line 672
    .local v1, "feature":I
    const-string/jumbo v9, "enable"

    const-string/jumbo v10, "persist.sys.hmct.nw_optimize"

    const-string/jumbo v11, ""

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 673
    const/4 v9, 0x1

    if-ne v9, v1, :cond_2

    .line 675
    :cond_0
    iget v9, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->DBG:I

    const/4 v10, 0x2

    if-lt v9, v10, :cond_1

    const-string/jumbo v9, "[SS] disabled or feature=1"

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->logd(Ljava/lang/String;)V

    .line 676
    :cond_1
    iget-object v9, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mReportSignalStrength:Landroid/telephony/SignalStrength;

    invoke-direct {p0, v8, v9}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->isNeedtoSetDefaultSignalStrengthValue(Landroid/telephony/ServiceState;Landroid/telephony/SignalStrength;)Z

    move-result v2

    .line 677
    .local v2, "flag":Z
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->notifyServiceStateChanged(Lcom/android/internal/telephony/Phone;)V

    .line 678
    return-void

    .line 681
    .end local v2    # "flag":Z
    :cond_2
    iget-object v9, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mUiServiceState:Landroid/telephony/ServiceState;

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->hasService(Landroid/telephony/ServiceState;)Z

    move-result v4

    .line 682
    .local v4, "isUiInService":Z
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->hasService(Landroid/telephony/ServiceState;)Z

    move-result v3

    .line 683
    .local v3, "isTmpInService":Z
    const/16 v0, 0x14

    .line 684
    .local v0, "delaySec":I
    const/4 v6, 0x1

    .line 685
    .local v6, "notify":Z
    const/4 v7, 0x1

    .line 686
    .local v7, "removeDelaySigMsg":Z
    iget v9, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->DBG:I

    const/4 v10, 0x2

    if-lt v9, v10, :cond_3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "[SS]isUiInService="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", isTmpInService="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->logd(Ljava/lang/String;)V

    .line 687
    :cond_3
    if-nez v4, :cond_4

    if-eqz v3, :cond_a

    .line 692
    :cond_4
    if-nez v4, :cond_c

    if-eqz v3, :cond_c

    .line 695
    iget v9, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->DBG:I

    const/4 v10, 0x2

    if-lt v9, v10, :cond_5

    const-string/jumbo v9, "[SS]case 2"

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->logd(Ljava/lang/String;)V

    .line 696
    :cond_5
    const/4 v0, 0x0

    .line 822
    :cond_6
    :goto_0
    if-eqz v6, :cond_9

    .line 824
    const/4 v9, 0x2

    invoke-virtual {p0, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 826
    if-nez v0, :cond_7

    if-eqz v7, :cond_7

    .line 827
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 828
    const/4 v9, 0x3

    invoke-virtual {p0, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 829
    const/4 v9, 0x4

    invoke-virtual {p0, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 830
    iget-object v9, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mReportSignalStrength:Landroid/telephony/SignalStrength;

    invoke-direct {p0, v8, v9}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->isNeedtoSetDefaultSignalStrengthValue(Landroid/telephony/ServiceState;Landroid/telephony/SignalStrength;)Z

    .line 832
    :cond_7
    iget v9, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->DBG:I

    const/4 v10, 0x2

    if-lt v9, v10, :cond_8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "[SS]update SST to ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 833
    const-string/jumbo v10, "] after "

    .line 832
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 833
    const-string/jumbo v10, "s later."

    .line 832
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->logd(Ljava/lang/String;)V

    .line 834
    :cond_8
    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v5

    .line 835
    .local v5, "msg":Landroid/os/Message;
    const/4 v9, 0x2

    iput v9, v5, Landroid/os/Message;->what:I

    .line 836
    mul-int/lit16 v9, v0, 0x3e8

    int-to-long v10, v9

    invoke-virtual {p0, v5, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 667
    .end local v5    # "msg":Landroid/os/Message;
    :cond_9
    return-void

    .line 690
    :cond_a
    iget v9, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->DBG:I

    const/4 v10, 0x2

    if-lt v9, v10, :cond_b

    const-string/jumbo v9, "[SS]case 1"

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->logd(Ljava/lang/String;)V

    .line 691
    :cond_b
    const/4 v6, 0x0

    .line 687
    goto :goto_0

    .line 697
    :cond_c
    if-eqz v4, :cond_27

    if-eqz v3, :cond_27

    .line 699
    iget-object v9, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mUiServiceState:Landroid/telephony/ServiceState;

    if-eqz v9, :cond_d

    if-nez v8, :cond_f

    .line 700
    :cond_d
    iget v9, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->DBG:I

    const/4 v10, 0x2

    if-lt v9, v10, :cond_e

    const-string/jumbo v9, "[SS]case 3.0"

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->logd(Ljava/lang/String;)V

    .line 701
    :cond_e
    const/4 v0, 0x0

    .line 699
    goto :goto_0

    .line 702
    :cond_f
    iget-object v9, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mUiServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v9}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v9

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v10

    if-eq v9, v10, :cond_11

    .line 704
    iget v9, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->DBG:I

    const/4 v10, 0x2

    if-lt v9, v10, :cond_10

    const-string/jumbo v9, "[SS]case 3.1"

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->logd(Ljava/lang/String;)V

    .line 705
    :cond_10
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 706
    :cond_11
    iget-object v9, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mUiServiceState:Landroid/telephony/ServiceState;

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->getNetworkClass(Landroid/telephony/ServiceState;)I

    move-result v9

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->getNetworkClass(Landroid/telephony/ServiceState;)I

    move-result v10

    if-eq v9, v10, :cond_13

    .line 708
    iget v9, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->DBG:I

    const/4 v10, 0x2

    if-lt v9, v10, :cond_12

    const-string/jumbo v9, "[SS]case 3.2"

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->logd(Ljava/lang/String;)V

    .line 709
    :cond_12
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 710
    :cond_13
    iget-object v9, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mUiServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v9}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    move-result v9

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    move-result v10

    if-ne v9, v10, :cond_14

    .line 711
    iget-object v9, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mUiServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v9}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v9

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v10

    if-eq v9, v10, :cond_20

    .line 713
    :cond_14
    const/4 v0, 0x0

    .line 714
    iget-object v9, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mUiServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v9}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    move-result v9

    iget-object v10, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mUiServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v10}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v10

    if-ne v9, v10, :cond_18

    .line 715
    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    move-result v9

    if-eqz v9, :cond_15

    .line 716
    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v9

    if-nez v9, :cond_17

    .line 720
    :cond_15
    iget v9, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->DBG:I

    const/4 v10, 0x2

    if-lt v9, v10, :cond_16

    const-string/jumbo v9, "[SS]case 3.3.1.1"

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->logd(Ljava/lang/String;)V

    .line 721
    :cond_16
    const/4 v7, 0x0

    .line 716
    goto/16 :goto_0

    .line 724
    :cond_17
    iget v9, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->DBG:I

    const/4 v10, 0x2

    if-lt v9, v10, :cond_6

    const-string/jumbo v9, "[SS]case 3.3.1.2"

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 727
    :cond_18
    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v9

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    move-result v10

    if-ne v9, v10, :cond_1a

    .line 729
    iget v9, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->DBG:I

    const/4 v10, 0x2

    if-lt v9, v10, :cond_19

    const-string/jumbo v9, "[SS]case 3.3.2.1"

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->logd(Ljava/lang/String;)V

    .line 730
    :cond_19
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 732
    :cond_1a
    iget-object v9, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mUiServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v9}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    move-result v9

    if-eqz v9, :cond_1d

    .line 733
    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    move-result v9

    if-nez v9, :cond_1d

    .line 744
    iget v9, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->DBG:I

    const/4 v10, 0x2

    if-lt v9, v10, :cond_1b

    const-string/jumbo v9, "[SS]case 3.3.2.2.1"

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->logd(Ljava/lang/String;)V

    .line 745
    :cond_1b
    iget-object v9, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/ims/ImsManager;->isEnhanced4gLteModeSettingEnabledByUser(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_1c

    .line 746
    iget v9, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->DBG:I

    const/4 v10, 0x2

    if-lt v9, v10, :cond_6

    const-string/jumbo v9, "[SS]volte is enabled"

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 748
    :cond_1c
    const/16 v0, 0x16

    .line 749
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 751
    :cond_1d
    iget-object v9, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mUiServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v9}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v9

    if-eqz v9, :cond_1f

    .line 752
    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v9

    if-nez v9, :cond_1f

    .line 754
    iget v9, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->DBG:I

    const/4 v10, 0x2

    if-lt v9, v10, :cond_1e

    const-string/jumbo v9, "[SS]case 3.3.2.2.2"

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->logd(Ljava/lang/String;)V

    .line 755
    :cond_1e
    const/16 v0, 0x16

    .line 756
    const/4 v7, 0x0

    .line 752
    goto/16 :goto_0

    .line 760
    :cond_1f
    iget v9, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->DBG:I

    const/4 v10, 0x2

    if-lt v9, v10, :cond_6

    const-string/jumbo v9, "[SS]case 3.3.2.2.3"

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 765
    :cond_20
    iget-object v9, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mUiServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v9}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_23

    .line 766
    iget-object v9, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mUiServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v9}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_23

    .line 767
    iget-object v9, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mUiServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v9}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_23

    .line 772
    iget-object v9, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mUiServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v9}, Landroid/telephony/ServiceState;->getSystemId()I

    move-result v9

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getSystemId()I

    move-result v10

    if-ne v9, v10, :cond_21

    .line 773
    iget-object v9, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mUiServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v9}, Landroid/telephony/ServiceState;->getNetworkId()I

    move-result v9

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getNetworkId()I

    move-result v10

    if-eq v9, v10, :cond_25

    .line 774
    :cond_21
    iget v9, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->DBG:I

    const/4 v10, 0x2

    if-lt v9, v10, :cond_22

    const-string/jumbo v9, "[SS]case 3.5"

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->logd(Ljava/lang/String;)V

    .line 775
    :cond_22
    const/4 v0, 0x0

    .line 776
    const/4 v7, 0x0

    .line 773
    goto/16 :goto_0

    .line 769
    :cond_23
    iget v9, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->DBG:I

    const/4 v10, 0x2

    if-lt v9, v10, :cond_24

    const-string/jumbo v9, "[SS]case 3.4"

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->logd(Ljava/lang/String;)V

    .line 770
    :cond_24
    const/4 v0, 0x0

    .line 771
    const/4 v7, 0x0

    .line 767
    goto/16 :goto_0

    .line 778
    :cond_25
    iget v9, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->DBG:I

    const/4 v10, 0x2

    if-lt v9, v10, :cond_26

    const-string/jumbo v9, "[SS]case 3.6"

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->logd(Ljava/lang/String;)V

    .line 779
    :cond_26
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 781
    :cond_27
    if-eqz v4, :cond_28

    if-eqz v3, :cond_2a

    .line 810
    :cond_28
    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v9

    const/4 v10, 0x2

    if-ne v10, v9, :cond_35

    .line 812
    iget v9, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->DBG:I

    const/4 v10, 0x2

    if-lt v9, v10, :cond_29

    const-string/jumbo v9, "[SS]case 5"

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->logd(Ljava/lang/String;)V

    .line 813
    :cond_29
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 783
    :cond_2a
    iget-boolean v9, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mDdsChanged:Z

    if-eqz v9, :cond_2c

    .line 785
    iget v9, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->DBG:I

    const/4 v10, 0x2

    if-lt v9, v10, :cond_2b

    const-string/jumbo v9, "[SS]case 4.1"

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->logd(Ljava/lang/String;)V

    .line 786
    :cond_2b
    const/4 v0, 0x0

    .line 787
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mDdsChanged:Z

    goto/16 :goto_0

    .line 788
    :cond_2c
    invoke-direct {p0}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->isAirplaneModeOn()Z

    move-result v9

    if-eqz v9, :cond_2e

    .line 790
    iget v9, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->DBG:I

    const/4 v10, 0x2

    if-lt v9, v10, :cond_2d

    const-string/jumbo v9, "[SS]case 4.2"

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->logd(Ljava/lang/String;)V

    .line 791
    :cond_2d
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 792
    :cond_2e
    iget v9, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mPhoneId:I

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->getProvisionStatus(I)I

    move-result v9

    const/4 v10, 0x1

    if-eq v10, v9, :cond_30

    .line 794
    iget v9, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->DBG:I

    const/4 v10, 0x2

    if-lt v9, v10, :cond_2f

    const-string/jumbo v9, "[SS]case 4.3"

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->logd(Ljava/lang/String;)V

    .line 795
    :cond_2f
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 796
    :cond_30
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v9

    iget v10, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mPhoneId:I

    invoke-virtual {v9, v10}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v9

    if-nez v9, :cond_32

    .line 798
    iget v9, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->DBG:I

    const/4 v10, 0x2

    if-lt v9, v10, :cond_31

    const-string/jumbo v9, "[SS]case 4.4"

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->logd(Ljava/lang/String;)V

    .line 799
    :cond_31
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 801
    :cond_32
    const/4 v9, 0x2

    invoke-virtual {p0, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v9

    if-eqz v9, :cond_34

    .line 803
    iget v9, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->DBG:I

    const/4 v10, 0x2

    if-lt v9, v10, :cond_33

    const-string/jumbo v9, "[SS]case 4.5.1"

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->logd(Ljava/lang/String;)V

    .line 804
    :cond_33
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 807
    :cond_34
    iget v9, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->DBG:I

    const/4 v10, 0x2

    if-lt v9, v10, :cond_6

    const-string/jumbo v9, "[SS]case 4.5.2"

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 816
    :cond_35
    iget v9, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->DBG:I

    const/4 v10, 0x1

    if-lt v9, v10, :cond_36

    const-string/jumbo v9, "[SS]case 6"

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->logd(Ljava/lang/String;)V

    .line 817
    :cond_36
    iget v9, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->DBG:I

    const/4 v10, 0x1

    if-lt v9, v10, :cond_37

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "un-handled case, check more about it. UI_state="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mUiServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 818
    const-string/jumbo v10, ", new_state="

    .line 817
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->logd(Ljava/lang/String;)V

    .line 819
    :cond_37
    const/4 v6, 0x0

    goto/16 :goto_0
.end method

.method protected notifySignalStrengthIfNeeded(Lcom/android/internal/telephony/Phone;)V
    .locals 8
    .param p1, "sender"    # Lcom/android/internal/telephony/Phone;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 881
    iget-object v4, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mSigLock:Ljava/lang/Object;

    monitor-enter v4

    .line 882
    :try_start_0
    iget v3, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mPhoneId:I

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->isAnyCallsInProgress(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 883
    iget v3, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->DBG:I

    if-lt v3, v7, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[SIG]phone"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mPhoneId:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " in call state, return"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->logd(Ljava/lang/String;)V

    .line 884
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    .line 885
    .local v2, "tmpServiceState":Landroid/telephony/ServiceState;
    iget-object v3, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mReportSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/telephony/SignalStrength;->update(Landroid/telephony/SignalStrength;)V

    .line 886
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 887
    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 888
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 889
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->notifySignalStrength(Lcom/android/internal/telephony/Phone;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    .line 890
    return-void

    .line 893
    .end local v2    # "tmpServiceState":Landroid/telephony/ServiceState;
    :cond_1
    :try_start_1
    iget v3, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->DBG:I

    if-lt v3, v7, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[SIG]notifySignalStrengthIfNeeded: + PhoneType = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->logd(Ljava/lang/String;)V

    .line 894
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    if-ne v3, v6, :cond_3

    .line 895
    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 896
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 897
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->notifySingleSignalStrength(Lcom/android/internal/telephony/Phone;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v4

    .line 880
    return-void

    .line 899
    :cond_3
    :try_start_2
    iget-object v3, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mUiServiceState:Landroid/telephony/ServiceState;

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->getVoiceNetworkRat(Landroid/telephony/ServiceState;)I

    move-result v1

    .line 900
    .local v1, "VoiceRat":I
    iget-object v3, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mUiServiceState:Landroid/telephony/ServiceState;

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->getDataNetworkRat(Landroid/telephony/ServiceState;)I

    move-result v0

    .line 901
    .local v0, "DataRat":I
    iget v3, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->DBG:I

    if-lt v3, v7, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[SIG]VoiceRat = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ", DataRat = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->logd(Ljava/lang/String;)V

    .line 902
    :cond_4
    if-eqz v1, :cond_5

    .line 903
    if-nez v0, :cond_6

    .line 905
    :cond_5
    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 906
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 907
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->notifySingleSignalStrength(Lcom/android/internal/telephony/Phone;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 881
    .end local v0    # "DataRat":I
    .end local v1    # "VoiceRat":I
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 904
    .restart local v0    # "DataRat":I
    .restart local v1    # "VoiceRat":I
    :cond_6
    if-eq v1, v0, :cond_5

    .line 909
    const/4 v3, 0x1

    :try_start_3
    invoke-virtual {p0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 910
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->notifyDualSignalStrength(Lcom/android/internal/telephony/Phone;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method protected registerForSstChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1166
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1167
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mSstChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1165
    return-void
.end method

.method protected unregisterForSstChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1170
    iget-object v0, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier;->mSstChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1169
    return-void
.end method
