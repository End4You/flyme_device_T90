.class Lcom/android/server/wifi/WifiController$ApStaEnabledState;
.super Lcom/android/internal/util/State;
.source "WifiController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ApStaEnabledState"
.end annotation


# instance fields
.field private mDeferredEnableSerialNumber:I

.field private mDisabledTimestamp:J

.field private mHaveDeferredEnable:Z

.field private mPendingState:Lcom/android/internal/util/State;

.field final synthetic this$0:Lcom/android/server/wifi/WifiController;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiController;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiController;

    .prologue
    const/4 v1, 0x0

    .line 543
    iput-object p1, p0, Lcom/android/server/wifi/WifiController$ApStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    .line 544
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/WifiController$ApStaEnabledState;->mPendingState:Lcom/android/internal/util/State;

    .line 545
    iput v1, p0, Lcom/android/server/wifi/WifiController$ApStaEnabledState;->mDeferredEnableSerialNumber:I

    .line 546
    iput-boolean v1, p0, Lcom/android/server/wifi/WifiController$ApStaEnabledState;->mHaveDeferredEnable:Z

    .line 543
    return-void
.end method

.method private doDeferEnable(Landroid/os/Message;)Z
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 609
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/wifi/WifiController$ApStaEnabledState;->mDisabledTimestamp:J

    sub-long v2, v4, v6

    .line 610
    .local v2, "delaySoFar":J
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->-get14(Lcom/android/server/wifi/WifiController;)J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    .line 611
    const/4 v1, 0x0

    return v1

    .line 614
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "WifiController msg "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " deferred for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 615
    iget-object v5, p0, Lcom/android/server/wifi/WifiController$ApStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v5}, Lcom/android/server/wifi/WifiController;->-get14(Lcom/android/server/wifi/WifiController;)J

    move-result-wide v6

    sub-long/2addr v6, v2

    .line 614
    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 615
    const-string/jumbo v5, "ms"

    .line 614
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/server/wifi/WifiController;->-wrap3(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    .line 618
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    const v4, 0x2600b

    invoke-virtual {v1, v4}, Lcom/android/server/wifi/WifiController;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 619
    .local v0, "deferredMsg":Landroid/os/Message;
    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 620
    iget v1, p0, Lcom/android/server/wifi/WifiController$ApStaEnabledState;->mDeferredEnableSerialNumber:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/wifi/WifiController$ApStaEnabledState;->mDeferredEnableSerialNumber:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 621
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v4, p0, Lcom/android/server/wifi/WifiController$ApStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v4}, Lcom/android/server/wifi/WifiController;->-get14(Lcom/android/server/wifi/WifiController;)J

    move-result-wide v4

    sub-long/2addr v4, v2

    const-wide/16 v6, 0x5

    add-long/2addr v4, v6

    invoke-virtual {v1, v0, v4, v5}, Lcom/android/server/wifi/WifiController;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 622
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 551
    invoke-static {}, Lcom/android/server/wifi/WifiController;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 552
    const-string/jumbo v0, "WifiController"

    const-string/jumbo v1, "ApStaEnabledState enter"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    :cond_0
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 558
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 605
    :cond_0
    :goto_0
    :pswitch_0
    return v1

    .line 560
    :pswitch_1
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v1, :cond_2

    .line 561
    invoke-static {}, Lcom/android/server/wifi/WifiController;->-get0()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 562
    const-string/jumbo v0, "WifiController"

    const-string/jumbo v2, "ApStaEnabledState CMD_SET_AP setHostApRunning true"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->-get16(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/SoftApStateMachine;

    move-result-object v2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/wifi/SoftApStateMachine;->setHostApRunning(Landroid/net/wifi/WifiConfiguration;Z)V

    goto :goto_0

    .line 567
    :cond_2
    invoke-static {}, Lcom/android/server/wifi/WifiController;->-get0()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 568
    const-string/jumbo v2, "WifiController"

    const-string/jumbo v3, "ApStaEnabledState CMD_SET_AP setHostApRunning false"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    :cond_3
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v2}, Lcom/android/server/wifi/WifiController;->-get16(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/SoftApStateMachine;

    move-result-object v2

    invoke-virtual {v2, v4, v0}, Lcom/android/server/wifi/SoftApStateMachine;->setHostApRunning(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 571
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v2}, Lcom/android/server/wifi/WifiController;->-get19(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$StaEnabledState;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiController;->-wrap9(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 575
    :pswitch_2
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v2, v2, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiSettingsStore;->isWifiToggleEnabled()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 576
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiController$ApStaEnabledState;->doDeferEnable(Landroid/os/Message;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 577
    iget-boolean v2, p0, Lcom/android/server/wifi/WifiController$ApStaEnabledState;->mHaveDeferredEnable:Z

    if-eqz v2, :cond_4

    .line 579
    iget v2, p0, Lcom/android/server/wifi/WifiController$ApStaEnabledState;->mDeferredEnableSerialNumber:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/wifi/WifiController$ApStaEnabledState;->mDeferredEnableSerialNumber:I

    .line 581
    :cond_4
    iget-boolean v2, p0, Lcom/android/server/wifi/WifiController$ApStaEnabledState;->mHaveDeferredEnable:Z

    if-eqz v2, :cond_5

    :goto_1
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiController$ApStaEnabledState;->mHaveDeferredEnable:Z

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_1

    .line 584
    :cond_6
    invoke-static {}, Lcom/android/server/wifi/WifiController;->-get0()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 585
    const-string/jumbo v0, "WifiController"

    const-string/jumbo v2, "ApStaEnabledState CMD_WIFI_TOGGLED setSupplicantRunning true"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    :cond_7
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v0, v0, Lcom/android/server/wifi/WifiController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->setSupplicantRunning(Z)V

    goto :goto_0

    .line 589
    :cond_8
    invoke-static {}, Lcom/android/server/wifi/WifiController;->-get0()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 590
    const-string/jumbo v2, "WifiController"

    const-string/jumbo v3, "ApStaEnabledState CMD_WIFI_TOGGLED setSupplicantRunning false"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    :cond_9
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v2, v2, Lcom/android/server/wifi/WifiController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v2, v0}, Lcom/android/server/wifi/WifiStateMachine;->setSupplicantRunning(Z)V

    .line 593
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v2}, Lcom/android/server/wifi/WifiController;->-get2(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$ApEnabledState;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiController;->-wrap9(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 597
    :pswitch_3
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v2}, Lcom/android/server/wifi/WifiController;->-get16(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/SoftApStateMachine;

    move-result-object v2

    invoke-virtual {v2, v4, v0}, Lcom/android/server/wifi/SoftApStateMachine;->setHostApRunning(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 598
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->-get3(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$ApStaDisabledState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiController$ApStaEnabledState;->mPendingState:Lcom/android/internal/util/State;

    goto/16 :goto_0

    .line 601
    :pswitch_4
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApStaEnabledState;->mPendingState:Lcom/android/internal/util/State;

    if-eqz v0, :cond_0

    .line 602
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApStaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApStaEnabledState;->mPendingState:Lcom/android/internal/util/State;

    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiController;->-wrap9(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 558
    nop

    :pswitch_data_0
    .packed-switch 0x26008
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
