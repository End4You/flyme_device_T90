.class Lcom/android/server/am/BatteryHistory$3;
.super Landroid/os/Handler;
.source "BatteryHistory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/BatteryHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/BatteryHistory;


# direct methods
.method constructor <init>(Lcom/android/server/am/BatteryHistory;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/BatteryHistory;

    .prologue
    .line 331
    iput-object p1, p0, Lcom/android/server/am/BatteryHistory$3;->this$0:Lcom/android/server/am/BatteryHistory;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 334
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 333
    :cond_0
    return-void
.end method
