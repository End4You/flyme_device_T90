.class Lcom/android/server/policy/HmctPhoneWindowManager$5;
.super Ljava/lang/Object;
.source "HmctPhoneWindowManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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
    .line 2547
    iput-object p1, p0, Lcom/android/server/policy/HmctPhoneWindowManager$5;->this$0:Lcom/android/server/policy/HmctPhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 2550
    const-string/jumbo v0, "HmctWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "dc --  onServiceConnected  run  mWaitForConnection : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/HmctPhoneWindowManager$5;->this$0:Lcom/android/server/policy/HmctPhoneWindowManager;

    invoke-static {v2}, Lcom/android/server/policy/HmctPhoneWindowManager;->-get12(Lcom/android/server/policy/HmctPhoneWindowManager;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2551
    iget-object v0, p0, Lcom/android/server/policy/HmctPhoneWindowManager$5;->this$0:Lcom/android/server/policy/HmctPhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/HmctPhoneWindowManager;->-get4(Lcom/android/server/policy/HmctPhoneWindowManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2552
    :try_start_0
    const-string/jumbo v0, "HmctWindowManager"

    const-string/jumbo v2, "dc --  onServiceConnected init mIQrservice"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2553
    iget-object v0, p0, Lcom/android/server/policy/HmctPhoneWindowManager$5;->this$0:Lcom/android/server/policy/HmctPhoneWindowManager;

    invoke-static {p2}, Lcom/android/camera/SnapshotService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/camera/SnapshotService;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/policy/HmctPhoneWindowManager;->-set5(Lcom/android/server/policy/HmctPhoneWindowManager;Lcom/android/camera/SnapshotService;)Lcom/android/camera/SnapshotService;

    .line 2554
    const-string/jumbo v0, "HmctWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "dc --  onServiceConnected  mIQrservice : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/policy/HmctPhoneWindowManager$5;->this$0:Lcom/android/server/policy/HmctPhoneWindowManager;

    invoke-static {v3}, Lcom/android/server/policy/HmctPhoneWindowManager;->-get8(Lcom/android/server/policy/HmctPhoneWindowManager;)Lcom/android/camera/SnapshotService;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 2557
    iget-object v0, p0, Lcom/android/server/policy/HmctPhoneWindowManager$5;->this$0:Lcom/android/server/policy/HmctPhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/HmctPhoneWindowManager;->mHmctHandler:Landroid/os/Handler;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2559
    iget-object v0, p0, Lcom/android/server/policy/HmctPhoneWindowManager$5;->this$0:Lcom/android/server/policy/HmctPhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/HmctPhoneWindowManager;->-get3(Lcom/android/server/policy/HmctPhoneWindowManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2560
    iget-object v0, p0, Lcom/android/server/policy/HmctPhoneWindowManager$5;->this$0:Lcom/android/server/policy/HmctPhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/HmctPhoneWindowManager;->-wrap7(Lcom/android/server/policy/HmctPhoneWindowManager;)V

    .line 2561
    return-void

    .line 2551
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 2564
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/HmctPhoneWindowManager$5;->this$0:Lcom/android/server/policy/HmctPhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/HmctPhoneWindowManager;->-get12(Lcom/android/server/policy/HmctPhoneWindowManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2565
    iget-object v0, p0, Lcom/android/server/policy/HmctPhoneWindowManager$5;->this$0:Lcom/android/server/policy/HmctPhoneWindowManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/policy/HmctPhoneWindowManager;->-set8(Lcom/android/server/policy/HmctPhoneWindowManager;Z)Z

    .line 2566
    const-string/jumbo v0, "HmctWindowManager"

    const-string/jumbo v1, "dc --  onServiceConnected  new thread  mCameraRunnable"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2567
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/server/policy/HmctPhoneWindowManager$5;->this$0:Lcom/android/server/policy/HmctPhoneWindowManager;

    invoke-static {v1}, Lcom/android/server/policy/HmctPhoneWindowManager;->-get5(Lcom/android/server/policy/HmctPhoneWindowManager;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2549
    :cond_1
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 2572
    iget-object v0, p0, Lcom/android/server/policy/HmctPhoneWindowManager$5;->this$0:Lcom/android/server/policy/HmctPhoneWindowManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/policy/HmctPhoneWindowManager;->-set5(Lcom/android/server/policy/HmctPhoneWindowManager;Lcom/android/camera/SnapshotService;)Lcom/android/camera/SnapshotService;

    .line 2573
    const-string/jumbo v0, "HmctWindowManager"

    const-string/jumbo v1, "dc --  onServiceDisconnected  Warning "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2571
    return-void
.end method
