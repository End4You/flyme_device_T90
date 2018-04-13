.class Lcom/android/server/policy/HmctPhoneWindowManager$10;
.super Landroid/content/BroadcastReceiver;
.source "HmctPhoneWindowManager.java"


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
    .line 3104
    iput-object p1, p0, Lcom/android/server/policy/HmctPhoneWindowManager$10;->this$0:Lcom/android/server/policy/HmctPhoneWindowManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 3108
    const-string/jumbo v0, "GESTURE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mNeedMakeCallAfterUnlock is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/server/policy/HmctPhoneWindowManager;->-get9()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3109
    invoke-static {}, Lcom/android/server/policy/HmctPhoneWindowManager;->-get9()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3110
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/policy/HmctPhoneWindowManager;->-set6(Z)Z

    .line 3111
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/server/policy/HmctPhoneWindowManager;->-set4(J)J

    .line 3113
    const-string/jumbo v0, "GESTURE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mGestureKeyguardUnlockTime is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/server/policy/HmctPhoneWindowManager;->-get7()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " , callNum"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/server/policy/HmctPhoneWindowManager;->-get1()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3114
    iget-object v0, p0, Lcom/android/server/policy/HmctPhoneWindowManager$10;->this$0:Lcom/android/server/policy/HmctPhoneWindowManager;

    invoke-static {}, Lcom/android/server/policy/HmctPhoneWindowManager;->-get1()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/policy/HmctPhoneWindowManager;->-wrap5(Lcom/android/server/policy/HmctPhoneWindowManager;Ljava/lang/String;)V

    .line 3106
    :cond_0
    return-void
.end method
