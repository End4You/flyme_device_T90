.class public Lcom/android/server/am/BatteryHistory$WakeupInfo;
.super Ljava/lang/Object;
.source "BatteryHistory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/BatteryHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WakeupInfo"
.end annotation


# instance fields
.field public mWakeupCounts:I

.field public mWakeupTotalTimeMs:J

.field final synthetic this$0:Lcom/android/server/am/BatteryHistory;


# direct methods
.method public constructor <init>(Lcom/android/server/am/BatteryHistory;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/am/BatteryHistory;

    .prologue
    .line 435
    iput-object p1, p0, Lcom/android/server/am/BatteryHistory$WakeupInfo;->this$0:Lcom/android/server/am/BatteryHistory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 436
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/BatteryHistory$WakeupInfo;->mWakeupCounts:I

    .line 437
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/BatteryHistory$WakeupInfo;->mWakeupTotalTimeMs:J

    .line 435
    return-void
.end method
