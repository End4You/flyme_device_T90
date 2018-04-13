.class Lcom/android/server/diagagent/DiagRootAgentService$1;
.super Ljava/lang/Object;
.source "DiagRootAgentService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/diagagent/DiagRootAgentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/diagagent/DiagRootAgentService;


# direct methods
.method constructor <init>(Lcom/android/server/diagagent/DiagRootAgentService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/diagagent/DiagRootAgentService;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/server/diagagent/DiagRootAgentService$1;->this$0:Lcom/android/server/diagagent/DiagRootAgentService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .prologue
    .line 60
    const-string/jumbo v0, "DiagRootAgentService"

    const-string/jumbo v1, "DiagRootAgentService died"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    return-void
.end method
