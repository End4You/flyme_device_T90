.class Lcom/android/server/policy/HmctPhoneWindowManager$15;
.super Ljava/lang/Object;
.source "HmctPhoneWindowManager.java"

# interfaces
.implements Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/HmctPhoneWindowManager;->init(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
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
    .line 823
    iput-object p1, p0, Lcom/android/server/policy/HmctPhoneWindowManager$15;->this$0:Lcom/android/server/policy/HmctPhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDebug()V
    .locals 2

    .prologue
    .line 857
    const-string/jumbo v0, "HmctWindowManager"

    const-string/jumbo v1, "mSystemGestures : onDebug"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    return-void
.end method

.method public onDown()V
    .locals 2

    .prologue
    .line 861
    const-string/jumbo v0, "HmctWindowManager"

    const-string/jumbo v1, "mSystemGestures : onDown"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    return-void
.end method

.method public onFling(I)V
    .locals 2
    .param p1, "duration"    # I

    .prologue
    .line 850
    iget-object v0, p0, Lcom/android/server/policy/HmctPhoneWindowManager$15;->this$0:Lcom/android/server/policy/HmctPhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/HmctPhoneWindowManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    if-eqz v0, :cond_0

    .line 851
    const-string/jumbo v0, "HmctWindowManager"

    const-string/jumbo v1, "mSystemGestures : onFling"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    :cond_0
    return-void
.end method

.method public onMouseHoverAtBottom()V
    .locals 0

    .prologue
    .line 871
    return-void
.end method

.method public onMouseHoverAtTop()V
    .locals 0

    .prologue
    .line 868
    return-void
.end method

.method public onMouseLeaveFromEdge()V
    .locals 0

    .prologue
    .line 874
    return-void
.end method

.method public onSwipeFromBottom()V
    .locals 2

    .prologue
    .line 832
    iget-object v0, p0, Lcom/android/server/policy/HmctPhoneWindowManager$15;->this$0:Lcom/android/server/policy/HmctPhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/HmctPhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    .line 833
    const-string/jumbo v0, "HmctWindowManager"

    const-string/jumbo v1, "mSystemGestures : onSwipeFromBottom"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    :cond_0
    return-void
.end method

.method public onSwipeFromLeft()V
    .locals 2

    .prologue
    .line 844
    iget-object v0, p0, Lcom/android/server/policy/HmctPhoneWindowManager$15;->this$0:Lcom/android/server/policy/HmctPhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/HmctPhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/HmctPhoneWindowManager$15;->this$0:Lcom/android/server/policy/HmctPhoneWindowManager;

    iget v0, v0, Lcom/android/server/policy/HmctPhoneWindowManager;->mNavigationBarPosition:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 845
    const-string/jumbo v0, "HmctWindowManager"

    const-string/jumbo v1, "mSystemGestures : onSwipeFromLeft"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    :cond_0
    return-void
.end method

.method public onSwipeFromRight()V
    .locals 2

    .prologue
    .line 838
    iget-object v0, p0, Lcom/android/server/policy/HmctPhoneWindowManager$15;->this$0:Lcom/android/server/policy/HmctPhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/HmctPhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    .line 839
    const-string/jumbo v0, "HmctWindowManager"

    const-string/jumbo v1, "mSystemGestures : onSwipeFromRight"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    :cond_0
    return-void
.end method

.method public onSwipeFromTop()V
    .locals 2

    .prologue
    .line 826
    iget-object v0, p0, Lcom/android/server/policy/HmctPhoneWindowManager$15;->this$0:Lcom/android/server/policy/HmctPhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/HmctPhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    .line 827
    const-string/jumbo v0, "HmctWindowManager"

    const-string/jumbo v1, "mSystemGestures : onSwipeFromTop"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    :cond_0
    return-void
.end method

.method public onUpOrCancel()V
    .locals 2

    .prologue
    .line 865
    const-string/jumbo v0, "HmctWindowManager"

    const-string/jumbo v1, "mSystemGestures : onUpOrCancel"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    return-void
.end method
