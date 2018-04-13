.class Lcom/android/server/policy/ProximitySensorManager$ProximitySensorEventListener;
.super Ljava/lang/Object;
.source "ProximitySensorManager.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/ProximitySensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProximitySensorEventListener"
.end annotation


# static fields
.field private static final synthetic -com-android-server-policy-ProximitySensorManager$StateSwitchesValues:[I = null

.field private static final FAR_THRESHOLD:F = 5.0f


# instance fields
.field private mLastState:Lcom/android/server/policy/ProximitySensorManager$State;

.field private final mListener:Lcom/android/server/policy/ProximitySensorManager$Listener;

.field private final mMaxValue:F

.field private final mProximitySensor:Landroid/hardware/Sensor;

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private mWaitingForFarState:Z


# direct methods
.method private static synthetic -getcom-android-server-policy-ProximitySensorManager$StateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/server/policy/ProximitySensorManager$ProximitySensorEventListener;->-com-android-server-policy-ProximitySensorManager$StateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/policy/ProximitySensorManager$ProximitySensorEventListener;->-com-android-server-policy-ProximitySensorManager$StateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/server/policy/ProximitySensorManager$State;->values()[Lcom/android/server/policy/ProximitySensorManager$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/server/policy/ProximitySensorManager$State;->FAR:Lcom/android/server/policy/ProximitySensorManager$State;

    invoke-virtual {v1}, Lcom/android/server/policy/ProximitySensorManager$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/server/policy/ProximitySensorManager$State;->NEAR:Lcom/android/server/policy/ProximitySensorManager$State;

    invoke-virtual {v1}, Lcom/android/server/policy/ProximitySensorManager$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    sput-object v0, Lcom/android/server/policy/ProximitySensorManager$ProximitySensorEventListener;->-com-android-server-policy-ProximitySensorManager$StateSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/hardware/SensorManager;Landroid/hardware/Sensor;Lcom/android/server/policy/ProximitySensorManager$Listener;)V
    .locals 1
    .param p1, "sensorManager"    # Landroid/hardware/SensorManager;
    .param p2, "proximitySensor"    # Landroid/hardware/Sensor;
    .param p3, "listener"    # Lcom/android/server/policy/ProximitySensorManager$Listener;

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Lcom/android/server/policy/ProximitySensorManager$ProximitySensorEventListener;->mSensorManager:Landroid/hardware/SensorManager;

    .line 105
    iput-object p2, p0, Lcom/android/server/policy/ProximitySensorManager$ProximitySensorEventListener;->mProximitySensor:Landroid/hardware/Sensor;

    .line 106
    invoke-virtual {p2}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v0

    iput v0, p0, Lcom/android/server/policy/ProximitySensorManager$ProximitySensorEventListener;->mMaxValue:F

    .line 107
    iput-object p3, p0, Lcom/android/server/policy/ProximitySensorManager$ProximitySensorEventListener;->mListener:Lcom/android/server/policy/ProximitySensorManager$Listener;

    .line 109
    sget-object v0, Lcom/android/server/policy/ProximitySensorManager$State;->FAR:Lcom/android/server/policy/ProximitySensorManager$State;

    iput-object v0, p0, Lcom/android/server/policy/ProximitySensorManager$ProximitySensorEventListener;->mLastState:Lcom/android/server/policy/ProximitySensorManager$State;

    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/ProximitySensorManager$ProximitySensorEventListener;->mWaitingForFarState:Z

    .line 103
    return-void
.end method

.method private getStateFromValue(F)Lcom/android/server/policy/ProximitySensorManager$State;
    .locals 4
    .param p1, "value"    # F

    .prologue
    const/high16 v3, 0x40a00000    # 5.0f

    .line 160
    const-string/jumbo v0, "SENSOR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tzyl -- getStateFromValue :  value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 161
    const-string/jumbo v2, " FAR_THRESHOLD = "

    .line 160
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 161
    const-string/jumbo v2, " mMaxValue = "

    .line 160
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 161
    iget v2, p0, Lcom/android/server/policy/ProximitySensorManager$ProximitySensorEventListener;->mMaxValue:F

    .line 160
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    cmpl-float v0, p1, v3

    if-gez v0, :cond_0

    iget v0, p0, Lcom/android/server/policy/ProximitySensorManager$ProximitySensorEventListener;->mMaxValue:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/android/server/policy/ProximitySensorManager$State;->FAR:Lcom/android/server/policy/ProximitySensorManager$State;

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/android/server/policy/ProximitySensorManager$State;->NEAR:Lcom/android/server/policy/ProximitySensorManager$State;

    goto :goto_0
.end method

.method private unregisterWithoutNotification()V
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/server/policy/ProximitySensorManager$ProximitySensorEventListener;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 203
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/ProximitySensorManager$ProximitySensorEventListener;->mWaitingForFarState:Z

    .line 201
    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 151
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v5, 0x0

    .line 115
    const-string/jumbo v2, "SENSOR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "tzyl -- onSensorChanged :  event.values = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    if-nez v2, :cond_0

    return-void

    .line 119
    :cond_0
    const-string/jumbo v2, "SENSOR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "tzyl -- onSensorChanged :  event.values.length = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    array-length v2, v2

    if-nez v2, :cond_1

    return-void

    .line 121
    :cond_1
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v2, v5

    .line 123
    .local v1, "value":F
    invoke-direct {p0, v1}, Lcom/android/server/policy/ProximitySensorManager$ProximitySensorEventListener;->getStateFromValue(F)Lcom/android/server/policy/ProximitySensorManager$State;

    move-result-object v0

    .line 125
    .local v0, "state":Lcom/android/server/policy/ProximitySensorManager$State;
    const-string/jumbo v2, "SENSOR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "tzyl -- onSensorChanged :  value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 126
    const-string/jumbo v4, " state = "

    .line 125
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 126
    const-string/jumbo v4, " mLastState = "

    .line 125
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 126
    iget-object v4, p0, Lcom/android/server/policy/ProximitySensorManager$ProximitySensorEventListener;->mLastState:Lcom/android/server/policy/ProximitySensorManager$State;

    .line 125
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    monitor-enter p0

    .line 130
    :try_start_0
    iget-object v2, p0, Lcom/android/server/policy/ProximitySensorManager$ProximitySensorEventListener;->mLastState:Lcom/android/server/policy/ProximitySensorManager$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v2, :cond_2

    monitor-exit p0

    return-void

    .line 132
    :cond_2
    :try_start_1
    iput-object v0, p0, Lcom/android/server/policy/ProximitySensorManager$ProximitySensorEventListener;->mLastState:Lcom/android/server/policy/ProximitySensorManager$State;

    .line 134
    iget-boolean v2, p0, Lcom/android/server/policy/ProximitySensorManager$ProximitySensorEventListener;->mWaitingForFarState:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/policy/ProximitySensorManager$ProximitySensorEventListener;->mLastState:Lcom/android/server/policy/ProximitySensorManager$State;

    sget-object v3, Lcom/android/server/policy/ProximitySensorManager$State;->FAR:Lcom/android/server/policy/ProximitySensorManager$State;

    if-ne v2, v3, :cond_3

    .line 135
    invoke-direct {p0}, Lcom/android/server/policy/ProximitySensorManager$ProximitySensorEventListener;->unregisterWithoutNotification()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    monitor-exit p0

    .line 139
    invoke-static {}, Lcom/android/server/policy/ProximitySensorManager$ProximitySensorEventListener;->-getcom-android-server-policy-ProximitySensorManager$StateSwitchesValues()[I

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/server/policy/ProximitySensorManager$State;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 114
    :goto_0
    return-void

    .line 128
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 141
    :pswitch_0
    iget-object v2, p0, Lcom/android/server/policy/ProximitySensorManager$ProximitySensorEventListener;->mListener:Lcom/android/server/policy/ProximitySensorManager$Listener;

    invoke-interface {v2}, Lcom/android/server/policy/ProximitySensorManager$Listener;->onNear()V

    goto :goto_0

    .line 145
    :pswitch_1
    iget-object v2, p0, Lcom/android/server/policy/ProximitySensorManager$ProximitySensorEventListener;->mListener:Lcom/android/server/policy/ProximitySensorManager$Listener;

    invoke-interface {v2}, Lcom/android/server/policy/ProximitySensorManager$Listener;->onFar()V

    goto :goto_0

    .line 139
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized register()V
    .locals 3

    .prologue
    monitor-enter p0

    .line 180
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/ProximitySensorManager$ProximitySensorEventListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/policy/ProximitySensorManager$ProximitySensorEventListener;->mProximitySensor:Landroid/hardware/Sensor;

    const/4 v2, 0x2

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 182
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/ProximitySensorManager$ProximitySensorEventListener;->mWaitingForFarState:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 178
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public unregister()V
    .locals 2

    .prologue
    .line 187
    monitor-enter p0

    .line 188
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/policy/ProximitySensorManager$ProximitySensorEventListener;->unregisterWithoutNotification()V

    .line 189
    iget-object v0, p0, Lcom/android/server/policy/ProximitySensorManager$ProximitySensorEventListener;->mLastState:Lcom/android/server/policy/ProximitySensorManager$State;

    .line 192
    .local v0, "lastState":Lcom/android/server/policy/ProximitySensorManager$State;
    sget-object v1, Lcom/android/server/policy/ProximitySensorManager$State;->FAR:Lcom/android/server/policy/ProximitySensorManager$State;

    iput-object v1, p0, Lcom/android/server/policy/ProximitySensorManager$ProximitySensorEventListener;->mLastState:Lcom/android/server/policy/ProximitySensorManager$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 185
    return-void

    .line 187
    .end local v0    # "lastState":Lcom/android/server/policy/ProximitySensorManager$State;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized unregisterWhenFar()V
    .locals 2

    .prologue
    monitor-enter p0

    .line 169
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/ProximitySensorManager$ProximitySensorEventListener;->mLastState:Lcom/android/server/policy/ProximitySensorManager$State;

    sget-object v1, Lcom/android/server/policy/ProximitySensorManager$State;->FAR:Lcom/android/server/policy/ProximitySensorManager$State;

    if-ne v0, v1, :cond_0

    .line 171
    invoke-direct {p0}, Lcom/android/server/policy/ProximitySensorManager$ProximitySensorEventListener;->unregisterWithoutNotification()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    .line 168
    return-void

    .line 173
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/android/server/policy/ProximitySensorManager$ProximitySensorEventListener;->mWaitingForFarState:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
