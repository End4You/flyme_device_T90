.class public Lcom/android/server/safe/MobileSafeService$UserRemovedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MobileSafeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/safe/MobileSafeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UserRemovedReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/safe/MobileSafeService;


# direct methods
.method public constructor <init>(Lcom/android/server/safe/MobileSafeService;Landroid/content/Context;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/safe/MobileSafeService;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1229
    iput-object p1, p0, Lcom/android/server/safe/MobileSafeService$UserRemovedReceiver;->this$0:Lcom/android/server/safe/MobileSafeService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1230
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.USER_REMOVED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1231
    .local v0, "filter":Landroid/content/IntentFilter;
    invoke-virtual {p2, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1229
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1236
    const-string/jumbo v1, "android.intent.extra.user_handle"

    const/16 v2, -0x2710

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1237
    .local v0, "removedUserId":I
    const-string/jumbo v1, "MobileSafeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "received the user removed broadcast, removedUserId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1238
    iget-object v1, p0, Lcom/android/server/safe/MobileSafeService$UserRemovedReceiver;->this$0:Lcom/android/server/safe/MobileSafeService;

    invoke-static {v1, v0}, Lcom/android/server/safe/MobileSafeService;->-wrap12(Lcom/android/server/safe/MobileSafeService;I)V

    .line 1235
    return-void
.end method
