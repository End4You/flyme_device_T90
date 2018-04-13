.class public Lcom/fpnavigation/service/FpNavigationManager;
.super Ljava/lang/Object;
.source "FpNavigationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fpnavigation/service/FpNavigationManager$1;,
        Lcom/fpnavigation/service/FpNavigationManager$FpNavigationServiceDeathHandler;,
        Lcom/fpnavigation/service/FpNavigationManager$IdentifyCallback;,
        Lcom/fpnavigation/service/FpNavigationManager$MyHandler;
    }
.end annotation


# static fields
.field private static final IS_EGISTEC:Z

.field static final MSG_NAVIGATION_START_RESULT:I = 0x3

.field static final MSG_NAVIGATION_STATUS:I = 0x2

.field static final MSG_NAVIGATION_STOP_RESULT:I = 0x4

.field static final MSG_WAITING_FINGERSERVICE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "FpNavigationManager"

.field private static mContext:Landroid/content/Context;

.field private static mHandler:Landroid/os/Handler;

.field private static mService:Lcom/fpnavigation/service/IFpNavigationService;

.field private static sInstance:Lcom/fpnavigation/service/FpNavigationManager;


# instance fields
.field private mClient:Lcom/fpnavigation/service/IFpNavigationClient;

.field private mClientReceiver:Lcom/fpnavigation/service/FpNavigationManager$IdentifyCallback;

.field private mDeathHandler:Lcom/fpnavigation/service/FpNavigationManager$FpNavigationServiceDeathHandler;

.field startResult:Z

.field stopResult:Z


# direct methods
.method static synthetic -get0(Lcom/fpnavigation/service/FpNavigationManager;)Lcom/fpnavigation/service/FpNavigationManager$IdentifyCallback;
    .locals 1

    iget-object v0, p0, Lcom/fpnavigation/service/FpNavigationManager;->mClientReceiver:Lcom/fpnavigation/service/FpNavigationManager$IdentifyCallback;

    return-object v0
.end method

.method static synthetic -get1()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/fpnavigation/service/FpNavigationManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get2()Lcom/fpnavigation/service/IFpNavigationService;
    .locals 1

    sget-object v0, Lcom/fpnavigation/service/FpNavigationManager;->mService:Lcom/fpnavigation/service/IFpNavigationService;

    return-object v0
.end method

.method static synthetic -set0(Lcom/fpnavigation/service/FpNavigationManager;Lcom/fpnavigation/service/FpNavigationManager$FpNavigationServiceDeathHandler;)Lcom/fpnavigation/service/FpNavigationManager$FpNavigationServiceDeathHandler;
    .locals 0

    iput-object p1, p0, Lcom/fpnavigation/service/FpNavigationManager;->mDeathHandler:Lcom/fpnavigation/service/FpNavigationManager$FpNavigationServiceDeathHandler;

    return-object p1
.end method

.method static synthetic -set1(Lcom/fpnavigation/service/IFpNavigationService;)Lcom/fpnavigation/service/IFpNavigationService;
    .locals 0

    sput-object p0, Lcom/fpnavigation/service/FpNavigationManager;->mService:Lcom/fpnavigation/service/IFpNavigationService;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    const-string/jumbo v0, "ro.hmct.fingerprint.vendor"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "egistec"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/fpnavigation/service/FpNavigationManager;->IS_EGISTEC:Z

    .line 15
    return-void
.end method

.method private constructor <init>(Landroid/os/IBinder;)V
    .locals 3
    .param p1, "binder"    # Landroid/os/IBinder;

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object v2, p0, Lcom/fpnavigation/service/FpNavigationManager;->mClientReceiver:Lcom/fpnavigation/service/FpNavigationManager$IdentifyCallback;

    .line 23
    iput-object v2, p0, Lcom/fpnavigation/service/FpNavigationManager;->mDeathHandler:Lcom/fpnavigation/service/FpNavigationManager$FpNavigationServiceDeathHandler;

    .line 29
    iput-boolean v0, p0, Lcom/fpnavigation/service/FpNavigationManager;->startResult:Z

    .line 30
    iput-boolean v0, p0, Lcom/fpnavigation/service/FpNavigationManager;->stopResult:Z

    .line 36
    new-instance v0, Lcom/fpnavigation/service/FpNavigationManager$1;

    invoke-direct {v0, p0}, Lcom/fpnavigation/service/FpNavigationManager$1;-><init>(Lcom/fpnavigation/service/FpNavigationManager;)V

    iput-object v0, p0, Lcom/fpnavigation/service/FpNavigationManager;->mClient:Lcom/fpnavigation/service/IFpNavigationClient;

    .line 117
    if-eqz p1, :cond_0

    .line 118
    invoke-static {p1}, Lcom/fpnavigation/service/IFpNavigationService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/fpnavigation/service/IFpNavigationService;

    move-result-object v0

    sput-object v0, Lcom/fpnavigation/service/FpNavigationManager;->mService:Lcom/fpnavigation/service/IFpNavigationService;

    .line 119
    new-instance v0, Lcom/fpnavigation/service/FpNavigationManager$FpNavigationServiceDeathHandler;

    sget-object v1, Lcom/fpnavigation/service/FpNavigationManager;->mService:Lcom/fpnavigation/service/IFpNavigationService;

    invoke-direct {v0, p0, v1}, Lcom/fpnavigation/service/FpNavigationManager$FpNavigationServiceDeathHandler;-><init>(Lcom/fpnavigation/service/FpNavigationManager;Lcom/fpnavigation/service/IFpNavigationService;)V

    iput-object v0, p0, Lcom/fpnavigation/service/FpNavigationManager;->mDeathHandler:Lcom/fpnavigation/service/FpNavigationManager$FpNavigationServiceDeathHandler;

    .line 121
    :cond_0
    const-string/jumbo v0, "FpNavigationManager"

    const-string/jumbo v1, "create handler"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    new-instance v0, Lcom/fpnavigation/service/FpNavigationManager$MyHandler;

    sget-object v1, Lcom/fpnavigation/service/FpNavigationManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, v2}, Lcom/fpnavigation/service/FpNavigationManager$MyHandler;-><init>(Lcom/fpnavigation/service/FpNavigationManager;Landroid/content/Context;Lcom/fpnavigation/service/FpNavigationManager$MyHandler;)V

    sput-object v0, Lcom/fpnavigation/service/FpNavigationManager;->mHandler:Landroid/os/Handler;

    .line 115
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/fpnavigation/service/FpNavigationManager;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 99
    sput-object p0, Lcom/fpnavigation/service/FpNavigationManager;->mContext:Landroid/content/Context;

    .line 100
    const-string/jumbo v1, "FpNavigationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getInstance sInstance="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/fpnavigation/service/FpNavigationManager;->sInstance:Lcom/fpnavigation/service/FpNavigationManager;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const-class v2, Lcom/fpnavigation/service/FpNavigationManager;

    monitor-enter v2

    .line 102
    :try_start_0
    sget-object v1, Lcom/fpnavigation/service/FpNavigationManager;->sInstance:Lcom/fpnavigation/service/FpNavigationManager;

    if-nez v1, :cond_1

    .line 103
    const-string/jumbo v1, "FpNavigationManager"

    const-string/jumbo v3, "Service is getting"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    const-string/jumbo v1, "fpnavigation"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 105
    .local v0, "b":Landroid/os/IBinder;
    if-nez v0, :cond_0

    .line 106
    const-string/jumbo v1, "FpNavigationManager"

    const-string/jumbo v3, "Service is not ready"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_0
    new-instance v1, Lcom/fpnavigation/service/FpNavigationManager;

    invoke-direct {v1, v0}, Lcom/fpnavigation/service/FpNavigationManager;-><init>(Landroid/os/IBinder;)V

    sput-object v1, Lcom/fpnavigation/service/FpNavigationManager;->sInstance:Lcom/fpnavigation/service/FpNavigationManager;

    .line 110
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_1
    sget-object v1, Lcom/fpnavigation/service/FpNavigationManager;->sInstance:Lcom/fpnavigation/service/FpNavigationManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v1

    .line 101
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method public getKeyFromPhoneManager(I)V
    .locals 4
    .param p1, "keyCode"    # I

    .prologue
    .line 223
    sget-boolean v1, Lcom/fpnavigation/service/FpNavigationManager;->IS_EGISTEC:Z

    if-eqz v1, :cond_0

    .line 224
    return-void

    .line 226
    :cond_0
    sget-object v1, Lcom/fpnavigation/service/FpNavigationManager;->mService:Lcom/fpnavigation/service/IFpNavigationService;

    if-eqz v1, :cond_1

    .line 228
    const-string/jumbo v1, "FpNavigationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "get key = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :try_start_0
    sget-object v1, Lcom/fpnavigation/service/FpNavigationManager;->mService:Lcom/fpnavigation/service/IFpNavigationService;

    invoke-interface {v1, p1}, Lcom/fpnavigation/service/IFpNavigationService;->getKeyFromPhoneManager(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    :cond_1
    :goto_0
    return-void

    .line 231
    :catch_0
    move-exception v0

    .line 232
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public register(Lcom/fpnavigation/service/FpNavigationManager$IdentifyCallback;)V
    .locals 6
    .param p1, "callback"    # Lcom/fpnavigation/service/FpNavigationManager$IdentifyCallback;

    .prologue
    .line 183
    if-nez p1, :cond_0

    .line 184
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Must supply an enrollment callback"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 186
    :cond_0
    iput-object p1, p0, Lcom/fpnavigation/service/FpNavigationManager;->mClientReceiver:Lcom/fpnavigation/service/FpNavigationManager$IdentifyCallback;

    .line 188
    const-string/jumbo v1, "FpNavigationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mClient: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/fpnavigation/service/FpNavigationManager;->mClient:Lcom/fpnavigation/service/IFpNavigationClient;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    sget-object v1, Lcom/fpnavigation/service/FpNavigationManager;->mService:Lcom/fpnavigation/service/IFpNavigationService;

    if-nez v1, :cond_1

    .line 190
    sget-object v1, Lcom/fpnavigation/service/FpNavigationManager;->mHandler:Landroid/os/Handler;

    sget-object v2, Lcom/fpnavigation/service/FpNavigationManager;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0xc8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 191
    return-void

    .line 194
    :cond_1
    :try_start_0
    sget-object v1, Lcom/fpnavigation/service/FpNavigationManager;->mService:Lcom/fpnavigation/service/IFpNavigationService;

    iget-object v2, p0, Lcom/fpnavigation/service/FpNavigationManager;->mClient:Lcom/fpnavigation/service/IFpNavigationClient;

    invoke-interface {v1, v2}, Lcom/fpnavigation/service/IFpNavigationService;->register(Lcom/fpnavigation/service/IFpNavigationClient;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    :goto_0
    return-void

    .line 195
    :catch_0
    move-exception v0

    .line 196
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "FpNavigationManager"

    const-string/jumbo v2, "Remote exception while authenticating: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public startService()Z
    .locals 6

    .prologue
    .line 147
    sget-object v2, Lcom/fpnavigation/service/FpNavigationManager;->mService:Lcom/fpnavigation/service/IFpNavigationService;

    if-eqz v2, :cond_0

    .line 149
    :try_start_0
    sget-object v2, Lcom/fpnavigation/service/FpNavigationManager;->mService:Lcom/fpnavigation/service/IFpNavigationService;

    invoke-interface {v2}, Lcom/fpnavigation/service/IFpNavigationService;->startNavigation()Z

    move-result v2

    iput-boolean v2, p0, Lcom/fpnavigation/service/FpNavigationManager;->startResult:Z

    .line 150
    iget-boolean v2, p0, Lcom/fpnavigation/service/FpNavigationManager;->startResult:Z

    if-nez v2, :cond_0

    .line 151
    sget-object v2, Lcom/fpnavigation/service/FpNavigationManager;->mHandler:Landroid/os/Handler;

    sget-object v3, Lcom/fpnavigation/service/FpNavigationManager;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    :cond_0
    :goto_0
    const-string/jumbo v2, "FpNavigationManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startService status ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/fpnavigation/service/FpNavigationManager;->startResult:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-boolean v2, p0, Lcom/fpnavigation/service/FpNavigationManager;->startResult:Z

    return v2

    .line 155
    :catch_0
    move-exception v1

    .line 156
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "FpNavigationManager"

    const-string/jumbo v3, "sleep Service"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 153
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 154
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "FpNavigationManager"

    const-string/jumbo v3, "Failed to open Fingerprint Service"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public stopService()Z
    .locals 6

    .prologue
    .line 164
    sget-object v1, Lcom/fpnavigation/service/FpNavigationManager;->mService:Lcom/fpnavigation/service/IFpNavigationService;

    if-eqz v1, :cond_0

    .line 166
    :try_start_0
    sget-object v1, Lcom/fpnavigation/service/FpNavigationManager;->mService:Lcom/fpnavigation/service/IFpNavigationService;

    invoke-interface {v1}, Lcom/fpnavigation/service/IFpNavigationService;->stopNavigation()Z

    move-result v1

    iput-boolean v1, p0, Lcom/fpnavigation/service/FpNavigationManager;->stopResult:Z

    .line 168
    iget-boolean v1, p0, Lcom/fpnavigation/service/FpNavigationManager;->stopResult:Z

    if-nez v1, :cond_0

    .line 169
    sget-object v1, Lcom/fpnavigation/service/FpNavigationManager;->mHandler:Landroid/os/Handler;

    sget-object v2, Lcom/fpnavigation/service/FpNavigationManager;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0x64

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :cond_0
    :goto_0
    const-string/jumbo v1, "FpNavigationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stopService status ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/fpnavigation/service/FpNavigationManager;->stopResult:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-boolean v1, p0, Lcom/fpnavigation/service/FpNavigationManager;->stopResult:Z

    return v1

    .line 171
    :catch_0
    move-exception v0

    .line 172
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "FpNavigationManager"

    const-string/jumbo v2, "Failed to open Fingerprint Service"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unRegister()V
    .locals 3

    .prologue
    .line 204
    :try_start_0
    iget-object v1, p0, Lcom/fpnavigation/service/FpNavigationManager;->mClient:Lcom/fpnavigation/service/IFpNavigationClient;

    if-nez v1, :cond_0

    .line 206
    const-string/jumbo v1, "FpNavigationManager"

    const-string/jumbo v2, "mClient is null "

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    return-void

    .line 210
    :cond_0
    sget-object v1, Lcom/fpnavigation/service/FpNavigationManager;->mService:Lcom/fpnavigation/service/IFpNavigationService;

    if-nez v1, :cond_1

    .line 211
    return-void

    .line 214
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fpnavigation/service/FpNavigationManager;->mClientReceiver:Lcom/fpnavigation/service/FpNavigationManager$IdentifyCallback;

    .line 215
    sget-object v1, Lcom/fpnavigation/service/FpNavigationManager;->mService:Lcom/fpnavigation/service/IFpNavigationService;

    iget-object v2, p0, Lcom/fpnavigation/service/FpNavigationManager;->mClient:Lcom/fpnavigation/service/IFpNavigationClient;

    invoke-interface {v1, v2}, Lcom/fpnavigation/service/IFpNavigationService;->unRegister(Lcom/fpnavigation/service/IFpNavigationClient;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    :goto_0
    return-void

    .line 217
    :catch_0
    move-exception v0

    .line 218
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
