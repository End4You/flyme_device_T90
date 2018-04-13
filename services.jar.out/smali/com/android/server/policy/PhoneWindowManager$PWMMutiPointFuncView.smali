.class Lcom/android/server/policy/PhoneWindowManager$PWMMutiPointFuncView;
.super Lcom/android/server/policy/MutiPointFuncView;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PWMMutiPointFuncView"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/PhoneWindowManager;Landroid/content/Context;Landroid/view/WindowManagerPolicy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/PhoneWindowManager;
    .param p2, "c"    # Landroid/content/Context;
    .param p3, "policy"    # Landroid/view/WindowManagerPolicy;

    .prologue
    .line 2350
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$PWMMutiPointFuncView;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 2351
    invoke-direct {p0, p2, p3}, Lcom/android/server/policy/MutiPointFuncView;-><init>(Landroid/content/Context;Landroid/view/WindowManagerPolicy;)V

    .line 2350
    return-void
.end method


# virtual methods
.method public on3PointGestureDetected()V
    .locals 1

    .prologue
    .line 2363
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PWMMutiPointFuncView;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->-wrap6(Lcom/android/server/policy/PhoneWindowManager;)V

    .line 2361
    return-void
.end method

.method public on3PointGestureStopped()V
    .locals 1

    .prologue
    .line 2367
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PWMMutiPointFuncView;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->-wrap7(Lcom/android/server/policy/PhoneWindowManager;)V

    .line 2365
    return-void
.end method

.method public startFunc()V
    .locals 2

    .prologue
    .line 2355
    const-string/jumbo v0, "twfx-3"

    const-string/jumbo v1, "Child PWMMutiPointFuncView startFunc!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2357
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PWMMutiPointFuncView;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->-get4(Lcom/android/server/policy/PhoneWindowManager;)Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;->setScreenshotType(I)V

    .line 2358
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PWMMutiPointFuncView;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$PWMMutiPointFuncView;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v1}, Lcom/android/server/policy/PhoneWindowManager;->-get4(Lcom/android/server/policy/PhoneWindowManager;)Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2359
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PWMMutiPointFuncView;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->record3PointUsage()V

    .line 2354
    return-void
.end method
