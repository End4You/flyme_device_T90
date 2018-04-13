.class Lcom/android/server/policy/HmctPhoneWindowManager$6;
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
    .line 2638
    iput-object p1, p0, Lcom/android/server/policy/HmctPhoneWindowManager$6;->this$0:Lcom/android/server/policy/HmctPhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 2641
    const-string/jumbo v4, "HmctWindowManager"

    const-string/jumbo v5, "burst mUnbindIQServiceRunnable unbindService"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2642
    const/4 v1, 0x0

    .line 2643
    .local v1, "count":I
    const/4 v0, 0x0

    .line 2645
    .local v0, "capture":I
    :goto_0
    const/16 v4, 0x28

    if-ge v1, v4, :cond_0

    .line 2646
    :try_start_0
    iget-object v4, p0, Lcom/android/server/policy/HmctPhoneWindowManager$6;->this$0:Lcom/android/server/policy/HmctPhoneWindowManager;

    invoke-static {v4}, Lcom/android/server/policy/HmctPhoneWindowManager;->-get8(Lcom/android/server/policy/HmctPhoneWindowManager;)Lcom/android/camera/SnapshotService;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/SnapshotService;->getCaptureState()I

    move-result v0

    .line 2647
    const-string/jumbo v4, "HmctWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "burst wait new state : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2648
    const/4 v4, 0x6

    if-ne v0, v4, :cond_1

    .line 2658
    :cond_0
    iget-object v4, p0, Lcom/android/server/policy/HmctPhoneWindowManager$6;->this$0:Lcom/android/server/policy/HmctPhoneWindowManager;

    invoke-static {v4}, Lcom/android/server/policy/HmctPhoneWindowManager;->-wrap7(Lcom/android/server/policy/HmctPhoneWindowManager;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2640
    :goto_1
    return-void

    .line 2652
    :cond_1
    const-wide/16 v4, 0x32

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2656
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2653
    :catch_0
    move-exception v2

    .line 2654
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v4, "HmctWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "burst wait sleep = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 2659
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 2660
    .local v3, "ex":Ljava/lang/Exception;
    const-string/jumbo v4, "HmctWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "burst mUnbindIQServiceRunnable Failed for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
