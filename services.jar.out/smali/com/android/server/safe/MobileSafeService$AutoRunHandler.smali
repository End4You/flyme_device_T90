.class Lcom/android/server/safe/MobileSafeService$AutoRunHandler;
.super Landroid/os/Handler;
.source "MobileSafeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/safe/MobileSafeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoRunHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/safe/MobileSafeService;


# direct methods
.method public constructor <init>(Lcom/android/server/safe/MobileSafeService;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/safe/MobileSafeService;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 265
    iput-object p1, p0, Lcom/android/server/safe/MobileSafeService$AutoRunHandler;->this$0:Lcom/android/server/safe/MobileSafeService;

    .line 266
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 265
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v9, 0x1

    .line 271
    iget-object v10, p0, Lcom/android/server/safe/MobileSafeService$AutoRunHandler;->this$0:Lcom/android/server/safe/MobileSafeService;

    iget-object v11, p0, Lcom/android/server/safe/MobileSafeService$AutoRunHandler;->this$0:Lcom/android/server/safe/MobileSafeService;

    invoke-static {v11}, Lcom/android/server/safe/MobileSafeService;->-get7(Lcom/android/server/safe/MobileSafeService;)I

    move-result v11

    invoke-static {v10, v11}, Lcom/android/server/safe/MobileSafeService;->-wrap0(Lcom/android/server/safe/MobileSafeService;I)Landroid/safe/IMobileSafeClient;

    move-result-object v8

    .line 272
    .local v8, "safeClient":Landroid/safe/IMobileSafeClient;
    iget v10, p1, Landroid/os/Message;->what:I

    packed-switch v10, :pswitch_data_0

    .line 270
    :goto_0
    return-void

    .line 274
    :pswitch_0
    iget-object v9, p0, Lcom/android/server/safe/MobileSafeService$AutoRunHandler;->this$0:Lcom/android/server/safe/MobileSafeService;

    invoke-static {v9}, Lcom/android/server/safe/MobileSafeService;->-get1(Lcom/android/server/safe/MobileSafeService;)I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-static {v9, v10}, Lcom/android/server/safe/MobileSafeService;->-set0(Lcom/android/server/safe/MobileSafeService;I)I

    .line 275
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 277
    .local v2, "callingIdentity":J
    if-eqz v8, :cond_0

    .line 278
    :try_start_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/safe/MobileSafeService$AutoRunMsgBody;

    .line 279
    .local v1, "body":Lcom/android/server/safe/MobileSafeService$AutoRunMsgBody;
    iget v9, v1, Lcom/android/server/safe/MobileSafeService$AutoRunMsgBody;->callingUid:I

    iget-object v10, v1, Lcom/android/server/safe/MobileSafeService$AutoRunMsgBody;->callingPkgName:Ljava/lang/String;

    .line 280
    iget-object v11, v1, Lcom/android/server/safe/MobileSafeService$AutoRunMsgBody;->calledPkgName:Ljava/lang/String;

    iget-boolean v12, v1, Lcom/android/server/safe/MobileSafeService$AutoRunMsgBody;->allow:Z

    .line 279
    invoke-interface {v8, v9, v10, v11, v12}, Landroid/safe/IMobileSafeClient;->onStartServiceNotify(ILjava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 285
    .end local v1    # "body":Lcom/android/server/safe/MobileSafeService$AutoRunMsgBody;
    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 282
    :catch_0
    move-exception v6

    .line 283
    .local v6, "ex":Landroid/os/RemoteException;
    :try_start_1
    const-string/jumbo v9, "MobileSafeService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "onStartServiceNotify() throws exception: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 285
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 284
    .end local v6    # "ex":Landroid/os/RemoteException;
    :catchall_0
    move-exception v9

    .line 285
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 284
    throw v9

    .line 291
    .end local v2    # "callingIdentity":J
    :pswitch_1
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    .line 293
    .local v7, "pkgName":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/safe/MobileSafeService$AutoRunHandler;->this$0:Lcom/android/server/safe/MobileSafeService;

    iget v11, p1, Landroid/os/Message;->arg1:I

    if-ne v11, v9, :cond_1

    :goto_1
    invoke-static {v10, v7, v9}, Lcom/android/server/safe/MobileSafeService;->-wrap25(Lcom/android/server/safe/MobileSafeService;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    const/4 v9, 0x0

    goto :goto_1

    .line 297
    .end local v7    # "pkgName":Ljava/lang/String;
    :pswitch_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 299
    .local v4, "callingIdentity1":J
    if-eqz v8, :cond_2

    .line 300
    :try_start_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/safe/MobileSafeService$AutoRunRecordBody;

    .line 301
    .local v0, "arbody":Lcom/android/server/safe/MobileSafeService$AutoRunRecordBody;
    iget-object v9, v0, Lcom/android/server/safe/MobileSafeService$AutoRunRecordBody;->pkgName:Ljava/lang/String;

    iget-boolean v10, v0, Lcom/android/server/safe/MobileSafeService$AutoRunRecordBody;->allow:Z

    invoke-interface {v8, v9, v10}, Landroid/safe/IMobileSafeClient;->saveAutoRunRecord(Ljava/lang/String;Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 306
    .end local v0    # "arbody":Lcom/android/server/safe/MobileSafeService$AutoRunRecordBody;
    :cond_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 303
    :catch_1
    move-exception v6

    .line 304
    .restart local v6    # "ex":Landroid/os/RemoteException;
    :try_start_3
    const-string/jumbo v9, "MobileSafeService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "onStartServiceNotify() throws exception: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 306
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .line 305
    .end local v6    # "ex":Landroid/os/RemoteException;
    :catchall_1
    move-exception v9

    .line 306
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 305
    throw v9

    .line 272
    nop

    :pswitch_data_0
    .packed-switch 0x7d0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
