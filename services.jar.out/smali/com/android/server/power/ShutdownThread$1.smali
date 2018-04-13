.class final Lcom/android/server/power/ShutdownThread$1;
.super Landroid/os/Handler;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/ShutdownThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1055
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x1

    .line 1058
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 1059
    .local v1, "path":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get2()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    invoke-static {v2}, Lcom/android/server/power/ShutdownThread;->-set1(Landroid/media/AudioManager;)Landroid/media/AudioManager;

    .line 1060
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get1()Landroid/media/AudioManager;

    move-result-object v2

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-virtual {v2, v5, v3, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 1061
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    invoke-static {v2}, Lcom/android/server/power/ShutdownThread;->-set2(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 1064
    :try_start_0
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get3()Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->reset()V

    .line 1065
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get3()Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 1066
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get3()Landroid/media/MediaPlayer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 1067
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get3()Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepare()V

    .line 1068
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get3()Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V

    .line 1069
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get3()Landroid/media/MediaPlayer;

    move-result-object v2

    new-instance v3, Lcom/android/server/power/ShutdownThread$1$1;

    invoke-direct {v3, p0}, Lcom/android/server/power/ShutdownThread$1$1;-><init>(Lcom/android/server/power/ShutdownThread$1;)V

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1057
    :goto_0
    return-void

    .line 1079
    :catch_0
    move-exception v0

    .line 1080
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v2, "ShutdownThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "play shutdown music error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
