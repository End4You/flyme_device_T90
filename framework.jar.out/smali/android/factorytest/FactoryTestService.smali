.class public Landroid/factorytest/FactoryTestService;
.super Landroid/factorytest/IFactoryTestService$Stub;
.source "FactoryTestService.java"


# static fields
.field public static final GET_FACTORYTEST_INFO:Ljava/lang/String; = "com.hmct.ftmode.get_factorytest_info"

.field private static final TAG:Ljava/lang/String; = "FactoryTestService"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/factorytest/IFactoryTestService$Stub;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/factorytest/FactoryTestService;->mContext:Landroid/content/Context;

    .line 53
    iput-object p1, p0, Landroid/factorytest/FactoryTestService;->mContext:Landroid/content/Context;

    .line 52
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 79
    if-eqz p3, :cond_0

    array-length v0, p3

    if-nez v0, :cond_1

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    array-length v0, p3

    if-ne v0, v3, :cond_0

    const-string/jumbo v0, "test"

    aget-object v1, p3, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    const-string/jumbo v0, "Execute cmd: test"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 83
    const-string/jumbo v0, "factory.reload_policy"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v3, :cond_2

    .line 84
    const-string/jumbo v0, "factory.reload_policy"

    const-string/jumbo v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :cond_2
    iget-object v0, p0, Landroid/factorytest/FactoryTestService;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.hmct.ftmode.get_factorytest_info"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public reloadFactoryPolicy()V
    .locals 2

    .prologue
    .line 74
    const-string/jumbo v0, "FactoryTestService"

    const-string/jumbo v1, "reloadFactoryPolicy"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    return-void
.end method

.method public systemReady()V
    .locals 3

    .prologue
    .line 57
    const-string/jumbo v1, "FactoryTestService"

    const-string/jumbo v2, "+ systemReady"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 60
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.factory.reload_policy"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 61
    iget-object v1, p0, Landroid/factorytest/FactoryTestService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/factorytest/FactoryTestService$1;

    invoke-direct {v2, p0}, Landroid/factorytest/FactoryTestService$1;-><init>(Landroid/factorytest/FactoryTestService;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 56
    return-void
.end method
