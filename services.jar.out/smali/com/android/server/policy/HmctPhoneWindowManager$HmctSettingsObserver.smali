.class Lcom/android/server/policy/HmctPhoneWindowManager$HmctSettingsObserver;
.super Landroid/database/ContentObserver;
.source "HmctPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/HmctPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HmctSettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/HmctPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/HmctPhoneWindowManager;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/HmctPhoneWindowManager;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 515
    iput-object p1, p0, Lcom/android/server/policy/HmctPhoneWindowManager$HmctSettingsObserver;->this$0:Lcom/android/server/policy/HmctPhoneWindowManager;

    .line 516
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 515
    return-void
.end method


# virtual methods
.method observe()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 521
    iget-object v1, p0, Lcom/android/server/policy/HmctPhoneWindowManager$HmctSettingsObserver;->this$0:Lcom/android/server/policy/HmctPhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/HmctPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 524
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v1, "key_home_long_press_action"

    .line 523
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 527
    const-string/jumbo v1, "key_switch_long_press_action"

    .line 526
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 530
    const-string/jumbo v1, "key_camera_short_press_action"

    .line 529
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 534
    const-string/jumbo v1, "powermanager_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 536
    const-string/jumbo v1, "driving_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 538
    const-string/jumbo v1, "driving_mode_foreground"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 547
    const-string/jumbo v1, "touch_prevent_showing"

    .line 546
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 554
    const-string/jumbo v1, "single_hand_enable"

    .line 553
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 561
    const-string/jumbo v1, "drophover_enable"

    .line 560
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 566
    const-string/jumbo v1, "up_volume_keys_setting"

    .line 565
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 575
    const-string/jumbo v1, "key_home_wake_up_voice_assistant_action"

    .line 574
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 578
    iget-object v1, p0, Lcom/android/server/policy/HmctPhoneWindowManager$HmctSettingsObserver;->this$0:Lcom/android/server/policy/HmctPhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/HmctPhoneWindowManager;->hmctUpdateSettings()V

    .line 519
    return-void
.end method

.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 582
    iget-object v0, p0, Lcom/android/server/policy/HmctPhoneWindowManager$HmctSettingsObserver;->this$0:Lcom/android/server/policy/HmctPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/HmctPhoneWindowManager;->hmctUpdateSettings()V

    .line 581
    return-void
.end method
