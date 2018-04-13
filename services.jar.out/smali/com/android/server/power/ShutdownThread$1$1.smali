.class Lcom/android/server/power/ShutdownThread$1$1;
.super Ljava/lang/Object;
.source "ShutdownThread.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownThread$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/power/ShutdownThread$1;


# direct methods
.method constructor <init>(Lcom/android/server/power/ShutdownThread$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/power/ShutdownThread$1;

    .prologue
    .line 1069
    iput-object p1, p0, Lcom/android/server/power/ShutdownThread$1$1;->this$1:Lcom/android/server/power/ShutdownThread$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 5
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 1072
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get0()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1073
    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->-set0(Z)Z

    .line 1074
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get0()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1075
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get1()Landroid/media/AudioManager;

    move-result-object v0

    sget-object v2, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v2, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1071
    return-void

    .line 1072
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
