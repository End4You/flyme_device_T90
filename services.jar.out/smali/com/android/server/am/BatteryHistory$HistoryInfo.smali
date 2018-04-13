.class public Lcom/android/server/am/BatteryHistory$HistoryInfo;
.super Ljava/lang/Object;
.source "BatteryHistory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/BatteryHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HistoryInfo"
.end annotation


# instance fields
.field public mForegroundActiveTime:J

.field public mGpsUsageTime:J

.field public mTotalCpuTime:J

.field public mUid:I

.field public mWakeLockInfo:Lcom/android/server/am/BatteryHistory$WakeLockInfo;

.field public mWakeupInfo:Lcom/android/server/am/BatteryHistory$WakeupInfo;

.field final synthetic this$0:Lcom/android/server/am/BatteryHistory;


# direct methods
.method public constructor <init>(Lcom/android/server/am/BatteryHistory;)V
    .locals 4
    .param p1, "this$0"    # Lcom/android/server/am/BatteryHistory;

    .prologue
    const-wide/16 v2, 0x0

    .line 419
    iput-object p1, p0, Lcom/android/server/am/BatteryHistory$HistoryInfo;->this$0:Lcom/android/server/am/BatteryHistory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 420
    new-instance v0, Lcom/android/server/am/BatteryHistory$WakeupInfo;

    invoke-direct {v0, p1}, Lcom/android/server/am/BatteryHistory$WakeupInfo;-><init>(Lcom/android/server/am/BatteryHistory;)V

    iput-object v0, p0, Lcom/android/server/am/BatteryHistory$HistoryInfo;->mWakeupInfo:Lcom/android/server/am/BatteryHistory$WakeupInfo;

    .line 421
    new-instance v0, Lcom/android/server/am/BatteryHistory$WakeLockInfo;

    invoke-direct {v0, p1}, Lcom/android/server/am/BatteryHistory$WakeLockInfo;-><init>(Lcom/android/server/am/BatteryHistory;)V

    iput-object v0, p0, Lcom/android/server/am/BatteryHistory$HistoryInfo;->mWakeLockInfo:Lcom/android/server/am/BatteryHistory$WakeLockInfo;

    .line 422
    iput-wide v2, p0, Lcom/android/server/am/BatteryHistory$HistoryInfo;->mTotalCpuTime:J

    .line 423
    iput-wide v2, p0, Lcom/android/server/am/BatteryHistory$HistoryInfo;->mForegroundActiveTime:J

    .line 424
    iput-wide v2, p0, Lcom/android/server/am/BatteryHistory$HistoryInfo;->mGpsUsageTime:J

    .line 419
    return-void
.end method
