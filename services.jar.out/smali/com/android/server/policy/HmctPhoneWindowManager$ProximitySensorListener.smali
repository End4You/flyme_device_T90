.class Lcom/android/server/policy/HmctPhoneWindowManager$ProximitySensorListener;
.super Ljava/lang/Object;
.source "HmctPhoneWindowManager.java"

# interfaces
.implements Lcom/android/server/policy/ProximitySensorManager$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/HmctPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProximitySensorListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/HmctPhoneWindowManager;


# direct methods
.method private constructor <init>(Lcom/android/server/policy/HmctPhoneWindowManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/HmctPhoneWindowManager;

    .prologue
    .line 3530
    iput-object p1, p0, Lcom/android/server/policy/HmctPhoneWindowManager$ProximitySensorListener;->this$0:Lcom/android/server/policy/HmctPhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/policy/HmctPhoneWindowManager;Lcom/android/server/policy/HmctPhoneWindowManager$ProximitySensorListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/HmctPhoneWindowManager;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/policy/HmctPhoneWindowManager$ProximitySensorListener;-><init>(Lcom/android/server/policy/HmctPhoneWindowManager;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized onFar()V
    .locals 2

    .prologue
    monitor-enter p0

    .line 3538
    :try_start_0
    const-string/jumbo v0, "HmctWindowManager"

    const-string/jumbo v1, "tzyl ProximitySensorListener : onFar"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3539
    iget-object v0, p0, Lcom/android/server/policy/HmctPhoneWindowManager$ProximitySensorListener;->this$0:Lcom/android/server/policy/HmctPhoneWindowManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/policy/HmctPhoneWindowManager;->-set2(Lcom/android/server/policy/HmctPhoneWindowManager;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 3537
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onNear()V
    .locals 2

    .prologue
    monitor-enter p0

    .line 3533
    :try_start_0
    const-string/jumbo v0, "HmctWindowManager"

    const-string/jumbo v1, "tzyl ProximitySensorListener : onNear"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3534
    iget-object v0, p0, Lcom/android/server/policy/HmctPhoneWindowManager$ProximitySensorListener;->this$0:Lcom/android/server/policy/HmctPhoneWindowManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/policy/HmctPhoneWindowManager;->-set2(Lcom/android/server/policy/HmctPhoneWindowManager;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 3532
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
