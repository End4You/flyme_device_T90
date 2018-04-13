.class Lcom/android/server/policy/HmctPhoneWindowManager$4;
.super Ljava/lang/Object;
.source "HmctPhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/HmctPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/HmctPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/HmctPhoneWindowManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/HmctPhoneWindowManager;

    .prologue
    .line 2482
    iput-object p1, p0, Lcom/android/server/policy/HmctPhoneWindowManager$4;->this$0:Lcom/android/server/policy/HmctPhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 2486
    const-string/jumbo v5, "HmctWindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "burst mCameraRunnable  run  mIQrservice = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/policy/HmctPhoneWindowManager$4;->this$0:Lcom/android/server/policy/HmctPhoneWindowManager;

    invoke-static {v7}, Lcom/android/server/policy/HmctPhoneWindowManager;->-get8(Lcom/android/server/policy/HmctPhoneWindowManager;)Lcom/android/camera/SnapshotService;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2488
    const-wide/16 v6, 0x32

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2492
    :goto_0
    iget-object v5, p0, Lcom/android/server/policy/HmctPhoneWindowManager$4;->this$0:Lcom/android/server/policy/HmctPhoneWindowManager;

    invoke-static {v5}, Lcom/android/server/policy/HmctPhoneWindowManager;->-get10(Lcom/android/server/policy/HmctPhoneWindowManager;)Lcom/android/server/policy/HmctPhoneWindowManager$ProximitySensor;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/policy/HmctPhoneWindowManager$ProximitySensor;->-wrap0(Lcom/android/server/policy/HmctPhoneWindowManager$ProximitySensor;)V

    .line 2493
    const-string/jumbo v5, "HmctWindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "burst mCameraRunnable run isNear: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/policy/HmctPhoneWindowManager$4;->this$0:Lcom/android/server/policy/HmctPhoneWindowManager;

    invoke-static {v7}, Lcom/android/server/policy/HmctPhoneWindowManager;->-get2(Lcom/android/server/policy/HmctPhoneWindowManager;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2494
    iget-object v5, p0, Lcom/android/server/policy/HmctPhoneWindowManager$4;->this$0:Lcom/android/server/policy/HmctPhoneWindowManager;

    invoke-static {v5}, Lcom/android/server/policy/HmctPhoneWindowManager;->-get2(Lcom/android/server/policy/HmctPhoneWindowManager;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/server/policy/HmctPhoneWindowManager$4;->this$0:Lcom/android/server/policy/HmctPhoneWindowManager;

    invoke-static {v5}, Lcom/android/server/policy/HmctPhoneWindowManager;->-get8(Lcom/android/server/policy/HmctPhoneWindowManager;)Lcom/android/camera/SnapshotService;

    move-result-object v5

    if-nez v5, :cond_1

    .line 2495
    :cond_0
    const-string/jumbo v5, "HmctWindowManager"

    const-string/jumbo v6, "burst mCameraRunnable unbindService"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2496
    iget-object v5, p0, Lcom/android/server/policy/HmctPhoneWindowManager$4;->this$0:Lcom/android/server/policy/HmctPhoneWindowManager;

    invoke-static {v5, v9}, Lcom/android/server/policy/HmctPhoneWindowManager;->-set7(Lcom/android/server/policy/HmctPhoneWindowManager;Z)Z

    .line 2497
    iget-object v5, p0, Lcom/android/server/policy/HmctPhoneWindowManager$4;->this$0:Lcom/android/server/policy/HmctPhoneWindowManager;

    invoke-static {v5}, Lcom/android/server/policy/HmctPhoneWindowManager;->-wrap3(Lcom/android/server/policy/HmctPhoneWindowManager;)V

    .line 2498
    iget-object v5, p0, Lcom/android/server/policy/HmctPhoneWindowManager$4;->this$0:Lcom/android/server/policy/HmctPhoneWindowManager;

    invoke-static {v5}, Lcom/android/server/policy/HmctPhoneWindowManager;->-wrap7(Lcom/android/server/policy/HmctPhoneWindowManager;)V

    .line 2499
    return-void

    .line 2489
    :catch_0
    move-exception v3

    .line 2490
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "HmctWindowManager"

    const-string/jumbo v6, "FL WARNING - there is sth wrong during sleep"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2503
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v5, "com.hmct.intent.BURSTCAPTURE"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2504
    .local v0, "bIntent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/server/policy/HmctPhoneWindowManager$4;->this$0:Lcom/android/server/policy/HmctPhoneWindowManager;

    iget-object v5, v5, Lcom/android/server/policy/HmctPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v5, v0, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2506
    const-string/jumbo v5, "HmctWindowManager"

    const-string/jumbo v6, "burst mCameraRunnable vibe first after broadcast"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2507
    iget-object v5, p0, Lcom/android/server/policy/HmctPhoneWindowManager$4;->this$0:Lcom/android/server/policy/HmctPhoneWindowManager;

    const v6, 0x31326

    invoke-virtual {v5, v8, v6, v9}, Lcom/android/server/policy/HmctPhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 2509
    const-string/jumbo v5, "HmctWindowManager"

    const-string/jumbo v6, "dc --openCamera"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2512
    :try_start_1
    iget-object v5, p0, Lcom/android/server/policy/HmctPhoneWindowManager$4;->this$0:Lcom/android/server/policy/HmctPhoneWindowManager;

    invoke-static {v5}, Lcom/android/server/policy/HmctPhoneWindowManager;->-get8(Lcom/android/server/policy/HmctPhoneWindowManager;)Lcom/android/camera/SnapshotService;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 2513
    iget-object v5, p0, Lcom/android/server/policy/HmctPhoneWindowManager$4;->this$0:Lcom/android/server/policy/HmctPhoneWindowManager;

    invoke-static {v5}, Lcom/android/server/policy/HmctPhoneWindowManager;->-get8(Lcom/android/server/policy/HmctPhoneWindowManager;)Lcom/android/camera/SnapshotService;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/camera/SnapshotService;->openCamera()V

    .line 2516
    :cond_2
    const/4 v1, 0x0

    .line 2517
    .local v1, "capture":I
    const/4 v4, 0x0

    .line 2519
    .local v4, "i":I
    :goto_1
    const/16 v5, 0x50

    if-ge v4, v5, :cond_3

    iget-object v5, p0, Lcom/android/server/policy/HmctPhoneWindowManager$4;->this$0:Lcom/android/server/policy/HmctPhoneWindowManager;

    invoke-static {v5}, Lcom/android/server/policy/HmctPhoneWindowManager;->-get8(Lcom/android/server/policy/HmctPhoneWindowManager;)Lcom/android/camera/SnapshotService;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 2520
    iget-object v5, p0, Lcom/android/server/policy/HmctPhoneWindowManager$4;->this$0:Lcom/android/server/policy/HmctPhoneWindowManager;

    invoke-static {v5}, Lcom/android/server/policy/HmctPhoneWindowManager;->-get8(Lcom/android/server/policy/HmctPhoneWindowManager;)Lcom/android/camera/SnapshotService;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/camera/SnapshotService;->getCaptureState()I

    move-result v1

    .line 2521
    const-string/jumbo v5, "HmctWindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "dc -- capture = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2522
    if-ne v1, v10, :cond_4

    .line 2536
    :cond_3
    iget-object v5, p0, Lcom/android/server/policy/HmctPhoneWindowManager$4;->this$0:Lcom/android/server/policy/HmctPhoneWindowManager;

    iget-object v5, v5, Lcom/android/server/policy/HmctPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroid/os/PowerManager;->wakeUp(J)V

    .line 2538
    iget-object v5, p0, Lcom/android/server/policy/HmctPhoneWindowManager$4;->this$0:Lcom/android/server/policy/HmctPhoneWindowManager;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/android/server/policy/HmctPhoneWindowManager;->-set7(Lcom/android/server/policy/HmctPhoneWindowManager;Z)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    .line 2543
    .end local v1    # "capture":I
    .end local v4    # "i":I
    :goto_2
    iget-object v5, p0, Lcom/android/server/policy/HmctPhoneWindowManager$4;->this$0:Lcom/android/server/policy/HmctPhoneWindowManager;

    invoke-static {v5}, Lcom/android/server/policy/HmctPhoneWindowManager;->-wrap3(Lcom/android/server/policy/HmctPhoneWindowManager;)V

    .line 2484
    return-void

    .line 2526
    .restart local v1    # "capture":I
    .restart local v4    # "i":I
    :cond_4
    const-wide/16 v6, 0x32

    :try_start_2
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 2530
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2527
    :catch_1
    move-exception v3

    .line 2528
    .restart local v3    # "e":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v5, "HmctWindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "dc -- sleep = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    .line 2539
    .end local v1    # "capture":I
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "i":I
    :catch_2
    move-exception v2

    .line 2540
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "HmctWindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "dc -- RemoteException = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2541
    iget-object v5, p0, Lcom/android/server/policy/HmctPhoneWindowManager$4;->this$0:Lcom/android/server/policy/HmctPhoneWindowManager;

    invoke-static {v5, v8}, Lcom/android/server/policy/HmctPhoneWindowManager;->-set5(Lcom/android/server/policy/HmctPhoneWindowManager;Lcom/android/camera/SnapshotService;)Lcom/android/camera/SnapshotService;

    goto :goto_2
.end method
