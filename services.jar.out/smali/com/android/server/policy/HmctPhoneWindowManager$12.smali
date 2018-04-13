.class Lcom/android/server/policy/HmctPhoneWindowManager$12;
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
    .line 3729
    iput-object p1, p0, Lcom/android/server/policy/HmctPhoneWindowManager$12;->this$0:Lcom/android/server/policy/HmctPhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3732
    const-string/jumbo v0, "TS"

    const-string/jumbo v1, "myResetSlipRunnable reset slip state"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3733
    const/4 v0, -0x1

    invoke-static {v0}, Lcom/android/server/policy/HmctPhoneWindowManager;->-set10(I)I

    .line 3734
    invoke-static {v2}, Lcom/android/server/policy/HmctPhoneWindowManager;->-set9(I)I

    .line 3735
    iget-object v0, p0, Lcom/android/server/policy/HmctPhoneWindowManager$12;->this$0:Lcom/android/server/policy/HmctPhoneWindowManager;

    iput-boolean v2, v0, Lcom/android/server/policy/HmctPhoneWindowManager;->mIgnoreSlip:Z

    .line 3731
    return-void
.end method
