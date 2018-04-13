.class public final Landroid/os/BatteryStats$TimerEntry;
.super Ljava/lang/Object;
.source "BatteryStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TimerEntry"
.end annotation


# instance fields
.field public final mId:I

.field public final mName:Ljava/lang/String;

.field public final mTime:J

.field public final mTimer:Landroid/os/BatteryStats$Timer;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILandroid/os/BatteryStats$Timer;J)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "timer"    # Landroid/os/BatteryStats$Timer;
    .param p4, "time"    # J

    .prologue
    .line 3417
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3418
    iput-object p1, p0, Landroid/os/BatteryStats$TimerEntry;->mName:Ljava/lang/String;

    .line 3419
    iput p2, p0, Landroid/os/BatteryStats$TimerEntry;->mId:I

    .line 3420
    iput-object p3, p0, Landroid/os/BatteryStats$TimerEntry;->mTimer:Landroid/os/BatteryStats$Timer;

    .line 3421
    iput-wide p4, p0, Landroid/os/BatteryStats$TimerEntry;->mTime:J

    .line 3417
    return-void
.end method
