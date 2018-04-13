.class Lcom/android/server/policy/HmctPhoneWindowManager$9;
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
    .line 2996
    iput-object p1, p0, Lcom/android/server/policy/HmctPhoneWindowManager$9;->this$0:Lcom/android/server/policy/HmctPhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 3000
    const-string/jumbo v1, "HmctWindowManager"

    const-string/jumbo v2, "CTCamera mCameraLongPressActionRunnable enable sensor after 300ms"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3001
    iget-object v1, p0, Lcom/android/server/policy/HmctPhoneWindowManager$9;->this$0:Lcom/android/server/policy/HmctPhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/HmctPhoneWindowManager;->mHmctHandler:Landroid/os/Handler;

    const/16 v2, 0x1a

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3002
    .local v0, "msgAction":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 3003
    iget-object v1, p0, Lcom/android/server/policy/HmctPhoneWindowManager$9;->this$0:Lcom/android/server/policy/HmctPhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/HmctPhoneWindowManager;->mHmctHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2998
    return-void
.end method
