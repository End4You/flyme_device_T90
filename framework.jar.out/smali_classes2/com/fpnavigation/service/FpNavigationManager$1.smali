.class Lcom/fpnavigation/service/FpNavigationManager$1;
.super Lcom/fpnavigation/service/IFpNavigationClient$Stub;
.source "FpNavigationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fpnavigation/service/FpNavigationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fpnavigation/service/FpNavigationManager;


# direct methods
.method constructor <init>(Lcom/fpnavigation/service/FpNavigationManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fpnavigation/service/FpNavigationManager;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/fpnavigation/service/FpNavigationManager$1;->this$0:Lcom/fpnavigation/service/FpNavigationManager;

    invoke-direct {p0}, Lcom/fpnavigation/service/IFpNavigationClient$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessage(III)V
    .locals 3
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 39
    invoke-static {}, Lcom/fpnavigation/service/FpNavigationManager;->-get1()Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lcom/fpnavigation/service/FpNavigationManager;->-get1()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 38
    return-void
.end method
