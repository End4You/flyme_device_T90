.class Lcom/android/server/policy/HmctPhoneWindowManager$8;
.super Ljava/lang/Object;
.source "HmctPhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/HmctPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/HmctPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/HmctPhoneWindowManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/HmctPhoneWindowManager;

    .prologue
    .line 2718
    iput-object p1, p0, Lcom/android/server/policy/HmctPhoneWindowManager$8;->this$0:Lcom/android/server/policy/HmctPhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 2721
    const-string/jumbo v3, "HmctWindowManager"

    const-string/jumbo v4, "FL mStartFlightLights"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2722
    iget-object v3, p0, Lcom/android/server/policy/HmctPhoneWindowManager$8;->this$0:Lcom/android/server/policy/HmctPhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/server/policy/HmctPhoneWindowManager;->getPointValue()I

    move-result v3

    const/16 v4, 0xff

    if-eq v3, v4, :cond_0

    invoke-static {}, Lcom/android/server/policy/HmctPhoneWindowManager;->-get6()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2728
    const-string/jumbo v3, "HmctWindowManager"

    const-string/jumbo v4, "FL mStartFlightLights wait 50ms for sensor"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2730
    const-wide/16 v4, 0x32

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2734
    :goto_0
    const-string/jumbo v3, "HmctWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "FL mStartFlightLights Near : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/policy/HmctPhoneWindowManager$8;->this$0:Lcom/android/server/policy/HmctPhoneWindowManager;

    invoke-static {v5}, Lcom/android/server/policy/HmctPhoneWindowManager;->-get2(Lcom/android/server/policy/HmctPhoneWindowManager;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2735
    iget-object v3, p0, Lcom/android/server/policy/HmctPhoneWindowManager$8;->this$0:Lcom/android/server/policy/HmctPhoneWindowManager;

    invoke-static {v3}, Lcom/android/server/policy/HmctPhoneWindowManager;->-get10(Lcom/android/server/policy/HmctPhoneWindowManager;)Lcom/android/server/policy/HmctPhoneWindowManager$ProximitySensor;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/policy/HmctPhoneWindowManager$ProximitySensor;->-wrap0(Lcom/android/server/policy/HmctPhoneWindowManager$ProximitySensor;)V

    .line 2736
    iget-object v3, p0, Lcom/android/server/policy/HmctPhoneWindowManager$8;->this$0:Lcom/android/server/policy/HmctPhoneWindowManager;

    invoke-static {v3}, Lcom/android/server/policy/HmctPhoneWindowManager;->-get2(Lcom/android/server/policy/HmctPhoneWindowManager;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2737
    iget-object v3, p0, Lcom/android/server/policy/HmctPhoneWindowManager$8;->this$0:Lcom/android/server/policy/HmctPhoneWindowManager;

    invoke-static {v3}, Lcom/android/server/policy/HmctPhoneWindowManager;->-wrap4(Lcom/android/server/policy/HmctPhoneWindowManager;)V

    .line 2738
    return-void

    .line 2723
    :cond_0
    const-string/jumbo v3, "HmctWindowManager"

    const-string/jumbo v4, "FL return for illegal State"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2724
    iget-object v3, p0, Lcom/android/server/policy/HmctPhoneWindowManager$8;->this$0:Lcom/android/server/policy/HmctPhoneWindowManager;

    invoke-static {v3}, Lcom/android/server/policy/HmctPhoneWindowManager;->-wrap4(Lcom/android/server/policy/HmctPhoneWindowManager;)V

    .line 2725
    return-void

    .line 2731
    :catch_0
    move-exception v1

    .line 2732
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "HmctWindowManager"

    const-string/jumbo v4, "FL WARNING - there is sth wrong during sleep"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2741
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    const-string/jumbo v3, "HmctWindowManager"

    const-string/jumbo v4, "FL mStartFlightLights vibe first"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2742
    iget-object v3, p0, Lcom/android/server/policy/HmctPhoneWindowManager$8;->this$0:Lcom/android/server/policy/HmctPhoneWindowManager;

    const/4 v4, 0x0

    const v5, 0x31326

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/policy/HmctPhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 2744
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 2745
    .local v2, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v3, "com.android.flashlight"

    const-string/jumbo v4, "com.android.flashlight.FlashLightActivity"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2746
    .local v0, "cn":Landroid/content/ComponentName;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2747
    const-string/jumbo v3, "trigged-name"

    const-string/jumbo v4, "hmct_pw"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2748
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2750
    iget-object v3, p0, Lcom/android/server/policy/HmctPhoneWindowManager$8;->this$0:Lcom/android/server/policy/HmctPhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/HmctPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager;->wakeUp(J)V

    .line 2753
    :try_start_1
    const-string/jumbo v3, "HmctWindowManager"

    const-string/jumbo v4, "FL Start FlightLights"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2754
    iget-object v3, p0, Lcom/android/server/policy/HmctPhoneWindowManager$8;->this$0:Lcom/android/server/policy/HmctPhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/HmctPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2758
    iget-object v3, p0, Lcom/android/server/policy/HmctPhoneWindowManager$8;->this$0:Lcom/android/server/policy/HmctPhoneWindowManager;

    invoke-virtual {v3, v7}, Lcom/android/server/policy/HmctPhoneWindowManager;->setPointValue(Z)V

    .line 2759
    iget-object v3, p0, Lcom/android/server/policy/HmctPhoneWindowManager$8;->this$0:Lcom/android/server/policy/HmctPhoneWindowManager;

    invoke-static {v3}, Lcom/android/server/policy/HmctPhoneWindowManager;->-wrap4(Lcom/android/server/policy/HmctPhoneWindowManager;)V

    .line 2760
    iget-object v3, p0, Lcom/android/server/policy/HmctPhoneWindowManager$8;->this$0:Lcom/android/server/policy/HmctPhoneWindowManager;

    invoke-static {v3}, Lcom/android/server/policy/HmctPhoneWindowManager;->-wrap8(Lcom/android/server/policy/HmctPhoneWindowManager;)V

    .line 2720
    :goto_1
    return-void

    .line 2755
    :catch_1
    move-exception v1

    .line 2756
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v3, "HmctWindowManager"

    const-string/jumbo v4, "FL Activity not found for mStartFlightLights"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2758
    iget-object v3, p0, Lcom/android/server/policy/HmctPhoneWindowManager$8;->this$0:Lcom/android/server/policy/HmctPhoneWindowManager;

    invoke-virtual {v3, v7}, Lcom/android/server/policy/HmctPhoneWindowManager;->setPointValue(Z)V

    .line 2759
    iget-object v3, p0, Lcom/android/server/policy/HmctPhoneWindowManager$8;->this$0:Lcom/android/server/policy/HmctPhoneWindowManager;

    invoke-static {v3}, Lcom/android/server/policy/HmctPhoneWindowManager;->-wrap4(Lcom/android/server/policy/HmctPhoneWindowManager;)V

    .line 2760
    iget-object v3, p0, Lcom/android/server/policy/HmctPhoneWindowManager$8;->this$0:Lcom/android/server/policy/HmctPhoneWindowManager;

    invoke-static {v3}, Lcom/android/server/policy/HmctPhoneWindowManager;->-wrap8(Lcom/android/server/policy/HmctPhoneWindowManager;)V

    goto :goto_1

    .line 2757
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 2758
    iget-object v4, p0, Lcom/android/server/policy/HmctPhoneWindowManager$8;->this$0:Lcom/android/server/policy/HmctPhoneWindowManager;

    invoke-virtual {v4, v7}, Lcom/android/server/policy/HmctPhoneWindowManager;->setPointValue(Z)V

    .line 2759
    iget-object v4, p0, Lcom/android/server/policy/HmctPhoneWindowManager$8;->this$0:Lcom/android/server/policy/HmctPhoneWindowManager;

    invoke-static {v4}, Lcom/android/server/policy/HmctPhoneWindowManager;->-wrap4(Lcom/android/server/policy/HmctPhoneWindowManager;)V

    .line 2760
    iget-object v4, p0, Lcom/android/server/policy/HmctPhoneWindowManager$8;->this$0:Lcom/android/server/policy/HmctPhoneWindowManager;

    invoke-static {v4}, Lcom/android/server/policy/HmctPhoneWindowManager;->-wrap8(Lcom/android/server/policy/HmctPhoneWindowManager;)V

    .line 2757
    throw v3
.end method
