.class Lcom/android/server/am/BatteryHistory$2;
.super Landroid/content/BroadcastReceiver;
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
    .line 276
    iput-object p1, p0, Lcom/android/server/am/BatteryHistory$2;->this$0:Lcom/android/server/am/BatteryHistory;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 279
    iget-object v4, p0, Lcom/android/server/am/BatteryHistory$2;->this$0:Lcom/android/server/am/BatteryHistory;

    invoke-static {v4}, Lcom/android/server/am/BatteryHistory;->-get1(Lcom/android/server/am/BatteryHistory;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 281
    const-string/jumbo v4, "BatteryHistory"

    const-string/jumbo v5, "battery history setting disabled"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    return-void

    .line 285
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 286
    .local v2, "t":J
    const-wide/16 v4, 0x7530

    cmp-long v4, v2, v4

    if-gez v4, :cond_1

    .line 288
    const-string/jumbo v4, "BatteryHistory"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "boot time is:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    return-void

    .line 292
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 293
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v4, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 294
    iget-object v4, p0, Lcom/android/server/am/BatteryHistory$2;->this$0:Lcom/android/server/am/BatteryHistory;

    const-string/jumbo v5, "level"

    const/4 v6, 0x0

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/server/am/BatteryHistory;->-set0(Lcom/android/server/am/BatteryHistory;I)I

    .line 298
    :cond_2
    :goto_0
    invoke-static {}, Lcom/android/server/am/BatteryHistory;->-get5()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 299
    iget-object v4, p0, Lcom/android/server/am/BatteryHistory$2;->this$0:Lcom/android/server/am/BatteryHistory;

    invoke-static {v4}, Lcom/android/server/am/BatteryHistory;->-get6(Lcom/android/server/am/BatteryHistory;)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/am/BatteryHistory$2;->this$0:Lcom/android/server/am/BatteryHistory;

    invoke-static {v5}, Lcom/android/server/am/BatteryHistory;->-get4(Lcom/android/server/am/BatteryHistory;)I

    move-result v5

    sub-int/2addr v4, v5

    const/4 v5, 0x5

    if-ge v4, v5, :cond_3

    .line 300
    iget-object v4, p0, Lcom/android/server/am/BatteryHistory$2;->this$0:Lcom/android/server/am/BatteryHistory;

    invoke-static {v4}, Lcom/android/server/am/BatteryHistory;->-get0(Lcom/android/server/am/BatteryHistory;)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/am/BatteryHistory$2;->this$0:Lcom/android/server/am/BatteryHistory;

    invoke-static {v5}, Lcom/android/server/am/BatteryHistory;->-get3(Lcom/android/server/am/BatteryHistory;)I

    move-result v5

    sub-int/2addr v4, v5

    const/4 v5, 0x1

    if-lt v4, v5, :cond_4

    .line 301
    :cond_3
    iget-object v4, p0, Lcom/android/server/am/BatteryHistory$2;->this$0:Lcom/android/server/am/BatteryHistory;

    iget-object v5, p0, Lcom/android/server/am/BatteryHistory$2;->this$0:Lcom/android/server/am/BatteryHistory;

    invoke-static {v5}, Lcom/android/server/am/BatteryHistory;->-get6(Lcom/android/server/am/BatteryHistory;)I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/server/am/BatteryHistory;->-set2(Lcom/android/server/am/BatteryHistory;I)I

    .line 302
    iget-object v4, p0, Lcom/android/server/am/BatteryHistory$2;->this$0:Lcom/android/server/am/BatteryHistory;

    iget-object v5, p0, Lcom/android/server/am/BatteryHistory$2;->this$0:Lcom/android/server/am/BatteryHistory;

    invoke-static {v5}, Lcom/android/server/am/BatteryHistory;->-get0(Lcom/android/server/am/BatteryHistory;)I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/server/am/BatteryHistory;->-set1(Lcom/android/server/am/BatteryHistory;I)I

    .line 304
    const-string/jumbo v4, "BatteryHistory"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Action="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 305
    const-string/jumbo v6, " battery level="

    .line 304
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 305
    iget-object v6, p0, Lcom/android/server/am/BatteryHistory$2;->this$0:Lcom/android/server/am/BatteryHistory;

    invoke-static {v6}, Lcom/android/server/am/BatteryHistory;->-get0(Lcom/android/server/am/BatteryHistory;)I

    move-result v6

    .line 304
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 306
    const-string/jumbo v6, " time tick count = "

    .line 304
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 306
    iget-object v6, p0, Lcom/android/server/am/BatteryHistory$2;->this$0:Lcom/android/server/am/BatteryHistory;

    invoke-static {v6}, Lcom/android/server/am/BatteryHistory;->-get6(Lcom/android/server/am/BatteryHistory;)I

    move-result v6

    .line 304
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 307
    const-string/jumbo v6, " check battery usage"

    .line 304
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    const-string/jumbo v4, "BatteryHistory"

    const-string/jumbo v5, "receiver enter"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    new-instance v1, Ljava/lang/Thread;

    new-instance v4, Lcom/android/server/am/BatteryHistory$2$1;

    invoke-direct {v4, p0}, Lcom/android/server/am/BatteryHistory$2$1;-><init>(Lcom/android/server/am/BatteryHistory$2;)V

    invoke-direct {v1, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 321
    .local v1, "checkThread":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 323
    const-string/jumbo v4, "BatteryHistory"

    const-string/jumbo v5, "receiver exit"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    .end local v1    # "checkThread":Ljava/lang/Thread;
    :cond_4
    return-void

    .line 295
    :cond_5
    const-string/jumbo v4, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 296
    iget-object v4, p0, Lcom/android/server/am/BatteryHistory$2;->this$0:Lcom/android/server/am/BatteryHistory;

    invoke-static {v4}, Lcom/android/server/am/BatteryHistory;->-get6(Lcom/android/server/am/BatteryHistory;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v4, v5}, Lcom/android/server/am/BatteryHistory;->-set3(Lcom/android/server/am/BatteryHistory;I)I

    goto/16 :goto_0
.end method
