.class Lcom/fpnavigation/service/FpNavigationManager$FpNavigationServiceDeathHandler;
.super Ljava/lang/Object;
.source "FpNavigationManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fpnavigation/service/FpNavigationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FpNavigationServiceDeathHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fpnavigation/service/FpNavigationManager;


# direct methods
.method constructor <init>(Lcom/fpnavigation/service/FpNavigationManager;Lcom/fpnavigation/service/IFpNavigationService;)V
    .locals 3
    .param p1, "this$0"    # Lcom/fpnavigation/service/FpNavigationManager;
    .param p2, "client"    # Lcom/fpnavigation/service/IFpNavigationService;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/fpnavigation/service/FpNavigationManager$FpNavigationServiceDeathHandler;->this$0:Lcom/fpnavigation/service/FpNavigationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    :try_start_0
    invoke-interface {p2}, Lcom/fpnavigation/service/IFpNavigationService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :goto_0
    return-void

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "FpNavigationManager"

    const-string/jumbo v2, "can\'t link to death"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public binderDied()V
    .locals 4

    .prologue
    .line 140
    const-string/jumbo v0, "FpNavigationManager"

    const-string/jumbo v1, "FpNavigationServiceDeathHandler::binderDied"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-static {}, Lcom/fpnavigation/service/FpNavigationManager;->-get1()Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lcom/fpnavigation/service/FpNavigationManager;->-get1()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 139
    return-void
.end method
