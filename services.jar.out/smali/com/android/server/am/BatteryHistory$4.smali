.class Lcom/android/server/am/BatteryHistory$4;
.super Ljava/lang/Object;
.source "BatteryHistory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/BatteryHistory;->showBatteryWarnning()V
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
    .line 348
    iput-object p1, p0, Lcom/android/server/am/BatteryHistory$4;->this$0:Lcom/android/server/am/BatteryHistory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 350
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.powermanager.notifyremind"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 351
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "apps"

    iget-object v1, p0, Lcom/android/server/am/BatteryHistory$4;->this$0:Lcom/android/server/am/BatteryHistory;

    invoke-static {v1}, Lcom/android/server/am/BatteryHistory;->-get7(Lcom/android/server/am/BatteryHistory;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/am/BatteryHistory$4;->this$0:Lcom/android/server/am/BatteryHistory;

    invoke-static {v3}, Lcom/android/server/am/BatteryHistory;->-get7(Lcom/android/server/am/BatteryHistory;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 352
    iget-object v1, p0, Lcom/android/server/am/BatteryHistory$4;->this$0:Lcom/android/server/am/BatteryHistory;

    invoke-static {v1}, Lcom/android/server/am/BatteryHistory;->-get2(Lcom/android/server/am/BatteryHistory;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 349
    return-void
.end method
