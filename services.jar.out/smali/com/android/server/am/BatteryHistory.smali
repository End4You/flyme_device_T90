.class public final Lcom/android/server/am/BatteryHistory;
.super Ljava/lang/Object;
.source "BatteryHistory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/BatteryHistory$1;,
        Lcom/android/server/am/BatteryHistory$2;,
        Lcom/android/server/am/BatteryHistory$3;,
        Lcom/android/server/am/BatteryHistory$HistoryInfo;,
        Lcom/android/server/am/BatteryHistory$SettingsObserver;,
        Lcom/android/server/am/BatteryHistory$WakeLockInfo;,
        Lcom/android/server/am/BatteryHistory$WakeupInfo;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final HISTORY_CHECK_BATTERY_LEVEL_INTERVAL:I = 0x1

.field private static final HISTORY_CHECK_TIME_INTERVAL:I = 0x5

.field private static final MSG_SHOW_WARNNING:I = 0x0

.field public static final TAG:Ljava/lang/String; = "BatteryHistory"

.field private static mSmartBatteryUsageAlertEnabled:Z


# instance fields
.field private final BATTERY_HISTORY_START_TIME:J

.field private final SHOW_WARNNING_WAKELOCK_LONG:I

.field private final SHOW_WARNNING_WAKEUP_TIMES:I

.field private final THE_HISTORY_LENGTH:I

.field private final WARNNING_TYPE_WAKELOCK:I

.field private final WARNNING_TYPE_WAKEUP:I

.field final mAm:Lcom/android/server/am/ActivityManagerService;

.field private mBatteryHistoryInfos:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/am/BatteryHistory$HistoryInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mBatteryLevel:I

.field private mBatterySettingEnabled:Z

.field mCheckReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mDefaultInputMethod:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mLastBatteryHistoryCheckLevel:I

.field private mLastBatteryHistoryCheckTime:I

.field private mSettingsObserver:Lcom/android/server/am/BatteryHistory$SettingsObserver;

.field private mTimeTickCount:I

.field private mWarnningInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final timerComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/os/BatteryStats$TimerEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/server/am/BatteryHistory;)I
    .locals 1

    iget v0, p0, Lcom/android/server/am/BatteryHistory;->mBatteryLevel:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/am/BatteryHistory;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/BatteryHistory;->mBatterySettingEnabled:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/am/BatteryHistory;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/BatteryHistory;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/am/BatteryHistory;)I
    .locals 1

    iget v0, p0, Lcom/android/server/am/BatteryHistory;->mLastBatteryHistoryCheckLevel:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/server/am/BatteryHistory;)I
    .locals 1

    iget v0, p0, Lcom/android/server/am/BatteryHistory;->mLastBatteryHistoryCheckTime:I

    return v0
.end method

.method static synthetic -get5()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/am/BatteryHistory;->mSmartBatteryUsageAlertEnabled:Z

    return v0
.end method

.method static synthetic -get6(Lcom/android/server/am/BatteryHistory;)I
    .locals 1

    iget v0, p0, Lcom/android/server/am/BatteryHistory;->mTimeTickCount:I

    return v0
.end method

.method static synthetic -get7(Lcom/android/server/am/BatteryHistory;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/BatteryHistory;->mWarnningInfo:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/am/BatteryHistory;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/am/BatteryHistory;->mBatteryLevel:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/am/BatteryHistory;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/am/BatteryHistory;->mLastBatteryHistoryCheckLevel:I

    return p1
.end method

.method static synthetic -set2(Lcom/android/server/am/BatteryHistory;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/am/BatteryHistory;->mLastBatteryHistoryCheckTime:I

    return p1
.end method

.method static synthetic -set3(Lcom/android/server/am/BatteryHistory;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/am/BatteryHistory;->mTimeTickCount:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/am/BatteryHistory;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/BatteryHistory;->updateBatteryHistory()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/am/BatteryHistory;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/BatteryHistory;->updateSettings()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/am/BatteryHistory;->mSmartBatteryUsageAlertEnabled:Z

    .line 48
    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;)V
    .locals 4
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput v2, p0, Lcom/android/server/am/BatteryHistory;->WARNNING_TYPE_WAKEUP:I

    .line 53
    iput v3, p0, Lcom/android/server/am/BatteryHistory;->WARNNING_TYPE_WAKELOCK:I

    .line 56
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/am/BatteryHistory;->THE_HISTORY_LENGTH:I

    .line 57
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/am/BatteryHistory;->SHOW_WARNNING_WAKEUP_TIMES:I

    .line 58
    const/16 v0, 0x7530

    iput v0, p0, Lcom/android/server/am/BatteryHistory;->SHOW_WARNNING_WAKELOCK_LONG:I

    .line 60
    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lcom/android/server/am/BatteryHistory;->BATTERY_HISTORY_START_TIME:J

    .line 62
    iput v2, p0, Lcom/android/server/am/BatteryHistory;->mLastBatteryHistoryCheckTime:I

    .line 63
    iput v2, p0, Lcom/android/server/am/BatteryHistory;->mLastBatteryHistoryCheckLevel:I

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/BatteryHistory;->mContext:Landroid/content/Context;

    .line 68
    iput-boolean v3, p0, Lcom/android/server/am/BatteryHistory;->mBatterySettingEnabled:Z

    .line 69
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/server/am/BatteryHistory;->mDefaultInputMethod:Ljava/lang/String;

    .line 71
    const/16 v0, 0x5a

    iput v0, p0, Lcom/android/server/am/BatteryHistory;->mBatteryLevel:I

    .line 72
    iput v2, p0, Lcom/android/server/am/BatteryHistory;->mTimeTickCount:I

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 73
    iput-object v0, p0, Lcom/android/server/am/BatteryHistory;->mBatteryHistoryInfos:Ljava/util/HashMap;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/BatteryHistory;->mWarnningInfo:Ljava/util/ArrayList;

    .line 261
    new-instance v0, Lcom/android/server/am/BatteryHistory$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/BatteryHistory$1;-><init>(Lcom/android/server/am/BatteryHistory;)V

    iput-object v0, p0, Lcom/android/server/am/BatteryHistory;->timerComparator:Ljava/util/Comparator;

    .line 276
    new-instance v0, Lcom/android/server/am/BatteryHistory$2;

    invoke-direct {v0, p0}, Lcom/android/server/am/BatteryHistory$2;-><init>(Lcom/android/server/am/BatteryHistory;)V

    iput-object v0, p0, Lcom/android/server/am/BatteryHistory;->mCheckReceiver:Landroid/content/BroadcastReceiver;

    .line 331
    new-instance v0, Lcom/android/server/am/BatteryHistory$3;

    invoke-direct {v0, p0}, Lcom/android/server/am/BatteryHistory$3;-><init>(Lcom/android/server/am/BatteryHistory;)V

    iput-object v0, p0, Lcom/android/server/am/BatteryHistory;->mHandler:Landroid/os/Handler;

    .line 78
    iput-object p1, p0, Lcom/android/server/am/BatteryHistory;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 79
    iput-object p2, p0, Lcom/android/server/am/BatteryHistory;->mContext:Landroid/content/Context;

    .line 77
    return-void
.end method

.method private addToWarnningList(I)V
    .locals 7
    .param p1, "uid"    # I

    .prologue
    const/4 v6, 0x0

    .line 364
    const-string/jumbo v2, "appName"

    .line 365
    .local v2, "result":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/am/BatteryHistory;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 366
    .local v1, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 367
    .local v0, "packages":[Ljava/lang/String;
    if-nez v0, :cond_0

    .line 368
    return-void

    .line 370
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/BatteryHistory;->mDefaultInputMethod:Ljava/lang/String;

    aget-object v4, v0, v6

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 371
    iget-object v3, p0, Lcom/android/server/am/BatteryHistory;->mWarnningInfo:Ljava/util/ArrayList;

    aget-object v4, v0, v6

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 363
    :goto_0
    return-void

    .line 374
    :cond_1
    const-string/jumbo v3, "BatteryHistory"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "addToWarnningList: the package is inputmethod = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v0, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private clearWarnningList()V
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/android/server/am/BatteryHistory;->mWarnningInfo:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/android/server/am/BatteryHistory;->mWarnningInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 357
    :cond_0
    return-void
.end method

.method private getApplicationName(I)Ljava/lang/String;
    .locals 7
    .param p1, "uid"    # I

    .prologue
    .line 400
    const-string/jumbo v4, "appName"

    .line 401
    .local v4, "result":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/am/BatteryHistory;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 402
    .local v3, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v3, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    .line 403
    .local v2, "packages":[Ljava/lang/String;
    if-nez v2, :cond_0

    .line 404
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 405
    return-object v4

    .line 408
    :cond_0
    const/4 v0, 0x0

    .line 410
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    const/4 v5, 0x0

    :try_start_0
    aget-object v5, v2, v5

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 411
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_1

    .line 412
    invoke-virtual {v0, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 416
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_1
    :goto_0
    return-object v4

    .line 414
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method private getBatteryHistoryLocked(Lcom/android/internal/os/BatteryStatsImpl;)V
    .locals 58
    .param p1, "stats"    # Lcom/android/internal/os/BatteryStatsImpl;

    .prologue
    .line 100
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/BatteryHistory;->clearWarnningList()V

    .line 102
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const-wide/16 v56, 0x3e8

    mul-long v34, v4, v56

    .line 103
    .local v34, "rawUptime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v56, 0x3e8

    mul-long v32, v4, v56

    .line 104
    .local v32, "rawRealtime":J
    move-object/from16 v0, p1

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl;->getBatteryUptime(J)J

    move-result-wide v14

    .line 106
    .local v14, "batteryUptime":J
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStats()Landroid/util/SparseArray;

    move-result-object v51

    .line 107
    .local v51, "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    invoke-virtual/range {v51 .. v51}, Landroid/util/SparseArray;->size()I

    move-result v11

    .line 108
    .local v11, "NU":I
    const/16 v17, 0x0

    .line 109
    .local v17, "currentUid":I
    const/16 v28, 0x0

    .local v28, "iu":I
    :goto_0
    move/from16 v0, v28

    if-ge v0, v11, :cond_11

    .line 110
    move-object/from16 v0, v51

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Landroid/os/BatteryStats$Uid;

    .line 111
    .local v50, "u":Landroid/os/BatteryStats$Uid;
    invoke-virtual/range {v50 .. v50}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v17

    .line 113
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    move/from16 v0, v17

    invoke-interface {v4, v0}, Landroid/content/pm/IPackageManager;->getFlagsForUid(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_0

    .line 115
    const/16 v4, 0x2710

    move/from16 v0, v17

    if-ge v0, v4, :cond_1

    .line 109
    :cond_0
    :goto_1
    add-int/lit8 v28, v28, 0x1

    goto :goto_0

    .line 119
    :catch_0
    move-exception v18

    .line 120
    .local v18, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "BatteryHistory"

    invoke-virtual/range {v18 .. v18}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    .end local v18    # "e":Landroid/os/RemoteException;
    :cond_1
    const-string/jumbo v4, "BatteryHistory"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Current app:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/am/BatteryHistory;->getPackageName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " Uid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/BatteryHistory;->mBatteryHistoryInfos:Ljava/util/HashMap;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/server/am/BatteryHistory$HistoryInfo;

    .line 127
    .local v25, "historyInfo":Lcom/android/server/am/BatteryHistory$HistoryInfo;
    if-nez v25, :cond_2

    .line 128
    new-instance v25, Lcom/android/server/am/BatteryHistory$HistoryInfo;

    .end local v25    # "historyInfo":Lcom/android/server/am/BatteryHistory$HistoryInfo;
    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/am/BatteryHistory$HistoryInfo;-><init>(Lcom/android/server/am/BatteryHistory;)V

    .line 129
    .restart local v25    # "historyInfo":Lcom/android/server/am/BatteryHistory$HistoryInfo;
    move/from16 v0, v17

    move-object/from16 v1, v25

    iput v0, v1, Lcom/android/server/am/BatteryHistory$HistoryInfo;->mUid:I

    .line 131
    const-string/jumbo v4, "BatteryHistory"

    const-string/jumbo v5, "new app info add to history!"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_2
    const/4 v4, 0x2

    move-object/from16 v0, v50

    invoke-virtual {v0, v4}, Landroid/os/BatteryStats$Uid;->getUserCpuTimeUs(I)J

    move-result-wide v42

    .line 136
    .local v42, "totalCpu":J
    invoke-virtual/range {v50 .. v50}, Landroid/os/BatteryStats$Uid;->getForegroundActivityTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v16

    .line 137
    .local v16, "cpuTimer":Landroid/os/BatteryStats$Timer;
    if-eqz v16, :cond_4

    .line 138
    const/4 v4, 0x2

    move-object/from16 v0, v16

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2, v4}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v4

    const-wide/16 v56, 0x1f4

    add-long v4, v4, v56

    const-wide/16 v56, 0x3e8

    div-long v22, v4, v56

    .line 139
    .local v22, "foregroundCpu":J
    move-object/from16 v0, v25

    iget-wide v4, v0, Lcom/android/server/am/BatteryHistory$HistoryInfo;->mTotalCpuTime:J

    const-wide/16 v56, 0x0

    cmp-long v4, v4, v56

    if-nez v4, :cond_3

    .line 140
    move-wide/from16 v0, v42

    move-object/from16 v2, v25

    iput-wide v0, v2, Lcom/android/server/am/BatteryHistory$HistoryInfo;->mTotalCpuTime:J

    .line 141
    move-wide/from16 v0, v22

    move-object/from16 v2, v25

    iput-wide v0, v2, Lcom/android/server/am/BatteryHistory$HistoryInfo;->mForegroundActiveTime:J

    .line 144
    :cond_3
    const-string/jumbo v4, "BatteryHistory"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "|---CPU total time:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v42

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const-string/jumbo v4, "BatteryHistory"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "|---CPU foreground time:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v22

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    .end local v22    # "foregroundCpu":J
    :cond_4
    invoke-virtual/range {v50 .. v50}, Landroid/os/BatteryStats$Uid;->getPackageStats()Landroid/util/ArrayMap;

    move-result-object v30

    .line 153
    .local v30, "packageStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    invoke-interface/range {v30 .. v30}, Ljava/util/Map;->size()I

    move-result v4

    if-lez v4, :cond_8

    .line 155
    const-string/jumbo v4, "BatteryHistory"

    const-string/jumbo v5, "|wakeup alarms:"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-interface/range {v30 .. v30}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .local v21, "ent$iterator":Ljava/util/Iterator;
    :cond_5
    :goto_2
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/Map$Entry;

    .line 158
    .local v19, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/os/BatteryStats$Uid$Pkg;

    .line 159
    .local v31, "ps":Landroid/os/BatteryStats$Uid$Pkg;
    const/16 v53, 0x0

    .line 161
    .local v53, "wakeups":I
    invoke-virtual/range {v31 .. v31}, Landroid/os/BatteryStats$Uid$Pkg;->getWakeupAlarmStats()Landroid/util/ArrayMap;

    move-result-object v12

    .line 162
    .local v12, "alarms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Counter;>;"
    invoke-virtual {v12}, Landroid/util/ArrayMap;->size()I

    move-result v4

    add-int/lit8 v29, v4, -0x1

    .local v29, "iwa":I
    :goto_3
    if-ltz v29, :cond_6

    .line 163
    move/from16 v0, v29

    invoke-virtual {v12, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/BatteryStats$Counter;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    move-result v4

    add-int v53, v53, v4

    .line 162
    add-int/lit8 v29, v29, -0x1

    goto :goto_3

    .line 167
    :cond_6
    if-eqz v53, :cond_5

    .line 169
    const-string/jumbo v5, "BatteryHistory"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "|---wakeup source:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const-string/jumbo v4, "BatteryHistory"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "|---wakeups:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v53

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/android/server/am/BatteryHistory$HistoryInfo;->mWakeupInfo:Lcom/android/server/am/BatteryHistory$WakeupInfo;

    iget v4, v4, Lcom/android/server/am/BatteryHistory$WakeupInfo;->mWakeupCounts:I

    if-eqz v4, :cond_7

    .line 173
    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/android/server/am/BatteryHistory$HistoryInfo;->mWakeupInfo:Lcom/android/server/am/BatteryHistory$WakeupInfo;

    iget v4, v4, Lcom/android/server/am/BatteryHistory$WakeupInfo;->mWakeupCounts:I

    sub-int v4, v53, v4

    const/4 v5, 0x3

    if-lt v4, v5, :cond_7

    .line 174
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/am/BatteryHistory;->addToWarnningList(I)V

    .line 178
    :cond_7
    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/android/server/am/BatteryHistory$HistoryInfo;->mWakeupInfo:Lcom/android/server/am/BatteryHistory$WakeupInfo;

    move/from16 v0, v53

    iput v0, v4, Lcom/android/server/am/BatteryHistory$WakeupInfo;->mWakeupCounts:I

    goto/16 :goto_2

    .line 185
    .end local v12    # "alarms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Counter;>;"
    .end local v19    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    .end local v21    # "ent$iterator":Ljava/util/Iterator;
    .end local v29    # "iwa":I
    .end local v31    # "ps":Landroid/os/BatteryStats$Uid$Pkg;
    .end local v53    # "wakeups":I
    :cond_8
    new-instance v41, Ljava/util/ArrayList;

    invoke-direct/range {v41 .. v41}, Ljava/util/ArrayList;-><init>()V

    .line 186
    .local v41, "timers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    invoke-virtual/range {v50 .. v50}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Landroid/util/ArrayMap;

    move-result-object v52

    .line 187
    .local v52, "wakelocks":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    invoke-interface/range {v52 .. v52}, Ljava/util/Map;->size()I

    move-result v4

    if-lez v4, :cond_a

    .line 189
    const-string/jumbo v4, "BatteryHistory"

    const-string/jumbo v5, "|wake locks:"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-interface/range {v52 .. v52}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    .line 191
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .restart local v21    # "ent$iterator":Ljava/util/Iterator;
    :cond_9
    :goto_4
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/Map$Entry;

    .line 193
    .local v20, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    invoke-interface/range {v20 .. v20}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v54

    check-cast v54, Landroid/os/BatteryStats$Uid$Wakelock;

    .line 194
    .local v54, "wl":Landroid/os/BatteryStats$Uid$Wakelock;
    const/4 v4, 0x0

    move-object/from16 v0, v54

    invoke-virtual {v0, v4}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v7

    .line 195
    .local v7, "partialWakeTimer":Landroid/os/BatteryStats$Timer;
    if-eqz v7, :cond_9

    .line 197
    const/4 v4, 0x2

    .line 196
    move-wide/from16 v0, v32

    invoke-virtual {v7, v0, v1, v4}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v8

    .line 198
    .local v8, "totalTimeMicros":J
    const-wide/16 v4, 0x0

    cmp-long v4, v8, v4

    if-lez v4, :cond_9

    .line 199
    new-instance v4, Landroid/os/BatteryStats$TimerEntry;

    invoke-interface/range {v20 .. v20}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual/range {v50 .. v50}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v6

    invoke-direct/range {v4 .. v9}, Landroid/os/BatteryStats$TimerEntry;-><init>(Ljava/lang/String;ILandroid/os/BatteryStats$Timer;J)V

    move-object/from16 v0, v41

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 206
    .end local v7    # "partialWakeTimer":Landroid/os/BatteryStats$Timer;
    .end local v8    # "totalTimeMicros":J
    .end local v20    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .end local v21    # "ent$iterator":Ljava/util/Iterator;
    .end local v54    # "wl":Landroid/os/BatteryStats$Uid$Wakelock;
    :cond_a
    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/android/server/am/BatteryHistory$HistoryInfo;->mWakeLockInfo:Lcom/android/server/am/BatteryHistory$WakeLockInfo;

    iget-wide v0, v4, Lcom/android/server/am/BatteryHistory$WakeLockInfo;->mWakeLockTotalTimeMs:J

    move-wide/from16 v46, v0

    .line 207
    .local v46, "totalTime":J
    invoke-virtual/range {v41 .. v41}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_e

    .line 208
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/BatteryHistory;->timerComparator:Ljava/util/Comparator;

    move-object/from16 v0, v41

    invoke-static {v0, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 209
    const/16 v26, 0x0

    .local v26, "i":I
    :goto_5
    invoke-virtual/range {v41 .. v41}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v26

    if-ge v0, v4, :cond_c

    .line 210
    move-object/from16 v0, v41

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Landroid/os/BatteryStats$TimerEntry;

    .line 211
    .local v40, "timer":Landroid/os/BatteryStats$TimerEntry;
    move-object/from16 v0, v40

    iget-object v4, v0, Landroid/os/BatteryStats$TimerEntry;->mTimer:Landroid/os/BatteryStats$Timer;

    .line 213
    const/4 v5, 0x2

    .line 211
    move-wide/from16 v0, v32

    invoke-static {v4, v0, v1, v5}, Landroid/os/BatteryStats;->computeWakeLockPiblic(Landroid/os/BatteryStats$Timer;JI)J

    move-result-wide v48

    .line 214
    .local v48, "totalTimeMillis":J
    move-object/from16 v0, v40

    iget-object v4, v0, Landroid/os/BatteryStats$TimerEntry;->mTimer:Landroid/os/BatteryStats$Timer;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v13

    .line 215
    .local v13, "count":I
    const-wide/16 v4, 0x0

    cmp-long v4, v48, v4

    if-eqz v4, :cond_b

    .line 217
    const-string/jumbo v4, "BatteryHistory"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "|---Wake lock TAG:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v40

    iget-object v6, v0, Landroid/os/BatteryStats$TimerEntry;->mName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " Uid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v40

    iget v6, v0, Landroid/os/BatteryStats$TimerEntry;->mId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    const-string/jumbo v4, "BatteryHistory"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "|---Total time:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v48

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "ms Count:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    add-long v46, v46, v48

    .line 209
    :cond_b
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_5

    .line 223
    .end local v13    # "count":I
    .end local v40    # "timer":Landroid/os/BatteryStats$TimerEntry;
    .end local v48    # "totalTimeMillis":J
    :cond_c
    invoke-virtual/range {v41 .. v41}, Ljava/util/ArrayList;->clear()V

    .line 224
    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/android/server/am/BatteryHistory$HistoryInfo;->mWakeLockInfo:Lcom/android/server/am/BatteryHistory$WakeLockInfo;

    iget-wide v4, v4, Lcom/android/server/am/BatteryHistory$WakeLockInfo;->mWakeLockTotalTimeMs:J

    sub-long v4, v46, v4

    const-wide/16 v56, 0x7530

    cmp-long v4, v4, v56

    if-ltz v4, :cond_d

    .line 227
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/am/BatteryHistory;->addToWarnningList(I)V

    .line 229
    :cond_d
    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/android/server/am/BatteryHistory$HistoryInfo;->mWakeLockInfo:Lcom/android/server/am/BatteryHistory$WakeLockInfo;

    move-wide/from16 v0, v46

    iput-wide v0, v4, Lcom/android/server/am/BatteryHistory$WakeLockInfo;->mWakeLockTotalTimeMs:J

    .line 234
    .end local v26    # "i":I
    :cond_e
    invoke-virtual/range {v50 .. v50}, Landroid/os/BatteryStats$Uid;->getSensorStats()Landroid/util/SparseArray;

    move-result-object v38

    .line 235
    .local v38, "sensors":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    invoke-virtual/range {v38 .. v38}, Landroid/util/SparseArray;->size()I

    move-result v10

    .line 236
    .local v10, "NSE":I
    const/16 v27, 0x0

    .local v27, "ise":I
    :goto_6
    move/from16 v0, v27

    if-ge v0, v10, :cond_10

    .line 237
    move-object/from16 v0, v38

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/os/BatteryStats$Uid$Sensor;

    .line 238
    .local v36, "se":Landroid/os/BatteryStats$Uid$Sensor;
    move-object/from16 v0, v38

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v37

    .line 239
    .local v37, "sensorNumber":I
    invoke-virtual/range {v36 .. v36}, Landroid/os/BatteryStats$Uid$Sensor;->getHandle()I

    move-result v24

    .line 240
    .local v24, "handle":I
    const/16 v4, -0x2710

    move/from16 v0, v24

    if-ne v0, v4, :cond_f

    .line 241
    invoke-virtual/range {v36 .. v36}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    move-result-object v39

    .line 242
    .local v39, "timer":Landroid/os/BatteryStats$Timer;
    if-eqz v39, :cond_f

    .line 245
    const/4 v4, 0x2

    .line 244
    move-object/from16 v0, v39

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2, v4}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v4

    .line 245
    const-wide/16 v56, 0x1f4

    .line 244
    add-long v4, v4, v56

    .line 245
    const-wide/16 v56, 0x3e8

    .line 244
    div-long v44, v4, v56

    .line 246
    .local v44, "totalGpsTime":J
    const/4 v4, 0x2

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v13

    .line 249
    .restart local v13    # "count":I
    const-string/jumbo v4, "BatteryHistory"

    const-string/jumbo v5, "|---GPS TAG:"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    const-string/jumbo v4, "BatteryHistory"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "|---Total time:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v44

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "ms Count:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    .end local v13    # "count":I
    .end local v39    # "timer":Landroid/os/BatteryStats$Timer;
    .end local v44    # "totalGpsTime":J
    :cond_f
    add-int/lit8 v27, v27, 0x1

    goto :goto_6

    .line 256
    .end local v24    # "handle":I
    .end local v36    # "se":Landroid/os/BatteryStats$Uid$Sensor;
    .end local v37    # "sensorNumber":I
    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/BatteryHistory;->mBatteryHistoryInfos:Ljava/util/HashMap;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 258
    .end local v10    # "NSE":I
    .end local v16    # "cpuTimer":Landroid/os/BatteryStats$Timer;
    .end local v25    # "historyInfo":Lcom/android/server/am/BatteryHistory$HistoryInfo;
    .end local v27    # "ise":I
    .end local v30    # "packageStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    .end local v38    # "sensors":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    .end local v41    # "timers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    .end local v42    # "totalCpu":J
    .end local v46    # "totalTime":J
    .end local v50    # "u":Landroid/os/BatteryStats$Uid;
    .end local v52    # "wakelocks":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    :cond_11
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/BatteryHistory;->showBatteryWarnning()V

    .line 99
    return-void
.end method

.method private getPackageName(I)Ljava/lang/String;
    .locals 4
    .param p1, "uid"    # I

    .prologue
    .line 389
    const-string/jumbo v2, "appName"

    .line 390
    .local v2, "result":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/am/BatteryHistory;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 391
    .local v1, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 392
    .local v0, "packages":[Ljava/lang/String;
    if-nez v0, :cond_0

    .line 393
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 394
    return-object v2

    .line 396
    :cond_0
    const/4 v3, 0x0

    aget-object v3, v0, v3

    return-object v3
.end method

.method private init()V
    .locals 4

    .prologue
    .line 453
    new-instance v2, Lcom/android/server/am/BatteryHistory$SettingsObserver;

    iget-object v3, p0, Lcom/android/server/am/BatteryHistory;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/am/BatteryHistory$SettingsObserver;-><init>(Lcom/android/server/am/BatteryHistory;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/server/am/BatteryHistory;->mSettingsObserver:Lcom/android/server/am/BatteryHistory$SettingsObserver;

    .line 454
    iget-object v2, p0, Lcom/android/server/am/BatteryHistory;->mSettingsObserver:Lcom/android/server/am/BatteryHistory$SettingsObserver;

    invoke-virtual {v2}, Lcom/android/server/am/BatteryHistory$SettingsObserver;->observe()V

    .line 455
    invoke-direct {p0}, Lcom/android/server/am/BatteryHistory;->updateSettings()V

    .line 456
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 457
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 458
    const-string/jumbo v2, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 459
    iget-object v2, p0, Lcom/android/server/am/BatteryHistory;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/am/BatteryHistory;->mCheckReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 452
    .local v1, "intent":Landroid/content/Intent;
    return-void
.end method

.method private showBatteryWarnning()V
    .locals 6

    .prologue
    .line 341
    iget-object v1, p0, Lcom/android/server/am/BatteryHistory;->mWarnningInfo:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 343
    .local v0, "size":I
    const-string/jumbo v1, "BatteryHistory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "warnning list size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    if-gtz v0, :cond_0

    .line 346
    return-void

    .line 348
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/BatteryHistory;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryHistory$4;

    invoke-direct {v2, p0}, Lcom/android/server/am/BatteryHistory$4;-><init>(Lcom/android/server/am/BatteryHistory;)V

    .line 354
    const-wide/16 v4, 0x3e8

    .line 348
    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 340
    return-void
.end method

.method private updateBatteryHistory()V
    .locals 3

    .prologue
    .line 88
    const-string/jumbo v1, "BatteryHistory"

    const-string/jumbo v2, "updateBatteryHistory enter"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v1, p0, Lcom/android/server/am/BatteryHistory;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {v1}, Lcom/android/server/am/BatteryStatsService;->getActiveStatistics()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v0

    .line 91
    .local v0, "stats":Lcom/android/internal/os/BatteryStatsImpl;
    monitor-enter v0

    .line 92
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/am/BatteryHistory;->getBatteryHistoryLocked(Lcom/android/internal/os/BatteryStatsImpl;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 95
    const-string/jumbo v1, "BatteryHistory"

    const-string/jumbo v2, "updateBatteryHistory exit"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    return-void

    .line 91
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private updateSettings()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 484
    iget-object v2, p0, Lcom/android/server/am/BatteryHistory;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 486
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v2, "end_button_behavior"

    .line 488
    const/4 v3, -0x2

    .line 485
    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v1, v2, :cond_0

    :goto_0
    iput-boolean v1, p0, Lcom/android/server/am/BatteryHistory;->mBatterySettingEnabled:Z

    .line 490
    iget-object v1, p0, Lcom/android/server/am/BatteryHistory;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 491
    const-string/jumbo v2, "default_input_method"

    .line 490
    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/BatteryHistory;->mDefaultInputMethod:Ljava/lang/String;

    .line 493
    const-string/jumbo v1, "BatteryHistory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateSettings::mDefaultInputMethod="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/BatteryHistory;->mDefaultInputMethod:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    return-void

    .line 485
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public finishBooting()V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/server/am/BatteryHistory;->init()V

    .line 82
    return-void
.end method
