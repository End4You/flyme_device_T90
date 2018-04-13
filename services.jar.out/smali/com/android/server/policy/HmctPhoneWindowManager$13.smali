.class Lcom/android/server/policy/HmctPhoneWindowManager$13;
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
    .line 3756
    iput-object p1, p0, Lcom/android/server/policy/HmctPhoneWindowManager$13;->this$0:Lcom/android/server/policy/HmctPhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3759
    const-string/jumbo v0, "TS"

    const-string/jumbo v1, "myHomeKeyRunnable handleShortPressOnHome"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3760
    iget-object v0, p0, Lcom/android/server/policy/HmctPhoneWindowManager$13;->this$0:Lcom/android/server/policy/HmctPhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/HmctPhoneWindowManager;->-wrap6(Lcom/android/server/policy/HmctPhoneWindowManager;)V

    .line 3758
    return-void
.end method
