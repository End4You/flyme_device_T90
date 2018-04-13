.class Lcom/android/server/usb/UsbDeviceManager$UsbHandler$2;
.super Landroid/content/BroadcastReceiver;
.source "UsbDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbDeviceManager$UsbHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    .prologue
    .line 630
    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$2;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const v6, 0x1040437

    const/4 v3, 0x0

    .line 633
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 634
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string/jumbo v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 635
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$2;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    const-string/jumbo v4, "plugged"

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v2, v4}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->-set0(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;I)I

    .line 637
    const-string/jumbo v4, "UsbDeviceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onReceive - mUsbNotificationId == charging ? "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$2;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    invoke-static {v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->-get4(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;)I

    move-result v2

    if-ne v2, v6, :cond_2

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, ", mSettingUsbCharging: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$2;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    iget-object v5, v5, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v5}, Lcom/android/server/usb/UsbDeviceManager;->-get17(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 638
    const-string/jumbo v5, " mPlugType = "

    .line 637
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 638
    iget-object v5, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$2;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    invoke-static {v5}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->-get2(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;)I

    move-result v5

    .line 637
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 638
    const-string/jumbo v5, " mConnected = "

    .line 637
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 638
    iget-object v5, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$2;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    invoke-static {v5}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->-get0(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;)Z

    move-result v5

    .line 637
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 638
    const-string/jumbo v5, " mCurrentFunctions = "

    .line 637
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 638
    iget-object v5, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$2;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    invoke-static {v5}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->-get1(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;)Ljava/lang/String;

    move-result-object v5

    .line 637
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$2;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    invoke-static {v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->-get2(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;)I

    move-result v2

    if-nez v2, :cond_3

    .line 640
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$2;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$2;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    invoke-static {v4}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->-get2(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;)I

    move-result v4

    invoke-static {v2, v4}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->-set1(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;I)I

    .line 641
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$2;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    iget-object v2, v2, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v2}, Lcom/android/server/usb/UsbDeviceManager;->-get17(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 642
    const-string/jumbo v2, "UsbDeviceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onReceive - BATTERY_CHANGED - [Update USB Notification] For [USB UNPLUGGED in USB Charging Mode] mSettingUsbCharging: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$2;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    iget-object v5, v5, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v5}, Lcom/android/server/usb/UsbDeviceManager;->-get17(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", mPlugType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$2;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    invoke-static {v5}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->-get2(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$2;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    invoke-static {v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->-wrap0(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;)V

    .line 646
    :cond_0
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$2;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    iget-object v2, v2, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v2}, Lcom/android/server/usb/UsbDeviceManager;->-get17(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 647
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$2;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    invoke-static {v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->-get0(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 648
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$2;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    invoke-virtual {v2, v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->removeMessages(I)V

    .line 649
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 650
    .local v1, "msg":Landroid/os/Message;
    iput v3, v1, Landroid/os/Message;->what:I

    .line 651
    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 652
    iput v3, v1, Landroid/os/Message;->arg2:I

    .line 653
    const-string/jumbo v2, "UsbDeviceManager"

    const-string/jumbo v3, "onReceive: ACTION_BATTERY_CHANGED -  sendMessageDelayed"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$2;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v1, v4, v5}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 632
    .end local v1    # "msg":Landroid/os/Message;
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v2, v3

    .line 637
    goto/16 :goto_0

    .line 658
    :cond_3
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$2;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    invoke-static {v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->-get2(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$2;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    invoke-static {v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->-get3(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;)I

    move-result v3

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$2;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    invoke-static {v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->-get2(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$2;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    iget-object v2, v2, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v2}, Lcom/android/server/usb/UsbDeviceManager;->-get6(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 659
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$2;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    iget-object v2, v2, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v2}, Lcom/android/server/usb/UsbDeviceManager;->-get12(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    move-result-object v2

    const/16 v3, 0xe

    invoke-virtual {v2, v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendEmptyMessage(I)Z

    .line 660
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$2;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$2;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    invoke-static {v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->-get2(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->-set1(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;I)I

    .line 662
    :cond_4
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$2;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    iget-object v2, v2, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v2}, Lcom/android/server/usb/UsbDeviceManager;->-get17(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 663
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$2;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    invoke-static {v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->-get4(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;)I

    move-result v2

    if-eq v2, v6, :cond_1

    .line 664
    const-string/jumbo v2, "UsbDeviceManager"

    const-string/jumbo v3, "onReceive - mSettingUsbCharging == true mSettingUsbCharging true  updateUsbNotification - > updateAdbNotification"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$2;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    invoke-static {v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->-wrap0(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;)V

    goto :goto_1
.end method
