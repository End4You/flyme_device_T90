.class final Lcom/android/server/safe/MobileSafeService$SafeClientDeathRecipient;
.super Ljava/lang/Object;
.source "MobileSafeService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/safe/MobileSafeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SafeClientDeathRecipient"
.end annotation


# instance fields
.field private mUserID:I

.field final synthetic this$0:Lcom/android/server/safe/MobileSafeService;


# direct methods
.method public constructor <init>(Lcom/android/server/safe/MobileSafeService;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/safe/MobileSafeService;
    .param p2, "userID"    # I

    .prologue
    .line 318
    iput-object p1, p0, Lcom/android/server/safe/MobileSafeService$SafeClientDeathRecipient;->this$0:Lcom/android/server/safe/MobileSafeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 319
    iput p2, p0, Lcom/android/server/safe/MobileSafeService$SafeClientDeathRecipient;->mUserID:I

    .line 318
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 4

    .prologue
    .line 324
    const-string/jumbo v1, "MobileSafeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Mobile Safe client died, mUserID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/safe/MobileSafeService$SafeClientDeathRecipient;->mUserID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    iget-object v1, p0, Lcom/android/server/safe/MobileSafeService$SafeClientDeathRecipient;->this$0:Lcom/android/server/safe/MobileSafeService;

    iget-object v1, v1, Lcom/android/server/safe/MobileSafeService;->mClientsForUsers:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/Integer;

    iget v3, p0, Lcom/android/server/safe/MobileSafeService$SafeClientDeathRecipient;->mUserID:I

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 329
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android.intent.action.START_SAFE_SERVICE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 330
    iget-object v1, p0, Lcom/android/server/safe/MobileSafeService$SafeClientDeathRecipient;->this$0:Lcom/android/server/safe/MobileSafeService;

    invoke-static {v1}, Lcom/android/server/safe/MobileSafeService;->-get2(Lcom/android/server/safe/MobileSafeService;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/os/UserHandle;

    iget v3, p0, Lcom/android/server/safe/MobileSafeService$SafeClientDeathRecipient;->mUserID:I

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 323
    return-void
.end method
