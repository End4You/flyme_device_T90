.class Lcom/android/server/MountService$5;
.super Ljava/lang/Thread;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/MountService;->notifyShareAvailabilityChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/MountService;
    .param p2, "$anonymous0"    # Ljava/lang/String;

    .prologue
    .line 4533
    iput-object p1, p0, Lcom/android/server/MountService$5;->this$0:Lcom/android/server/MountService;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 4536
    invoke-static {}, Lcom/android/server/MountService;->-get0()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 4537
    :try_start_0
    iget-object v0, p0, Lcom/android/server/MountService$5;->this$0:Lcom/android/server/MountService;

    iget-boolean v0, v0, Lcom/android/server/MountService;->turnOffUms:Z

    if-nez v0, :cond_0

    .line 4538
    iget-object v0, p0, Lcom/android/server/MountService$5;->this$0:Lcom/android/server/MountService;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/MountService;->setUsbMassStorageEnabled(Z)V

    .line 4539
    iget-object v0, p0, Lcom/android/server/MountService$5;->this$0:Lcom/android/server/MountService;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/MountService;->turnOffUms:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 4535
    return-void

    .line 4536
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
