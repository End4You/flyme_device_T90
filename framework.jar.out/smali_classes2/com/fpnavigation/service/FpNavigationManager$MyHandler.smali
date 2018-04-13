.class Lcom/fpnavigation/service/FpNavigationManager$MyHandler;
.super Landroid/os/Handler;
.source "FpNavigationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fpnavigation/service/FpNavigationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fpnavigation/service/FpNavigationManager;


# direct methods
.method private constructor <init>(Lcom/fpnavigation/service/FpNavigationManager;Landroid/content/Context;)V
    .locals 1
    .param p1, "this$0"    # Lcom/fpnavigation/service/FpNavigationManager;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/fpnavigation/service/FpNavigationManager$MyHandler;->this$0:Lcom/fpnavigation/service/FpNavigationManager;

    .line 45
    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 44
    return-void
.end method

.method synthetic constructor <init>(Lcom/fpnavigation/service/FpNavigationManager;Landroid/content/Context;Lcom/fpnavigation/service/FpNavigationManager$MyHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fpnavigation/service/FpNavigationManager;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/fpnavigation/service/FpNavigationManager$MyHandler;-><init>(Lcom/fpnavigation/service/FpNavigationManager;Landroid/content/Context;)V

    return-void
.end method

.method private constructor <init>(Lcom/fpnavigation/service/FpNavigationManager;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fpnavigation/service/FpNavigationManager;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/fpnavigation/service/FpNavigationManager$MyHandler;->this$0:Lcom/fpnavigation/service/FpNavigationManager;

    .line 49
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 48
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 54
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 53
    :goto_0
    return-void

    .line 56
    :pswitch_0
    const-string/jumbo v1, "fpnavigation"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 57
    .local v0, "b":Landroid/os/IBinder;
    if-nez v0, :cond_0

    .line 58
    invoke-static {}, Lcom/fpnavigation/service/FpNavigationManager;->-get1()Landroid/os/Handler;

    move-result-object v1

    invoke-static {}, Lcom/fpnavigation/service/FpNavigationManager;->-get1()Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0xc8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 60
    :cond_0
    invoke-static {v0}, Lcom/fpnavigation/service/IFpNavigationService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/fpnavigation/service/IFpNavigationService;

    move-result-object v1

    invoke-static {v1}, Lcom/fpnavigation/service/FpNavigationManager;->-set1(Lcom/fpnavigation/service/IFpNavigationService;)Lcom/fpnavigation/service/IFpNavigationService;

    .line 61
    iget-object v1, p0, Lcom/fpnavigation/service/FpNavigationManager$MyHandler;->this$0:Lcom/fpnavigation/service/FpNavigationManager;

    new-instance v2, Lcom/fpnavigation/service/FpNavigationManager$FpNavigationServiceDeathHandler;

    iget-object v3, p0, Lcom/fpnavigation/service/FpNavigationManager$MyHandler;->this$0:Lcom/fpnavigation/service/FpNavigationManager;

    invoke-static {}, Lcom/fpnavigation/service/FpNavigationManager;->-get2()Lcom/fpnavigation/service/IFpNavigationService;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/fpnavigation/service/FpNavigationManager$FpNavigationServiceDeathHandler;-><init>(Lcom/fpnavigation/service/FpNavigationManager;Lcom/fpnavigation/service/IFpNavigationService;)V

    invoke-static {v1, v2}, Lcom/fpnavigation/service/FpNavigationManager;->-set0(Lcom/fpnavigation/service/FpNavigationManager;Lcom/fpnavigation/service/FpNavigationManager$FpNavigationServiceDeathHandler;)Lcom/fpnavigation/service/FpNavigationManager$FpNavigationServiceDeathHandler;

    .line 62
    iget-object v1, p0, Lcom/fpnavigation/service/FpNavigationManager$MyHandler;->this$0:Lcom/fpnavigation/service/FpNavigationManager;

    iget-object v2, p0, Lcom/fpnavigation/service/FpNavigationManager$MyHandler;->this$0:Lcom/fpnavigation/service/FpNavigationManager;

    invoke-static {v2}, Lcom/fpnavigation/service/FpNavigationManager;->-get0(Lcom/fpnavigation/service/FpNavigationManager;)Lcom/fpnavigation/service/FpNavigationManager$IdentifyCallback;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fpnavigation/service/FpNavigationManager;->register(Lcom/fpnavigation/service/FpNavigationManager$IdentifyCallback;)V

    goto :goto_0

    .line 66
    .end local v0    # "b":Landroid/os/IBinder;
    :pswitch_1
    iget-object v1, p0, Lcom/fpnavigation/service/FpNavigationManager$MyHandler;->this$0:Lcom/fpnavigation/service/FpNavigationManager;

    invoke-static {v1}, Lcom/fpnavigation/service/FpNavigationManager;->-get0(Lcom/fpnavigation/service/FpNavigationManager;)Lcom/fpnavigation/service/FpNavigationManager$IdentifyCallback;

    move-result-object v1

    if-nez v1, :cond_1

    .line 67
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Must supply an enrollment callback"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 69
    :cond_1
    const-string/jumbo v1, "FpNavigationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "status "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v1, p0, Lcom/fpnavigation/service/FpNavigationManager$MyHandler;->this$0:Lcom/fpnavigation/service/FpNavigationManager;

    invoke-static {v1}, Lcom/fpnavigation/service/FpNavigationManager;->-get0(Lcom/fpnavigation/service/FpNavigationManager;)Lcom/fpnavigation/service/FpNavigationManager$IdentifyCallback;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v2}, Lcom/fpnavigation/service/FpNavigationManager$IdentifyCallback;->onStatus(I)V

    goto :goto_0

    .line 78
    :pswitch_2
    iget-object v1, p0, Lcom/fpnavigation/service/FpNavigationManager$MyHandler;->this$0:Lcom/fpnavigation/service/FpNavigationManager;

    invoke-virtual {v1}, Lcom/fpnavigation/service/FpNavigationManager;->startService()Z

    goto :goto_0

    .line 81
    :pswitch_3
    iget-object v1, p0, Lcom/fpnavigation/service/FpNavigationManager$MyHandler;->this$0:Lcom/fpnavigation/service/FpNavigationManager;

    invoke-virtual {v1}, Lcom/fpnavigation/service/FpNavigationManager;->stopService()Z

    goto/16 :goto_0

    .line 54
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
