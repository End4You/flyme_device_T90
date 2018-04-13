.class Lcom/android/server/am/BatteryHistory$2$1;
.super Ljava/lang/Object;
.source "BatteryHistory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/BatteryHistory$2;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/am/BatteryHistory$2;


# direct methods
.method constructor <init>(Lcom/android/server/am/BatteryHistory$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/am/BatteryHistory$2;

    .prologue
    .line 312
    iput-object p1, p0, Lcom/android/server/am/BatteryHistory$2$1;->this$1:Lcom/android/server/am/BatteryHistory$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 315
    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/BatteryHistory$2$1;->this$1:Lcom/android/server/am/BatteryHistory$2;

    iget-object v1, v1, Lcom/android/server/am/BatteryHistory$2;->this$0:Lcom/android/server/am/BatteryHistory;

    invoke-static {v1}, Lcom/android/server/am/BatteryHistory;->-wrap0(Lcom/android/server/am/BatteryHistory;)V

    .line 313
    return-void

    .line 316
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_0
.end method
