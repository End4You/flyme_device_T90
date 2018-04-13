.class Lcom/android/server/policy/HmctPhoneWindowManager$16;
.super Ljava/lang/Object;
.source "HmctPhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/HmctPhoneWindowManager;->systemReady()V
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
    .line 2246
    iput-object p1, p0, Lcom/android/server/policy/HmctPhoneWindowManager$16;->this$0:Lcom/android/server/policy/HmctPhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2249
    iget-object v0, p0, Lcom/android/server/policy/HmctPhoneWindowManager$16;->this$0:Lcom/android/server/policy/HmctPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/HmctPhoneWindowManager;->hmctUpdateSettings()V

    .line 2248
    return-void
.end method
