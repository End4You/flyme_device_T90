.class public Lcom/android/server/safe/MobileSafeService$PackageIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MobileSafeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/safe/MobileSafeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PackageIntentReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/safe/MobileSafeService;


# direct methods
.method public constructor <init>(Lcom/android/server/safe/MobileSafeService;Landroid/content/Context;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/safe/MobileSafeService;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1244
    iput-object p1, p0, Lcom/android/server/safe/MobileSafeService$PackageIntentReceiver;->this$0:Lcom/android/server/safe/MobileSafeService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1245
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1246
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1248
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1249
    invoke-virtual {p2, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1244
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1254
    iget-object v0, p0, Lcom/android/server/safe/MobileSafeService$PackageIntentReceiver;->this$0:Lcom/android/server/safe/MobileSafeService;

    invoke-static {v0, p2}, Lcom/android/server/safe/MobileSafeService;->-wrap20(Lcom/android/server/safe/MobileSafeService;Landroid/content/Intent;)V

    .line 1253
    return-void
.end method
