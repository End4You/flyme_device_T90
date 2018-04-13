.class Landroid/factorytest/FactoryTestService$1;
.super Landroid/content/BroadcastReceiver;
.source "FactoryTestService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/factorytest/FactoryTestService;->systemReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/factorytest/FactoryTestService;


# direct methods
.method constructor <init>(Landroid/factorytest/FactoryTestService;)V
    .locals 0
    .param p1, "this$0"    # Landroid/factorytest/FactoryTestService;

    .prologue
    .line 61
    iput-object p1, p0, Landroid/factorytest/FactoryTestService$1;->this$0:Landroid/factorytest/FactoryTestService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 64
    const-string/jumbo v0, "FactoryTestService"

    const-string/jumbo v1, "reload"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    const-string/jumbo v0, "factory.reload_policy"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 66
    const-string/jumbo v0, "factory.reload_policy"

    const-string/jumbo v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :cond_0
    return-void
.end method
