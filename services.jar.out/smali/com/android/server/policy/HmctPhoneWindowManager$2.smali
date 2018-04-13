.class Lcom/android/server/policy/HmctPhoneWindowManager$2;
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
    .line 742
    iput-object p1, p0, Lcom/android/server/policy/HmctPhoneWindowManager$2;->this$0:Lcom/android/server/policy/HmctPhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 745
    iget-object v0, p0, Lcom/android/server/policy/HmctPhoneWindowManager$2;->this$0:Lcom/android/server/policy/HmctPhoneWindowManager;

    iget-boolean v0, v0, Lcom/android/server/policy/HmctPhoneWindowManager;->mHomeDoubleTapPending:Z

    if-eqz v0, :cond_0

    .line 746
    iget-object v0, p0, Lcom/android/server/policy/HmctPhoneWindowManager$2;->this$0:Lcom/android/server/policy/HmctPhoneWindowManager;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/policy/HmctPhoneWindowManager;->mHomeDoubleTapPending:Z

    .line 747
    iget-object v0, p0, Lcom/android/server/policy/HmctPhoneWindowManager$2;->this$0:Lcom/android/server/policy/HmctPhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/HmctPhoneWindowManager;->-wrap6(Lcom/android/server/policy/HmctPhoneWindowManager;)V

    .line 744
    :cond_0
    return-void
.end method
