.class Lcom/android/server/NetworkTimeUpdateService$MyHandler;
.super Landroid/os/Handler;
.source "NetworkTimeUpdateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NetworkTimeUpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NetworkTimeUpdateService;


# direct methods
.method public constructor <init>(Lcom/android/server/NetworkTimeUpdateService;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/NetworkTimeUpdateService;
    .param p2, "l"    # Landroid/os/Looper;

    .prologue
    .line 464
    iput-object p1, p0, Lcom/android/server/NetworkTimeUpdateService$MyHandler;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    .line 465
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 464
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 470
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 469
    :goto_0
    return-void

    .line 473
    :pswitch_0
    iget-object v1, p0, Lcom/android/server/NetworkTimeUpdateService$MyHandler;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/NetworkTimeUpdateService;->-set4(Lcom/android/server/NetworkTimeUpdateService;Z)Z

    .line 477
    :pswitch_1
    iget-object v1, p0, Lcom/android/server/NetworkTimeUpdateService$MyHandler;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v1, v2}, Lcom/android/server/NetworkTimeUpdateService;->-wrap1(Lcom/android/server/NetworkTimeUpdateService;I)V

    goto :goto_0

    .line 481
    :pswitch_2
    iget-object v1, p0, Lcom/android/server/NetworkTimeUpdateService$MyHandler;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    invoke-static {v1}, Lcom/android/server/NetworkTimeUpdateService;->-wrap0(Lcom/android/server/NetworkTimeUpdateService;)Z

    move-result v0

    .line 482
    .local v0, "gpsTimeSyncStatus":Z
    const-string/jumbo v1, "NetworkTimeUpdateService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "GPS Time sync is changed to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    iget-object v1, p0, Lcom/android/server/NetworkTimeUpdateService$MyHandler;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    invoke-virtual {v1, v0}, Lcom/android/server/NetworkTimeUpdateService;->onGpsTimeChanged(Z)V

    goto :goto_0

    .line 470
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
