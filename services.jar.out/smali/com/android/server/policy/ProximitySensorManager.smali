.class public Lcom/android/server/policy/ProximitySensorManager;
.super Ljava/lang/Object;
.source "ProximitySensorManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/ProximitySensorManager$Listener;,
        Lcom/android/server/policy/ProximitySensorManager$ProximitySensorEventListener;,
        Lcom/android/server/policy/ProximitySensorManager$State;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true


# instance fields
.field private mManagerEnabled:Z

.field private final mProximitySensorListener:Lcom/android/server/policy/ProximitySensorManager$ProximitySensorEventListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/policy/ProximitySensorManager$Listener;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/android/server/policy/ProximitySensorManager$Listener;

    .prologue
    const/4 v3, 0x0

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    const-string/jumbo v2, "sensor"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    .line 210
    .local v1, "sensorManager":Landroid/hardware/SensorManager;
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 211
    .local v0, "proximitySensor":Landroid/hardware/Sensor;
    if-nez v0, :cond_0

    .line 213
    iput-object v3, p0, Lcom/android/server/policy/ProximitySensorManager;->mProximitySensorListener:Lcom/android/server/policy/ProximitySensorManager$ProximitySensorEventListener;

    .line 207
    :goto_0
    return-void

    .line 216
    :cond_0
    new-instance v2, Lcom/android/server/policy/ProximitySensorManager$ProximitySensorEventListener;

    invoke-direct {v2, v1, v0, p2}, Lcom/android/server/policy/ProximitySensorManager$ProximitySensorEventListener;-><init>(Landroid/hardware/SensorManager;Landroid/hardware/Sensor;Lcom/android/server/policy/ProximitySensorManager$Listener;)V

    .line 215
    iput-object v2, p0, Lcom/android/server/policy/ProximitySensorManager;->mProximitySensorListener:Lcom/android/server/policy/ProximitySensorManager$ProximitySensorEventListener;

    goto :goto_0
.end method


# virtual methods
.method public disable(Z)V
    .locals 3
    .param p1, "waitForFarState"    # Z

    .prologue
    .line 254
    const-string/jumbo v0, "SENSOR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tzyl -- disable :  mProximitySensorListener = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/ProximitySensorManager;->mProximitySensorListener:Lcom/android/server/policy/ProximitySensorManager$ProximitySensorEventListener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 255
    const-string/jumbo v2, " mManagerEnabled = "

    .line 254
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 255
    iget-boolean v2, p0, Lcom/android/server/policy/ProximitySensorManager;->mManagerEnabled:Z

    .line 254
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 255
    const-string/jumbo v2, " waitForFarState = "

    .line 254
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-object v0, p0, Lcom/android/server/policy/ProximitySensorManager;->mProximitySensorListener:Lcom/android/server/policy/ProximitySensorManager$ProximitySensorEventListener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/ProximitySensorManager;->mManagerEnabled:Z

    if-eqz v0, :cond_0

    .line 258
    if-eqz p1, :cond_1

    .line 259
    iget-object v0, p0, Lcom/android/server/policy/ProximitySensorManager;->mProximitySensorListener:Lcom/android/server/policy/ProximitySensorManager$ProximitySensorEventListener;

    invoke-virtual {v0}, Lcom/android/server/policy/ProximitySensorManager$ProximitySensorEventListener;->unregisterWhenFar()V

    .line 263
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/ProximitySensorManager;->mManagerEnabled:Z

    .line 252
    :cond_0
    return-void

    .line 261
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/ProximitySensorManager;->mProximitySensorListener:Lcom/android/server/policy/ProximitySensorManager$ProximitySensorEventListener;

    invoke-virtual {v0}, Lcom/android/server/policy/ProximitySensorManager$ProximitySensorEventListener;->unregister()V

    goto :goto_0
.end method

.method public enable()V
    .locals 3

    .prologue
    .line 229
    const-string/jumbo v0, "SENSOR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tzyl -- enable :  mProximitySensorListener = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/ProximitySensorManager;->mProximitySensorListener:Lcom/android/server/policy/ProximitySensorManager$ProximitySensorEventListener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 230
    const-string/jumbo v2, " mManagerEnabled = "

    .line 229
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 230
    iget-boolean v2, p0, Lcom/android/server/policy/ProximitySensorManager;->mManagerEnabled:Z

    .line 229
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget-object v0, p0, Lcom/android/server/policy/ProximitySensorManager;->mProximitySensorListener:Lcom/android/server/policy/ProximitySensorManager$ProximitySensorEventListener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/ProximitySensorManager;->mManagerEnabled:Z

    if-eqz v0, :cond_1

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 232
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/ProximitySensorManager;->mProximitySensorListener:Lcom/android/server/policy/ProximitySensorManager$ProximitySensorEventListener;

    invoke-virtual {v0}, Lcom/android/server/policy/ProximitySensorManager$ProximitySensorEventListener;->register()V

    .line 233
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/ProximitySensorManager;->mManagerEnabled:Z

    goto :goto_0
.end method
