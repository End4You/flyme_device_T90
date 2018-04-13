.class Lcom/android/server/safe/MobileSafeService$DialogHandler;
.super Landroid/os/Handler;
.source "MobileSafeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/safe/MobileSafeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DialogHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/safe/MobileSafeService;


# direct methods
.method public constructor <init>(Lcom/android/server/safe/MobileSafeService;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/safe/MobileSafeService;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/android/server/safe/MobileSafeService$DialogHandler;->this$0:Lcom/android/server/safe/MobileSafeService;

    .line 184
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 183
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-wide/16 v10, 0x3e8

    const/4 v7, -0x2

    const/16 v9, 0x3ea

    .line 189
    iget-object v5, p0, Lcom/android/server/safe/MobileSafeService$DialogHandler;->this$0:Lcom/android/server/safe/MobileSafeService;

    iget-object v6, p0, Lcom/android/server/safe/MobileSafeService$DialogHandler;->this$0:Lcom/android/server/safe/MobileSafeService;

    invoke-static {v6}, Lcom/android/server/safe/MobileSafeService;->-get7(Lcom/android/server/safe/MobileSafeService;)I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/server/safe/MobileSafeService;->-wrap0(Lcom/android/server/safe/MobileSafeService;I)Landroid/safe/IMobileSafeClient;

    move-result-object v4

    .line 190
    .local v4, "safeClient":Landroid/safe/IMobileSafeClient;
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 192
    :pswitch_0
    iget-object v5, p0, Lcom/android/server/safe/MobileSafeService$DialogHandler;->this$0:Lcom/android/server/safe/MobileSafeService;

    invoke-static {v5}, Lcom/android/server/safe/MobileSafeService;->-get0(Lcom/android/server/safe/MobileSafeService;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 193
    iget-object v6, p0, Lcom/android/server/safe/MobileSafeService$DialogHandler;->this$0:Lcom/android/server/safe/MobileSafeService;

    iget v7, p1, Landroid/os/Message;->arg2:I

    iget v8, p1, Landroid/os/Message;->arg1:I

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-static {v6, v7, v8, v5}, Lcom/android/server/safe/MobileSafeService;->-wrap27(Lcom/android/server/safe/MobileSafeService;IILjava/lang/String;)V

    .line 197
    :goto_1
    iget-object v5, p0, Lcom/android/server/safe/MobileSafeService$DialogHandler;->this$0:Lcom/android/server/safe/MobileSafeService;

    const/16 v6, 0x14

    invoke-static {v5, v6}, Lcom/android/server/safe/MobileSafeService;->-set1(Lcom/android/server/safe/MobileSafeService;I)I

    .line 198
    iget-object v5, p0, Lcom/android/server/safe/MobileSafeService$DialogHandler;->this$0:Lcom/android/server/safe/MobileSafeService;

    invoke-static {v5}, Lcom/android/server/safe/MobileSafeService;->-get5(Lcom/android/server/safe/MobileSafeService;)Lcom/android/server/safe/MobileSafeService$DialogHandler;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/android/server/safe/MobileSafeService$DialogHandler;->removeMessages(I)V

    .line 199
    iget-object v5, p0, Lcom/android/server/safe/MobileSafeService$DialogHandler;->this$0:Lcom/android/server/safe/MobileSafeService;

    invoke-static {v5}, Lcom/android/server/safe/MobileSafeService;->-get5(Lcom/android/server/safe/MobileSafeService;)Lcom/android/server/safe/MobileSafeService$DialogHandler;

    move-result-object v5

    invoke-virtual {v5, v9, v10, v11}, Lcom/android/server/safe/MobileSafeService$DialogHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 195
    :cond_1
    iget-object v6, p0, Lcom/android/server/safe/MobileSafeService$DialogHandler;->this$0:Lcom/android/server/safe/MobileSafeService;

    iget v7, p1, Landroid/os/Message;->arg2:I

    iget v8, p1, Landroid/os/Message;->arg1:I

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-static {v6, v7, v8, v5}, Lcom/android/server/safe/MobileSafeService;->-wrap26(Lcom/android/server/safe/MobileSafeService;IILjava/lang/String;)V

    goto :goto_1

    .line 203
    :pswitch_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 205
    .local v2, "callingIdentity":J
    if-eqz v4, :cond_2

    .line 206
    :try_start_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/safe/MobileSafeService$PermissionDenyBody;

    .line 207
    .local v0, "body":Lcom/android/server/safe/MobileSafeService$PermissionDenyBody;
    iget-object v5, v0, Lcom/android/server/safe/MobileSafeService$PermissionDenyBody;->pkgName:Ljava/lang/String;

    iget v6, v0, Lcom/android/server/safe/MobileSafeService$PermissionDenyBody;->permID:I

    iget v7, v0, Lcom/android/server/safe/MobileSafeService$PermissionDenyBody;->uid:I

    invoke-interface {v4, v5, v6, v7}, Landroid/safe/IMobileSafeClient;->permissionDeniedNotify(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    .end local v0    # "body":Lcom/android/server/safe/MobileSafeService$PermissionDenyBody;
    :cond_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 209
    :catch_0
    move-exception v1

    .line 210
    .local v1, "ex":Landroid/os/RemoteException;
    :try_start_1
    const-string/jumbo v5, "MobileSafeService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onStartServiceNotify() throws exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 212
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 211
    .end local v1    # "ex":Landroid/os/RemoteException;
    :catchall_0
    move-exception v5

    .line 212
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 211
    throw v5

    .line 217
    .end local v2    # "callingIdentity":J
    :pswitch_2
    iget-object v5, p0, Lcom/android/server/safe/MobileSafeService$DialogHandler;->this$0:Lcom/android/server/safe/MobileSafeService;

    invoke-static {v5}, Lcom/android/server/safe/MobileSafeService;->-get5(Lcom/android/server/safe/MobileSafeService;)Lcom/android/server/safe/MobileSafeService$DialogHandler;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/android/server/safe/MobileSafeService$DialogHandler;->removeMessages(I)V

    .line 218
    iget-object v5, p0, Lcom/android/server/safe/MobileSafeService$DialogHandler;->this$0:Lcom/android/server/safe/MobileSafeService;

    invoke-static {v5}, Lcom/android/server/safe/MobileSafeService;->-get0(Lcom/android/server/safe/MobileSafeService;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 219
    iget-object v5, p0, Lcom/android/server/safe/MobileSafeService$DialogHandler;->this$0:Lcom/android/server/safe/MobileSafeService;

    invoke-static {v5}, Lcom/android/server/safe/MobileSafeService;->-wrap15(Lcom/android/server/safe/MobileSafeService;)V

    goto/16 :goto_0

    .line 221
    :cond_3
    iget-object v5, p0, Lcom/android/server/safe/MobileSafeService$DialogHandler;->this$0:Lcom/android/server/safe/MobileSafeService;

    invoke-static {v5}, Lcom/android/server/safe/MobileSafeService;->-wrap14(Lcom/android/server/safe/MobileSafeService;)V

    goto/16 :goto_0

    .line 226
    :pswitch_3
    iget-object v5, p0, Lcom/android/server/safe/MobileSafeService$DialogHandler;->this$0:Lcom/android/server/safe/MobileSafeService;

    invoke-static {v5}, Lcom/android/server/safe/MobileSafeService;->-get4(Lcom/android/server/safe/MobileSafeService;)Landroid/app/AlertDialog;

    move-result-object v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/server/safe/MobileSafeService$DialogHandler;->this$0:Lcom/android/server/safe/MobileSafeService;

    invoke-static {v5}, Lcom/android/server/safe/MobileSafeService;->-get3(Lcom/android/server/safe/MobileSafeService;)I

    move-result v5

    if-lez v5, :cond_4

    .line 227
    :goto_2
    iget-object v5, p0, Lcom/android/server/safe/MobileSafeService$DialogHandler;->this$0:Lcom/android/server/safe/MobileSafeService;

    invoke-static {v5}, Lcom/android/server/safe/MobileSafeService;->-get5(Lcom/android/server/safe/MobileSafeService;)Lcom/android/server/safe/MobileSafeService$DialogHandler;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/android/server/safe/MobileSafeService$DialogHandler;->removeMessages(I)V

    .line 228
    iget-object v5, p0, Lcom/android/server/safe/MobileSafeService$DialogHandler;->this$0:Lcom/android/server/safe/MobileSafeService;

    invoke-static {v5}, Lcom/android/server/safe/MobileSafeService;->-get5(Lcom/android/server/safe/MobileSafeService;)Lcom/android/server/safe/MobileSafeService$DialogHandler;

    move-result-object v5

    invoke-virtual {v5, v9, v10, v11}, Lcom/android/server/safe/MobileSafeService$DialogHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 229
    iget-object v5, p0, Lcom/android/server/safe/MobileSafeService$DialogHandler;->this$0:Lcom/android/server/safe/MobileSafeService;

    invoke-static {v5}, Lcom/android/server/safe/MobileSafeService;->-get3(Lcom/android/server/safe/MobileSafeService;)I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-static {v5, v6}, Lcom/android/server/safe/MobileSafeService;->-set1(Lcom/android/server/safe/MobileSafeService;I)I

    .line 231
    iget-object v5, p0, Lcom/android/server/safe/MobileSafeService$DialogHandler;->this$0:Lcom/android/server/safe/MobileSafeService;

    invoke-static {v5}, Lcom/android/server/safe/MobileSafeService;->-get0(Lcom/android/server/safe/MobileSafeService;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 232
    iget-object v5, p0, Lcom/android/server/safe/MobileSafeService$DialogHandler;->this$0:Lcom/android/server/safe/MobileSafeService;

    invoke-static {v5}, Lcom/android/server/safe/MobileSafeService;->-get6(Lcom/android/server/safe/MobileSafeService;)Lcom/hmct/hmcttheme/HmctAlertDialog;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/hmct/hmcttheme/HmctAlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/safe/MobileSafeService$DialogHandler;->this$0:Lcom/android/server/safe/MobileSafeService;

    iget-object v7, p0, Lcom/android/server/safe/MobileSafeService$DialogHandler;->this$0:Lcom/android/server/safe/MobileSafeService;

    invoke-static {v7}, Lcom/android/server/safe/MobileSafeService;->-get3(Lcom/android/server/safe/MobileSafeService;)I

    move-result v7

    invoke-static {v6, v7}, Lcom/android/server/safe/MobileSafeService;->-wrap6(Lcom/android/server/safe/MobileSafeService;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 226
    :cond_4
    iget-object v5, p0, Lcom/android/server/safe/MobileSafeService$DialogHandler;->this$0:Lcom/android/server/safe/MobileSafeService;

    invoke-static {v5}, Lcom/android/server/safe/MobileSafeService;->-get6(Lcom/android/server/safe/MobileSafeService;)Lcom/hmct/hmcttheme/HmctAlertDialog;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/server/safe/MobileSafeService$DialogHandler;->this$0:Lcom/android/server/safe/MobileSafeService;

    invoke-static {v5}, Lcom/android/server/safe/MobileSafeService;->-get3(Lcom/android/server/safe/MobileSafeService;)I

    move-result v5

    if-lez v5, :cond_0

    goto :goto_2

    .line 234
    :cond_5
    iget-object v5, p0, Lcom/android/server/safe/MobileSafeService$DialogHandler;->this$0:Lcom/android/server/safe/MobileSafeService;

    invoke-static {v5}, Lcom/android/server/safe/MobileSafeService;->-get4(Lcom/android/server/safe/MobileSafeService;)Landroid/app/AlertDialog;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/safe/MobileSafeService$DialogHandler;->this$0:Lcom/android/server/safe/MobileSafeService;

    iget-object v7, p0, Lcom/android/server/safe/MobileSafeService$DialogHandler;->this$0:Lcom/android/server/safe/MobileSafeService;

    invoke-static {v7}, Lcom/android/server/safe/MobileSafeService;->-get3(Lcom/android/server/safe/MobileSafeService;)I

    move-result v7

    invoke-static {v6, v7}, Lcom/android/server/safe/MobileSafeService;->-wrap6(Lcom/android/server/safe/MobileSafeService;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 190
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method
