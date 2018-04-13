.class public Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$IccPbHandler;
.super Landroid/os/Handler;
.source "IccPhoneBookInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "IccPbHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$IccPbHandler;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    .line 82
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 81
    return-void
.end method

.method private notifyPending(Landroid/os/AsyncResult;)V
    .locals 2
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 139
    iget-object v1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 140
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 141
    .local v0, "status":Ljava/util/concurrent/atomic/AtomicBoolean;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 143
    .end local v0    # "status":Ljava/util/concurrent/atomic/AtomicBoolean;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$IccPbHandler;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v1, v1, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 138
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 89
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 86
    :goto_0
    return-void

    .line 91
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 92
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$IccPbHandler;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v3, v2, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 93
    :try_start_0
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1

    .line 94
    iget-object v4, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$IccPbHandler;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    iput-object v2, v4, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mRecordSize:[I

    .line 98
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$IccPbHandler;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "GET_RECORD_SIZE Size "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$IccPbHandler;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v5, v5, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mRecordSize:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 99
    const-string/jumbo v5, " total "

    .line 98
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 99
    iget-object v5, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$IccPbHandler;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v5, v5, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mRecordSize:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    .line 98
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 100
    const-string/jumbo v5, " #record "

    .line 98
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 100
    iget-object v5, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$IccPbHandler;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v5, v5, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mRecordSize:[I

    const/4 v6, 0x2

    aget v5, v5, v6

    .line 98
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 102
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 103
    .local v1, "efid":I
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$IccPbHandler;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v2, v2, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mRecordSize:[I

    const/4 v4, 0x0

    aget v2, v2, v4

    const/16 v4, 0xe

    if-le v2, v4, :cond_0

    .line 104
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$IccPbHandler;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v4, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$IccPbHandler;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v4, v4, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mRecordSize:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    add-int/lit8 v4, v4, -0xe

    invoke-static {v2, v4}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->-set0(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;I)I

    .line 106
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$IccPbHandler;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "EVENT_GET_SIZE_DONE: adnNameLength="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$IccPbHandler;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-static {v5}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->-get0(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 109
    .end local v1    # "efid":I
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$IccPbHandler;->notifyPending(Landroid/os/AsyncResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit v3

    goto/16 :goto_0

    .line 92
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 113
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 114
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_2

    .line 115
    iget-object v4, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$IccPbHandler;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "exception of EVENT_UPDATE_DONE is"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 117
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$IccPbHandler;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v4, v4, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 118
    :try_start_1
    iget-object v5, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$IccPbHandler;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_3

    :goto_2
    iput-boolean v2, v5, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mSuccess:Z

    .line 119
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$IccPbHandler;->notifyPending(Landroid/os/AsyncResult;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v4

    goto/16 :goto_0

    :cond_3
    move v2, v3

    .line 118
    goto :goto_2

    .line 117
    :catchall_1
    move-exception v2

    monitor-exit v4

    throw v2

    .line 123
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 124
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$IccPbHandler;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v3, v2, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 125
    :try_start_2
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_4

    .line 126
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$IccPbHandler;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    const-string/jumbo v4, "Load ADN records done"

    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 127
    iget-object v4, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$IccPbHandler;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    iput-object v2, v4, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mRecords:Ljava/util/List;

    .line 132
    :goto_3
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$IccPbHandler;->notifyPending(Landroid/os/AsyncResult;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    .line 124
    :catchall_2
    move-exception v2

    monitor-exit v3

    throw v2

    .line 129
    :cond_4
    :try_start_3
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$IccPbHandler;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    const-string/jumbo v4, "Cannot load ADN records"

    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 130
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$IccPbHandler;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    const/4 v4, 0x0

    iput-object v4, v2, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mRecords:Ljava/util/List;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    .line 89
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
