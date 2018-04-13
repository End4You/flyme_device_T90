.class Lcom/android/server/MountService$2;
.super Landroid/content/BroadcastReceiver;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/MountService;

    .prologue
    .line 4419
    iput-object p1, p0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    .line 4422
    const-string/jumbo v6, "MountService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "mUsbReceiver onReceive, intent="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4424
    const-string/jumbo v6, "connected"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 4425
    const-string/jumbo v6, "mass_storage"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 4424
    if-eqz v6, :cond_3

    .line 4426
    const-string/jumbo v6, "SettingUsbCharging"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v1, 0x0

    .line 4427
    .local v1, "isConnected":Z
    :goto_0
    iget-object v6, p0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    invoke-static {v6, v1}, Lcom/android/server/MountService;->-set3(Lcom/android/server/MountService;Z)Z

    .line 4429
    const-string/jumbo v6, "configured"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 4430
    .local v0, "isConfigured":Z
    const-string/jumbo v6, "mass_storage"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 4431
    .local v4, "refMassStorage":Z
    if-eqz v0, :cond_6

    .line 4433
    iget-object v6, p0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    iget-boolean v6, v6, Lcom/android/server/MountService;->isCurrentMassStorage:Z

    if-eqz v6, :cond_4

    if-eqz v4, :cond_4

    .line 4435
    iget-object v6, p0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Lcom/android/server/MountService;->reShareVolume(Ljava/lang/String;)V

    .line 4448
    :cond_0
    iget-object v6, p0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    const-string/jumbo v8, "mass_storage"

    invoke-virtual {p2, v8, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, v6, Lcom/android/server/MountService;->isCurrentMassStorage:Z

    .line 4457
    :cond_1
    :goto_1
    iget-object v6, p0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    invoke-static {v6, v1}, Lcom/android/server/MountService;->-wrap9(Lcom/android/server/MountService;Z)V

    .line 4421
    return-void

    .line 4426
    .end local v0    # "isConfigured":Z
    .end local v1    # "isConnected":Z
    .end local v4    # "refMassStorage":Z
    :cond_2
    const/4 v1, 0x1

    .restart local v1    # "isConnected":Z
    goto :goto_0

    .line 4424
    .end local v1    # "isConnected":Z
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "isConnected":Z
    goto :goto_0

    .line 4439
    .restart local v0    # "isConfigured":Z
    .restart local v4    # "refMassStorage":Z
    :cond_4
    const-string/jumbo v6, "mtp"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_5

    .line 4440
    const-string/jumbo v6, "ptp"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 4439
    if-eqz v6, :cond_0

    .line 4441
    :cond_5
    const-class v6, Landroid/os/storage/StorageManager;

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageManager;

    .line 4442
    .local v3, "mStorageManager":Landroid/os/storage/StorageManager;
    invoke-virtual {v3}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v8

    array-length v9, v8

    move v6, v7

    :goto_2
    if-ge v6, v9, :cond_0

    aget-object v5, v8, v6

    .line 4443
    .local v5, "volume":Landroid/os/storage/StorageVolume;
    const-string/jumbo v10, "MountService"

    const-string/jumbo v11, "dc---Update dataBase mtp and ptp"

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4442
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 4450
    .end local v3    # "mStorageManager":Landroid/os/storage/StorageManager;
    .end local v5    # "volume":Landroid/os/storage/StorageVolume;
    :cond_6
    const-string/jumbo v6, "connected"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 4451
    .local v2, "isNowConnected":Z
    const-string/jumbo v6, "MountService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, " ddd    isNowConnected = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4452
    if-nez v2, :cond_1

    .line 4453
    iget-object v6, p0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    iput-boolean v7, v6, Lcom/android/server/MountService;->isCurrentMassStorage:Z

    goto :goto_1
.end method
