.class public Lcom/android/server/diagagent/DiagRootAgentService;
.super Landroid/diagagent/IDiagRootAgentService$Stub;
.source "DiagRootAgentService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/diagagent/DiagRootAgentService$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DiagRootAgentService"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDeathHandler:Landroid/os/IBinder$DeathRecipient;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/diagagent/IDiagRootAgentService$Stub;-><init>()V

    .line 57
    new-instance v0, Lcom/android/server/diagagent/DiagRootAgentService$1;

    invoke-direct {v0, p0}, Lcom/android/server/diagagent/DiagRootAgentService$1;-><init>(Lcom/android/server/diagagent/DiagRootAgentService;)V

    iput-object v0, p0, Lcom/android/server/diagagent/DiagRootAgentService;->mDeathHandler:Landroid/os/IBinder$DeathRecipient;

    .line 66
    iput-object p1, p0, Lcom/android/server/diagagent/DiagRootAgentService;->mContext:Landroid/content/Context;

    .line 64
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 123
    return-void
.end method

.method public getDaemon()Landroid/diagagent/IDiagRootAgentDaemon;
    .locals 3

    .prologue
    .line 70
    const-string/jumbo v0, "android.diagagent.IDiagRootAgentDaemon"

    .line 72
    .local v0, "DIAGAGENTD":Ljava/lang/String;
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/diagagent/IDiagRootAgentDaemon$Stub;->asInterface(Landroid/os/IBinder;)Landroid/diagagent/IDiagRootAgentDaemon;

    move-result-object v1

    .line 74
    .local v1, "daemon":Landroid/diagagent/IDiagRootAgentDaemon;
    return-object v1
.end method

.method public getStable(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 86
    const-string/jumbo v2, ""

    .line 89
    .local v2, "retStr":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/diagagent/DiagRootAgentService;->getDaemon()Landroid/diagagent/IDiagRootAgentDaemon;

    move-result-object v1

    .line 91
    .local v1, "getDaemon":Landroid/diagagent/IDiagRootAgentDaemon;
    if-nez p2, :cond_0

    .line 92
    const-string/jumbo p2, ""

    .line 94
    :cond_0
    const-string/jumbo v3, "DiagRootAgentService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getStable getDaemon"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-interface {v1, v3, v4}, Landroid/diagagent/IDiagRootAgentDaemon;->getStable([B[B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 101
    .end local v1    # "getDaemon":Landroid/diagagent/IDiagRootAgentDaemon;
    :goto_0
    return-object v2

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "DiagRootAgentService"

    const-string/jumbo v4, " code translate fail"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setStable(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 107
    const-string/jumbo v3, "DiagRootAgentService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " keyss = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " v = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const/4 v2, 0x0

    .line 110
    .local v2, "ret":I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/diagagent/DiagRootAgentService;->getDaemon()Landroid/diagagent/IDiagRootAgentDaemon;

    move-result-object v1

    .line 112
    .local v1, "getDaemon":Landroid/diagagent/IDiagRootAgentDaemon;
    if-nez p2, :cond_0

    .line 113
    const-string/jumbo p2, ""

    .line 115
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-interface {v1, v3, v4}, Landroid/diagagent/IDiagRootAgentDaemon;->setStable([B[B)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 120
    .end local v1    # "getDaemon":Landroid/diagagent/IDiagRootAgentDaemon;
    :goto_0
    return v2

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "DiagRootAgentService"

    const-string/jumbo v4, " code translate fail"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public systemReady()V
    .locals 2

    .prologue
    .line 78
    const-string/jumbo v0, "DiagRootAgentService"

    const-string/jumbo v1, "+ systemReady"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    return-void
.end method
