.class public Lcom/android/server/am/BatteryHistory$WakeLockInfo;
.super Ljava/lang/Object;
.source "BatteryHistory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/BatteryHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WakeLockInfo"
.end annotation


# instance fields
.field public mWakeLockCounts:I

.field public mWakeLockTotalTimeMs:J

.field final synthetic this$0:Lcom/android/server/am/BatteryHistory;


# direct methods
.method public constructor <init>(Lcom/android/server/am/BatteryHistory;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/am/BatteryHistory;

    .prologue
    .line 444
    iput-object p1, p0, Lcom/android/server/am/BatteryHistory$WakeLockInfo;->this$0:Lcom/android/server/am/BatteryHistory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 445
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/BatteryHistory$WakeLockInfo;->mWakeLockCounts:I

    .line 446
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/BatteryHistory$WakeLockInfo;->mWakeLockTotalTimeMs:J

    .line 444
    return-void
.end method
