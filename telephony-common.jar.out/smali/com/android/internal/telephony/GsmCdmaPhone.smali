.class public Lcom/android/internal/telephony/GsmCdmaPhone;
.super Lcom/android/internal/telephony/Phone;
.source "GsmCdmaPhone.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/GsmCdmaPhone$1;,
        Lcom/android/internal/telephony/GsmCdmaPhone$2;,
        Lcom/android/internal/telephony/GsmCdmaPhone$Cfu;
    }
.end annotation


# static fields
.field private static final synthetic -com-android-internal-telephony-DctConstants$ActivitySwitchesValues:[I = null

.field private static final synthetic -com-android-internal-telephony-DctConstants$StateSwitchesValues:[I = null

.field public static final CANCEL_ECM_TIMER:I = 0x1

.field private static final DBG:Z = true

.field private static final DEFAULT_ECM_EXIT_TIMER_VALUE:I = 0x493e0

.field private static final INVALID_SYSTEM_SELECTION_CODE:I = -0x1

.field private static final IS683A_FEATURE_CODE:Ljava/lang/String; = "*228"

.field private static final IS683A_FEATURE_CODE_NUM_DIGITS:I = 0x4

.field private static final IS683A_SYS_SEL_CODE_NUM_DIGITS:I = 0x2

.field private static final IS683A_SYS_SEL_CODE_OFFSET:I = 0x4

.field private static final IS683_CONST_1900MHZ_A_BLOCK:I = 0x2

.field private static final IS683_CONST_1900MHZ_B_BLOCK:I = 0x3

.field private static final IS683_CONST_1900MHZ_C_BLOCK:I = 0x4

.field private static final IS683_CONST_1900MHZ_D_BLOCK:I = 0x5

.field private static final IS683_CONST_1900MHZ_E_BLOCK:I = 0x6

.field private static final IS683_CONST_1900MHZ_F_BLOCK:I = 0x7

.field private static final IS683_CONST_800MHZ_A_BAND:I = 0x0

.field private static final IS683_CONST_800MHZ_B_BAND:I = 0x1

.field public static final LOG_TAG:Ljava/lang/String; = "GsmCdmaPhone"

.field public static final PROPERTY_CDMA_HOME_OPERATOR_NUMERIC:Ljava/lang/String; = "ro.cdma.home.operator.numeric"

.field public static final RESTART_ECM_TIMER:I = 0x0

.field private static final VDBG:Z = false

.field private static final VM_NUMBER:Ljava/lang/String; = "vm_number_key"

.field private static final VM_NUMBER_CDMA:Ljava/lang/String; = "vm_number_key_cdma"

.field private static final VM_SIM_IMSI:Ljava/lang/String; = "vm_sim_imsi_key"

.field private static final VOLTE_PREFERRED_ON:I = 0x1

.field private static pOtaSpNumSchema:Ljava/util/regex/Pattern;


# instance fields
.field private mBroadcastEmergencyCallStateChanges:Z

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field public mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

.field private mCarrierOtaSpNumSchema:Ljava/lang/String;

.field private mCdmaRoamingType:I

.field private mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

.field public mCdmaSubscriptionSource:I

.field private mEcmExitRespRegistrant:Landroid/os/Registrant;

.field private final mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

.field private final mEriFileLoadedRegistrants:Landroid/os/RegistrantList;

.field public mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

.field private mEsn:Ljava/lang/String;

.field private mExitEcmRunnable:Ljava/lang/Runnable;

.field private mIccCardProxy:Lcom/android/internal/telephony/uicc/IccCardProxy;

.field private mIccPhoneBookIntManager:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

.field private mIccSmsInterfaceManager:Lcom/android/internal/telephony/IccSmsInterfaceManager;

.field private mImei:Ljava/lang/String;

.field private mImeiSv:Ljava/lang/String;

.field private mIsPhoneInEcmState:Z

.field private mIsimUiccRecords:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

.field private mMeid:Ljava/lang/String;

.field private mPendingMMIs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/MmiCode;",
            ">;"
        }
    .end annotation
.end field

.field private mPrecisePhoneType:I

.field private mResetModemOnRadioTechnologyChange:Z

.field private mRilVersion:I

.field public mSST:Lcom/android/internal/telephony/ServiceStateTracker;

.field private mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

.field private mSsnRegistrants:Landroid/os/RegistrantList;

.field private mVmNumber:Ljava/lang/String;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method private static synthetic -getcom-android-internal-telephony-DctConstants$ActivitySwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/internal/telephony/GsmCdmaPhone;->-com-android-internal-telephony-DctConstants$ActivitySwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/GsmCdmaPhone;->-com-android-internal-telephony-DctConstants$ActivitySwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/DctConstants$Activity;->values()[Lcom/android/internal/telephony/DctConstants$Activity;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/DctConstants$Activity;->DATAIN:Lcom/android/internal/telephony/DctConstants$Activity;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DctConstants$Activity;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/internal/telephony/DctConstants$Activity;->DATAINANDOUT:Lcom/android/internal/telephony/DctConstants$Activity;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DctConstants$Activity;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/internal/telephony/DctConstants$Activity;->DATAOUT:Lcom/android/internal/telephony/DctConstants$Activity;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DctConstants$Activity;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/internal/telephony/DctConstants$Activity;->DORMANT:Lcom/android/internal/telephony/DctConstants$Activity;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DctConstants$Activity;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/internal/telephony/DctConstants$Activity;->NONE:Lcom/android/internal/telephony/DctConstants$Activity;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DctConstants$Activity;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    sput-object v0, Lcom/android/internal/telephony/GsmCdmaPhone;->-com-android-internal-telephony-DctConstants$ActivitySwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1

    :catch_4
    move-exception v1

    goto :goto_0
.end method

.method private static synthetic -getcom-android-internal-telephony-DctConstants$StateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/internal/telephony/GsmCdmaPhone;->-com-android-internal-telephony-DctConstants$StateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/GsmCdmaPhone;->-com-android-internal-telephony-DctConstants$StateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/DctConstants$State;->values()[Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DctConstants$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_6

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->CONNECTING:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DctConstants$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_5

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->DISCONNECTING:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DctConstants$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_4

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DctConstants$State;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DctConstants$State;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_2

    :goto_4
    :try_start_5
    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->RETRYING:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DctConstants$State;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1

    :goto_5
    :try_start_6
    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->SCANNING:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DctConstants$State;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_0

    :goto_6
    sput-object v0, Lcom/android/internal/telephony/GsmCdmaPhone;->-com-android-internal-telephony-DctConstants$StateSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_6

    :catch_1
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_1

    :catch_6
    move-exception v1

    goto :goto_0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2955
    const-string/jumbo v0, "[,\\s]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/GsmCdmaPhone;->pOtaSpNumSchema:Ljava/util/regex/Pattern;

    .line 103
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;IILcom/android/internal/telephony/TelephonyComponentFactory;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "notifier"    # Lcom/android/internal/telephony/PhoneNotifier;
    .param p4, "phoneId"    # I
    .param p5, "precisePhoneType"    # I
    .param p6, "telephonyComponentFactory"    # Lcom/android/internal/telephony/TelephonyComponentFactory;

    .prologue
    .line 202
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/GsmCdmaPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;ZIILcom/android/internal/telephony/TelephonyComponentFactory;)V

    .line 201
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;ZIILcom/android/internal/telephony/TelephonyComponentFactory;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "notifier"    # Lcom/android/internal/telephony/PhoneNotifier;
    .param p4, "unitTestMode"    # Z
    .param p5, "phoneId"    # I
    .param p6, "precisePhoneType"    # I
    .param p7, "telephonyComponentFactory"    # Lcom/android/internal/telephony/TelephonyComponentFactory;

    .prologue
    .line 208
    const/4 v0, 0x1

    if-ne p6, v0, :cond_0

    const-string/jumbo v1, "GSM"

    :goto_0
    move-object v0, p0

    move-object v2, p3

    move-object v3, p1

    move-object v4, p2

    move v5, p4

    move v6, p5

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/Phone;-><init>(Ljava/lang/String;Lcom/android/internal/telephony/PhoneNotifier;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;ZILcom/android/internal/telephony/TelephonyComponentFactory;)V

    .line 117
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSsnRegistrants:Landroid/os/RegistrantList;

    .line 129
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCdmaSubscriptionSource:I

    .line 133
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mEriFileLoadedRegistrants:Landroid/os/RegistrantList;

    .line 144
    new-instance v0, Lcom/android/internal/telephony/GsmCdmaPhone$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/GsmCdmaPhone$1;-><init>(Lcom/android/internal/telephony/GsmCdmaPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mExitEcmRunnable:Ljava/lang/Runnable;

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPendingMMIs:Ljava/util/ArrayList;

    .line 170
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

    .line 192
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mResetModemOnRadioTechnologyChange:Z

    .line 195
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mBroadcastEmergencyCallStateChanges:Z

    .line 197
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCdmaRoamingType:I

    .line 222
    new-instance v0, Lcom/android/internal/telephony/GsmCdmaPhone$2;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/GsmCdmaPhone$2;-><init>(Lcom/android/internal/telephony/GsmCdmaPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 212
    iput p6, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPrecisePhoneType:I

    .line 213
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/GsmCdmaPhone;->initOnce(Lcom/android/internal/telephony/CommandsInterface;)V

    .line 214
    invoke-direct {p0, p6}, Lcom/android/internal/telephony/GsmCdmaPhone;->initRatSpecific(I)V

    .line 215
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mTelephonyComponentFactory:Lcom/android/internal/telephony/TelephonyComponentFactory;

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v0, p0, v1}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeServiceStateTracker(Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    .line 217
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mTelephonyComponentFactory:Lcom/android/internal/telephony/TelephonyComponentFactory;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeDcTracker(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    .line 218
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    const/16 v1, 0x13

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForNetworkAttached(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "GsmCdmaPhone: constructor: sub = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 207
    return-void

    .line 208
    :cond_0
    const-string/jumbo v1, "CDMA"

    goto :goto_0
.end method

.method private checkMeidValid(Ljava/lang/String;)Z
    .locals 6
    .param p1, "strMeid"    # Ljava/lang/String;

    .prologue
    .line 3568
    const/4 v2, 0x0

    .line 3569
    .local v2, "mValid":Z
    if-nez p1, :cond_1

    .line 3570
    const/4 v2, 0x0

    .line 3580
    :cond_0
    :goto_0
    const-string/jumbo v3, "GsmCdmaPhone"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "meid is valid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3581
    return v2

    .line 3572
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 3573
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 3574
    .local v1, "mSubstr":Ljava/lang/String;
    const-string/jumbo v3, "0"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 3575
    const/4 v2, 0x1

    .line 3576
    goto :goto_0

    .line 3572
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static checkOtaSpNumBasedOnSysSelCode(I[Ljava/lang/String;)Z
    .locals 8
    .param p0, "sysSelCodeInt"    # I
    .param p1, "sch"    # [Ljava/lang/String;

    .prologue
    .line 3016
    const/4 v2, 0x0

    .line 3019
    .local v2, "isOtaSpNum":Z
    const/4 v6, 0x1

    :try_start_0
    aget-object v6, p1, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 3020
    .local v5, "selRc":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_2

    .line 3021
    add-int/lit8 v6, v1, 0x2

    aget-object v6, p1, v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    add-int/lit8 v6, v1, 0x3

    aget-object v6, p1, v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3020
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3022
    :cond_1
    add-int/lit8 v6, v1, 0x2

    aget-object v6, p1, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 3023
    .local v4, "selMin":I
    add-int/lit8 v6, v1, 0x3

    aget-object v6, p1, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 3026
    .local v3, "selMax":I
    if-lt p0, v4, :cond_0

    if-gt p0, v3, :cond_0

    .line 3027
    const/4 v2, 0x1

    .line 3037
    .end local v1    # "i":I
    .end local v3    # "selMax":I
    .end local v4    # "selMin":I
    .end local v5    # "selRc":I
    :cond_2
    :goto_1
    return v2

    .line 3032
    :catch_0
    move-exception v0

    .line 3035
    .local v0, "ex":Ljava/lang/NumberFormatException;
    const-string/jumbo v6, "GsmCdmaPhone"

    const-string/jumbo v7, "checkOtaSpNumBasedOnSysSelCode, error"

    invoke-static {v6, v7, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private static extractSelCodeFromOtaSpNum(Ljava/lang/String;)I
    .locals 6
    .param p0, "dialStr"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 2992
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 2993
    .local v0, "dialStrLen":I
    const/4 v1, -0x1

    .line 2995
    .local v1, "sysSelCodeInt":I
    const-string/jumbo v2, "*228"

    invoke-virtual {p0, v3, v2, v3, v4}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2997
    if-lt v0, v5, :cond_0

    .line 3002
    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 3001
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 3005
    :cond_0
    const-string/jumbo v2, "GsmCdmaPhone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "extractSelCodeFromOtaSpNum "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3006
    return v1
.end method

.method private getVmSimImsi()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1387
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1388
    .local v0, "sp":Landroid/content/SharedPreferences;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "vm_sim_imsi_key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private handleCallDeflectionIncallSupplementaryService(Ljava/lang/String;)Z
    .locals 4
    .param p1, "dialString"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 863
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_0

    .line 864
    const/4 v1, 0x0

    return v1

    .line 867
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v2, :cond_2

    .line 868
    const-string/jumbo v1, "MmiCode 0: rejectCall"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 870
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->rejectCall()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 881
    :cond_1
    :goto_0
    return v3

    .line 871
    :catch_0
    move-exception v0

    .line 872
    .local v0, "e":Lcom/android/internal/telephony/CallStateException;
    const-string/jumbo v1, "GsmCdmaPhone"

    .line 873
    const-string/jumbo v2, "reject failed"

    .line 872
    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 874
    sget-object v1, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->REJECT:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;)V

    goto :goto_0

    .line 876
    .end local v0    # "e":Lcom/android/internal/telephony/CallStateException;
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getBackgroundCall()Lcom/android/internal/telephony/GsmCdmaCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v2, :cond_1

    .line 877
    const-string/jumbo v1, "MmiCode 0: hangupWaitingOrBackground"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 878
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->hangupWaitingOrBackground()V

    goto :goto_0
.end method

.method private handleCallHoldIncallSupplementaryService(Ljava/lang/String;)Z
    .locals 9
    .param p1, "dialString"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    .line 923
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 925
    .local v5, "len":I
    const/4 v6, 0x2

    if-le v5, v6, :cond_0

    .line 926
    const/4 v6, 0x0

    return v6

    .line 929
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getForegroundCall()Lcom/android/internal/telephony/GsmCdmaCall;

    move-result-object v0

    .line 931
    .local v0, "call":Lcom/android/internal/telephony/GsmCdmaCall;
    if-le v5, v8, :cond_2

    .line 933
    const/4 v6, 0x1

    :try_start_0
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 934
    .local v2, "ch":C
    add-int/lit8 v1, v2, -0x30

    .line 935
    .local v1, "callIndex":I
    iget-object v6, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {v6, v0, v1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->getConnectionByIndex(Lcom/android/internal/telephony/GsmCdmaCall;I)Lcom/android/internal/telephony/GsmCdmaConnection;

    move-result-object v3

    .line 938
    .local v3, "conn":Lcom/android/internal/telephony/GsmCdmaConnection;
    if-eqz v3, :cond_1

    if-lt v1, v8, :cond_1

    const/16 v6, 0x13

    if-gt v1, v6, :cond_1

    .line 939
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "MmiCode 2: separate call "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 940
    iget-object v6, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {v6, v3}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->separate(Lcom/android/internal/telephony/GsmCdmaConnection;)V

    .line 964
    .end local v1    # "callIndex":I
    .end local v2    # "ch":C
    .end local v3    # "conn":Lcom/android/internal/telephony/GsmCdmaConnection;
    :goto_0
    return v8

    .line 942
    .restart local v1    # "callIndex":I
    .restart local v2    # "ch":C
    .restart local v3    # "conn":Lcom/android/internal/telephony/GsmCdmaConnection;
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "separate: invalid call index "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 943
    sget-object v6, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->SEPARATE:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 945
    .end local v1    # "callIndex":I
    .end local v2    # "ch":C
    .end local v3    # "conn":Lcom/android/internal/telephony/GsmCdmaConnection;
    :catch_0
    move-exception v4

    .line 946
    .local v4, "e":Lcom/android/internal/telephony/CallStateException;
    const-string/jumbo v6, "GsmCdmaPhone"

    const-string/jumbo v7, "separate failed"

    invoke-static {v6, v7, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 947
    sget-object v6, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->SEPARATE:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;)V

    goto :goto_0

    .line 951
    .end local v4    # "e":Lcom/android/internal/telephony/CallStateException;
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v6, v7, :cond_3

    .line 952
    const-string/jumbo v6, "MmiCode 2: accept ringing call"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 953
    iget-object v6, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {v6}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->acceptCall()V
    :try_end_1
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 958
    :catch_1
    move-exception v4

    .line 959
    .restart local v4    # "e":Lcom/android/internal/telephony/CallStateException;
    const-string/jumbo v6, "GsmCdmaPhone"

    const-string/jumbo v7, "switch failed"

    invoke-static {v6, v7, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 960
    sget-object v6, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->SWITCH:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;)V

    goto :goto_0

    .line 955
    .end local v4    # "e":Lcom/android/internal/telephony/CallStateException;
    :cond_3
    :try_start_2
    const-string/jumbo v6, "MmiCode 2: switchWaitingOrHoldingAndActive"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 956
    iget-object v6, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {v6}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->switchWaitingOrHoldingAndActive()V
    :try_end_2
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0
.end method

.method private handleCallWaitingIncallSupplementaryService(Ljava/lang/String;)Z
    .locals 8
    .param p1, "dialString"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    .line 886
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 888
    .local v4, "len":I
    const/4 v5, 0x2

    if-le v4, v5, :cond_0

    .line 889
    const/4 v5, 0x0

    return v5

    .line 892
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getForegroundCall()Lcom/android/internal/telephony/GsmCdmaCall;

    move-result-object v0

    .line 895
    .local v0, "call":Lcom/android/internal/telephony/GsmCdmaCall;
    if-le v4, v7, :cond_2

    .line 896
    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 897
    .local v2, "ch":C
    add-int/lit8 v1, v2, -0x30

    .line 899
    .local v1, "callIndex":I
    if-lt v1, v7, :cond_1

    const/16 v5, 0x13

    if-gt v1, v5, :cond_1

    .line 900
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "MmiCode 1: hangupConnectionByIndex "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 901
    iget-object v5, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {v5, v0, v1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->hangupConnectionByIndex(Lcom/android/internal/telephony/GsmCdmaCall;I)V

    .line 919
    .end local v1    # "callIndex":I
    .end local v2    # "ch":C
    :cond_1
    :goto_0
    return v7

    .line 904
    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v5, v6, :cond_3

    .line 905
    const-string/jumbo v5, "MmiCode 1: hangup foreground"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 907
    iget-object v5, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {v5, v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->hangup(Lcom/android/internal/telephony/GsmCdmaCall;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 913
    :catch_0
    move-exception v3

    .line 914
    .local v3, "e":Lcom/android/internal/telephony/CallStateException;
    const-string/jumbo v5, "GsmCdmaPhone"

    .line 915
    const-string/jumbo v6, "hangup failed"

    .line 914
    invoke-static {v5, v6, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 916
    sget-object v5, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->HANGUP:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;)V

    goto :goto_0

    .line 909
    .end local v3    # "e":Lcom/android/internal/telephony/CallStateException;
    :cond_3
    :try_start_1
    const-string/jumbo v5, "MmiCode 1: switchWaitingOrHoldingAndActive"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 910
    iget-object v5, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {v5}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->switchWaitingOrHoldingAndActive()V
    :try_end_1
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private handleCcbsIncallSupplementaryService(Ljava/lang/String;)Z
    .locals 3
    .param p1, "dialString"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 991
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_0

    .line 992
    const/4 v0, 0x0

    return v0

    .line 995
    :cond_0
    const-string/jumbo v0, "GsmCdmaPhone"

    const-string/jumbo v1, "MmiCode 5: CCBS not supported!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    sget-object v0, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->UNKNOWN:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;)V

    .line 998
    return v2
.end method

.method private handleCfuQueryResult([Lcom/android/internal/telephony/CallForwardInfo;)V
    .locals 7
    .param p1, "infos"    # [Lcom/android/internal/telephony/CallForwardInfo;

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2651
    iget-object v5, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 2652
    .local v1, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v1, :cond_1

    .line 2653
    if-eqz p1, :cond_0

    array-length v5, p1

    if-nez v5, :cond_2

    .line 2656
    :cond_0
    invoke-virtual {p0, v4, v3, v6}, Lcom/android/internal/telephony/GsmCdmaPhone;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    .line 2650
    :cond_1
    :goto_0
    return-void

    .line 2658
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v2, p1

    .local v2, "s":I
    :goto_1
    if-ge v0, v2, :cond_1

    .line 2659
    aget-object v5, p1, v0

    iget v5, v5, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_4

    .line 2660
    aget-object v5, p1, v0

    iget v5, v5, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-ne v5, v4, :cond_3

    move v3, v4

    .line 2661
    :cond_3
    aget-object v5, p1, v0

    iget-object v5, v5, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    .line 2660
    invoke-virtual {p0, v4, v3, v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    goto :goto_0

    .line 2658
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private handleEctIncallSupplementaryService(Ljava/lang/String;)Z
    .locals 3
    .param p1, "dialString"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 979
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 981
    .local v0, "len":I
    if-eq v0, v2, :cond_0

    .line 982
    const/4 v1, 0x0

    return v1

    .line 985
    :cond_0
    const-string/jumbo v1, "MmiCode 4: explicit call transfer"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 986
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->explicitCallTransfer()V

    .line 987
    return v2
.end method

.method private handleEnterEmergencyCallbackMode(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2856
    const-string/jumbo v2, "GsmCdmaPhone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleEnterEmergencyCallbackMode,mIsPhoneInEcmState= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2857
    iget-boolean v4, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIsPhoneInEcmState:Z

    .line 2856
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2860
    iget-boolean v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIsPhoneInEcmState:Z

    if-nez v2, :cond_0

    .line 2861
    const-string/jumbo v2, "ril.cdma.inecmmode"

    const-string/jumbo v3, "true"

    invoke-super {p0, v2, v3}, Lcom/android/internal/telephony/Phone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2862
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIsPhoneInEcmState:Z

    .line 2864
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->sendEmergencyCallbackModeChange()V

    .line 2869
    const-string/jumbo v2, "ro.cdma.ecmexittimer"

    const-wide/32 v4, 0x493e0

    .line 2868
    invoke-static {v2, v4, v5}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 2870
    .local v0, "delayInMillis":J
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mExitEcmRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2872
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2854
    .end local v0    # "delayInMillis":J
    :cond_0
    return-void
.end method

.method private handleExitEmergencyCallbackMode(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 2878
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2880
    .local v0, "ar":Landroid/os/AsyncResult;
    const-string/jumbo v1, "GsmCdmaPhone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleExitEmergencyCallbackMode,ar.exception , mIsPhoneInEcmState "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2881
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 2880
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2881
    iget-boolean v3, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIsPhoneInEcmState:Z

    .line 2880
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2884
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mExitEcmRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2886
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mEcmExitRespRegistrant:Landroid/os/Registrant;

    if-eqz v1, :cond_0

    .line 2887
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mEcmExitRespRegistrant:Landroid/os/Registrant;

    invoke-virtual {v1, v0}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 2890
    :cond_0
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_3

    .line 2891
    iget-boolean v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIsPhoneInEcmState:Z

    if-eqz v1, :cond_1

    .line 2892
    const-string/jumbo v1, "ril.cdma.inecmmode"

    const-string/jumbo v2, "false"

    invoke-super {p0, v1, v2}, Lcom/android/internal/telephony/Phone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2893
    iput-boolean v4, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIsPhoneInEcmState:Z

    .line 2897
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2898
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2902
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->sendEmergencyCallbackModeChange()V

    .line 2904
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setInternalDataEnabled(Z)Z

    .line 2905
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyEmergencyCallRegistrants(Z)V

    .line 2877
    :cond_3
    return-void
.end method

.method private handleMultipartyIncallSupplementaryService(Ljava/lang/String;)Z
    .locals 2
    .param p1, "dialString"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 968
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 969
    const/4 v0, 0x0

    return v0

    .line 972
    :cond_0
    const-string/jumbo v0, "MmiCode 3: merge calls"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 973
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->conference()V

    .line 974
    return v1
.end method

.method private handleRadioAvailable()V
    .locals 3

    .prologue
    const/16 v2, 0x15

    .line 2074
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getBasebandVersion(Landroid/os/Message;)V

    .line 2076
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2077
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x9

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getIMEI(Landroid/os/Message;)V

    .line 2078
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getIMEISV(Landroid/os/Message;)V

    .line 2079
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getDeviceIdentity(Landroid/os/Message;)V

    .line 2083
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x23

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioCapability(Landroid/os/Message;)V

    .line 2084
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->startLceAfterRadioIsAvailable()V

    .line 2073
    return-void

    .line 2081
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getDeviceIdentity(Landroid/os/Message;)V

    goto :goto_0
.end method

.method private handleRadioOffOrNotAvailable()V
    .locals 3

    .prologue
    .line 2101
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2107
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 2108
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/gsm/GsmMmiCode;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isPendingUSSD()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2109
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/gsm/GsmMmiCode;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->onUssdFinishedError()V

    .line 2107
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2113
    .end local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    .line 2114
    .local v1, "imsPhone":Lcom/android/internal/telephony/Phone;
    if-eqz v1, :cond_2

    .line 2115
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->setStateOff()V

    .line 2117
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mRadioOffOrNotAvailableRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 2100
    return-void
.end method

.method private handleRadioOn()V
    .locals 2

    .prologue
    .line 2089
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x28

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getVoiceRadioTechnology(Landroid/os/Message;)V

    .line 2091
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2092
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getCdmaSubscriptionSource()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCdmaSubscriptionSource:I

    .line 2097
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->setPreferredNetworkTypeIfSimLoaded()V

    .line 2087
    return-void
.end method

.method private initOnce(Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 8
    .param p1, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    const/4 v4, 0x1

    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 236
    instance-of v0, p1, Lcom/android/internal/telephony/test/SimulatedRadioControl;

    if-eqz v0, :cond_0

    .line 237
    check-cast p1, Lcom/android/internal/telephony/test/SimulatedRadioControl;

    .end local p1    # "ci":Lcom/android/internal/telephony/CommandsInterface;
    iput-object p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSimulatedRadioControl:Lcom/android/internal/telephony/test/SimulatedRadioControl;

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mTelephonyComponentFactory:Lcom/android/internal/telephony/TelephonyComponentFactory;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeGsmCdmaCallTracker(Lcom/android/internal/telephony/GsmCdmaPhone;)Lcom/android/internal/telephony/GsmCdmaCallTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    .line 241
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mTelephonyComponentFactory:Lcom/android/internal/telephony/TelephonyComponentFactory;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeIccPhoneBookInterfaceManager(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccPhoneBookIntManager:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    .line 243
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PowerManager;

    .line 244
    .local v6, "pm":Landroid/os/PowerManager;
    const-string/jumbo v0, "GsmCdmaPhone"

    invoke-virtual {v6, v4, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 245
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mTelephonyComponentFactory:Lcom/android/internal/telephony/TelephonyComponentFactory;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeIccSmsInterfaceManager(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccSmsInterfaceManager:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    .line 246
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mTelephonyComponentFactory:Lcom/android/internal/telephony/TelephonyComponentFactory;

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget v3, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPhoneId:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeIccCardProxy(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;I)Lcom/android/internal/telephony/uicc/IccCardProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccCardProxy:Lcom/android/internal/telephony/uicc/IccCardProxy;

    .line 248
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 249
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x8

    invoke-interface {v0, p0, v1, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 250
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x5

    invoke-interface {v0, p0, v1, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 251
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x2

    invoke-interface {v0, p0, v1, v5}, Lcom/android/internal/telephony/CommandsInterface;->setOnSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 254
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x7

    invoke-interface {v0, p0, v1, v5}, Lcom/android/internal/telephony/CommandsInterface;->setOnUSSD(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 255
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x24

    invoke-interface {v0, p0, v1, v5}, Lcom/android/internal/telephony/CommandsInterface;->setOnSs(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 258
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mTelephonyComponentFactory:Lcom/android/internal/telephony/TelephonyComponentFactory;

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mContext:Landroid/content/Context;

    .line 259
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0x1b

    move-object v3, p0

    .line 258
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/TelephonyComponentFactory;->getCdmaSubscriptionSourceManagerInstance(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Landroid/os/Handler;ILjava/lang/Object;)Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    .line 260
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mTelephonyComponentFactory:Lcom/android/internal/telephony/TelephonyComponentFactory;

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0, v1, v7}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeEriManager(Lcom/android/internal/telephony/Phone;Landroid/content/Context;I)Lcom/android/internal/telephony/cdma/EriManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    .line 262
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x19

    invoke-interface {v0, p0, v1, v5}, Lcom/android/internal/telephony/CommandsInterface;->setEmergencyCallbackMode(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 263
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x1a

    invoke-interface {v0, p0, v1, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForExitEmergencyCallbackMode(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 266
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 267
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v1

    const-string/jumbo v2, ""

    .line 266
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->getOtaSpNumberSchemaForPhone(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCarrierOtaSpNumSchema:Ljava/lang/String;

    .line 270
    const-string/jumbo v0, "persist.radio.reset_on_switch"

    .line 269
    invoke-static {v0, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mResetModemOnRadioTechnologyChange:Z

    .line 272
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x29

    invoke-interface {v0, p0, v1, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForRilConnected(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 273
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x27

    invoke-interface {v0, p0, v1, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForVoiceRadioTechChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 274
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    .line 275
    const-string/jumbo v3, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    .line 274
    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 235
    return-void
.end method

.method private initRatSpecific(I)V
    .locals 8
    .param p1, "precisePhoneType"    # I

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 279
    iget-object v4, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 280
    iget-object v4, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccPhoneBookIntManager:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateIccRecords(Lcom/android/internal/telephony/uicc/IccRecords;)V

    .line 281
    iput-object v5, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mEsn:Ljava/lang/String;

    .line 282
    iput-object v5, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mMeid:Ljava/lang/String;

    .line 284
    iput p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPrecisePhoneType:I

    .line 285
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Precise phone type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPrecisePhoneType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 287
    iget-object v4, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    .line 288
    .local v3, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 289
    iget-object v4, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, v6}, Lcom/android/internal/telephony/CommandsInterface;->setPhoneType(I)V

    .line 290
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v4

    invoke-virtual {v3, v4, v6}, Landroid/telephony/TelephonyManager;->setPhoneType(II)V

    .line 291
    iget-object v4, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccCardProxy:Lcom/android/internal/telephony/uicc/IccCardProxy;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setVoiceRadioTech(I)V

    .line 278
    :goto_0
    return-void

    .line 293
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getCdmaSubscriptionSource()I

    move-result v4

    iput v4, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCdmaSubscriptionSource:I

    .line 295
    const-string/jumbo v4, "ril.cdma.inecmmode"

    const-string/jumbo v5, "false"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 296
    .local v0, "inEcm":Ljava/lang/String;
    const-string/jumbo v4, "true"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIsPhoneInEcmState:Z

    .line 297
    iget-boolean v4, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIsPhoneInEcmState:Z

    if-eqz v4, :cond_1

    .line 299
    iget-object v4, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 300
    const/16 v5, 0x1a

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 299
    invoke-interface {v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->exitEmergencyCallbackMode(Landroid/os/Message;)V

    .line 303
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, v7}, Lcom/android/internal/telephony/CommandsInterface;->setPhoneType(I)V

    .line 304
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v4

    invoke-virtual {v3, v4, v7}, Landroid/telephony/TelephonyManager;->setPhoneType(II)V

    .line 305
    iget-object v4, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccCardProxy:Lcom/android/internal/telephony/uicc/IccCardProxy;

    const/4 v5, 0x6

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setVoiceRadioTech(I)V

    .line 307
    const-string/jumbo v4, "ro.cdma.home.operator.alpha"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 308
    .local v1, "operatorAlpha":Ljava/lang/String;
    const-string/jumbo v4, "ro.cdma.home.operator.numeric"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 309
    .local v2, "operatorNumeric":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "init: operatorAlpha=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 310
    const-string/jumbo v5, "\' operatorNumeric=\'"

    .line 309
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 310
    const-string/jumbo v5, "\'"

    .line 309
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 311
    iget-object v4, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget v5, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPhoneId:I

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 312
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdmaLte()Z

    move-result v4

    .line 311
    if-nez v4, :cond_2

    .line 312
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdma()Z

    move-result v4

    .line 311
    if-eqz v4, :cond_4

    .line 313
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 314
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "init: set \'gsm.sim.operator.alpha\' to operator=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 315
    iget v4, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPhoneId:I

    invoke-virtual {v3, v4, v1}, Landroid/telephony/TelephonyManager;->setSimOperatorNameForPhone(ILjava/lang/String;)V

    .line 317
    :cond_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 318
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "init: set \'gsm.sim.operator.numeric\' to operator=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 319
    const-string/jumbo v5, "\'"

    .line 318
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 320
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "update icc_operator_numeric="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 321
    iget v4, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPhoneId:I

    invoke-virtual {v3, v4, v2}, Landroid/telephony/TelephonyManager;->setSimOperatorNumericForPhone(ILjava/lang/String;)V

    .line 323
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v5

    invoke-virtual {v4, v2, v5}, Lcom/android/internal/telephony/SubscriptionController;->setMccMnc(Ljava/lang/String;I)I

    .line 325
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->setIsoCountryProperty(Ljava/lang/String;)V

    .line 327
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "update mccmnc="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 328
    iget-object v4, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-static {v4, v2, v5}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 333
    :cond_4
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->updateCurrentCarrierInProvider(Ljava/lang/String;)Z

    goto/16 :goto_0
.end method

.method private isCarrierOtaSpNum(Ljava/lang/String;)Z
    .locals 11
    .param p1, "dialStr"    # Ljava/lang/String;

    .prologue
    const/4 v10, -0x1

    const/4 v9, 0x0

    .line 3060
    const/4 v2, 0x0

    .line 3061
    .local v2, "isOtaSpNum":Z
    invoke-static {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->extractSelCodeFromOtaSpNum(Ljava/lang/String;)I

    move-result v5

    .line 3062
    .local v5, "sysSelCodeInt":I
    if-ne v5, v10, :cond_0

    .line 3063
    return v2

    .line 3066
    :cond_0
    iget-object v6, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCarrierOtaSpNumSchema:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 3067
    sget-object v6, Lcom/android/internal/telephony/GsmCdmaPhone;->pOtaSpNumSchema:Ljava/util/regex/Pattern;

    iget-object v7, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCarrierOtaSpNumSchema:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 3069
    .local v3, "m":Ljava/util/regex/Matcher;
    const-string/jumbo v6, "GsmCdmaPhone"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isCarrierOtaSpNum,schema"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCarrierOtaSpNumSchema:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3072
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 3073
    sget-object v6, Lcom/android/internal/telephony/GsmCdmaPhone;->pOtaSpNumSchema:Ljava/util/regex/Pattern;

    iget-object v7, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCarrierOtaSpNumSchema:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v4

    .line 3075
    .local v4, "sch":[Ljava/lang/String;
    aget-object v6, v4, v9

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    aget-object v6, v4, v9

    const-string/jumbo v7, "SELC"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3076
    if-eq v5, v10, :cond_1

    .line 3077
    invoke-static {v5, v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->checkOtaSpNumBasedOnSysSelCode(I[Ljava/lang/String;)Z

    move-result v2

    .line 3105
    .end local v2    # "isOtaSpNum":Z
    .end local v3    # "m":Ljava/util/regex/Matcher;
    .end local v4    # "sch":[Ljava/lang/String;
    :goto_0
    return v2

    .line 3080
    .restart local v2    # "isOtaSpNum":Z
    .restart local v3    # "m":Ljava/util/regex/Matcher;
    .restart local v4    # "sch":[Ljava/lang/String;
    :cond_1
    const-string/jumbo v6, "GsmCdmaPhone"

    const-string/jumbo v7, "isCarrierOtaSpNum,sysSelCodeInt is invalid"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3083
    :cond_2
    aget-object v6, v4, v9

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    aget-object v6, v4, v9

    const-string/jumbo v7, "FC"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 3084
    const/4 v6, 0x1

    aget-object v6, v4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 3085
    .local v1, "fcLen":I
    const/4 v6, 0x2

    aget-object v0, v4, v6

    .line 3086
    .local v0, "fc":Ljava/lang/String;
    invoke-virtual {p1, v9, v0, v9, v1}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3087
    const/4 v2, 0x1

    goto :goto_0

    .line 3089
    :cond_3
    const-string/jumbo v6, "GsmCdmaPhone"

    const-string/jumbo v7, "isCarrierOtaSpNum,not otasp number"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3093
    .end local v0    # "fc":Ljava/lang/String;
    .end local v1    # "fcLen":I
    :cond_4
    const-string/jumbo v6, "GsmCdmaPhone"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isCarrierOtaSpNum,ota schema not supported"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v4, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3098
    .end local v4    # "sch":[Ljava/lang/String;
    :cond_5
    const-string/jumbo v6, "GsmCdmaPhone"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isCarrierOtaSpNum,ota schema pattern not right"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 3099
    iget-object v8, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCarrierOtaSpNumSchema:Ljava/lang/String;

    .line 3098
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3103
    .end local v3    # "m":Ljava/util/regex/Matcher;
    :cond_6
    const-string/jumbo v6, "GsmCdmaPhone"

    const-string/jumbo v7, "isCarrierOtaSpNum,ota schema pattern empty"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isCfEnable(I)Z
    .locals 2
    .param p1, "action"    # I

    .prologue
    const/4 v0, 0x1

    .line 1679
    if-eq p1, v0, :cond_0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isEmergencyNumber(Ljava/lang/String;)Z
    .locals 6
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 3528
    const-string/jumbo v4, "extphone"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lorg/codeaurora/internal/IExtTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lorg/codeaurora/internal/IExtTelephony;

    move-result-object v2

    .line 3529
    .local v2, "mIExtTelephony":Lorg/codeaurora/internal/IExtTelephony;
    const/4 v3, 0x0

    .line 3531
    .local v3, "result":Z
    :try_start_0
    invoke-interface {v2, p1}, Lorg/codeaurora/internal/IExtTelephony;->isEmergencyNumber(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 3537
    .end local v3    # "result":Z
    :goto_0
    return v3

    .line 3534
    .restart local v3    # "result":Z
    :catch_0
    move-exception v1

    .line 3535
    .local v1, "ex":Ljava/lang/NullPointerException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "NullPointerException"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 3532
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 3533
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "RemoteException"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static isIs683OtaSpDialStr(Ljava/lang/String;)Z
    .locals 4
    .param p0, "dialStr"    # Ljava/lang/String;

    .prologue
    .line 2960
    const/4 v1, 0x0

    .line 2961
    .local v1, "isOtaspDialString":Z
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 2963
    .local v0, "dialStrLen":I
    const/4 v3, 0x4

    if-ne v0, v3, :cond_1

    .line 2964
    const-string/jumbo v3, "*228"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2965
    const/4 v1, 0x1

    .line 2984
    :cond_0
    :goto_0
    return v1

    .line 2968
    :cond_1
    invoke-static {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->extractSelCodeFromOtaSpNum(Ljava/lang/String;)I

    move-result v2

    .line 2969
    .local v2, "sysSelCodeInt":I
    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 2978
    :pswitch_0
    const/4 v1, 0x1

    .line 2979
    goto :goto_0

    .line 2969
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isManualSelProhibitedInGlobalMode()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 2794
    const/4 v2, 0x0

    .line 2795
    .local v2, "isProhibited":Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1040068

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2798
    .local v1, "configString":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2799
    const-string/jumbo v3, ";"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2801
    .local v0, "configArray":[Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 2802
    array-length v3, v0

    if-ne v3, v5, :cond_0

    aget-object v3, v0, v6

    const-string/jumbo v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 2803
    :cond_0
    array-length v3, v0

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    aget-object v3, v0, v5

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2809
    .end local v0    # "configArray":[Ljava/lang/String;
    :cond_1
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isManualNetSelAllowedInGlobal in current carrier is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 2810
    return v2

    .line 2804
    .restart local v0    # "configArray":[Ljava/lang/String;
    :cond_2
    aget-object v3, v0, v6

    const-string/jumbo v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    .line 2803
    if-eqz v3, :cond_1

    .line 2805
    aget-object v3, v0, v5

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->isMatchGid(Ljava/lang/String;)Z

    move-result v3

    .line 2801
    if-eqz v3, :cond_1

    .line 2806
    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private isValidCommandInterfaceCFAction(I)Z
    .locals 1
    .param p1, "commandInterfaceCFAction"    # I

    .prologue
    .line 1667
    packed-switch p1, :pswitch_data_0

    .line 1674
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 1672
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 1667
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private isValidCommandInterfaceCFReason(I)Z
    .locals 1
    .param p1, "commandInterfaceCFReason"    # I

    .prologue
    .line 1641
    packed-switch p1, :pswitch_data_0

    .line 1650
    const/4 v0, 0x0

    return v0

    .line 1648
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 1641
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private logd(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 3496
    const-string/jumbo v0, "GsmCdmaPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[GsmCdmaPhone] [SUB : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3494
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 3501
    const-string/jumbo v0, "GsmCdmaPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[GsmCdmaPhone] [SUB : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3499
    return-void
.end method

.method private onIncomingUSSD(ILjava/lang/String;)V
    .locals 9
    .param p1, "ussdMode"    # I
    .param p2, "ussdMessage"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    .line 2008
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v7

    if-nez v7, :cond_0

    .line 2009
    const-string/jumbo v7, "onIncomingUSSD: not expected on GSM"

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 2016
    :cond_0
    if-ne p1, v8, :cond_3

    const/4 v4, 0x1

    .line 2019
    .local v4, "isUssdRequest":Z
    :goto_0
    if-eqz p1, :cond_5

    .line 2020
    if-eq p1, v8, :cond_4

    const/4 v2, 0x1

    .line 2022
    .local v2, "isUssdError":Z
    :goto_1
    const/4 v7, 0x2

    if-ne p1, v7, :cond_6

    const/4 v3, 0x1

    .line 2028
    .local v3, "isUssdRelease":Z
    :goto_2
    const/4 v0, 0x0

    .line 2029
    .local v0, "found":Lcom/android/internal/telephony/gsm/GsmMmiCode;
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v7, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v6

    .local v6, "s":I
    :goto_3
    if-ge v1, v6, :cond_1

    .line 2030
    iget-object v7, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/gsm/GsmMmiCode;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isPendingUSSD()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 2031
    iget-object v7, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "found":Lcom/android/internal/telephony/gsm/GsmMmiCode;
    check-cast v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;

    .line 2036
    :cond_1
    if-eqz v0, :cond_a

    .line 2039
    if-eqz v3, :cond_8

    .line 2040
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->onUssdRelease()V

    .line 2007
    :cond_2
    :goto_4
    return-void

    .line 2016
    .end local v1    # "i":I
    .end local v2    # "isUssdError":Z
    .end local v3    # "isUssdRelease":Z
    .end local v4    # "isUssdRequest":Z
    .end local v6    # "s":I
    :cond_3
    const/4 v4, 0x0

    .restart local v4    # "isUssdRequest":Z
    goto :goto_0

    .line 2020
    :cond_4
    const/4 v2, 0x0

    .restart local v2    # "isUssdError":Z
    goto :goto_1

    .line 2019
    .end local v2    # "isUssdError":Z
    :cond_5
    const/4 v2, 0x0

    .restart local v2    # "isUssdError":Z
    goto :goto_1

    .line 2022
    :cond_6
    const/4 v3, 0x0

    .restart local v3    # "isUssdRelease":Z
    goto :goto_2

    .line 2029
    .restart local v0    # "found":Lcom/android/internal/telephony/gsm/GsmMmiCode;
    .restart local v1    # "i":I
    .restart local v6    # "s":I
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 2041
    .end local v0    # "found":Lcom/android/internal/telephony/gsm/GsmMmiCode;
    :cond_8
    if-eqz v2, :cond_9

    .line 2042
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->onUssdFinishedError()V

    goto :goto_4

    .line 2044
    :cond_9
    invoke-virtual {v0, p2, v4}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->onUssdFinished(Ljava/lang/String;Z)V

    goto :goto_4

    .line 2051
    :cond_a
    if-nez v2, :cond_2

    if-eqz p2, :cond_2

    .line 2056
    iget-object v7, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 2053
    invoke-static {p2, v4, p0, v7}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->newNetworkInitiatedUssd(Ljava/lang/String;ZLcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)Lcom/android/internal/telephony/gsm/GsmMmiCode;

    move-result-object v5

    .line 2057
    .local v5, "mmi":Lcom/android/internal/telephony/gsm/GsmMmiCode;
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->onNetworkInitiatedUssd(Lcom/android/internal/telephony/MmiCode;)V

    goto :goto_4
.end method

.method private onNetworkInitiatedUssd(Lcom/android/internal/telephony/MmiCode;)V
    .locals 3
    .param p1, "mmi"    # Lcom/android/internal/telephony/MmiCode;

    .prologue
    const/4 v2, 0x0

    .line 2002
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mMmiCompleteRegistrants:Landroid/os/RegistrantList;

    .line 2003
    new-instance v1, Landroid/os/AsyncResult;

    invoke-direct {v1, v2, p1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 2002
    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2001
    return-void
.end method

.method private processIccRecordEvents(I)V
    .locals 0
    .param p1, "eventCode"    # I

    .prologue
    .line 2576
    packed-switch p1, :pswitch_data_0

    .line 2575
    :goto_0
    return-void

    .line 2578
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyCallForwardingIndicator()V

    goto :goto_0

    .line 2576
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private registerForIccRecordEvents()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2814
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 2815
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-nez v0, :cond_0

    .line 2816
    return-void

    .line 2818
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2820
    const/16 v1, 0x1c

    .line 2819
    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForNetworkSelectionModeAutomatic(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2821
    const/16 v1, 0x1d

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsEvents(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2822
    const/4 v1, 0x3

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2813
    :goto_0
    return-void

    .line 2824
    :cond_1
    const/16 v1, 0x16

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private sendEmergencyCallbackModeChange()V
    .locals 3

    .prologue
    .line 642
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 643
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "phoneinECMState"

    iget-boolean v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIsPhoneInEcmState:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 644
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v1

    invoke-static {v0, v1}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 645
    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 646
    const-string/jumbo v1, "sendEmergencyCallbackModeChange"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 640
    return-void
.end method

.method private setIsoCountryProperty(Ljava/lang/String;)V
    .locals 6
    .param p1, "operatorNumeric"    # Ljava/lang/String;

    .prologue
    .line 343
    iget-object v4, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    .line 344
    .local v3, "tm":Landroid/telephony/TelephonyManager;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 345
    const-string/jumbo v4, "setIsoCountryProperty: clear \'gsm.sim.operator.iso-country\'"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 346
    iget v4, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPhoneId:I

    const-string/jumbo v5, ""

    invoke-virtual {v3, v4, v5}, Landroid/telephony/TelephonyManager;->setSimCountryIsoForPhone(ILjava/lang/String;)V

    .line 342
    :goto_0
    return-void

    .line 348
    :cond_0
    const-string/jumbo v2, ""

    .line 351
    .local v2, "iso":Ljava/lang/String;
    const/4 v4, 0x0

    const/4 v5, 0x3

    :try_start_0
    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 350
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 358
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setIsoCountryProperty: set \'gsm.sim.operator.iso-country\' to iso="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 359
    iget v4, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPhoneId:I

    invoke-virtual {v3, v4, v2}, Landroid/telephony/TelephonyManager;->setSimCountryIsoForPhone(ILjava/lang/String;)V

    goto :goto_0

    .line 354
    :catch_0
    move-exception v1

    .line 355
    .local v1, "ex":Ljava/lang/StringIndexOutOfBoundsException;
    const-string/jumbo v4, "GsmCdmaPhone"

    const-string/jumbo v5, "setIsoCountryProperty: countryCodeForMcc error"

    invoke-static {v4, v5, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 352
    .end local v1    # "ex":Ljava/lang/StringIndexOutOfBoundsException;
    :catch_1
    move-exception v0

    .line 353
    .local v0, "ex":Ljava/lang/NumberFormatException;
    const-string/jumbo v4, "GsmCdmaPhone"

    const-string/jumbo v5, "setIsoCountryProperty: countryCodeForMcc error"

    invoke-static {v4, v5, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private setVmSimImsi(Ljava/lang/String;)V
    .locals 4
    .param p1, "imsi"    # Ljava/lang/String;

    .prologue
    .line 1392
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1393
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1394
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "vm_sim_imsi_key"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1395
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1391
    return-void
.end method

.method private storeVoiceMailNumber(Ljava/lang/String;)V
    .locals 4
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 1323
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1324
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1325
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1326
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "vm_number_key"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1327
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1328
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->setVmSimImsi(Ljava/lang/String;)V

    .line 1322
    :goto_0
    return-void

    .line 1330
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "vm_number_key_cdma"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1331
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method private switchPhoneType(I)V
    .locals 2
    .param p1, "precisePhoneType"    # I

    .prologue
    .line 376
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mExitEcmRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 378
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->initRatSpecific(I)V

    .line 380
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ServiceStateTracker;->updatePhoneType()V

    .line 381
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    const-string/jumbo v1, "GSM"

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->setPhoneName(Ljava/lang/String;)V

    .line 382
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->onUpdateIccAvailability()V

    .line 383
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->updatePhoneType()V

    .line 385
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    .line 386
    .local v0, "radioState":Lcom/android/internal/telephony/CommandsInterface$RadioState;
    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 387
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->handleRadioAvailable()V

    .line 388
    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 389
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->handleRadioOn()V

    .line 392
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 375
    :goto_1
    return-void

    .line 381
    .end local v0    # "radioState":Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :cond_1
    const-string/jumbo v1, "CDMA"

    goto :goto_0

    .line 393
    .restart local v0    # "radioState":Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->handleRadioOffOrNotAvailable()V

    goto :goto_1
.end method

.method private switchVoiceRadioTech(I)V
    .locals 5
    .param p1, "newVoiceRadioTech"    # I

    .prologue
    const/4 v4, 0x2

    .line 3287
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneName()Ljava/lang/String;

    move-result-object v1

    .line 3289
    .local v1, "outgoingPhoneName":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Switching Voice Phone : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " >>> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3290
    invoke-static {p1}, Landroid/telephony/ServiceState;->isGsm(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "GSM"

    .line 3289
    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 3292
    invoke-static {p1}, Landroid/telephony/ServiceState;->isCdma(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3294
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget v3, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPhoneId:I

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    .line 3295
    .local v0, "cdmaApplication":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v2, v3, :cond_1

    .line 3296
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->switchPhoneType(I)V

    .line 3285
    .end local v0    # "cdmaApplication":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :goto_1
    return-void

    .line 3290
    :cond_0
    const-string/jumbo v2, "CDMA"

    goto :goto_0

    .line 3298
    .restart local v0    # "cdmaApplication":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :cond_1
    const/4 v2, 0x6

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->switchPhoneType(I)V

    goto :goto_1

    .line 3300
    .end local v0    # "cdmaApplication":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :cond_2
    invoke-static {p1}, Landroid/telephony/ServiceState;->isGsm(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3301
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->switchPhoneType(I)V

    goto :goto_1

    .line 3303
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "deleteAndCreatePhone: newVoiceRadioTech="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3304
    const-string/jumbo v3, " is not CDMA or GSM (error) - aborting!"

    .line 3303
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 3305
    return-void
.end method

.method private syncClirSetting()V
    .locals 4

    .prologue
    .line 2066
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2067
    .local v1, "sp":Landroid/content/SharedPreferences;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "clir_key"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2068
    .local v0, "clirSetting":I
    if-ltz v0, :cond_0

    .line 2069
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Lcom/android/internal/telephony/CommandsInterface;->setCLIR(ILandroid/os/Message;)V

    .line 2065
    :cond_0
    return-void
.end method

.method private unregisterForIccRecordEvents()V
    .locals 2

    .prologue
    .line 2829
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 2830
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-nez v0, :cond_0

    .line 2831
    return-void

    .line 2833
    :cond_0
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForNetworkSelectionModeAutomatic(Landroid/os/Handler;)V

    .line 2834
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsEvents(Landroid/os/Handler;)V

    .line 2835
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 2828
    return-void
.end method

.method private updateCurrentCarrierInProvider(Ljava/lang/String;)Z
    .locals 7
    .param p1, "operatorNumeric"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 2622
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdma()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2623
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdmaLte()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget v4, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPhoneId:I

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v3

    if-nez v3, :cond_2

    .line 2625
    :cond_0
    const-string/jumbo v3, "CDMAPhone: updateCurrentCarrierInProvider called"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 2626
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2628
    :try_start_0
    sget-object v3, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v4, "current"

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 2629
    .local v2, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2630
    .local v1, "map":Landroid/content/ContentValues;
    const-string/jumbo v3, "numeric"

    invoke-virtual {v1, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2631
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateCurrentCarrierInProvider from system: numeric="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 2632
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 2635
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "update mccmnc="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 2636
    iget-object v3, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v3, p1, v4}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2638
    return v5

    .line 2639
    .end local v1    # "map":Landroid/content/ContentValues;
    .end local v2    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 2640
    .local v0, "e":Landroid/database/SQLException;
    const-string/jumbo v3, "GsmCdmaPhone"

    const-string/jumbo v4, "Can\'t store current operator"

    invoke-static {v3, v4, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2643
    .end local v0    # "e":Landroid/database/SQLException;
    :cond_1
    return v6

    .line 2645
    :cond_2
    const-string/jumbo v3, "updateCurrentCarrierInProvider not updated X retVal=true"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 2646
    return v5
.end method


# virtual methods
.method public acceptCall(I)V
    .locals 2
    .param p1, "videoState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 723
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    .line 724
    .local v0, "imsPhone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 725
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/Phone;->acceptCall(I)V

    .line 722
    :goto_0
    return-void

    .line 727
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->acceptCall()V

    goto :goto_0
.end method

.method public activateCellBroadcastSms(ILandroid/os/Message;)V
    .locals 1
    .param p1, "activate"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 2717
    const-string/jumbo v0, "[GsmCdmaPhone] activateCellBroadcastSms() is obsolete; use SmsManager"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 2718
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 2716
    return-void
.end method

.method public addParticipant(Ljava/lang/String;)V
    .locals 5
    .param p1, "dialString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1298
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    .line 1299
    .local v1, "imsPhone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isImsUseEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1300
    if-eqz v1, :cond_1

    .line 1301
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->isVolteEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->isWifiCallingEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1302
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->isVideoEnabled()Z

    move-result v3

    .line 1299
    if-eqz v3, :cond_1

    .line 1303
    :cond_0
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    if-nez v3, :cond_1

    const/4 v2, 0x1

    .line 1305
    .local v2, "imsUseEnabled":Z
    :cond_1
    if-eqz v2, :cond_2

    .line 1307
    :try_start_0
    const-string/jumbo v3, "addParticipant :: Trying to add participant in IMS call"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 1308
    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/Phone;->addParticipant(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1297
    :goto_0
    return-void

    .line 1309
    :catch_0
    move-exception v0

    .line 1310
    .local v0, "e":Lcom/android/internal/telephony/CallStateException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "addParticipant :: IMS PS call exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 1313
    .end local v0    # "e":Lcom/android/internal/telephony/CallStateException;
    :cond_2
    const-string/jumbo v3, "addParticipant :: IMS is disabled so unable to add participant with IMS call"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public canConference()Z
    .locals 1

    .prologue
    .line 763
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->canConference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 764
    const/4 v0, 0x1

    return v0

    .line 766
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 767
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->canConference()Z

    move-result v0

    return v0

    .line 769
    :cond_1
    const-string/jumbo v0, "canConference: not possible in CDMA"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 770
    const/4 v0, 0x0

    return v0
.end method

.method public canTransfer()Z
    .locals 1

    .prologue
    .line 818
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 819
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->canTransfer()Z

    move-result v0

    return v0

    .line 821
    :cond_0
    const-string/jumbo v0, "canTransfer: not possible in CDMA"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 822
    const/4 v0, 0x0

    return v0
.end method

.method public clearDisconnected()V
    .locals 1

    .prologue
    .line 813
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->clearDisconnected()V

    .line 812
    return-void
.end method

.method public conference()V
    .locals 2

    .prologue
    .line 776
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->canConference()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 777
    const-string/jumbo v1, "conference() - delegated to IMS phone"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 779
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->conference()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 783
    :goto_0
    return-void

    .line 780
    :catch_0
    move-exception v0

    .line 781
    .local v0, "e":Lcom/android/internal/telephony/CallStateException;
    invoke-virtual {v0}, Lcom/android/internal/telephony/CallStateException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 785
    .end local v0    # "e":Lcom/android/internal/telephony/CallStateException;
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 786
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->conference()V

    .line 775
    :goto_1
    return-void

    .line 789
    :cond_1
    const-string/jumbo v1, "conference: not possible in CDMA"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public dial(Ljava/lang/String;I)Lcom/android/internal/telephony/Connection;
    .locals 1
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "videoState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1062
    invoke-virtual {p0, p1, v0, p2, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;ILandroid/os/Bundle;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method public dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;ILandroid/os/Bundle;)Lcom/android/internal/telephony/Connection;
    .locals 20
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "uusInfo"    # Lcom/android/internal/telephony/UUSInfo;
    .param p3, "videoState"    # I
    .param p4, "intentExtras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1068
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v17

    if-nez v17, :cond_0

    if-eqz p2, :cond_0

    .line 1069
    new-instance v17, Lcom/android/internal/telephony/CallStateException;

    const-string/jumbo v18, "Sending UUS information NOT supported in CDMA!"

    invoke-direct/range {v17 .. v18}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 1072
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v12

    .line 1073
    .local v12, "isEmergency":Z
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    .line 1076
    .local v10, "imsPhone":Lcom/android/internal/telephony/Phone;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaPhone;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const-string/jumbo v18, "carrier_config"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/CarrierConfigManager;

    .line 1077
    .local v7, "configManager":Landroid/telephony/CarrierConfigManager;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v17

    .line 1078
    const-string/jumbo v18, "carrier_use_ims_first_for_emergency_bool"

    .line 1077
    invoke-virtual/range {v17 .. v18}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 1080
    .local v5, "alwaysTryImsForEmergencyCarrierConfig":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isImsUseEnabled()Z

    move-result v17

    if-eqz v17, :cond_7

    .line 1081
    if-eqz v10, :cond_7

    .line 1082
    invoke-virtual {v10}, Lcom/android/internal/telephony/Phone;->isVolteEnabled()Z

    move-result v17

    if-nez v17, :cond_1

    invoke-virtual {v10}, Lcom/android/internal/telephony/Phone;->isWifiCallingEnabled()Z

    move-result v17

    if-nez v17, :cond_1

    .line 1083
    invoke-virtual {v10}, Lcom/android/internal/telephony/Phone;->isVideoEnabled()Z

    move-result v17

    if-eqz v17, :cond_7

    invoke-static/range {p3 .. p3}, Landroid/telecom/VideoProfile;->isVideo(I)Z

    move-result v17

    .line 1080
    if-eqz v17, :cond_7

    .line 1084
    :cond_1
    invoke-virtual {v10}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/telephony/ServiceState;->getState()I

    move-result v17

    if-nez v17, :cond_7

    .line 1085
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->shallDialOnCircuitSwitch(Landroid/os/Bundle;)Z

    move-result v17

    if-eqz v17, :cond_6

    const/4 v11, 0x0

    .line 1087
    .local v11, "imsUseEnabled":Z
    :goto_0
    if-eqz v10, :cond_8

    if-eqz v12, :cond_8

    if-eqz v5, :cond_8

    .line 1090
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaPhone;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/ims/ImsManager;->isNonTtyOrTtyOnVolteEnabled(Landroid/content/Context;)Z

    move-result v17

    .line 1087
    if-eqz v17, :cond_8

    .line 1093
    invoke-virtual {v10}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/telephony/ServiceState;->getState()I

    move-result v17

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_8

    .line 1094
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaPhone;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/ims/ImsManager;->isVolteEnabledByPlatform(Landroid/content/Context;)Z

    move-result v14

    .line 1098
    :goto_1
    invoke-static/range {p1 .. p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1100
    .local v8, "dialPart":Ljava/lang/String;
    const-string/jumbo v17, "*"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_2

    const-string/jumbo v17, "#"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 1101
    :cond_2
    const-string/jumbo v17, "#"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    .line 1103
    :goto_2
    if-eqz v10, :cond_a

    invoke-virtual {v10}, Lcom/android/internal/telephony/Phone;->isUtEnabled()Z

    move-result v15

    .line 1111
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaPhone;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    .line 1112
    const v18, 0x11200d5

    .line 1111
    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 1113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaPhone;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    .line 1114
    const-string/jumbo v18, "volte_preferred_on"

    const/16 v19, 0x1

    .line 1113
    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    .line 1114
    const/16 v18, 0x1

    .line 1113
    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    .line 1115
    if-eqz v10, :cond_3

    if-nez v12, :cond_3

    if-eqz v13, :cond_b

    .line 1111
    :cond_3
    const/16 v16, 0x0

    .line 1120
    .local v16, "useImsPrefer":Z
    :goto_4
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "imsUseEnabled="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 1121
    const-string/jumbo v18, ", useImsForEmergency="

    .line 1120
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 1122
    const-string/jumbo v18, ", useImsForUt="

    .line 1120
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 1123
    const-string/jumbo v18, ", isUt="

    .line 1120
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 1124
    const-string/jumbo v18, ", imsPhone="

    .line 1120
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 1125
    const-string/jumbo v18, ", imsPhone.isVolteEnabled()="

    .line 1120
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 1126
    if-eqz v10, :cond_d

    invoke-virtual {v10}, Lcom/android/internal/telephony/Phone;->isVolteEnabled()Z

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    .line 1120
    :goto_5
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 1127
    const-string/jumbo v18, ", imsPhone.isVowifiEnabled()="

    .line 1120
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 1128
    if-eqz v10, :cond_e

    invoke-virtual {v10}, Lcom/android/internal/telephony/Phone;->isWifiCallingEnabled()Z

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    .line 1120
    :goto_6
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 1129
    const-string/jumbo v18, ", imsPhone.isVideoEnabled()="

    .line 1120
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 1130
    if-eqz v10, :cond_f

    invoke-virtual {v10}, Lcom/android/internal/telephony/Phone;->isVideoEnabled()Z

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    .line 1120
    :goto_7
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 1131
    const-string/jumbo v18, ", imsPhone.getServiceState().getState()="

    .line 1120
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 1132
    if-eqz v10, :cond_10

    invoke-virtual {v10}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/telephony/ServiceState;->getState()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    .line 1120
    :goto_8
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 1133
    const-string/jumbo v18, ", useImsPrefer="

    .line 1120
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 1136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaPhone;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v18}, Lcom/android/internal/telephony/Phone;->checkWfcWifiOnlyModeBeforeDial(Lcom/android/internal/telephony/Phone;Landroid/content/Context;)V

    .line 1138
    if-eqz v11, :cond_4

    if-eqz v13, :cond_5

    if-nez v15, :cond_5

    :cond_4
    if-nez v14, :cond_5

    if-eqz v16, :cond_11

    .line 1140
    :cond_5
    :try_start_0
    const-string/jumbo v17, "Trying IMS PS call"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 1141
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual {v10, v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;ILandroid/os/Bundle;)Lcom/android/internal/telephony/Connection;
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v17

    return-object v17

    .line 1085
    .end local v8    # "dialPart":Ljava/lang/String;
    .end local v11    # "imsUseEnabled":Z
    .end local v16    # "useImsPrefer":Z
    :cond_6
    const/4 v11, 0x1

    .restart local v11    # "imsUseEnabled":Z
    goto/16 :goto_0

    .line 1080
    .end local v11    # "imsUseEnabled":Z
    :cond_7
    const/4 v11, 0x0

    .restart local v11    # "imsUseEnabled":Z
    goto/16 :goto_0

    .line 1087
    :cond_8
    const/4 v14, 0x0

    .local v14, "useImsForEmergency":Z
    goto/16 :goto_1

    .line 1100
    .end local v14    # "useImsForEmergency":Z
    .restart local v8    # "dialPart":Ljava/lang/String;
    :cond_9
    const/4 v13, 0x0

    .local v13, "isUt":Z
    goto/16 :goto_2

    .line 1103
    .end local v13    # "isUt":Z
    :cond_a
    const/4 v15, 0x0

    .local v15, "useImsForUt":Z
    goto/16 :goto_3

    .line 1116
    .end local v15    # "useImsForUt":Z
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaPhone;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/ims/ImsManager;->isNonTtyOrTtyOnVolteEnabled(Landroid/content/Context;)Z

    move-result v17

    .line 1111
    if-eqz v17, :cond_3

    .line 1117
    invoke-virtual {v10}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/telephony/ServiceState;->getState()I

    move-result v17

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_c

    const/16 v16, 0x1

    .restart local v16    # "useImsPrefer":Z
    goto/16 :goto_4

    .end local v16    # "useImsPrefer":Z
    :cond_c
    const/16 v16, 0x0

    .restart local v16    # "useImsPrefer":Z
    goto/16 :goto_4

    .line 1126
    :cond_d
    const-string/jumbo v17, "N/A"

    goto/16 :goto_5

    .line 1128
    :cond_e
    const-string/jumbo v17, "N/A"

    goto/16 :goto_6

    .line 1130
    :cond_f
    const-string/jumbo v17, "N/A"

    goto/16 :goto_7

    .line 1132
    :cond_10
    const-string/jumbo v17, "N/A"

    goto/16 :goto_8

    .line 1142
    :catch_0
    move-exception v9

    .line 1143
    .local v9, "e":Lcom/android/internal/telephony/CallStateException;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "IMS PS call exception "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 1144
    const-string/jumbo v18, "imsUseEnabled ="

    .line 1143
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 1144
    const-string/jumbo v18, ", imsPhone ="

    .line 1143
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 1145
    const-string/jumbo v17, "cs_fallback"

    invoke-virtual {v9}, Lcom/android/internal/telephony/CallStateException;->getMessage()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_11

    .line 1146
    new-instance v6, Lcom/android/internal/telephony/CallStateException;

    invoke-virtual {v9}, Lcom/android/internal/telephony/CallStateException;->getMessage()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v6, v0}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    .line 1147
    .local v6, "ce":Lcom/android/internal/telephony/CallStateException;
    invoke-virtual {v9}, Lcom/android/internal/telephony/CallStateException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/CallStateException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 1148
    throw v6

    .line 1153
    .end local v6    # "ce":Lcom/android/internal/telephony/CallStateException;
    .end local v9    # "e":Lcom/android/internal/telephony/CallStateException;
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    move-object/from16 v17, v0

    if-eqz v17, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/telephony/ServiceState;->getState()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_12

    .line 1154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v17

    if-eqz v17, :cond_12

    if-eqz v12, :cond_14

    .line 1158
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    move-object/from16 v17, v0

    if-eqz v17, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/telephony/ServiceState;->getState()I

    move-result v17

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_13

    .line 1159
    invoke-static/range {p3 .. p3}, Landroid/telecom/VideoProfile;->isVideo(I)Z

    move-result v17

    if-eqz v17, :cond_15

    .line 1165
    :cond_13
    const-string/jumbo v17, "Trying (non-IMS) CS call"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 1167
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v17

    if-eqz v17, :cond_16

    .line 1168
    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move/from16 v3, v18

    move-object/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->dialInternal(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;ILandroid/os/Bundle;)Lcom/android/internal/telephony/Connection;

    move-result-object v17

    return-object v17

    .line 1155
    :cond_14
    new-instance v17, Lcom/android/internal/telephony/CallStateException;

    const-string/jumbo v18, "cannot dial in current state"

    invoke-direct/range {v17 .. v18}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 1160
    :cond_15
    if-nez v12, :cond_13

    .line 1161
    new-instance v17, Lcom/android/internal/telephony/CallStateException;

    .line 1163
    const-string/jumbo v18, "cannot dial voice call in airplane mode"

    .line 1162
    const/16 v19, 0x2

    .line 1161
    move-object/from16 v0, v17

    move/from16 v1, v19

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(ILjava/lang/String;)V

    throw v17

    .line 1170
    :cond_16
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move/from16 v3, p3

    move-object/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->dialInternal(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;ILandroid/os/Bundle;)Lcom/android/internal/telephony/Connection;

    move-result-object v17

    return-object v17
.end method

.method protected dialInternal(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;ILandroid/os/Bundle;)Lcom/android/internal/telephony/Connection;
    .locals 7
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "uusInfo"    # Lcom/android/internal/telephony/UUSInfo;
    .param p3, "videoState"    # I
    .param p4, "intentExtras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 1180
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1182
    .local v3, "newDialString":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1184
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->handleInCallMmiCommands(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1185
    return-object v6

    .line 1189
    :cond_0
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1191
    .local v2, "networkPortion":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-static {v2, p0, v4}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->newFromDialString(Ljava/lang/String;Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)Lcom/android/internal/telephony/gsm/GsmMmiCode;

    move-result-object v1

    .line 1192
    .local v1, "mmi":Lcom/android/internal/telephony/gsm/GsmMmiCode;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "dialing w/ mmi \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\'..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 1194
    if-nez v1, :cond_1

    .line 1195
    iget-object v4, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {v4, v3, p2, p4}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;Landroid/os/Bundle;)Lcom/android/internal/telephony/Connection;

    move-result-object v4

    return-object v4

    .line 1196
    :cond_1
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isTemporaryModeCLIR()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1197
    iget-object v4, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    iget-object v5, v1, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mDialingNumber:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->getCLIRMode()I

    move-result v6

    invoke-virtual {v4, v5, v6, p2, p4}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Bundle;)Lcom/android/internal/telephony/Connection;

    move-result-object v4

    return-object v4

    .line 1199
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1200
    iget-object v4, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mMmiRegistrants:Landroid/os/RegistrantList;

    new-instance v5, Landroid/os/AsyncResult;

    invoke-direct {v5, v6, v1, v6}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v4, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1202
    :try_start_0
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->processCode()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1208
    :goto_0
    return-object v6

    .line 1203
    :catch_0
    move-exception v0

    .local v0, "e":Lcom/android/internal/telephony/CallStateException;
    goto :goto_0

    .line 1211
    .end local v0    # "e":Lcom/android/internal/telephony/CallStateException;
    .end local v1    # "mmi":Lcom/android/internal/telephony/gsm/GsmMmiCode;
    .end local v2    # "networkPortion":Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->dial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v4

    return-object v4
.end method

.method public disableLocationUpdates()V
    .locals 1

    .prologue
    .line 1907
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->disableLocationUpdates()V

    .line 1906
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 3337
    const-string/jumbo v1, "GsmCdmaPhone extends:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3338
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3339
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " mPrecisePhoneType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPrecisePhoneType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3340
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " mSimRecords="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3341
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " mIsimUiccRecords="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIsimUiccRecords:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3342
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " mCT="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3343
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " mSST="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3344
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " mPendingMMIs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3345
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " mIccPhoneBookIntManager="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccPhoneBookIntManager:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3349
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " mCdmaSSM="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3350
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " mCdmaSubscriptionSource="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCdmaSubscriptionSource:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3351
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " mEriManager="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3352
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " mWakeLock="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3353
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " mIsPhoneInEcmState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIsPhoneInEcmState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3356
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " mCarrierOtaSpNumSchema="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCarrierOtaSpNumSchema:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3357
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3358
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " getCdmaEriIconIndex()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getCdmaEriIconIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3359
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " getCdmaEriIconMode()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getCdmaEriIconMode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3360
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " getCdmaEriText()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getCdmaEriText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3361
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " isMinInfoReady()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isMinInfoReady()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3363
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " isCspPlmnEnabled()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isCspPlmnEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3364
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 3365
    const-string/jumbo v1, "++++++++++++++++++++++++++++++++"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3368
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccCardProxy:Lcom/android/internal/telephony/uicc/IccCardProxy;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccCardProxy;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3372
    :goto_0
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 3373
    const-string/jumbo v1, "++++++++++++++++++++++++++++++++"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3336
    return-void

    .line 3369
    :catch_0
    move-exception v0

    .line 3370
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public enableEnhancedVoicePrivacy(ZLandroid/os/Message;)V
    .locals 1
    .param p1, "enable"    # Z
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 795
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 796
    const-string/jumbo v0, "enableEnhancedVoicePrivacy: not expected on GSM"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 794
    :goto_0
    return-void

    .line 798
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredVoicePrivacy(ZLandroid/os/Message;)V

    goto :goto_0
.end method

.method public enableLocationUpdates()V
    .locals 1

    .prologue
    .line 1902
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->enableLocationUpdates()V

    .line 1901
    return-void
.end method

.method public exitEmergencyCallbackMode()V
    .locals 2

    .prologue
    .line 2840
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2841
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_0

    .line 2842
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->exitEmergencyCallbackMode()V

    .line 2839
    :cond_0
    :goto_0
    return-void

    .line 2845
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2846
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2849
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x1a

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->exitEmergencyCallbackMode(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public explicitCallTransfer()V
    .locals 1

    .prologue
    .line 828
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 829
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->explicitCallTransfer()V

    .line 827
    :goto_0
    return-void

    .line 831
    :cond_0
    const-string/jumbo v0, "explicitCallTransfer: not possible in CDMA"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 399
    const-string/jumbo v0, "GsmCdmaPhone finalized"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 400
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 401
    const-string/jumbo v0, "GsmCdmaPhone"

    const-string/jumbo v1, "UNEXPECTED; mWakeLock is held when finalizing."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 398
    :cond_0
    return-void
.end method

.method public getAvailableNetworks(Landroid/os/Message;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 1844
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdmaLte()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1845
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getAvailableNetworks(Landroid/os/Message;)V

    .line 1843
    :goto_0
    return-void

    .line 1847
    :cond_1
    const-string/jumbo v0, "getAvailableNetworks: not possible in CDMA"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic getBackgroundCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 841
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getBackgroundCall()Lcom/android/internal/telephony/GsmCdmaCall;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundCall()Lcom/android/internal/telephony/GsmCdmaCall;
    .locals 1

    .prologue
    .line 842
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    return-object v0
.end method

.method public getCallForwardingOption(IILandroid/os/Message;)V
    .locals 4
    .param p1, "commandInterfaceCFReason"    # I
    .param p2, "commandInterfaceServiceClass"    # I
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    .line 1691
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1692
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    .line 1693
    .local v0, "imsPhone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_1

    .line 1694
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-eqz v2, :cond_0

    .line 1695
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isUtEnabled()Z

    move-result v2

    .line 1693
    if-eqz v2, :cond_1

    .line 1696
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(IILandroid/os/Message;)V

    .line 1698
    return-void

    .line 1701
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->isValidCommandInterfaceCFReason(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1702
    const-string/jumbo v2, "requesting call forwarding query."

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 1704
    if-nez p1, :cond_3

    .line 1705
    const/16 v2, 0xd

    invoke-virtual {p0, v2, p3}, Lcom/android/internal/telephony/GsmCdmaPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1710
    .local v1, "resp":Landroid/os/Message;
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, p1, p2, v3, v1}, Lcom/android/internal/telephony/CommandsInterface;->queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V

    .line 1690
    .end local v0    # "imsPhone":Lcom/android/internal/telephony/Phone;
    .end local v1    # "resp":Landroid/os/Message;
    :cond_2
    :goto_1
    return-void

    .line 1707
    .restart local v0    # "imsPhone":Lcom/android/internal/telephony/Phone;
    :cond_3
    move-object v1, p3

    .restart local v1    # "resp":Landroid/os/Message;
    goto :goto_0

    .line 1714
    .end local v0    # "imsPhone":Lcom/android/internal/telephony/Phone;
    .end local v1    # "resp":Landroid/os/Message;
    :cond_4
    const-string/jumbo v2, "getCallForwardingOption: not possible in CDMA"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getCallForwardingOption(ILandroid/os/Message;)V
    .locals 1
    .param p1, "commandInterfaceCFReason"    # I
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1685
    const/4 v0, 0x0

    .line 1684
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getCallForwardingOption(IILandroid/os/Message;)V

    .line 1683
    return-void
.end method

.method public getCallTracker()Lcom/android/internal/telephony/CallTracker;
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    return-object v0
.end method

.method public getCallWaiting(Landroid/os/Message;)V
    .locals 3
    .param p1, "onComplete"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    .line 1808
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1809
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    .line 1810
    .local v0, "imsPhone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_1

    .line 1811
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1812
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isUtEnabled()Z

    move-result v1

    .line 1810
    if-eqz v1, :cond_1

    .line 1813
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/Phone;->getCallWaiting(Landroid/os/Message;)V

    .line 1814
    return-void

    .line 1819
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, v2, p1}, Lcom/android/internal/telephony/CommandsInterface;->queryCallWaiting(ILandroid/os/Message;)V

    .line 1807
    .end local v0    # "imsPhone":Lcom/android/internal/telephony/Phone;
    :goto_0
    return-void

    .line 1821
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x1

    invoke-interface {v1, v2, p1}, Lcom/android/internal/telephony/CommandsInterface;->queryCallWaiting(ILandroid/os/Message;)V

    goto :goto_0
.end method

.method public getCdmaEriIconIndex()I
    .locals 1

    .prologue
    .line 3135
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3136
    invoke-super {p0}, Lcom/android/internal/telephony/Phone;->getCdmaEriIconIndex()I

    move-result v0

    return v0

    .line 3138
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getCdmaEriIconIndex()I

    move-result v0

    return v0
.end method

.method public getCdmaEriIconMode()I
    .locals 1

    .prologue
    .line 3149
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3150
    invoke-super {p0}, Lcom/android/internal/telephony/Phone;->getCdmaEriIconMode()I

    move-result v0

    return v0

    .line 3152
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getCdmaEriIconMode()I

    move-result v0

    return v0
.end method

.method public getCdmaEriText()Ljava/lang/String;
    .locals 3

    .prologue
    .line 3161
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3162
    invoke-super {p0}, Lcom/android/internal/telephony/Phone;->getCdmaEriText()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 3164
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getCdmaRoamingIndicator()I

    move-result v1

    .line 3165
    .local v1, "roamInd":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getCdmaDefaultRoamingIndicator()I

    move-result v0

    .line 3166
    .local v0, "defRoamInd":I
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    invoke-virtual {v2, v1, v0}, Lcom/android/internal/telephony/cdma/EriManager;->getCdmaEriText(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getCdmaMin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1566
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->getCdmaMin()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCdmaPrlVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1561
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->getPrlVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCellBroadcastSmsConfig(Landroid/os/Message;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 2728
    const-string/jumbo v0, "[GsmCdmaPhone] getCellBroadcastSmsConfig() is obsolete; use SmsManager"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 2729
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 2727
    return-void
.end method

.method public getCellLocation()Landroid/telephony/CellLocation;
    .locals 8

    .prologue
    const v2, 0x7fffffff

    const/4 v4, 0x0

    .line 426
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 427
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ServiceStateTracker;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v1

    return-object v1

    .line 429
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v6, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mCellLoc:Landroid/telephony/CellLocation;

    check-cast v6, Landroid/telephony/cdma/CdmaCellLocation;

    .line 431
    .local v6, "loc":Landroid/telephony/cdma/CdmaCellLocation;
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 432
    const-string/jumbo v3, "location_mode"

    .line 431
    invoke-static {v1, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 433
    .local v7, "mode":I
    if-nez v7, :cond_1

    .line 435
    new-instance v0, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-direct {v0}, Landroid/telephony/cdma/CdmaCellLocation;-><init>()V

    .line 436
    .local v0, "privateLoc":Landroid/telephony/cdma/CdmaCellLocation;
    invoke-virtual {v6}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v1

    .line 439
    invoke-virtual {v6}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v4

    invoke-virtual {v6}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v5

    move v3, v2

    .line 436
    invoke-virtual/range {v0 .. v5}, Landroid/telephony/cdma/CdmaCellLocation;->setCellLocationData(IIIII)V

    .line 440
    move-object v6, v0

    .line 442
    .end local v0    # "privateLoc":Landroid/telephony/cdma/CdmaCellLocation;
    :cond_1
    return-object v6
.end method

.method public getDataActivityState()Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;
    .locals 3

    .prologue
    .line 553
    sget-object v0, Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;->NONE:Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;

    .line 555
    .local v0, "ret":Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ServiceStateTracker;->getCurrentDataConnectionState()I

    move-result v1

    if-nez v1, :cond_0

    .line 556
    invoke-static {}, Lcom/android/internal/telephony/GsmCdmaPhone;->-getcom-android-internal-telephony-DctConstants$ActivitySwitchesValues()[I

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getActivity()Lcom/android/internal/telephony/DctConstants$Activity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/DctConstants$Activity;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 574
    sget-object v0, Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;->NONE:Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;

    .line 579
    :cond_0
    :goto_0
    return-object v0

    .line 558
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;->DATAIN:Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;

    goto :goto_0

    .line 562
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;->DATAOUT:Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;

    goto :goto_0

    .line 566
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;->DATAINANDOUT:Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;

    goto :goto_0

    .line 570
    :pswitch_3
    sget-object v0, Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;->DORMANT:Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;

    goto :goto_0

    .line 556
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public getDataCallList(Landroid/os/Message;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 1892
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getDataCallList(Landroid/os/Message;)V

    .line 1891
    return-void
.end method

.method public getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 3
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    .line 505
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 507
    .local v0, "ret":Lcom/android/internal/telephony/PhoneConstants$DataState;
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    if-nez v1, :cond_0

    .line 511
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 547
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getDataConnectionState apnType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 548
    return-object v0

    .line 512
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ServiceStateTracker;->getCurrentDataConnectionState()I

    move-result v1

    if-eqz v1, :cond_1

    .line 513
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdma()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdmaLte()Z

    move-result v1

    if-nez v1, :cond_3

    .line 514
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "emergency"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 523
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/GsmCdmaPhone;->-getcom-android-internal-telephony-DctConstants$StateSwitchesValues()[I

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getState(Ljava/lang/String;)Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/DctConstants$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 532
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v1, v2, :cond_2

    .line 533
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 536
    :cond_2
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    goto :goto_0

    .line 521
    :cond_3
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    goto :goto_0

    .line 527
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    goto :goto_0

    .line 534
    :cond_4
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->SUSPENDED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    goto :goto_0

    .line 542
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTING:Lcom/android/internal/telephony/PhoneConstants$DataState;

    goto :goto_0

    .line 523
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getDataEnabled()Z
    .locals 1

    .prologue
    .line 1962
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getDataEnabled()Z

    move-result v0

    return v0
.end method

.method public getDataRoamingEnabled()Z
    .locals 1

    .prologue
    .line 1912
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getDataOnRoamingEnabled()Z

    move-result v0

    return v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1418
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1419
    iget-object v3, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImei:Ljava/lang/String;

    return-object v3

    .line 1422
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "carrier_config"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1421
    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 1423
    .local v0, "configManager":Landroid/telephony/CarrierConfigManager;
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v3

    .line 1424
    const-string/jumbo v4, "force_imei_bool"

    .line 1423
    invoke-virtual {v3, v4}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 1425
    .local v1, "force_imei":Z
    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImei:Ljava/lang/String;

    return-object v3

    .line 1427
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getMeid()Ljava/lang/String;

    move-result-object v2

    .line 1428
    .local v2, "id":Ljava/lang/String;
    if-eqz v2, :cond_2

    const-string/jumbo v3, "^0*$"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1429
    :cond_2
    const-string/jumbo v3, "getDeviceId(): MEID is not initialized use ESN"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 1430
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getEsn()Ljava/lang/String;

    move-result-object v2

    .line 1432
    :cond_3
    return-object v2
.end method

.method public getDeviceSvn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1438
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdmaLte()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1439
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImeiSv:Ljava/lang/String;

    return-object v0

    .line 1441
    :cond_1
    const-string/jumbo v0, "getDeviceSvn(): return 0"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 1442
    const-string/jumbo v0, "0"

    return-object v0
.end method

.method public getDtmfToneDelayKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3516
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3517
    const-string/jumbo v0, "gsm_dtmf_tone_delay_int"

    .line 3516
    :goto_0
    return-object v0

    .line 3518
    :cond_0
    const-string/jumbo v0, "cdma_dtmf_tone_delay_int"

    goto :goto_0
.end method

.method public getEnhancedVoicePrivacy(Landroid/os/Message;)V
    .locals 1
    .param p1, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 804
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 805
    const-string/jumbo v0, "getEnhancedVoicePrivacy: not expected on GSM"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 803
    :goto_0
    return-void

    .line 807
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getPreferredVoicePrivacy(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public getEsn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1462
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1463
    const-string/jumbo v0, "[GsmCdmaPhone] getEsn() is a CDMA method"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 1464
    const-string/jumbo v0, "0"

    return-object v0

    .line 1466
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mEsn:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstNameInEfPnn()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 3562
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 3563
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getFirstNameInEfPnn()Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public bridge synthetic getForegroundCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 836
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getForegroundCall()Lcom/android/internal/telephony/GsmCdmaCall;

    move-result-object v0

    return-object v0
.end method

.method public getForegroundCall()Lcom/android/internal/telephony/GsmCdmaCall;
    .locals 1

    .prologue
    .line 837
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    return-object v0
.end method

.method public getFullIccSerialNumber()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 753
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 754
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v2

    if-nez v2, :cond_0

    if-nez v0, :cond_0

    .line 756
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget v3, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPhoneId:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(II)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    .line 758
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getFullIccId()Ljava/lang/String;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method public getGroupIdLevel1()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1525
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1526
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 1527
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getGid1()Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1

    .line 1528
    .end local v0    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdma()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1529
    const-string/jumbo v2, "GID1 is not available in CDMA"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 1530
    return-object v1

    .line 1532
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->getGid1()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_3
    const-string/jumbo v1, ""

    goto :goto_0
.end method

.method public getGroupIdLevel2()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1538
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1539
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 1540
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getGid2()Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1

    .line 1541
    .end local v0    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdma()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1542
    const-string/jumbo v2, "GID2 is not available in CDMA"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 1543
    return-object v1

    .line 1545
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->getGid2()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_3
    const-string/jumbo v1, ""

    goto :goto_0
.end method

.method public getIccCard()Lcom/android/internal/telephony/IccCard;
    .locals 1

    .prologue
    .line 3332
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccCardProxy:Lcom/android/internal/telephony/uicc/IccCardProxy;

    return-object v0
.end method

.method public getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    .locals 1

    .prologue
    .line 2675
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccPhoneBookIntManager:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    return-object v0
.end method

.method public getIccRecordsLoaded()Z
    .locals 1

    .prologue
    .line 3327
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccCardProxy:Lcom/android/internal/telephony/uicc/IccCardProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getIccRecordsLoaded()Z

    move-result v0

    return v0
.end method

.method public getIccSerialNumber()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 743
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 744
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v2

    if-nez v2, :cond_0

    if-nez v0, :cond_0

    .line 746
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget v3, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPhoneId:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(II)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    .line 748
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getIccId()Ljava/lang/String;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method public getIccSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;
    .locals 1

    .prologue
    .line 3311
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccSmsInterfaceManager:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    return-object v0
.end method

.method public getImei()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1456
    iget v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPhoneId:I

    const-string/jumbo v1, "persist.radio.gsm.phone.imei"

    const-string/jumbo v2, ""

    .line 1455
    invoke-static {v0, v1, v2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsimRecords()Lcom/android/internal/telephony/uicc/IsimRecords;
    .locals 1

    .prologue
    .line 1448
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIsimUiccRecords:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    return-object v0
.end method

.method public getLine1AlphaTag()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1589
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1590
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 1591
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getMsisdnAlphaTag()Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1

    .line 1593
    .end local v0    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_1
    const-string/jumbo v2, "getLine1AlphaTag: not possible in CDMA"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 1594
    return-object v1
.end method

.method public getLine1Number()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1551
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1552
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 1553
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getMsisdnNumber()Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1

    .line 1555
    .end local v0    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ServiceStateTracker;->getMdnNumber()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getLteOnCdmaMode()I
    .locals 6

    .prologue
    .line 3542
    invoke-super {p0}, Lcom/android/internal/telephony/Phone;->getLteOnCdmaMode()I

    move-result v1

    .line 3543
    .local v1, "currentConfig":I
    move v2, v1

    .line 3546
    .local v2, "lteOnCdmaModeDynamicValue":I
    iget-object v3, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget v4, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPhoneId:I

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    .line 3547
    .local v0, "cdmaApplication":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v3, v4, :cond_0

    .line 3549
    const/4 v2, 0x0

    .line 3552
    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 3553
    return v2

    .line 3556
    :cond_0
    return v1
.end method

.method public getMeid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1472
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1473
    const-string/jumbo v0, "[GsmCdmaPhone] getMeid() is a CDMA method"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 1474
    const-string/jumbo v0, "0"

    return-object v0

    .line 1476
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mMeid:Ljava/lang/String;

    return-object v0
.end method

.method public getMsisdn()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1576
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1577
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 1578
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getMsisdnNumber()Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1

    .line 1579
    .end local v0    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdmaLte()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1580
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    if-eqz v2, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->getMsisdnNumber()Ljava/lang/String;

    move-result-object v1

    :cond_2
    return-object v1

    .line 1582
    :cond_3
    const-string/jumbo v2, "getMsisdn: not expected on CDMA"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 1583
    return-object v1
.end method

.method public getMute()Z
    .locals 1

    .prologue
    .line 1887
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->getMute()Z

    move-result v0

    return v0
.end method

.method public getNai()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x2

    .line 1482
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget v3, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPhoneId:I

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(II)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    .line 1483
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    const-string/jumbo v2, "GsmCdmaPhone"

    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1484
    const-string/jumbo v2, "GsmCdmaPhone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "IccRecords is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1486
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getNAI()Ljava/lang/String;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method public getNeighboringCids(Landroid/os/Message;)V
    .locals 2
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 1853
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1854
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/CommandsInterface;->getNeighboringCids(Landroid/os/Message;)V

    .line 1852
    :cond_0
    :goto_0
    return-void

    .line 1864
    :cond_1
    if-eqz p1, :cond_0

    .line 1865
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    .line 1866
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    .line 1865
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 1867
    .local v0, "ce":Lcom/android/internal/telephony/CommandException;
    invoke-static {p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1868
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public getOperatorNumeric()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 3408
    const/4 v2, 0x0

    .line 3409
    .local v2, "operatorNumeric":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3410
    iget-object v5, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 3411
    .local v3, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v3, :cond_0

    .line 3412
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    .line 3449
    .end local v2    # "operatorNumeric":Ljava/lang/String;
    .end local v3    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_0
    :goto_0
    return-object v2

    .line 3415
    .restart local v2    # "operatorNumeric":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    .line 3416
    .local v1, "curIccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    iget v6, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCdmaSubscriptionSource:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_5

    .line 3417
    const-string/jumbo v6, "ro.cdma.home.operator.numeric"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3438
    .end local v1    # "curIccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    .end local v2    # "operatorNumeric":Ljava/lang/String;
    :cond_2
    :goto_1
    if-nez v2, :cond_4

    .line 3439
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getOperatorNumeric: Cannot retrieve operatorNumeric: mCdmaSubscriptionSource = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3440
    iget v7, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCdmaSubscriptionSource:I

    .line 3439
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3441
    const-string/jumbo v7, " mIccRecords = "

    .line 3439
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3441
    if-eqz v1, :cond_3

    .line 3442
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccRecords;->getRecordsLoaded()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 3439
    :cond_3
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 3445
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getOperatorNumeric: mCdmaSubscriptionSource = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCdmaSubscriptionSource:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3446
    const-string/jumbo v6, " operatorNumeric = "

    .line 3445
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 3418
    .restart local v1    # "curIccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    .restart local v2    # "operatorNumeric":Ljava/lang/String;
    :cond_5
    iget v6, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCdmaSubscriptionSource:I

    if-nez v6, :cond_2

    .line 3419
    iget-object v6, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 3420
    .local v4, "uiccCardApplication":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v4, :cond_6

    .line 3421
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v6, v7, :cond_6

    .line 3422
    const-string/jumbo v6, "Legacy RUIM app present"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 3423
    iget-object v6, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "curIccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    check-cast v1, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 3428
    .local v1, "curIccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    :goto_2
    if-eqz v1, :cond_7

    iget-object v6, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    if-ne v1, v6, :cond_7

    .line 3429
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    .local v2, "operatorNumeric":Ljava/lang/String;
    goto/16 :goto_1

    .line 3426
    .local v1, "curIccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    .local v2, "operatorNumeric":Ljava/lang/String;
    :cond_6
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    .local v1, "curIccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    goto :goto_2

    .line 3431
    :cond_7
    iget-object v6, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "curIccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    check-cast v1, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 3432
    .restart local v1    # "curIccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v1, :cond_2

    instance-of v6, v1, Lcom/android/internal/telephony/uicc/RuimRecords;

    if-eqz v6, :cond_2

    move-object v0, v1

    .line 3433
    check-cast v0, Lcom/android/internal/telephony/uicc/RuimRecords;

    .line 3434
    .local v0, "csim":Lcom/android/internal/telephony/uicc/RuimRecords;
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->getRUIMOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    .local v2, "operatorNumeric":Ljava/lang/String;
    goto/16 :goto_1
.end method

.method public getOutgoingCallerIdDisplay(Landroid/os/Message;)V
    .locals 2
    .param p1, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1774
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1775
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    .line 1776
    .local v0, "imsPhone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_0

    .line 1777
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-nez v1, :cond_0

    .line 1778
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/Phone;->getOutgoingCallerIdDisplay(Landroid/os/Message;)V

    .line 1779
    return-void

    .line 1781
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/CommandsInterface;->getCLIR(Landroid/os/Message;)V

    .line 1773
    .end local v0    # "imsPhone":Lcom/android/internal/telephony/Phone;
    :goto_0
    return-void

    .line 1783
    :cond_1
    const-string/jumbo v1, "getOutgoingCallerIdDisplay: not possible in CDMA"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getPendingMmiCodes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/android/internal/telephony/MmiCode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 500
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPendingMMIs:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPhoneType()I
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 460
    iget v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPrecisePhoneType:I

    if-ne v0, v1, :cond_0

    .line 461
    return v1

    .line 463
    :cond_0
    const/4 v0, 0x2

    return v0
.end method

.method public getRingingCall()Lcom/android/internal/telephony/Call;
    .locals 2

    .prologue
    .line 847
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    .line 855
    .local v0, "imsPhone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 856
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    return-object v1

    .line 858
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    return-object v1
.end method

.method public getSIMRecords()Lcom/android/internal/telephony/uicc/SIMRecords;
    .locals 1

    .prologue
    .line 2572
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    return-object v0
.end method

.method public getServiceState()Landroid/telephony/ServiceState;
    .locals 2

    .prologue
    .line 408
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-eqz v0, :cond_2

    .line 409
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_2

    .line 411
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    if-nez v0, :cond_1

    new-instance v0, Landroid/telephony/ServiceState;

    invoke-direct {v0}, Landroid/telephony/ServiceState;-><init>()V

    .line 412
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    .line 410
    invoke-static {v0, v1}, Landroid/telephony/ServiceState;->mergeServiceStates(Landroid/telephony/ServiceState;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;

    move-result-object v0

    return-object v0

    .line 411
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    goto :goto_0

    .line 416
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    if-eqz v0, :cond_3

    .line 417
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    return-object v0

    .line 420
    :cond_3
    new-instance v0, Landroid/telephony/ServiceState;

    invoke-direct {v0}, Landroid/telephony/ServiceState;-><init>()V

    return-object v0
.end method

.method public getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    return-object v0
.end method

.method public getState()Lcom/android/internal/telephony/PhoneConstants$State;
    .locals 2

    .prologue
    .line 448
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v1, :cond_0

    .line 449
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    .line 450
    .local v0, "imsState":Lcom/android/internal/telephony/PhoneConstants$State;
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v0, v1, :cond_0

    .line 451
    return-object v0

    .line 455
    .end local v0    # "imsState":Lcom/android/internal/telephony/PhoneConstants$State;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    return-object v1
.end method

.method public getSubscriberId()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1502
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1503
    iget-object v3, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 1504
    .local v1, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccRecords;->getIMSI()Ljava/lang/String;

    move-result-object v2

    :cond_0
    return-object v2

    .line 1506
    .end local v1    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_1
    const/4 v0, 0x0

    .line 1507
    .local v0, "imsi":Ljava/lang/String;
    iget v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCdmaSubscriptionSource:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 1508
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/ServiceStateTracker;->getImsi()Ljava/lang/String;

    move-result-object v0

    .line 1509
    .local v0, "imsi":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getSubscriberId(): CDMA_SUBSCRIPTION_NV, imsi="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 1514
    .end local v0    # "imsi":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdmaLte()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1515
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->getIMSI()Ljava/lang/String;

    move-result-object v0

    .line 1518
    :cond_2
    :goto_1
    return-object v0

    .line 1511
    .local v0, "imsi":Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 1512
    .restart local v1    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccRecords;->getIMSI()Ljava/lang/String;

    move-result-object v0

    .local v0, "imsi":Ljava/lang/String;
    goto :goto_0

    .local v0, "imsi":Ljava/lang/String;
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 1515
    .end local v0    # "imsi":Ljava/lang/String;
    .end local v1    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_5
    const-string/jumbo v0, ""

    .local v0, "imsi":Ljava/lang/String;
    goto :goto_1
.end method

.method public getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "defValue"    # Ljava/lang/String;

    .prologue
    .line 1656
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdmaLte()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdma()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1657
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getUnitTestMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1658
    const/4 v0, 0x0

    return-object v0

    .line 1660
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPhoneId:I

    invoke-static {v0, p1, p2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1662
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/Phone;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUiccCardApplication()Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .locals 3

    .prologue
    .line 2491
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2492
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPhoneId:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    return-object v0

    .line 2494
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPhoneId:I

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMailAlphaTag()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1400
    const-string/jumbo v1, ""

    .line 1402
    .local v1, "ret":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1403
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 1405
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v1

    .line 1408
    .end local v0    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    .line 1409
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mContext:Landroid/content/Context;

    .line 1410
    const v3, 0x1040004

    .line 1409
    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1405
    .restart local v0    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_2
    const-string/jumbo v1, ""

    goto :goto_0

    .line 1413
    .end local v0    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_3
    return-object v1
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 1337
    const/4 v3, 0x0

    .line 1338
    .local v3, "number":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1340
    iget-object v6, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 1341
    .local v4, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/IccRecords;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v3

    .line 1342
    .local v3, "number":Ljava/lang/String;
    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1343
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 1344
    .local v5, "sp":Landroid/content/SharedPreferences;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "vm_number_key"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1351
    .end local v4    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    .end local v5    # "sp":Landroid/content/SharedPreferences;
    :cond_0
    :goto_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1352
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 1353
    const v7, 0x107004a

    .line 1352
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 1354
    .local v2, "listArray":[Ljava/lang/String;
    if-eqz v2, :cond_5

    array-length v6, v2

    if-lez v6, :cond_5

    .line 1355
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    array-length v6, v2

    if-ge v1, v6, :cond_5

    .line 1356
    aget-object v6, v2, v1

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1357
    aget-object v6, v2, v1

    const-string/jumbo v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1358
    .local v0, "defaultVMNumberArray":[Ljava/lang/String;
    if-eqz v0, :cond_1

    array-length v6, v0

    if-lez v6, :cond_1

    .line 1359
    array-length v6, v0

    if-ne v6, v10, :cond_4

    .line 1360
    aget-object v3, v0, v9

    .line 1355
    .end local v0    # "defaultVMNumberArray":[Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1341
    .end local v1    # "i":I
    .end local v2    # "listArray":[Ljava/lang/String;
    .local v3, "number":Ljava/lang/String;
    .restart local v4    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_2
    const-string/jumbo v3, ""

    goto :goto_0

    .line 1347
    .end local v4    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 1348
    .restart local v5    # "sp":Landroid/content/SharedPreferences;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "vm_number_key_cdma"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, "number":Ljava/lang/String;
    goto :goto_1

    .line 1361
    .end local v5    # "sp":Landroid/content/SharedPreferences;
    .restart local v0    # "defaultVMNumberArray":[Ljava/lang/String;
    .restart local v1    # "i":I
    .restart local v2    # "listArray":[Ljava/lang/String;
    :cond_4
    array-length v6, v0

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    .line 1362
    aget-object v6, v0, v10

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1363
    aget-object v6, v0, v10

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/GsmCdmaPhone;->isMatchGid(Ljava/lang/String;)Z

    move-result v6

    .line 1361
    if-eqz v6, :cond_1

    .line 1364
    aget-object v3, v0, v9

    .line 1373
    .end local v0    # "defaultVMNumberArray":[Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "listArray":[Ljava/lang/String;
    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v6

    if-nez v6, :cond_6

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1375
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x112006b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1377
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getLine1Number()Ljava/lang/String;

    move-result-object v3

    .line 1383
    :cond_6
    :goto_3
    return-object v3

    .line 1379
    :cond_7
    const-string/jumbo v3, "*86"

    goto :goto_3
.end method

.method public getWakeLock()Landroid/os/PowerManager$WakeLock;
    .locals 1

    .prologue
    .line 3523
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method public handleInCallMmiCommands(Ljava/lang/String;)Z
    .locals 5
    .param p1, "dialString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1003
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1004
    const-string/jumbo v3, "method handleInCallMmiCommands is NOT supported in CDMA!"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 1005
    return v4

    .line 1008
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    .line 1009
    .local v1, "imsPhone":Lcom/android/internal/telephony/Phone;
    if-eqz v1, :cond_1

    .line 1010
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    if-nez v3, :cond_1

    .line 1011
    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/Phone;->handleInCallMmiCommands(Ljava/lang/String;)Z

    move-result v3

    return v3

    .line 1014
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isInCall()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1015
    return v4

    .line 1018
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1019
    return v4

    .line 1022
    :cond_3
    const/4 v2, 0x0

    .line 1023
    .local v2, "result":Z
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1024
    .local v0, "ch":C
    packed-switch v0, :pswitch_data_0

    .line 1047
    .end local v2    # "result":Z
    :goto_0
    return v2

    .line 1026
    .restart local v2    # "result":Z
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->handleCallDeflectionIncallSupplementaryService(Ljava/lang/String;)Z

    move-result v2

    .local v2, "result":Z
    goto :goto_0

    .line 1029
    .local v2, "result":Z
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->handleCallWaitingIncallSupplementaryService(Ljava/lang/String;)Z

    move-result v2

    .local v2, "result":Z
    goto :goto_0

    .line 1032
    .local v2, "result":Z
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->handleCallHoldIncallSupplementaryService(Ljava/lang/String;)Z

    move-result v2

    .local v2, "result":Z
    goto :goto_0

    .line 1035
    .local v2, "result":Z
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->handleMultipartyIncallSupplementaryService(Ljava/lang/String;)Z

    move-result v2

    .local v2, "result":Z
    goto :goto_0

    .line 1038
    .local v2, "result":Z
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->handleEctIncallSupplementaryService(Ljava/lang/String;)Z

    move-result v2

    .local v2, "result":Z
    goto :goto_0

    .line 1041
    .local v2, "result":Z
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->handleCcbsIncallSupplementaryService(Ljava/lang/String;)Z

    move-result v2

    .local v2, "result":Z
    goto :goto_0

    .line 1024
    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 27
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2125
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v24, v0

    packed-switch v24, :pswitch_data_0

    .line 2486
    :pswitch_0
    invoke-super/range {p0 .. p1}, Lcom/android/internal/telephony/Phone;->handleMessage(Landroid/os/Message;)V

    .line 2121
    :cond_0
    :goto_0
    return-void

    .line 2127
    :pswitch_1
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->handleRadioAvailable()V

    goto :goto_0

    .line 2132
    :pswitch_2
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 2134
    .local v4, "ar":Landroid/os/AsyncResult;
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v24, v0

    if-nez v24, :cond_0

    .line 2137
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, [Ljava/lang/String;

    .line 2138
    .local v20, "respId":[Ljava/lang/String;
    const/16 v24, 0x0

    aget-object v24, v20, v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/GsmCdmaPhone;->mImei:Ljava/lang/String;

    .line 2139
    const/16 v24, 0x1

    aget-object v24, v20, v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/GsmCdmaPhone;->mImeiSv:Ljava/lang/String;

    .line 2140
    const/16 v24, 0x2

    aget-object v24, v20, v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/GsmCdmaPhone;->mEsn:Ljava/lang/String;

    .line 2141
    const/16 v24, 0x3

    aget-object v24, v20, v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/GsmCdmaPhone;->mMeid:Ljava/lang/String;

    .line 2144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaPhone;->mMeid:Ljava/lang/String;

    move-object/from16 v24, v0

    if-eqz v24, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaPhone;->mMeid:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->checkMeidValid(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_1

    .line 2145
    const-string/jumbo v24, "gsm.phone.meid"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaPhone;->mMeid:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-static/range {v24 .. v25}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2149
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPhoneId:I

    move/from16 v24, v0

    const-string/jumbo v25, "persist.radio.gsm.phone.imei"

    const-string/jumbo v26, ""

    .line 2148
    invoke-static/range {v24 .. v26}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 2150
    .local v21, "savedImei":Ljava/lang/String;
    const-string/jumbo v24, "GsmCdmaPhone"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "[mPhoneId:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPhoneId:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, "]"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 2151
    const-string/jumbo v26, ", mImei="

    .line 2150
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 2151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImei:Ljava/lang/String;

    move-object/from16 v26, v0

    .line 2150
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 2151
    const-string/jumbo v26, ", mMeid="

    .line 2150
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 2151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaPhone;->mMeid:Ljava/lang/String;

    move-object/from16 v26, v0

    .line 2150
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 2151
    const-string/jumbo v26, ", savedImei="

    .line 2150
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2152
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_2

    const-string/jumbo v24, "null"

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_3

    .line 2153
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImei:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImei:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->checkMeidValid(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_3

    .line 2154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImei:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 2156
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPhoneId:I

    move/from16 v24, v0

    const-string/jumbo v25, "persist.radio.gsm.phone.imei"

    .line 2155
    move/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 2160
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPhoneId:I

    move/from16 v24, v0

    const-string/jumbo v25, "gsm.phone.imei"

    .line 2159
    move/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2166
    .end local v4    # "ar":Landroid/os/AsyncResult;
    .end local v20    # "respId":[Ljava/lang/String;
    .end local v21    # "savedImei":Ljava/lang/String;
    :pswitch_3
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->handleEnterEmergencyCallbackMode(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 2171
    :pswitch_4
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->handleExitEmergencyCallbackMode(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 2176
    :pswitch_5
    const-string/jumbo v24, "Event EVENT_RUIM_RECORDS_LOADED Received"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 2177
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->updateCurrentCarrierInProvider()Z

    goto/16 :goto_0

    .line 2181
    :pswitch_6
    const-string/jumbo v24, "Event EVENT_RADIO_ON Received"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 2182
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->handleRadioOn()V

    goto/16 :goto_0

    .line 2186
    :pswitch_7
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 2187
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v24, v0

    if-nez v24, :cond_4

    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v24, v0

    if-eqz v24, :cond_4

    .line 2188
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/GsmCdmaPhone;->mRilVersion:I

    goto/16 :goto_0

    .line 2190
    :cond_4
    const-string/jumbo v24, "Unexpected exception on EVENT_RIL_CONNECTED"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 2191
    const/16 v24, -0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/GsmCdmaPhone;->mRilVersion:I

    goto/16 :goto_0

    .line 2197
    .end local v4    # "ar":Landroid/os/AsyncResult;
    :pswitch_8
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v24, v0

    const/16 v25, 0x27

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_5

    .line 2198
    const-string/jumbo v23, "EVENT_VOICE_RADIO_TECH_CHANGED"

    .line 2199
    .local v23, "what":Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 2200
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v24, v0

    if-nez v24, :cond_7

    .line 2201
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v24, v0

    if-eqz v24, :cond_6

    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, [I

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    if-eqz v24, :cond_6

    .line 2202
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, [I

    const/16 v25, 0x0

    aget v15, v24, v25

    .line 2203
    .local v15, "newVoiceTech":I
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, ": newVoiceTech="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 2204
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/telephony/GsmCdmaPhone;->phoneObjectUpdater(I)V

    goto/16 :goto_0

    .line 2198
    .end local v4    # "ar":Landroid/os/AsyncResult;
    .end local v15    # "newVoiceTech":I
    .end local v23    # "what":Ljava/lang/String;
    :cond_5
    const-string/jumbo v23, "EVENT_REQUEST_VOICE_RADIO_TECH_DONE"

    .restart local v23    # "what":Ljava/lang/String;
    goto :goto_1

    .line 2206
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    :cond_6
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, ": has no tech!"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2209
    :cond_7
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, ": exception="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2214
    .end local v4    # "ar":Landroid/os/AsyncResult;
    .end local v23    # "what":Ljava/lang/String;
    :pswitch_9
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->phoneObjectUpdater(I)V

    goto/16 :goto_0

    .line 2220
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaPhone;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x11200a3

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v24

    if-nez v24, :cond_8

    .line 2222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v24, v0

    const/16 v25, 0x28

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v25

    invoke-interface/range {v24 .. v25}, Lcom/android/internal/telephony/CommandsInterface;->getVoiceRadioTechnology(Landroid/os/Message;)V

    .line 2225
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaPhone;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPhoneId:I

    move/from16 v25, v0

    const/16 v26, 0x1

    invoke-static/range {v24 .. v26}, Lcom/android/ims/ImsManager;->updateImsServiceConfig(Landroid/content/Context;IZ)V

    .line 2229
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v24

    const-string/jumbo v25, "carrier_config"

    invoke-virtual/range {v24 .. v25}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 2228
    check-cast v8, Landroid/telephony/CarrierConfigManager;

    .line 2230
    .local v8, "configMgr":Landroid/telephony/CarrierConfigManager;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v24

    move/from16 v0, v24

    invoke-virtual {v8, v0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v5

    .line 2231
    .local v5, "b":Landroid/os/PersistableBundle;
    if-eqz v5, :cond_b

    .line 2233
    const-string/jumbo v24, "broadcast_emergency_call_state_changes_bool"

    .line 2232
    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 2234
    .local v6, "broadcastEmergencyCallStateChanges":Z
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "broadcastEmergencyCallStateChanges = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 2236
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/GsmCdmaPhone;->setBroadcastEmergencyCallStateChanges(Z)V

    .line 2242
    .end local v6    # "broadcastEmergencyCallStateChanges":Z
    :goto_2
    if-eqz v5, :cond_c

    .line 2244
    const-string/jumbo v24, "cdma_roaming_mode_int"

    .line 2245
    const/16 v25, -0x1

    .line 2243
    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v5, v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 2247
    .local v9, "config_cdma_roaming_mode":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    .line 2248
    const-string/jumbo v25, "roaming_settings"

    .line 2249
    const/16 v26, -0x1

    .line 2247
    invoke-static/range {v24 .. v26}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    .line 2250
    .local v10, "current_cdma_roaming_mode":I
    packed-switch v9, :pswitch_data_1

    .line 2281
    :cond_9
    :goto_3
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Invalid cdma_roaming_mode settings: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 2289
    .end local v9    # "config_cdma_roaming_mode":I
    .end local v10    # "current_cdma_roaming_mode":I
    :cond_a
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->prepareEri()V

    .line 2290
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v24

    if-nez v24, :cond_0

    .line 2291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/ServiceStateTracker;->pollState()V

    goto/16 :goto_0

    .line 2238
    :cond_b
    const-string/jumbo v24, "didn\'t get broadcastEmergencyCallStateChanges from carrier config"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    goto :goto_2

    .line 2257
    .restart local v9    # "config_cdma_roaming_mode":I
    .restart local v10    # "current_cdma_roaming_mode":I
    :pswitch_b
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "cdma_roaming_mode is going to changed to "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 2259
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "mCdmaRoamingType is "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCdmaRoamingType:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 2260
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdma()Z

    move-result v24

    if-eqz v24, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCdmaRoamingType:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-eq v0, v9, :cond_a

    .line 2261
    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCdmaRoamingType:I

    .line 2263
    const/16 v24, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v24

    .line 2262
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v9, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->setCdmaRoamingPreference(ILandroid/os/Message;)V

    goto/16 :goto_4

    .line 2270
    :pswitch_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdma()Z

    move-result v24

    if-eqz v24, :cond_9

    .line 2271
    if-eq v10, v9, :cond_9

    .line 2272
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCdmaRoamingType:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-eq v0, v10, :cond_9

    .line 2273
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "cdma_roaming_mode is going to changed to "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 2275
    move-object/from16 v0, p0

    iput v10, v0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCdmaRoamingType:I

    .line 2277
    const/16 v24, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v24

    .line 2276
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v10, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->setCdmaRoamingPreference(ILandroid/os/Message;)V

    goto/16 :goto_3

    .line 2285
    .end local v9    # "config_cdma_roaming_mode":I
    .end local v10    # "current_cdma_roaming_mode":I
    :cond_c
    const-string/jumbo v24, "didn\'t get the cdma_roaming_mode changes from the carrier config."

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 2297
    .end local v5    # "b":Landroid/os/PersistableBundle;
    .end local v8    # "configMgr":Landroid/telephony/CarrierConfigManager;
    :pswitch_d
    const-string/jumbo v24, "cdma_roaming_mode change is done"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2301
    :pswitch_e
    const-string/jumbo v24, "EVENT_CDMA_SUBSCRIPTION_SOURCE_CHANGED"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 2302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getCdmaSubscriptionSource()I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/GsmCdmaPhone;->mCdmaSubscriptionSource:I

    goto/16 :goto_0

    .line 2306
    :pswitch_f
    const-string/jumbo v24, "Event EVENT_REGISTERED_TO_NETWORK Received"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 2307
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v24

    if-eqz v24, :cond_0

    .line 2308
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->syncClirSetting()V

    goto/16 :goto_0

    .line 2313
    :pswitch_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v24

    if-eqz v24, :cond_d

    .line 2314
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->updateCurrentCarrierInProvider()Z

    .line 2318
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getVmSimImsi()Ljava/lang/String;

    move-result-object v12

    .line 2319
    .local v12, "imsi":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubscriberId()Ljava/lang/String;

    move-result-object v13

    .line 2320
    .local v13, "imsiFromSIM":Ljava/lang/String;
    if-eqz v12, :cond_d

    if-eqz v13, :cond_d

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_e

    .line 2328
    .end local v12    # "imsi":Ljava/lang/String;
    .end local v13    # "imsiFromSIM":Ljava/lang/String;
    :cond_d
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSimRecordsLoadedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto/16 :goto_0

    .line 2321
    .restart local v12    # "imsi":Ljava/lang/String;
    .restart local v13    # "imsiFromSIM":Ljava/lang/String;
    :cond_e
    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->storeVoiceMailNumber(Ljava/lang/String;)V

    .line 2322
    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->setVmSimImsi(Ljava/lang/String;)V

    .line 2323
    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->setVideoCallForwardingPreference(Z)V

    .line 2324
    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->setSimImsi(Ljava/lang/String;)V

    goto :goto_5

    .line 2332
    .end local v12    # "imsi":Ljava/lang/String;
    .end local v13    # "imsiFromSIM":Ljava/lang/String;
    :pswitch_11
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 2334
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v24, v0

    if-nez v24, :cond_0

    .line 2338
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Baseband version: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 2339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaPhone;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v25

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v26

    .line 2340
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Ljava/lang/String;

    .line 2339
    move-object/from16 v0, v25

    move/from16 v1, v26

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setBasebandVersionForPhone(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 2344
    .end local v4    # "ar":Landroid/os/AsyncResult;
    :pswitch_12
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 2346
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v24, v0

    if-nez v24, :cond_0

    .line 2350
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Ljava/lang/String;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/GsmCdmaPhone;->mImei:Ljava/lang/String;

    goto/16 :goto_0

    .line 2354
    .end local v4    # "ar":Landroid/os/AsyncResult;
    :pswitch_13
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 2356
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v24, v0

    if-nez v24, :cond_0

    .line 2360
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Ljava/lang/String;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/GsmCdmaPhone;->mImeiSv:Ljava/lang/String;

    goto/16 :goto_0

    .line 2364
    .end local v4    # "ar":Landroid/os/AsyncResult;
    :pswitch_14
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 2366
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, [Ljava/lang/String;

    .line 2368
    .local v22, "ussdResult":[Ljava/lang/String;
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_0

    .line 2370
    const/16 v24, 0x0

    :try_start_0
    aget-object v24, v22, v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    const/16 v25, 0x1

    aget-object v25, v22, v25

    move-object/from16 v0, p0

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->onIncomingUSSD(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 2371
    :catch_0
    move-exception v11

    .line 2372
    .local v11, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v24, "GsmCdmaPhone"

    const-string/jumbo v25, "error parsing USSD"

    invoke-static/range {v24 .. v25}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2378
    .end local v4    # "ar":Landroid/os/AsyncResult;
    .end local v11    # "e":Ljava/lang/NumberFormatException;
    .end local v22    # "ussdResult":[Ljava/lang/String;
    :pswitch_15
    const-string/jumbo v24, "Event EVENT_RADIO_OFF_OR_NOT_AVAILABLE Received"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 2379
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->handleRadioOffOrNotAvailable()V

    goto/16 :goto_0

    .line 2384
    :pswitch_16
    const-string/jumbo v24, "Event EVENT_SSN Received"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 2385
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v24

    if-eqz v24, :cond_0

    .line 2386
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 2387
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Lcom/android/internal/telephony/gsm/SuppServiceNotification;

    .line 2388
    .local v16, "not":Lcom/android/internal/telephony/gsm/SuppServiceNotification;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSsnRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2393
    .end local v4    # "ar":Landroid/os/AsyncResult;
    .end local v16    # "not":Lcom/android/internal/telephony/gsm/SuppServiceNotification;
    :pswitch_17
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 2394
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 2395
    .local v18, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    iget-object v7, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/telephony/GsmCdmaPhone$Cfu;

    .line 2396
    .local v7, "cfu":Lcom/android/internal/telephony/GsmCdmaPhone$Cfu;
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v24, v0

    if-nez v24, :cond_f

    if-eqz v18, :cond_f

    .line 2397
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_10

    const/16 v24, 0x1

    :goto_6
    iget-object v0, v7, Lcom/android/internal/telephony/GsmCdmaPhone$Cfu;->mSetCfNumber:Ljava/lang/String;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v24

    move-object/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    .line 2399
    :cond_f
    iget-object v0, v7, Lcom/android/internal/telephony/GsmCdmaPhone$Cfu;->mOnComplete:Landroid/os/Message;

    move-object/from16 v24, v0

    if-eqz v24, :cond_0

    .line 2400
    iget-object v0, v7, Lcom/android/internal/telephony/GsmCdmaPhone$Cfu;->mOnComplete:Landroid/os/Message;

    move-object/from16 v24, v0

    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v25, v0

    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v26, v0

    invoke-static/range {v24 .. v26}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2401
    iget-object v0, v7, Lcom/android/internal/telephony/GsmCdmaPhone$Cfu;->mOnComplete:Landroid/os/Message;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 2397
    :cond_10
    const/16 v24, 0x0

    goto :goto_6

    .line 2406
    .end local v4    # "ar":Landroid/os/AsyncResult;
    .end local v7    # "cfu":Lcom/android/internal/telephony/GsmCdmaPhone$Cfu;
    .end local v18    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    :pswitch_18
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 2407
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v24

    if-eqz v24, :cond_11

    const-class v24, Lcom/android/internal/telephony/uicc/IccVmNotSupportedException;

    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_12

    .line 2408
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v24

    if-nez v24, :cond_13

    const-class v24, Lcom/android/internal/telephony/uicc/IccException;

    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v24

    .line 2407
    if-eqz v24, :cond_13

    .line 2409
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaPhone;->mVmNumber:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->storeVoiceMailNumber(Ljava/lang/String;)V

    .line 2410
    const/16 v24, 0x0

    move-object/from16 v0, v24

    iput-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 2412
    :cond_13
    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/os/Message;

    .line 2413
    .local v17, "onComplete":Landroid/os/Message;
    if-eqz v17, :cond_0

    .line 2414
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v24, v0

    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v25, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2415
    invoke-virtual/range {v17 .. v17}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 2421
    .end local v4    # "ar":Landroid/os/AsyncResult;
    .end local v17    # "onComplete":Landroid/os/Message;
    :pswitch_19
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 2422
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v24, v0

    if-nez v24, :cond_14

    .line 2423
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, [Lcom/android/internal/telephony/CallForwardInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->handleCfuQueryResult([Lcom/android/internal/telephony/CallForwardInfo;)V

    .line 2425
    :cond_14
    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/os/Message;

    .line 2426
    .restart local v17    # "onComplete":Landroid/os/Message;
    if-eqz v17, :cond_0

    .line 2427
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v24, v0

    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v25, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2428
    invoke-virtual/range {v17 .. v17}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 2434
    .end local v4    # "ar":Landroid/os/AsyncResult;
    .end local v17    # "onComplete":Landroid/os/Message;
    :pswitch_1a
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 2435
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/telephony/ServiceState;->getIsManualSelection()Z

    move-result v24

    if-eqz v24, :cond_15

    .line 2436
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Landroid/os/Message;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    .line 2437
    const-string/jumbo v24, "SET_NETWORK_SELECTION_AUTOMATIC: set to automatic"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2440
    :cond_15
    const-string/jumbo v24, "SET_NETWORK_SELECTION_AUTOMATIC: already automatic, ignore"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2445
    .end local v4    # "ar":Landroid/os/AsyncResult;
    :pswitch_1b
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 2446
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->processIccRecordEvents(I)V

    goto/16 :goto_0

    .line 2450
    .end local v4    # "ar":Landroid/os/AsyncResult;
    :pswitch_1c
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 2451
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v24, v0

    if-nez v24, :cond_16

    .line 2452
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->saveClirSetting(I)V

    .line 2454
    :cond_16
    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/os/Message;

    .line 2455
    .restart local v17    # "onComplete":Landroid/os/Message;
    if-eqz v17, :cond_0

    .line 2456
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v24, v0

    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v25, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2457
    invoke-virtual/range {v17 .. v17}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 2462
    .end local v4    # "ar":Landroid/os/AsyncResult;
    .end local v17    # "onComplete":Landroid/os/Message;
    :pswitch_1d
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 2463
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    const-string/jumbo v24, "Event EVENT_SS received"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 2464
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v24

    if-eqz v24, :cond_0

    .line 2468
    new-instance v14, Lcom/android/internal/telephony/gsm/GsmMmiCode;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaPhone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v14, v0, v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;-><init>(Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)V

    .line 2469
    .local v14, "mmi":Lcom/android/internal/telephony/gsm/GsmMmiCode;
    invoke-virtual {v14, v4}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->processSsData(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2474
    .end local v4    # "ar":Landroid/os/AsyncResult;
    .end local v14    # "mmi":Lcom/android/internal/telephony/gsm/GsmMmiCode;
    :pswitch_1e
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 2475
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Lcom/android/internal/telephony/RadioCapability;

    .line 2476
    .local v19, "rc":Lcom/android/internal/telephony/RadioCapability;
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v24, v0

    if-eqz v24, :cond_17

    .line 2477
    const-string/jumbo v24, "GsmCdmaPhone"

    const-string/jumbo v25, "get phone radio capability fail, no need to change mRadioCapability"

    invoke-static/range {v24 .. v25}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2482
    :goto_7
    const-string/jumbo v24, "GsmCdmaPhone"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "EVENT_GET_RADIO_CAPABILITY: phone rc: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2480
    :cond_17
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->radioCapabilityUpdated(Lcom/android/internal/telephony/RadioCapability;)V

    goto :goto_7

    .line 2125
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_16
        :pswitch_10
        :pswitch_0
        :pswitch_6
        :pswitch_11
        :pswitch_14
        :pswitch_15
        :pswitch_12
        :pswitch_13
        :pswitch_0
        :pswitch_17
        :pswitch_19
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1c
        :pswitch_f
        :pswitch_18
        :pswitch_2
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_e
        :pswitch_1a
        :pswitch_1b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1e
        :pswitch_1d
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_9
        :pswitch_a
        :pswitch_d
    .end packed-switch

    .line 2250
    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_b
    .end packed-switch
.end method

.method public handlePinMmi(Ljava/lang/String;)Z
    .locals 5
    .param p1, "dialString"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1218
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1219
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-static {p1, p0, v2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->newFromDialString(Ljava/lang/String;Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)Lcom/android/internal/telephony/gsm/GsmMmiCode;

    move-result-object v1

    .line 1224
    .local v1, "mmi":Lcom/android/internal/telephony/MmiCode;
    :goto_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/android/internal/telephony/MmiCode;->isPinPukCommand()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1225
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1226
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mMmiRegistrants:Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/AsyncResult;

    invoke-direct {v3, v4, v1, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1228
    :try_start_0
    invoke-interface {v1}, Lcom/android/internal/telephony/MmiCode;->processCode()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1232
    :goto_1
    const/4 v2, 0x1

    return v2

    .line 1221
    .end local v1    # "mmi":Lcom/android/internal/telephony/MmiCode;
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-static {p1, p0, v2}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->newFromDialString(Ljava/lang/String;Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)Lcom/android/internal/telephony/cdma/CdmaMmiCode;

    move-result-object v1

    .restart local v1    # "mmi":Lcom/android/internal/telephony/MmiCode;
    goto :goto_0

    .line 1229
    :catch_0
    move-exception v0

    .local v0, "e":Lcom/android/internal/telephony/CallStateException;
    goto :goto_1

    .line 1235
    .end local v0    # "e":Lcom/android/internal/telephony/CallStateException;
    :cond_1
    const-string/jumbo v2, "Mmi is null or unrecognized!"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 1236
    const/4 v2, 0x0

    return v2
.end method

.method public handleTimerInEmergencyCallbackMode(I)V
    .locals 6
    .param p1, "action"    # I

    .prologue
    .line 2921
    packed-switch p1, :pswitch_data_0

    .line 2933
    const-string/jumbo v2, "GsmCdmaPhone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleTimerInEmergencyCallbackMode, unsupported action "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2920
    :goto_0
    return-void

    .line 2923
    :pswitch_0
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mExitEcmRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2924
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto :goto_0

    .line 2928
    :pswitch_1
    const-string/jumbo v2, "ro.cdma.ecmexittimer"

    const-wide/32 v4, 0x493e0

    .line 2927
    invoke-static {v2, v4, v5}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 2929
    .local v0, "delayInMillis":J
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mExitEcmRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2930
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto :goto_0

    .line 2921
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isCspPlmnEnabled()Z
    .locals 2

    .prologue
    .line 2757
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 2758
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->isCspPlmnEnabled()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isEriFileLoaded()Z
    .locals 1

    .prologue
    .line 2705
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/EriManager;->isEriFileLoaded()Z

    move-result v0

    return v0
.end method

.method public isInCall()Z
    .locals 4

    .prologue
    .line 1051
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getForegroundCall()Lcom/android/internal/telephony/GsmCdmaCall;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 1052
    .local v1, "foregroundCallState":Lcom/android/internal/telephony/Call$State;
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getBackgroundCall()Lcom/android/internal/telephony/GsmCdmaCall;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 1053
    .local v0, "backgroundCallState":Lcom/android/internal/telephony/Call$State;
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    .line 1055
    .local v2, "ringingCallState":Lcom/android/internal/telephony/Call$State;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1056
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    .line 1055
    if-nez v3, :cond_0

    .line 1057
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    .line 1055
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public isInEcm()Z
    .locals 1

    .prologue
    .line 632
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 633
    const/4 v0, 0x0

    return v0

    .line 635
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIsPhoneInEcmState:Z

    return v0
.end method

.method public isInEmergencyCall()Z
    .locals 1

    .prologue
    .line 616
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 617
    const/4 v0, 0x0

    return v0

    .line 619
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->isInEmergencyCall()Z

    move-result v0

    return v0
.end method

.method public isManualNetSelAllowed()Z
    .locals 5

    .prologue
    .line 2763
    sget v0, Lcom/android/internal/telephony/Phone;->PREFERRED_NT_MODE:I

    .line 2764
    .local v0, "nwMode":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v1

    .line 2766
    .local v1, "subId":I
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 2767
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "preferred_network_mode"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2766
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2769
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isManualNetSelAllowed in mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 2774
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isManualSelProhibitedInGlobalMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2775
    const/16 v2, 0xa

    if-eq v0, v2, :cond_0

    .line 2776
    const/4 v2, 0x7

    if-ne v0, v2, :cond_1

    .line 2777
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Manual selection not supported in mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 2778
    const/4 v2, 0x0

    return v2

    .line 2780
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Manual selection is supported in mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 2790
    const/4 v2, 0x1

    return v2
.end method

.method public isMinInfoReady()Z
    .locals 1

    .prologue
    .line 1571
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->isMinInfoReady()Z

    move-result v0

    return v0
.end method

.method public isOtaSpNumber(Ljava/lang/String;)Z
    .locals 5
    .param p1, "dialStr"    # Ljava/lang/String;

    .prologue
    .line 3117
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3118
    invoke-super {p0, p1}, Lcom/android/internal/telephony/Phone;->isOtaSpNumber(Ljava/lang/String;)Z

    move-result v2

    return v2

    .line 3120
    :cond_0
    const/4 v1, 0x0

    .line 3121
    .local v1, "isOtaSpNum":Z
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3122
    .local v0, "dialableStr":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 3123
    invoke-static {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isIs683OtaSpDialStr(Ljava/lang/String;)Z

    move-result v1

    .line 3124
    .local v1, "isOtaSpNum":Z
    if-nez v1, :cond_1

    .line 3125
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isCarrierOtaSpNum(Ljava/lang/String;)Z

    move-result v1

    .line 3128
    .end local v1    # "isOtaSpNum":Z
    :cond_1
    const-string/jumbo v2, "GsmCdmaPhone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isOtaSpNumber "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3129
    return v1
.end method

.method public isPhoneTypeCdma()Z
    .locals 2

    .prologue
    .line 368
    iget v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPrecisePhoneType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPhoneTypeCdmaLte()Z
    .locals 2

    .prologue
    .line 372
    iget v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPrecisePhoneType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPhoneTypeGsm()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 364
    iget v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPrecisePhoneType:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUtEnabled()Z
    .locals 2

    .prologue
    .line 3506
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    .line 3507
    .local v0, "imsPhone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_0

    .line 3508
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isUtEnabled()Z

    move-result v1

    return v1

    .line 3510
    :cond_0
    const-string/jumbo v1, "isUtEnabled: called for GsmCdma"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 3511
    const/4 v1, 0x0

    return v1
.end method

.method public needsOtaServiceProvisioning()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2748
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2749
    return v0

    .line 2751
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ServiceStateTracker;->getOtasp()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public notifyCallForwardingIndicator()V
    .locals 1

    .prologue
    .line 679
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifyCallForwardingChanged(Lcom/android/internal/telephony/Phone;)V

    .line 678
    return-void
.end method

.method public notifyDisconnect(Lcom/android/internal/telephony/Connection;)V
    .locals 3
    .param p1, "cn"    # Lcom/android/internal/telephony/Connection;

    .prologue
    .line 605
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mDisconnectRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 607
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getPreciseDisconnectCause()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/PhoneNotifier;->notifyDisconnectCause(II)V

    .line 604
    return-void
.end method

.method public notifyEcbmTimerReset(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "flag"    # Ljava/lang/Boolean;

    .prologue
    .line 3453
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 3452
    return-void
.end method

.method public notifyEmergencyCallRegistrants(Z)V
    .locals 2
    .param p1, "started"    # Z

    .prologue
    .line 2911
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mEmergencyCallToggledRegistrants:Landroid/os/RegistrantList;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 2910
    return-void

    .line 2911
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyLocationChanged()V
    .locals 1

    .prologue
    .line 674
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifyCellLocation(Lcom/android/internal/telephony/Phone;)V

    .line 673
    return-void
.end method

.method public notifyNewRingingConnection(Lcom/android/internal/telephony/Connection;)V
    .locals 0
    .param p1, "c"    # Lcom/android/internal/telephony/Connection;

    .prologue
    .line 601
    invoke-super {p0, p1}, Lcom/android/internal/telephony/Phone;->notifyNewRingingConnectionP(Lcom/android/internal/telephony/Connection;)V

    .line 600
    return-void
.end method

.method public notifyPhoneStateChanged()V
    .locals 1

    .prologue
    .line 587
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifyPhoneState(Lcom/android/internal/telephony/Phone;)V

    .line 586
    return-void
.end method

.method public notifyPreciseCallStateChanged()V
    .locals 0

    .prologue
    .line 597
    invoke-super {p0}, Lcom/android/internal/telephony/Phone;->notifyPreciseCallStateChangedP()V

    .line 595
    return-void
.end method

.method public notifyServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 0
    .param p1, "ss"    # Landroid/telephony/ServiceState;

    .prologue
    .line 670
    invoke-super {p0, p1}, Lcom/android/internal/telephony/Phone;->notifyServiceStateChangedP(Landroid/telephony/ServiceState;)V

    .line 669
    return-void
.end method

.method public notifySuppServiceFailed(Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;)V
    .locals 1
    .param p1, "code"    # Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    .prologue
    .line 666
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSuppServiceFailedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 665
    return-void
.end method

.method public notifyUnknownConnection(Lcom/android/internal/telephony/Connection;)V
    .locals 0
    .param p1, "cn"    # Lcom/android/internal/telephony/Connection;

    .prologue
    .line 611
    invoke-super {p0, p1}, Lcom/android/internal/telephony/Phone;->notifyUnknownConnectionP(Lcom/android/internal/telephony/Connection;)V

    .line 610
    return-void
.end method

.method public onMMIDone(Lcom/android/internal/telephony/MmiCode;)V
    .locals 3
    .param p1, "mmi"    # Lcom/android/internal/telephony/MmiCode;

    .prologue
    const/4 v2, 0x0

    .line 1982
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/android/internal/telephony/MmiCode;->isUssdRequest()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p1

    .line 1983
    check-cast v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isSsInfo()Z

    move-result v0

    .line 1982
    if-eqz v0, :cond_1

    .line 1984
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mMmiCompleteRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    invoke-direct {v1, v2, p1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1975
    :cond_1
    return-void
.end method

.method protected onUpdateIccAvailability()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2500
    iget-object v4, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-nez v4, :cond_0

    .line 2501
    return-void

    .line 2504
    :cond_0
    const/4 v3, 0x0

    .line 2507
    .local v3, "newUiccApplication":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdmaLte()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2509
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget v5, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPhoneId:I

    invoke-virtual {v4, v5, v8}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v3

    .line 2510
    .local v3, "newUiccApplication":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    const/4 v1, 0x0

    .line 2512
    .local v1, "newIsimUiccRecords":Lcom/android/internal/telephony/uicc/IsimUiccRecords;
    if-eqz v3, :cond_2

    .line 2513
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v1

    .end local v1    # "newIsimUiccRecords":Lcom/android/internal/telephony/uicc/IsimUiccRecords;
    check-cast v1, Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    .line 2514
    .local v1, "newIsimUiccRecords":Lcom/android/internal/telephony/uicc/IsimUiccRecords;
    const-string/jumbo v4, "New ISIM application found"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 2516
    .end local v1    # "newIsimUiccRecords":Lcom/android/internal/telephony/uicc/IsimUiccRecords;
    :cond_2
    iput-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIsimUiccRecords:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    .line 2520
    .end local v3    # "newUiccApplication":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :cond_3
    iget-object v4, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    if-eqz v4, :cond_4

    .line 2521
    iget-object v4, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    invoke-virtual {v4, p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 2523
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdmaLte()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdma()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 2524
    :cond_5
    iget-object v4, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget v5, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPhoneId:I

    invoke-virtual {v4, v5, v7}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v3

    .line 2526
    .restart local v3    # "newUiccApplication":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    const/4 v2, 0x0

    .line 2527
    .local v2, "newSimRecords":Lcom/android/internal/telephony/uicc/SIMRecords;
    if-eqz v3, :cond_6

    .line 2528
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v2

    .end local v2    # "newSimRecords":Lcom/android/internal/telephony/uicc/SIMRecords;
    check-cast v2, Lcom/android/internal/telephony/uicc/SIMRecords;

    .line 2530
    :cond_6
    iput-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    .line 2531
    iget-object v4, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    if-eqz v4, :cond_7

    .line 2532
    iget-object v4, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    invoke-virtual {v4, p0, v8, v6}, Lcom/android/internal/telephony/uicc/SIMRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2539
    .end local v3    # "newUiccApplication":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :cond_7
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getUiccCardApplication()Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v3

    .line 2540
    .restart local v3    # "newUiccApplication":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v4

    if-nez v4, :cond_8

    if-nez v3, :cond_8

    .line 2541
    const-string/jumbo v4, "can\'t find 3GPP2 application; trying APP_FAM_3GPP"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 2542
    iget-object v4, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget v5, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPhoneId:I

    invoke-virtual {v4, v5, v7}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v3

    .line 2546
    :cond_8
    iget-object v4, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 2547
    .local v0, "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eq v0, v3, :cond_b

    .line 2548
    if-eqz v0, :cond_a

    .line 2549
    const-string/jumbo v4, "Removing stale icc objects."

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 2550
    iget-object v4, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 2551
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->unregisterForIccRecordEvents()V

    .line 2552
    iget-object v4, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccPhoneBookIntManager:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v4, v6}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateIccRecords(Lcom/android/internal/telephony/uicc/IccRecords;)V

    .line 2554
    :cond_9
    iget-object v4, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4, v6}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 2555
    iget-object v4, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4, v6}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 2557
    :cond_a
    if-eqz v3, :cond_b

    .line 2559
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "New Uicc application found. type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 2561
    iget-object v4, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 2562
    iget-object v4, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 2563
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mIccRecords = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 2564
    invoke-direct {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->registerForIccRecordEvents()V

    .line 2565
    iget-object v5, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccPhoneBookIntManager:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v4, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v5, v4}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateIccRecords(Lcom/android/internal/telephony/uicc/IccRecords;)V

    .line 2499
    :cond_b
    return-void

    .line 2535
    .end local v0    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .end local v3    # "newUiccApplication":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :cond_c
    iput-object v6, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSimRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    goto/16 :goto_0
.end method

.method protected phoneObjectUpdater(I)V
    .locals 13
    .param p1, "newVoiceRadioTech"    # I

    .prologue
    .line 3171
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "phoneObjectUpdater: newVoiceRadioTech="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 3174
    invoke-static {p1}, Landroid/telephony/ServiceState;->isLte(I)Z

    move-result v10

    if-nez v10, :cond_0

    .line 3175
    if-nez p1, :cond_1

    .line 3177
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v10

    const-string/jumbo v11, "carrier_config"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 3176
    check-cast v1, Landroid/telephony/CarrierConfigManager;

    .line 3178
    .local v1, "configMgr":Landroid/telephony/CarrierConfigManager;
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v10

    invoke-virtual {v1, v10}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 3179
    .local v0, "b":Landroid/os/PersistableBundle;
    if-eqz v0, :cond_2

    .line 3181
    const-string/jumbo v10, "volte_replacement_rat_int"

    invoke-virtual {v0, v10}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 3182
    .local v9, "volteReplacementRat":I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "phoneObjectUpdater: volteReplacementRat="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 3183
    if-eqz v9, :cond_1

    .line 3184
    move p1, v9

    .line 3191
    .end local v0    # "b":Landroid/os/PersistableBundle;
    .end local v1    # "configMgr":Landroid/telephony/CarrierConfigManager;
    .end local v9    # "volteReplacementRat":I
    :cond_1
    :goto_0
    iget v10, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mRilVersion:I

    const/4 v11, 0x6

    if-ne v10, v11, :cond_5

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getLteOnCdmaMode()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_5

    .line 3196
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneType()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_3

    .line 3197
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "phoneObjectUpdater: LTE ON CDMA property is set. Use CDMA Phone newVoiceRadioTech="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 3199
    const-string/jumbo v11, " mActivePhone="

    .line 3197
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 3199
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneName()Ljava/lang/String;

    move-result-object v11

    .line 3197
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 3200
    return-void

    .line 3187
    .restart local v0    # "b":Landroid/os/PersistableBundle;
    .restart local v1    # "configMgr":Landroid/telephony/CarrierConfigManager;
    :cond_2
    const-string/jumbo v10, "phoneObjectUpdater: didn\'t get volteReplacementRat from carrier config"

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 3202
    .end local v0    # "b":Landroid/os/PersistableBundle;
    .end local v1    # "configMgr":Landroid/telephony/CarrierConfigManager;
    :cond_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "phoneObjectUpdater: LTE ON CDMA property is set. Switch to CDMALTEPhone newVoiceRadioTech="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 3204
    const-string/jumbo v11, " mActivePhone="

    .line 3202
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 3204
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneName()Ljava/lang/String;

    move-result-object v11

    .line 3202
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 3205
    const/4 p1, 0x6

    .line 3250
    :cond_4
    if-nez p1, :cond_d

    .line 3253
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "phoneObjectUpdater: Unknown rat ignore,  newVoiceRadioTech=Unknown. mActivePhone="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 3254
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneName()Ljava/lang/String;

    move-result-object v11

    .line 3253
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 3255
    return-void

    .line 3211
    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isShuttingDown()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 3212
    const-string/jumbo v10, "Device is shutting down. No need to switch phone now."

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 3213
    return-void

    .line 3216
    :cond_6
    invoke-static {p1}, Landroid/telephony/ServiceState;->isCdma(I)Z

    move-result v4

    .line 3217
    .local v4, "matchCdma":Z
    invoke-static {p1}, Landroid/telephony/ServiceState;->isGsm(I)Z

    move-result v5

    .line 3218
    .local v5, "matchGsm":Z
    if-eqz v4, :cond_8

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneType()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_8

    .line 3221
    :cond_7
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "phoneObjectUpdater: No change ignore, newVoiceRadioTech="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 3223
    const-string/jumbo v11, " mActivePhone="

    .line 3221
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 3223
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneName()Ljava/lang/String;

    move-result-object v11

    .line 3221
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 3224
    return-void

    .line 3219
    :cond_8
    if-eqz v5, :cond_9

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneType()I

    move-result v10

    const/4 v11, 0x1

    if-eq v10, v11, :cond_7

    .line 3226
    :cond_9
    if-nez v4, :cond_a

    if-eqz v5, :cond_c

    .line 3233
    :cond_a
    const/4 v2, 0x0

    .line 3234
    .local v2, "has3gpp2App":Z
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v8

    .line 3235
    .local v8, "uiccController":Lcom/android/internal/telephony/uicc/UiccController;
    if-eqz v8, :cond_b

    .line 3236
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v10

    invoke-virtual {v8, v10}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v7

    .line 3237
    .local v7, "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    if-eqz v7, :cond_b

    const/4 v10, 0x2

    invoke-virtual {v7, v10}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v10

    if-eqz v10, :cond_b

    .line 3238
    const/4 v2, 0x1

    .line 3241
    .end local v7    # "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    :cond_b
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneType()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_4

    .line 3242
    const/16 v10, 0xe

    if-ne p1, v10, :cond_4

    .line 3241
    if-eqz v2, :cond_4

    .line 3244
    const-string/jumbo v10, "phoneObjectUpdater: current phone is CDMA, newVoiceRadioTech is LTE, don\'t swtich phone."

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 3245
    return-void

    .line 3227
    .end local v2    # "has3gpp2App":Z
    .end local v8    # "uiccController":Lcom/android/internal/telephony/uicc/UiccController;
    :cond_c
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "phoneObjectUpdater: newVoiceRadioTech="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 3228
    const-string/jumbo v11, " doesn\'t match either CDMA or GSM - error! No phone change"

    .line 3227
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 3229
    return-void

    .line 3258
    .end local v4    # "matchCdma":Z
    .end local v5    # "matchGsm":Z
    :cond_d
    const/4 v6, 0x0

    .line 3259
    .local v6, "oldPowerState":Z
    iget-boolean v10, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mResetModemOnRadioTechnologyChange:Z

    if-eqz v10, :cond_e

    .line 3260
    iget-object v10, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v10}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v10

    if-eqz v10, :cond_e

    .line 3261
    const/4 v6, 0x1

    .line 3262
    const-string/jumbo v10, "phoneObjectUpdater: Setting Radio Power to Off"

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 3263
    iget-object v10, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-interface {v10, v11, v12}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    .line 3267
    :cond_e
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->switchVoiceRadioTech(I)V

    .line 3269
    iget-boolean v10, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mResetModemOnRadioTechnologyChange:Z

    if-eqz v10, :cond_f

    if-eqz v6, :cond_f

    .line 3270
    const-string/jumbo v10, "phoneObjectUpdater: Resetting Radio"

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 3271
    iget-object v10, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v11, 0x0

    invoke-interface {v10, v6, v11}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    .line 3275
    :cond_f
    iget-object v10, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccCardProxy:Lcom/android/internal/telephony/uicc/IccCardProxy;

    invoke-virtual {v10, p1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setVoiceRadioTech(I)V

    .line 3278
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v10, "android.intent.action.RADIO_TECHNOLOGY"

    invoke-direct {v3, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3279
    .local v3, "intent":Landroid/content/Intent;
    const/high16 v10, 0x20000000

    invoke-virtual {v3, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3280
    const-string/jumbo v10, "phoneName"

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3281
    iget v10, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPhoneId:I

    invoke-static {v3, v10}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 3282
    const/4 v10, 0x0

    const/4 v11, -0x1

    invoke-static {v3, v10, v11}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 3170
    return-void
.end method

.method public prepareEri()V
    .locals 2

    .prologue
    .line 2691
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    if-nez v0, :cond_0

    .line 2692
    const-string/jumbo v0, "GsmCdmaPhone"

    const-string/jumbo v1, "PrepareEri: Trying to access stale objects"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2693
    return-void

    .line 2695
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/EriManager;->loadEriFile()V

    .line 2696
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/EriManager;->isEriFileLoaded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2698
    const-string/jumbo v0, "ERI read, notify registrants"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 2699
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mEriFileLoadedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 2690
    :cond_1
    return-void
.end method

.method public registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1952
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1951
    return-void
.end method

.method public registerForCdmaOtaStatusChange(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1922
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerForCdmaOtaProvision(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1921
    return-void
.end method

.method public registerForEcmTimerReset(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 3465
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3464
    return-void
.end method

.method public registerForEriFileLoaded(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2680
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2681
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mEriFileLoadedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 2679
    return-void
.end method

.method public registerForSimRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 713
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSimRecordsLoadedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 712
    return-void
.end method

.method public registerForSubscriptionInfoReady(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1932
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForSubscriptionInfoReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1931
    return-void
.end method

.method public registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    .line 701
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSsnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 702
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSsnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->size()I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v2, v1}, Lcom/android/internal/telephony/CommandsInterface;->setSuppServiceNotifications(ZLandroid/os/Message;)V

    .line 700
    :cond_0
    return-void
.end method

.method public rejectCall()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 733
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->rejectCall()V

    .line 732
    return-void
.end method

.method public sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V
    .locals 5
    .param p1, "dtmfString"    # Ljava/lang/String;
    .param p2, "on"    # I
    .param p3, "off"    # I
    .param p4, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1278
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1279
    const-string/jumbo v2, "[GsmCdmaPhone] sendBurstDtmf() is a CDMA method"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 1277
    :cond_0
    :goto_0
    return-void

    .line 1281
    :cond_1
    const/4 v0, 0x1

    .line 1282
    .local v0, "check":Z
    const/4 v1, 0x0

    .local v1, "itr":I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1283
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1284
    const-string/jumbo v2, "GsmCdmaPhone"

    .line 1285
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendDtmf called with invalid character \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1284
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1286
    const/4 v0, 0x0

    .line 1290
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v2, v3, :cond_0

    if-eqz v0, :cond_0

    .line 1291
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/android/internal/telephony/CommandsInterface;->sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V

    goto :goto_0

    .line 1282
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public sendDtmf(C)V
    .locals 2
    .param p1, "c"    # C

    .prologue
    .line 1253
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendDtmf called with invalid character \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 1252
    :cond_0
    :goto_0
    return-void

    .line 1256
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v1, :cond_0

    .line 1257
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->sendDtmf(CLandroid/os/Message;)V

    goto :goto_0
.end method

.method public sendEmergencyCallStateChange(Z)V
    .locals 4
    .param p1, "callActive"    # Z

    .prologue
    .line 651
    iget-boolean v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mBroadcastEmergencyCallStateChanges:Z

    if-eqz v1, :cond_0

    .line 652
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.EMERGENCY_CALL_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 653
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "phoneInEmergencyCall"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 654
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v1

    invoke-static {v0, v1}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 655
    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 656
    const-string/jumbo v1, "GsmCdmaPhone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendEmergencyCallStateChange: callActive "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public sendUssdResponse(Ljava/lang/String;)V
    .locals 4
    .param p1, "ussdMessge"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1241
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1242
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-static {p1, p0, v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->newFromUssdUserInput(Ljava/lang/String;Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)Lcom/android/internal/telephony/gsm/GsmMmiCode;

    move-result-object v0

    .line 1243
    .local v0, "mmi":Lcom/android/internal/telephony/gsm/GsmMmiCode;
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1244
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mMmiRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1245
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sendUssd(Ljava/lang/String;)V

    .line 1240
    .end local v0    # "mmi":Lcom/android/internal/telephony/gsm/GsmMmiCode;
    :goto_0
    return-void

    .line 1247
    :cond_0
    const-string/jumbo v1, "sendUssdResponse: not possible in CDMA"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setBroadcastEmergencyCallStateChanges(Z)V
    .locals 0
    .param p1, "broadcast"    # Z

    .prologue
    .line 662
    iput-boolean p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mBroadcastEmergencyCallStateChanges:Z

    .line 661
    return-void
.end method

.method public setCallForwardingOption(IILjava/lang/String;IILandroid/os/Message;)V
    .locals 9
    .param p1, "commandInterfaceCFAction"    # I
    .param p2, "commandInterfaceCFReason"    # I
    .param p3, "dialingNumber"    # Ljava/lang/String;
    .param p4, "commandInterfaceServiceClass"    # I
    .param p5, "timerSeconds"    # I
    .param p6, "onComplete"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    .line 1738
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1739
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    .line 1740
    .local v0, "imsPhone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_1

    .line 1741
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1742
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isUtEnabled()Z

    move-result v1

    .line 1740
    if-eqz v1, :cond_1

    :cond_0
    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    .line 1743
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;IILandroid/os/Message;)V

    .line 1746
    return-void

    .line 1749
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->isValidCommandInterfaceCFAction(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1750
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/GsmCdmaPhone;->isValidCommandInterfaceCFReason(I)Z

    move-result v1

    .line 1749
    if-eqz v1, :cond_2

    .line 1753
    if-nez p2, :cond_4

    .line 1754
    new-instance v8, Lcom/android/internal/telephony/GsmCdmaPhone$Cfu;

    invoke-direct {v8, p3, p6}, Lcom/android/internal/telephony/GsmCdmaPhone$Cfu;-><init>(Ljava/lang/String;Landroid/os/Message;)V

    .line 1756
    .local v8, "cfu":Lcom/android/internal/telephony/GsmCdmaPhone$Cfu;
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->isCfEnable(I)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    .line 1755
    :goto_0
    const/16 v3, 0xc

    invoke-virtual {p0, v3, v1, v2, v8}, Lcom/android/internal/telephony/GsmCdmaPhone;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 1760
    .end local v8    # "cfu":Lcom/android/internal/telephony/GsmCdmaPhone$Cfu;
    .local v7, "resp":Landroid/os/Message;
    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move v2, p1

    move v3, p2

    move v4, p4

    move-object v5, p3

    move v6, p5

    invoke-interface/range {v1 .. v7}, Lcom/android/internal/telephony/CommandsInterface;->setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V

    .line 1737
    .end local v0    # "imsPhone":Lcom/android/internal/telephony/Phone;
    .end local v7    # "resp":Landroid/os/Message;
    :cond_2
    :goto_2
    return-void

    .restart local v0    # "imsPhone":Lcom/android/internal/telephony/Phone;
    .restart local v8    # "cfu":Lcom/android/internal/telephony/GsmCdmaPhone$Cfu;
    :cond_3
    move v1, v2

    .line 1756
    goto :goto_0

    .line 1758
    .end local v8    # "cfu":Lcom/android/internal/telephony/GsmCdmaPhone$Cfu;
    :cond_4
    move-object v7, p6

    .restart local v7    # "resp":Landroid/os/Message;
    goto :goto_1

    .line 1768
    .end local v0    # "imsPhone":Lcom/android/internal/telephony/Phone;
    .end local v7    # "resp":Landroid/os/Message;
    :cond_5
    const-string/jumbo v1, "setCallForwardingOption: not possible in CDMA"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V
    .locals 7
    .param p1, "commandInterfaceCFAction"    # I
    .param p2, "commandInterfaceCFReason"    # I
    .param p3, "dialingNumber"    # Ljava/lang/String;
    .param p4, "timerSeconds"    # I
    .param p5, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1726
    const/4 v4, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v5, p4

    move-object v6, p5

    .line 1724
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/GsmCdmaPhone;->setCallForwardingOption(IILjava/lang/String;IILandroid/os/Message;)V

    .line 1723
    return-void
.end method

.method public setCallWaiting(ZLandroid/os/Message;)V
    .locals 3
    .param p1, "enable"    # Z
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1827
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1828
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    .line 1829
    .local v0, "imsPhone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_1

    .line 1830
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1831
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isUtEnabled()Z

    move-result v1

    .line 1829
    if-eqz v1, :cond_1

    .line 1832
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setCallWaiting(ZLandroid/os/Message;)V

    .line 1833
    return-void

    .line 1836
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x1

    invoke-interface {v1, p1, v2, p2}, Lcom/android/internal/telephony/CommandsInterface;->setCallWaiting(ZILandroid/os/Message;)V

    .line 1826
    .end local v0    # "imsPhone":Lcom/android/internal/telephony/Phone;
    :goto_0
    return-void

    .line 1838
    :cond_2
    const-string/jumbo v1, "method setCallWaiting is NOT supported in CDMA!"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setCellBroadcastSmsConfig([ILandroid/os/Message;)V
    .locals 1
    .param p1, "configValuesArray"    # [I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 2739
    const-string/jumbo v0, "[GsmCdmaPhone] setCellBroadcastSmsConfig() is obsolete; use SmsManager"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 2740
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 2738
    return-void
.end method

.method public setDataEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 1967
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setDataEnabled(Z)V

    .line 1966
    return-void
.end method

.method public setDataRoamingEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 1917
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setDataOnRoamingEnabled(Z)V

    .line 1916
    return-void
.end method

.method public setImsRegistrationState(Z)V
    .locals 1
    .param p1, "registered"    # Z

    .prologue
    .line 3322
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->setImsRegistrationState(Z)V

    .line 3321
    return-void
.end method

.method protected setIsInEmergencyCall()V
    .locals 1

    .prologue
    .line 625
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-nez v0, :cond_0

    .line 626
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->setIsInEmergencyCall()V

    .line 624
    :cond_0
    return-void
.end method

.method public setLine1Number(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z
    .locals 6
    .param p1, "alphaTag"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1600
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1601
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 1602
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    .line 1603
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccRecords;->setMsisdnNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1604
    return v4

    .line 1606
    :cond_0
    return v5

    .line 1612
    .end local v0    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[GsmCdmaPhone] setLine1Number for CDMA:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 1613
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/uicc/RuimRecords;

    .line 1614
    .local v1, "r":Lcom/android/internal/telephony/uicc/RuimRecords;
    if-eqz v1, :cond_2

    .line 1615
    invoke-virtual {v1, p2, p3}, Lcom/android/internal/telephony/uicc/RuimRecords;->setMdnNumber(Ljava/lang/String;Landroid/os/Message;)V

    .line 1616
    return v4

    .line 1618
    :cond_2
    if-eqz p3, :cond_3

    .line 1619
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    .line 1620
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "setLine1Number for CDMA failded."

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 1619
    iput-object v3, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1621
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 1623
    :cond_3
    return v5
.end method

.method public setMute(Z)V
    .locals 1
    .param p1, "muted"    # Z

    .prologue
    .line 1882
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->setMute(Z)V

    .line 1881
    return-void
.end method

.method public setOnEcbModeExitResponse(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1942
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mEcmExitRespRegistrant:Landroid/os/Registrant;

    .line 1941
    return-void
.end method

.method public setOperatorBrandOverride(Ljava/lang/String;)Z
    .locals 6
    .param p1, "brand"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 3378
    iget-object v3, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-nez v3, :cond_0

    .line 3379
    return v5

    .line 3382
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v0

    .line 3383
    .local v0, "card":Lcom/android/internal/telephony/uicc/UiccCard;
    if-nez v0, :cond_1

    .line 3384
    return v5

    .line 3387
    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/UiccCard;->setOperatorBrandOverride(Ljava/lang/String;)Z

    move-result v2

    .line 3390
    .local v2, "status":Z
    if-eqz v2, :cond_3

    .line 3391
    iget-object v3, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 3392
    .local v1, "iccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v1, :cond_2

    .line 3393
    iget-object v3, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    .line 3394
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v4

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v5

    .line 3393
    invoke-virtual {v3, v4, v5}, Landroid/telephony/TelephonyManager;->setSimOperatorNameForPhone(ILjava/lang/String;)V

    .line 3396
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    if-eqz v3, :cond_3

    .line 3397
    iget-object v3, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {v3}, Lcom/android/internal/telephony/ServiceStateTracker;->pollState()V

    .line 3400
    .end local v1    # "iccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_3
    return v2
.end method

.method public setOutgoingCallerIdDisplay(ILandroid/os/Message;)V
    .locals 4
    .param p1, "commandInterfaceCLIRMode"    # I
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    .line 1789
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1790
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    .line 1791
    .local v0, "imsPhone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_0

    .line 1792
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-nez v1, :cond_0

    .line 1793
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setOutgoingCallerIdDisplay(ILandroid/os/Message;)V

    .line 1794
    return-void

    .line 1799
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 1800
    const/16 v2, 0x12

    invoke-virtual {p0, v2, p1, v3, p2}, Lcom/android/internal/telephony/GsmCdmaPhone;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1799
    invoke-interface {v1, p1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setCLIR(ILandroid/os/Message;)V

    .line 1788
    .end local v0    # "imsPhone":Lcom/android/internal/telephony/Phone;
    :goto_0
    return-void

    .line 1802
    :cond_1
    const-string/jumbo v1, "setOutgoingCallerIdDisplay: not possible in CDMA"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setRadioPower(Z)V
    .locals 1
    .param p1, "power"    # Z

    .prologue
    .line 1319
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->setRadioPower(Z)V

    .line 1318
    return-void
.end method

.method public setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 688
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getUnitTestMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 689
    return-void

    .line 691
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdmaLte()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdma()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 692
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mPhoneId:I

    invoke-static {v0, p1, p2}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 687
    :goto_0
    return-void

    .line 694
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/Phone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setUiTTYMode(ILandroid/os/Message;)V
    .locals 1
    .param p1, "uiTtyMode"    # I
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1875
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_0

    .line 1876
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setUiTTYMode(ILandroid/os/Message;)V

    .line 1874
    :cond_0
    return-void
.end method

.method public setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 4
    .param p1, "alphaTag"    # Ljava/lang/String;
    .param p2, "voiceMailNumber"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    .line 1632
    iput-object p2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mVmNumber:Ljava/lang/String;

    .line 1633
    const/16 v2, 0x14

    invoke-virtual {p0, v2, v3, v3, p3}, Lcom/android/internal/telephony/GsmCdmaPhone;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1634
    .local v1, "resp":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 1635
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    .line 1636
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mVmNumber:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v1}, Lcom/android/internal/telephony/uicc/IccRecords;->setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1630
    :cond_0
    return-void
.end method

.method public setVoiceMessageWaiting(II)V
    .locals 2
    .param p1, "line"    # I
    .param p2, "countWaiting"    # I

    .prologue
    .line 3482
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3483
    iget-object v1, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 3484
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    .line 3485
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/uicc/IccRecords;->setVoiceMessageWaiting(II)V

    .line 3481
    .end local v0    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    :goto_0
    return-void

    .line 3487
    .restart local v0    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_0
    const-string/jumbo v1, "SIM Records not found, MWI not updated"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 3490
    .end local v0    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/GsmCdmaPhone;->setVoiceMessageCount(I)V

    goto :goto_0
.end method

.method public startDtmf(C)V
    .locals 2
    .param p1, "c"    # C

    .prologue
    .line 1264
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startDtmf called with invalid character \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 1263
    :goto_0
    return-void

    .line 1267
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->startDtmf(CLandroid/os/Message;)V

    goto :goto_0
.end method

.method public stopDtmf()V
    .locals 2

    .prologue
    .line 1273
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->stopDtmf(Landroid/os/Message;)V

    .line 1272
    return-void
.end method

.method public supports3gppCallForwardingWhileRoaming()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1990
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "carrier_config"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 1989
    check-cast v1, Landroid/telephony/CarrierConfigManager;

    .line 1991
    .local v1, "configManager":Landroid/telephony/CarrierConfigManager;
    invoke-virtual {v1}, Landroid/telephony/CarrierConfigManager;->getConfig()Landroid/os/PersistableBundle;

    move-result-object v0

    .line 1992
    .local v0, "b":Landroid/os/PersistableBundle;
    if-eqz v0, :cond_0

    .line 1994
    const-string/jumbo v2, "support_3gpp_call_forwarding_while_roaming_bool"

    .line 1993
    invoke-virtual {v0, v2, v4}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    return v2

    .line 1997
    :cond_0
    return v4
.end method

.method public switchHoldingAndActive()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 738
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->switchWaitingOrHoldingAndActive()V

    .line 737
    return-void
.end method

.method public unregisterForCallWaiting(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1957
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->unregisterForCallWaiting(Landroid/os/Handler;)V

    .line 1956
    return-void
.end method

.method public unregisterForCdmaOtaStatusChange(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1927
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCdmaOtaProvision(Landroid/os/Handler;)V

    .line 1926
    return-void
.end method

.method public unregisterForEcmTimerReset(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 3470
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 3469
    return-void
.end method

.method public unregisterForEriFileLoaded(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2686
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mEriFileLoadedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2685
    return-void
.end method

.method public unregisterForSimRecordsLoaded(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 718
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSimRecordsLoadedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 717
    return-void
.end method

.method public unregisterForSubscriptionInfoReady(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1937
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForSubscriptionInfoReady(Landroid/os/Handler;)V

    .line 1936
    return-void
.end method

.method public unregisterForSuppServiceNotification(Landroid/os/Handler;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    const/4 v2, 0x0

    .line 707
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSsnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 708
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSsnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v2, v1}, Lcom/android/internal/telephony/CommandsInterface;->setSuppServiceNotifications(ZLandroid/os/Message;)V

    .line 706
    :cond_0
    return-void
.end method

.method public unsetOnEcbModeExitResponse(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1947
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mEcmExitRespRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    .line 1946
    return-void
.end method

.method public updateCurrentCarrierInProvider()Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 2590
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdmaLte()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdma()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2591
    :cond_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v6

    int-to-long v0, v6

    .line 2592
    .local v0, "currentDds":J
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v4

    .line 2594
    .local v4, "operatorNumeric":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateCurrentCarrierInProvider: mSubId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2595
    const-string/jumbo v7, " currentDds = "

    .line 2594
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2595
    const-string/jumbo v7, " operatorNumeric = "

    .line 2594
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 2597
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v6

    int-to-long v6, v6

    cmp-long v6, v6, v0

    if-nez v6, :cond_1

    .line 2599
    :try_start_0
    sget-object v6, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v7, "current"

    invoke-static {v6, v7}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 2600
    .local v5, "uri":Landroid/net/Uri;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 2601
    .local v3, "map":Landroid/content/ContentValues;
    const-string/jumbo v6, "numeric"

    invoke-virtual {v3, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2602
    iget-object v6, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, v5, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2603
    return v8

    .line 2604
    .end local v3    # "map":Landroid/content/ContentValues;
    .end local v5    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v2

    .line 2605
    .local v2, "e":Landroid/database/SQLException;
    const-string/jumbo v6, "GsmCdmaPhone"

    const-string/jumbo v7, "Can\'t store current operator"

    invoke-static {v6, v7, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2608
    .end local v2    # "e":Landroid/database/SQLException;
    :cond_1
    const/4 v6, 0x0

    return v6

    .line 2610
    .end local v0    # "currentDds":J
    .end local v4    # "operatorNumeric":Ljava/lang/String;
    :cond_2
    return v8
.end method

.method public updatePhoneObject(I)V
    .locals 3
    .param p1, "voiceRadioTech"    # I

    .prologue
    .line 3316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updatePhoneObject: radioTechnology="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 3317
    const/16 v0, 0x2a

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->sendMessage(Landroid/os/Message;)Z

    .line 3315
    return-void
.end method

.method public updateServiceLocation()V
    .locals 1

    .prologue
    .line 1897
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->enableSingleLocationUpdate()V

    .line 1896
    return-void
.end method

.method public updateVoiceMail()V
    .locals 4

    .prologue
    .line 479
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 480
    const/4 v0, 0x0

    .line 481
    .local v0, "countVoiceMessages":I
    iget-object v2, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 482
    .local v1, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v1, :cond_0

    .line 484
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccRecords;->getVoiceMessageCount()I

    move-result v0

    .line 486
    :cond_0
    const/4 v2, -0x2

    if-ne v0, v2, :cond_1

    .line 487
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getStoredVoiceMessageCount()I

    move-result v0

    .line 489
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateVoiceMail countVoiceMessages = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 490
    const-string/jumbo v3, " subId "

    .line 489
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 490
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v3

    .line 489
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 491
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->setVoiceMessageCount(I)V

    .line 478
    .end local v0    # "countVoiceMessages":I
    .end local v1    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    :goto_0
    return-void

    .line 493
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getStoredVoiceMessageCount()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->setVoiceMessageCount(I)V

    goto :goto_0
.end method
