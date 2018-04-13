.class Lcom/android/server/policy/HmctPhoneWindowManager$17;
.super Ljava/lang/Object;
.source "HmctPhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/HmctPhoneWindowManager;->sendGestureDelayIntent(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/HmctPhoneWindowManager;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/server/policy/HmctPhoneWindowManager;Landroid/content/Intent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/HmctPhoneWindowManager;
    .param p2, "val$intent"    # Landroid/content/Intent;

    .prologue
    .line 3469
    iput-object p1, p0, Lcom/android/server/policy/HmctPhoneWindowManager$17;->this$0:Lcom/android/server/policy/HmctPhoneWindowManager;

    iput-object p2, p0, Lcom/android/server/policy/HmctPhoneWindowManager$17;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 3472
    iget-object v1, p0, Lcom/android/server/policy/HmctPhoneWindowManager$17;->this$0:Lcom/android/server/policy/HmctPhoneWindowManager;

    invoke-static {v1}, Lcom/android/server/policy/HmctPhoneWindowManager;->-wrap0(Lcom/android/server/policy/HmctPhoneWindowManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3474
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/HmctPhoneWindowManager$17;->this$0:Lcom/android/server/policy/HmctPhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/HmctPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/HmctPhoneWindowManager$17;->val$intent:Landroid/content/Intent;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3471
    :cond_0
    :goto_0
    return-void

    .line 3475
    :catch_0
    move-exception v0

    .line 3476
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method
