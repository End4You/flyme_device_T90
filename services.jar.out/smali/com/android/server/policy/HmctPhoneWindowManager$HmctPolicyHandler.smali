.class Lcom/android/server/policy/HmctPhoneWindowManager$HmctPolicyHandler;
.super Landroid/os/Handler;
.source "HmctPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/HmctPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HmctPolicyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/HmctPhoneWindowManager;


# direct methods
.method private constructor <init>(Lcom/android/server/policy/HmctPhoneWindowManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/HmctPhoneWindowManager;

    .prologue
    .line 445
    iput-object p1, p0, Lcom/android/server/policy/HmctPhoneWindowManager$HmctPolicyHandler;->this$0:Lcom/android/server/policy/HmctPhoneWindowManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/policy/HmctPhoneWindowManager;Lcom/android/server/policy/HmctPhoneWindowManager$HmctPolicyHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/HmctPhoneWindowManager;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/policy/HmctPhoneWindowManager$HmctPolicyHandler;-><init>(Lcom/android/server/policy/HmctPhoneWindowManager;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 448
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 447
    :goto_0
    return-void

    .line 450
    :sswitch_0
    iget-object v1, p0, Lcom/android/server/policy/HmctPhoneWindowManager$HmctPolicyHandler;->this$0:Lcom/android/server/policy/HmctPhoneWindowManager;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/KeyEvent;

    invoke-virtual {v1, v0}, Lcom/android/server/policy/HmctPhoneWindowManager;->dispatchMediaKeyWithWakeLock(Landroid/view/KeyEvent;)V

    goto :goto_0

    .line 453
    :sswitch_1
    iget-object v3, p0, Lcom/android/server/policy/HmctPhoneWindowManager$HmctPolicyHandler;->this$0:Lcom/android/server/policy/HmctPhoneWindowManager;

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_0

    move v0, v1

    :goto_1
    invoke-static {v3, v2, v0}, Lcom/android/server/policy/HmctPhoneWindowManager;->-wrap9(Lcom/android/server/policy/HmctPhoneWindowManager;ZZ)V

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    .line 456
    :sswitch_2
    iget-object v0, p0, Lcom/android/server/policy/HmctPhoneWindowManager$HmctPolicyHandler;->this$0:Lcom/android/server/policy/HmctPhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/HmctPhoneWindowManager;->-wrap1(Lcom/android/server/policy/HmctPhoneWindowManager;)V

    goto :goto_0

    .line 460
    :sswitch_3
    iget-object v0, p0, Lcom/android/server/policy/HmctPhoneWindowManager$HmctPolicyHandler;->this$0:Lcom/android/server/policy/HmctPhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/HmctPhoneWindowManager;->-get10(Lcom/android/server/policy/HmctPhoneWindowManager;)Lcom/android/server/policy/HmctPhoneWindowManager$ProximitySensor;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/policy/HmctPhoneWindowManager$ProximitySensor;->-wrap0(Lcom/android/server/policy/HmctPhoneWindowManager$ProximitySensor;)V

    goto :goto_0

    .line 464
    :sswitch_4
    const-string/jumbo v0, "HmctWindowManager"

    const-string/jumbo v1, "burst msg MSG_VOLUMEDOWN_DELAYED_PRESS"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    iget-object v0, p0, Lcom/android/server/policy/HmctPhoneWindowManager$HmctPolicyHandler;->this$0:Lcom/android/server/policy/HmctPhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/HmctPhoneWindowManager;->-wrap3(Lcom/android/server/policy/HmctPhoneWindowManager;)V

    .line 466
    iget-object v0, p0, Lcom/android/server/policy/HmctPhoneWindowManager$HmctPolicyHandler;->this$0:Lcom/android/server/policy/HmctPhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/HmctPhoneWindowManager;->-wrap7(Lcom/android/server/policy/HmctPhoneWindowManager;)V

    goto :goto_0

    .line 469
    :sswitch_5
    const-string/jumbo v0, "HmctWindowManager"

    const-string/jumbo v1, "FL msg MSG_FILTER_CURRENT_BIND"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    iget-object v0, p0, Lcom/android/server/policy/HmctPhoneWindowManager$HmctPolicyHandler;->this$0:Lcom/android/server/policy/HmctPhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/HmctPhoneWindowManager;->-wrap3(Lcom/android/server/policy/HmctPhoneWindowManager;)V

    goto :goto_0

    .line 474
    :sswitch_6
    const-string/jumbo v0, "HmctWindowManager"

    const-string/jumbo v1, "FL msg MSG_VOLUMEUP_DELAYED_PRESS"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    iget-object v0, p0, Lcom/android/server/policy/HmctPhoneWindowManager$HmctPolicyHandler;->this$0:Lcom/android/server/policy/HmctPhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/HmctPhoneWindowManager;->-wrap4(Lcom/android/server/policy/HmctPhoneWindowManager;)V

    goto :goto_0

    .line 483
    :sswitch_7
    iget-object v3, p0, Lcom/android/server/policy/HmctPhoneWindowManager$HmctPolicyHandler;->this$0:Lcom/android/server/policy/HmctPhoneWindowManager;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_1

    :goto_2
    iget v0, p1, Landroid/os/Message;->arg2:I

    invoke-static {v3, v4, v5, v1, v0}, Lcom/android/server/policy/HmctPhoneWindowManager;->-wrap2(Lcom/android/server/policy/HmctPhoneWindowManager;JZI)V

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_2

    .line 486
    :sswitch_8
    iget-object v0, p0, Lcom/android/server/policy/HmctPhoneWindowManager$HmctPolicyHandler;->this$0:Lcom/android/server/policy/HmctPhoneWindowManager;

    invoke-static {v0, v1}, Lcom/android/server/policy/HmctPhoneWindowManager;->-set3(Lcom/android/server/policy/HmctPhoneWindowManager;Z)Z

    .line 487
    iget-object v0, p0, Lcom/android/server/policy/HmctPhoneWindowManager$HmctPolicyHandler;->this$0:Lcom/android/server/policy/HmctPhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/HmctPhoneWindowManager;->-get10(Lcom/android/server/policy/HmctPhoneWindowManager;)Lcom/android/server/policy/HmctPhoneWindowManager$ProximitySensor;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/policy/HmctPhoneWindowManager$ProximitySensor;->-wrap1(Lcom/android/server/policy/HmctPhoneWindowManager$ProximitySensor;)V

    goto :goto_0

    .line 448
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x9 -> :sswitch_1
        0x12 -> :sswitch_2
        0x15 -> :sswitch_3
        0x16 -> :sswitch_4
        0x17 -> :sswitch_5
        0x18 -> :sswitch_6
        0x19 -> :sswitch_7
        0x1a -> :sswitch_8
    .end sparse-switch
.end method
