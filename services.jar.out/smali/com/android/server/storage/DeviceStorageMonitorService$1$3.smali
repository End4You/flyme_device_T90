.class Lcom/android/server/storage/DeviceStorageMonitorService$1$3;
.super Ljava/lang/Object;
.source "DeviceStorageMonitorService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/storage/DeviceStorageMonitorService$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/storage/DeviceStorageMonitorService$1;


# direct methods
.method constructor <init>(Lcom/android/server/storage/DeviceStorageMonitorService$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/storage/DeviceStorageMonitorService$1;

    .prologue
    .line 256
    iput-object p1, p0, Lcom/android/server/storage/DeviceStorageMonitorService$1$3;->this$1:Lcom/android/server/storage/DeviceStorageMonitorService$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 258
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 259
    .local v0, "mIntent":Landroid/content/Intent;
    const-string/jumbo v1, "android.intent.action.MANAGE_PACKAGE_STORAGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 260
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 261
    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService$1$3;->this$1:Lcom/android/server/storage/DeviceStorageMonitorService$1;

    iget-object v1, v1, Lcom/android/server/storage/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-virtual {v1}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 257
    return-void
.end method
