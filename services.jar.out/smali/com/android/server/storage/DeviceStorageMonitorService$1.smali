.class Lcom/android/server/storage/DeviceStorageMonitorService$1;
.super Landroid/os/Handler;
.source "DeviceStorageMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/storage/DeviceStorageMonitorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/storage/DeviceStorageMonitorService;


# direct methods
.method constructor <init>(Lcom/android/server/storage/DeviceStorageMonitorService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/storage/DeviceStorageMonitorService;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/android/server/storage/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const v9, 0x1040645

    const v8, 0x1040644

    const/16 v7, 0x7d3

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 190
    iget v4, p1, Landroid/os/Message;->what:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_6

    .line 192
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    const-string/jumbo v5, "rm -r /data/appbank"

    invoke-virtual {v4, v5}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    :goto_0
    const-string/jumbo v4, "DeviceStorageMonitorService"

    const-string/jumbo v5, "DEVICE_MEMORY_CRITICAL_LOW BEGINNING..."

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-static {v4}, Lcom/android/server/storage/DeviceStorageMonitorService;->-get0(Lcom/android/server/storage/DeviceStorageMonitorService;)Landroid/app/AlertDialog;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 198
    iget-object v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-static {v4}, Lcom/android/server/storage/DeviceStorageMonitorService;->-get0(Lcom/android/server/storage/DeviceStorageMonitorService;)Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    .line 200
    :cond_0
    iget-object v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-static {v4}, Lcom/android/server/storage/DeviceStorageMonitorService;->-get1(Lcom/android/server/storage/DeviceStorageMonitorService;)Lcom/hmct/hmcttheme/HmctAlertDialog;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 201
    iget-object v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-static {v4}, Lcom/android/server/storage/DeviceStorageMonitorService;->-get1(Lcom/android/server/storage/DeviceStorageMonitorService;)Lcom/hmct/hmcttheme/HmctAlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Lcom/hmct/hmcttheme/HmctAlertDialog;->dismiss()V

    .line 203
    :cond_1
    const-string/jumbo v4, "DeviceStorageMonitorService"

    const-string/jumbo v5, "DEVICE_MEMORY_CRITICAL_LOW BEGINNING...CREATE DIALOG"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    invoke-static {}, Lcom/vision/featurequery/CommonFeature;->getPlatformUIStyle()I

    move-result v4

    if-eq v4, v2, :cond_4

    .line 205
    iget-object v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-virtual {v2}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 206
    .local v0, "dialogContext":Landroid/content/Context;
    new-instance v0, Landroid/view/ContextThemeWrapper;

    .end local v0    # "dialogContext":Landroid/content/Context;
    iget-object v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-virtual {v2}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x103012b

    invoke-direct {v0, v2, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 207
    .restart local v0    # "dialogContext":Landroid/content/Context;
    iget-object v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 208
    const v5, 0x108008a

    .line 207
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 209
    iget-object v5, p0, Lcom/android/server/storage/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-virtual {v5}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x1040649

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 207
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 210
    iget-object v5, p0, Lcom/android/server/storage/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-virtual {v5}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 207
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 211
    iget-object v5, p0, Lcom/android/server/storage/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-virtual {v5}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 212
    new-instance v6, Lcom/android/server/storage/DeviceStorageMonitorService$1$1;

    invoke-direct {v6, p0}, Lcom/android/server/storage/DeviceStorageMonitorService$1$1;-><init>(Lcom/android/server/storage/DeviceStorageMonitorService$1;)V

    .line 207
    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 220
    iget-object v5, p0, Lcom/android/server/storage/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-virtual {v5}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x104064a

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 221
    new-instance v6, Lcom/android/server/storage/DeviceStorageMonitorService$1$2;

    invoke-direct {v6, p0}, Lcom/android/server/storage/DeviceStorageMonitorService$1$2;-><init>(Lcom/android/server/storage/DeviceStorageMonitorService$1;)V

    .line 207
    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/server/storage/DeviceStorageMonitorService;->-set0(Lcom/android/server/storage/DeviceStorageMonitorService;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 241
    iget-object v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-static {v2}, Lcom/android/server/storage/DeviceStorageMonitorService;->-get0(Lcom/android/server/storage/DeviceStorageMonitorService;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/Window;->setType(I)V

    .line 242
    iget-object v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-static {v2}, Lcom/android/server/storage/DeviceStorageMonitorService;->-get0(Lcom/android/server/storage/DeviceStorageMonitorService;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-nez v2, :cond_2

    .line 244
    const-string/jumbo v2, "ctsrunning"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_3

    .line 245
    iget-object v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-static {v2}, Lcom/android/server/storage/DeviceStorageMonitorService;->-get0(Lcom/android/server/storage/DeviceStorageMonitorService;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 296
    .end local v0    # "dialogContext":Landroid/content/Context;
    :cond_2
    :goto_1
    return-void

    .line 193
    :catch_0
    move-exception v1

    .line 194
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v4, "DeviceStorageMonitorService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "delete appbank fail"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 247
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "dialogContext":Landroid/content/Context;
    :cond_3
    const-string/jumbo v2, "DeviceStorageMonitorService"

    const-string/jumbo v3, "In CTS Running,do not show the no space dailog"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 251
    .end local v0    # "dialogContext":Landroid/content/Context;
    :cond_4
    iget-object v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    new-instance v4, Lcom/hmct/hmcttheme/HmctAlertDialog$Builder;

    iget-object v5, p0, Lcom/android/server/storage/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-virtual {v5}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/hmct/hmcttheme/HmctAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 252
    const v5, 0x108008a

    .line 251
    invoke-virtual {v4, v5}, Lcom/hmct/hmcttheme/HmctAlertDialog$Builder;->setIcon(I)Lcom/hmct/hmcttheme/HmctAlertDialog$Builder;

    move-result-object v4

    .line 253
    iget-object v5, p0, Lcom/android/server/storage/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-virtual {v5}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x1040649

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 251
    invoke-virtual {v4, v5}, Lcom/hmct/hmcttheme/HmctAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/hmct/hmcttheme/HmctAlertDialog$Builder;

    move-result-object v4

    .line 254
    iget-object v5, p0, Lcom/android/server/storage/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-virtual {v5}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 251
    invoke-virtual {v4, v5}, Lcom/hmct/hmcttheme/HmctAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/hmct/hmcttheme/HmctAlertDialog$Builder;

    move-result-object v4

    .line 255
    iget-object v5, p0, Lcom/android/server/storage/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-virtual {v5}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 256
    new-instance v6, Lcom/android/server/storage/DeviceStorageMonitorService$1$3;

    invoke-direct {v6, p0}, Lcom/android/server/storage/DeviceStorageMonitorService$1$3;-><init>(Lcom/android/server/storage/DeviceStorageMonitorService$1;)V

    .line 251
    invoke-virtual {v4, v5, v6}, Lcom/hmct/hmcttheme/HmctAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/hmct/hmcttheme/HmctAlertDialog$Builder;

    move-result-object v4

    .line 264
    iget-object v5, p0, Lcom/android/server/storage/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-virtual {v5}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x104064a

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 265
    new-instance v6, Lcom/android/server/storage/DeviceStorageMonitorService$1$4;

    invoke-direct {v6, p0}, Lcom/android/server/storage/DeviceStorageMonitorService$1$4;-><init>(Lcom/android/server/storage/DeviceStorageMonitorService$1;)V

    .line 251
    invoke-virtual {v4, v5, v6}, Lcom/hmct/hmcttheme/HmctAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/hmct/hmcttheme/HmctAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/hmct/hmcttheme/HmctAlertDialog$Builder;->create()Lcom/hmct/hmcttheme/HmctAlertDialog;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/server/storage/DeviceStorageMonitorService;->-set1(Lcom/android/server/storage/DeviceStorageMonitorService;Lcom/hmct/hmcttheme/HmctAlertDialog;)Lcom/hmct/hmcttheme/HmctAlertDialog;

    .line 285
    iget-object v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-static {v2}, Lcom/android/server/storage/DeviceStorageMonitorService;->-get1(Lcom/android/server/storage/DeviceStorageMonitorService;)Lcom/hmct/hmcttheme/HmctAlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hmct/hmcttheme/HmctAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/Window;->setType(I)V

    .line 286
    iget-object v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-static {v2}, Lcom/android/server/storage/DeviceStorageMonitorService;->-get1(Lcom/android/server/storage/DeviceStorageMonitorService;)Lcom/hmct/hmcttheme/HmctAlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hmct/hmcttheme/HmctAlertDialog;->isShowing()Z

    move-result v2

    if-nez v2, :cond_2

    .line 288
    const-string/jumbo v2, "ctsrunning"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_5

    .line 289
    iget-object v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-static {v2}, Lcom/android/server/storage/DeviceStorageMonitorService;->-get1(Lcom/android/server/storage/DeviceStorageMonitorService;)Lcom/hmct/hmcttheme/HmctAlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hmct/hmcttheme/HmctAlertDialog;->show()V

    goto/16 :goto_1

    .line 291
    :cond_5
    const-string/jumbo v2, "DeviceStorageMonitorService"

    const-string/jumbo v3, "In CTS Running,do not show the no space dailog"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 300
    :cond_6
    iget v4, p1, Landroid/os/Message;->what:I

    if-eq v4, v2, :cond_7

    .line 301
    const-string/jumbo v2, "DeviceStorageMonitorService"

    const-string/jumbo v3, "Will not process invalid message"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    return-void

    .line 304
    :cond_7
    iget-object v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    iget v5, p1, Landroid/os/Message;->arg1:I

    if-ne v5, v2, :cond_8

    :goto_2
    invoke-virtual {v4, v2}, Lcom/android/server/storage/DeviceStorageMonitorService;->checkMemory(Z)V

    .line 187
    return-void

    :cond_8
    move v2, v3

    .line 304
    goto :goto_2
.end method
