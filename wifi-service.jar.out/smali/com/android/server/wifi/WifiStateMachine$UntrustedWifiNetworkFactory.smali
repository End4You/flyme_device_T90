.class Lcom/android/server/wifi/WifiStateMachine$UntrustedWifiNetworkFactory;
.super Landroid/net/NetworkFactory;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UntrustedWifiNetworkFactory"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkCapabilities;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiStateMachine;
    .param p2, "l"    # Landroid/os/Looper;
    .param p3, "c"    # Landroid/content/Context;
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "f"    # Landroid/net/NetworkCapabilities;

    .prologue
    .line 4129
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$UntrustedWifiNetworkFactory;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    .line 4130
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/net/NetworkFactory;-><init>(Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkCapabilities;)V

    .line 4129
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 4168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mUntrustedReqCount "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$UntrustedWifiNetworkFactory;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->-get75(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4167
    return-void
.end method

.method protected needNetworkFor(Landroid/net/NetworkRequest;I)V
    .locals 4
    .param p1, "networkRequest"    # Landroid/net/NetworkRequest;
    .param p2, "score"    # I

    .prologue
    const/4 v3, 0x1

    .line 4135
    iget-object v0, p1, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 4136
    const/16 v1, 0xe

    .line 4135
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 4137
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$UntrustedWifiNetworkFactory;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get94(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 4138
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$UntrustedWifiNetworkFactory;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get75(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiStateMachine;->-set36(Lcom/android/server/wifi/WifiStateMachine;I)I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 4139
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$UntrustedWifiNetworkFactory;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get82(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConnectivityManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4140
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$UntrustedWifiNetworkFactory;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get13(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v0

    if-nez v0, :cond_0

    .line 4141
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$UntrustedWifiNetworkFactory;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get82(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConnectivityManager;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiConnectivityManager;->enable(Z)V

    .line 4143
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$UntrustedWifiNetworkFactory;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get82(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConnectivityManager;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiConnectivityManager;->setUntrustedConnectionAllowed(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v1

    .line 4134
    :cond_2
    return-void

    .line 4137
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected releaseNetworkFor(Landroid/net/NetworkRequest;)V
    .locals 3
    .param p1, "networkRequest"    # Landroid/net/NetworkRequest;

    .prologue
    .line 4152
    iget-object v0, p1, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 4153
    const/16 v1, 0xe

    .line 4152
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4154
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$UntrustedWifiNetworkFactory;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get94(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 4155
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$UntrustedWifiNetworkFactory;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get75(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiStateMachine;->-set36(Lcom/android/server/wifi/WifiStateMachine;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 4156
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$UntrustedWifiNetworkFactory;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get82(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConnectivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4157
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$UntrustedWifiNetworkFactory;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get82(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConnectivityManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiConnectivityManager;->setUntrustedConnectionAllowed(Z)V

    .line 4158
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$UntrustedWifiNetworkFactory;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get13(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v0

    if-nez v0, :cond_0

    .line 4159
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$UntrustedWifiNetworkFactory;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->-get82(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConnectivityManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiConnectivityManager;->enable(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 4151
    :cond_1
    return-void

    .line 4154
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
