.class Lcom/android/server/am/BatteryHistory$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "BatteryHistory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/BatteryHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/BatteryHistory;


# direct methods
.method constructor <init>(Lcom/android/server/am/BatteryHistory;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/BatteryHistory;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 464
    iput-object p1, p0, Lcom/android/server/am/BatteryHistory$SettingsObserver;->this$0:Lcom/android/server/am/BatteryHistory;

    .line 465
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 464
    return-void
.end method


# virtual methods
.method observe()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 469
    iget-object v1, p0, Lcom/android/server/am/BatteryHistory$SettingsObserver;->this$0:Lcom/android/server/am/BatteryHistory;

    invoke-static {v1}, Lcom/android/server/am/BatteryHistory;->-get2(Lcom/android/server/am/BatteryHistory;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 471
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v1, "batteryhistory_enabled"

    .line 470
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 474
    const-string/jumbo v1, "default_input_method"

    .line 473
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 476
    iget-object v1, p0, Lcom/android/server/am/BatteryHistory$SettingsObserver;->this$0:Lcom/android/server/am/BatteryHistory;

    invoke-static {v1}, Lcom/android/server/am/BatteryHistory;->-wrap1(Lcom/android/server/am/BatteryHistory;)V

    .line 468
    return-void
.end method

.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 480
    iget-object v0, p0, Lcom/android/server/am/BatteryHistory$SettingsObserver;->this$0:Lcom/android/server/am/BatteryHistory;

    invoke-static {v0}, Lcom/android/server/am/BatteryHistory;->-wrap1(Lcom/android/server/am/BatteryHistory;)V

    .line 479
    return-void
.end method
