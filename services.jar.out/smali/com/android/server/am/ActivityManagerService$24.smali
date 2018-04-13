.class Lcom/android/server/am/ActivityManagerService$24;
.super Ljava/lang/Thread;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->addErrorToDropBox(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;

.field final synthetic val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

.field final synthetic val$dataFile:Ljava/io/File;

.field final synthetic val$dbox:Landroid/os/DropBoxManager;

.field final synthetic val$dropboxTag:Ljava/lang/String;

.field final synthetic val$report:Ljava/lang/String;

.field final synthetic val$sb:Ljava/lang/StringBuilder;

.field final synthetic val$tmpProcessName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;Ljava/lang/String;Landroid/os/DropBoxManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "$anonymous0"    # Ljava/lang/String;
    .param p3, "val$report"    # Ljava/lang/String;
    .param p4, "val$sb"    # Ljava/lang/StringBuilder;
    .param p5, "val$dropboxTag"    # Ljava/lang/String;
    .param p6, "val$dataFile"    # Ljava/io/File;
    .param p7, "val$crashInfo"    # Landroid/app/ApplicationErrorReport$CrashInfo;
    .param p8, "val$tmpProcessName"    # Ljava/lang/String;
    .param p9, "val$dbox"    # Landroid/os/DropBoxManager;

    .prologue
    .line 14321
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$24;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-object p3, p0, Lcom/android/server/am/ActivityManagerService$24;->val$report:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/am/ActivityManagerService$24;->val$sb:Ljava/lang/StringBuilder;

    iput-object p5, p0, Lcom/android/server/am/ActivityManagerService$24;->val$dropboxTag:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/server/am/ActivityManagerService$24;->val$dataFile:Ljava/io/File;

    iput-object p7, p0, Lcom/android/server/am/ActivityManagerService$24;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    iput-object p8, p0, Lcom/android/server/am/ActivityManagerService$24;->val$tmpProcessName:Ljava/lang/String;

    iput-object p9, p0, Lcom/android/server/am/ActivityManagerService$24;->val$dbox:Landroid/os/DropBoxManager;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/4 v13, 0x0

    .line 14324
    iget-object v11, p0, Lcom/android/server/am/ActivityManagerService$24;->val$report:Ljava/lang/String;

    if-eqz v11, :cond_0

    .line 14325
    iget-object v11, p0, Lcom/android/server/am/ActivityManagerService$24;->val$sb:Ljava/lang/StringBuilder;

    iget-object v12, p0, Lcom/android/server/am/ActivityManagerService$24;->val$report:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14328
    :cond_0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "logcat_for_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/am/ActivityManagerService$24;->val$dropboxTag:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 14329
    .local v10, "setting":Ljava/lang/String;
    iget-object v11, p0, Lcom/android/server/am/ActivityManagerService$24;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    invoke-static {v11, v10, v13}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 14330
    .local v6, "lines":I
    iget-object v11, p0, Lcom/android/server/am/ActivityManagerService$24;->val$sb:Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    const/high16 v12, 0x30000

    sub-int v11, v12, v11

    .line 14331
    mul-int/lit8 v12, v6, 0x64

    .line 14330
    sub-int v8, v11, v12

    .line 14333
    .local v8, "maxDataFileSize":I
    iget-object v11, p0, Lcom/android/server/am/ActivityManagerService$24;->val$dataFile:Ljava/io/File;

    if-eqz v11, :cond_1

    if-lez v8, :cond_1

    .line 14335
    :try_start_0
    iget-object v11, p0, Lcom/android/server/am/ActivityManagerService$24;->val$sb:Ljava/lang/StringBuilder;

    iget-object v12, p0, Lcom/android/server/am/ActivityManagerService$24;->val$dataFile:Ljava/io/File;

    .line 14336
    const-string/jumbo v13, "\n\n[[TRUNCATED]]"

    .line 14335
    invoke-static {v12, v8, v13}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 14341
    :cond_1
    :goto_0
    iget-object v11, p0, Lcom/android/server/am/ActivityManagerService$24;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    if-eqz v11, :cond_2

    iget-object v11, p0, Lcom/android/server/am/ActivityManagerService$24;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    iget-object v11, v11, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    if-eqz v11, :cond_2

    .line 14342
    iget-object v11, p0, Lcom/android/server/am/ActivityManagerService$24;->val$sb:Ljava/lang/StringBuilder;

    iget-object v12, p0, Lcom/android/server/am/ActivityManagerService$24;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    iget-object v12, v12, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14345
    :cond_2
    if-lez v6, :cond_3

    .line 14346
    iget-object v11, p0, Lcom/android/server/am/ActivityManagerService$24;->val$sb:Ljava/lang/StringBuilder;

    const-string/jumbo v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14349
    const/4 v3, 0x0

    .line 14351
    .local v3, "input":Ljava/io/InputStreamReader;
    :try_start_1
    new-instance v11, Ljava/lang/ProcessBuilder;

    const/16 v12, 0x11

    new-array v12, v12, [Ljava/lang/String;

    .line 14352
    const-string/jumbo v13, "/system/bin/timeout"

    const/4 v14, 0x0

    aput-object v13, v12, v14

    const-string/jumbo v13, "-k"

    const/4 v14, 0x1

    aput-object v13, v12, v14

    const-string/jumbo v13, "15s"

    const/4 v14, 0x2

    aput-object v13, v12, v14

    const-string/jumbo v13, "10s"

    const/4 v14, 0x3

    aput-object v13, v12, v14

    .line 14353
    const-string/jumbo v13, "/system/bin/logcat"

    const/4 v14, 0x4

    aput-object v13, v12, v14

    const-string/jumbo v13, "-v"

    const/4 v14, 0x5

    aput-object v13, v12, v14

    const-string/jumbo v13, "threadtime"

    const/4 v14, 0x6

    aput-object v13, v12, v14

    const-string/jumbo v13, "-b"

    const/4 v14, 0x7

    aput-object v13, v12, v14

    const-string/jumbo v13, "events"

    const/16 v14, 0x8

    aput-object v13, v12, v14

    const-string/jumbo v13, "-b"

    const/16 v14, 0x9

    aput-object v13, v12, v14

    const-string/jumbo v13, "system"

    const/16 v14, 0xa

    aput-object v13, v12, v14

    .line 14354
    const-string/jumbo v13, "-b"

    const/16 v14, 0xb

    aput-object v13, v12, v14

    const-string/jumbo v13, "main"

    const/16 v14, 0xc

    aput-object v13, v12, v14

    const-string/jumbo v13, "-b"

    const/16 v14, 0xd

    aput-object v13, v12, v14

    const-string/jumbo v13, "crash"

    const/16 v14, 0xe

    aput-object v13, v12, v14

    const-string/jumbo v13, "-t"

    const/16 v14, 0xf

    aput-object v13, v12, v14

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0x10

    aput-object v13, v12, v14

    .line 14351
    invoke-direct {v11, v12}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 14355
    const/4 v12, 0x1

    .line 14351
    invoke-virtual {v11, v12}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v7

    .line 14357
    .local v7, "logcat":Ljava/lang/Process;
    :try_start_2
    invoke-virtual {v7}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 14358
    :goto_1
    :try_start_3
    invoke-virtual {v7}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 14359
    :goto_2
    :try_start_4
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v7}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    invoke-direct {v4, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 14362
    .end local v3    # "input":Ljava/io/InputStreamReader;
    .local v4, "input":Ljava/io/InputStreamReader;
    const/16 v11, 0x2000

    :try_start_5
    new-array v0, v11, [C

    .line 14363
    .local v0, "buf":[C
    :goto_3
    invoke-virtual {v4, v0}, Ljava/io/InputStreamReader;->read([C)I

    move-result v9

    .local v9, "num":I
    if-lez v9, :cond_5

    iget-object v11, p0, Lcom/android/server/am/ActivityManagerService$24;->val$sb:Ljava/lang/StringBuilder;

    const/4 v12, 0x0

    invoke-virtual {v11, v0, v12, v9}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    .line 14364
    .end local v0    # "buf":[C
    .end local v9    # "num":I
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    move-object v3, v4

    .line 14365
    .end local v4    # "input":Ljava/io/InputStreamReader;
    .end local v7    # "logcat":Ljava/lang/Process;
    :goto_4
    :try_start_6
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-get0()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "Error running logcat"

    invoke-static {v11, v12, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 14367
    if-eqz v3, :cond_3

    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 14372
    .end local v1    # "e":Ljava/io/IOException;
    :cond_3
    :goto_5
    iget-object v11, p0, Lcom/android/server/am/ActivityManagerService$24;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v11, v11, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    if-eqz v11, :cond_4

    .line 14374
    :try_start_8
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v11, "com.android.exdropbox"

    invoke-direct {v5, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 14375
    .local v5, "intentDrop":Landroid/content/Intent;
    const-string/jumbo v11, "fetype"

    iget-object v12, p0, Lcom/android/server/am/ActivityManagerService$24;->val$dropboxTag:Ljava/lang/String;

    invoke-virtual {v5, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 14376
    const-string/jumbo v11, "emodule"

    iget-object v12, p0, Lcom/android/server/am/ActivityManagerService$24;->val$tmpProcessName:Ljava/lang/String;

    invoke-virtual {v5, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 14377
    const-string/jumbo v11, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v5, v11, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 14378
    const-string/jumbo v11, "com.android.hmct.bmct"

    invoke-virtual {v5, v11}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 14379
    iget-object v11, p0, Lcom/android/server/am/ActivityManagerService$24;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 14386
    .end local v5    # "intentDrop":Landroid/content/Intent;
    :cond_4
    :goto_6
    iget-object v11, p0, Lcom/android/server/am/ActivityManagerService$24;->val$dbox:Landroid/os/DropBoxManager;

    iget-object v12, p0, Lcom/android/server/am/ActivityManagerService$24;->val$dropboxTag:Ljava/lang/String;

    iget-object v13, p0, Lcom/android/server/am/ActivityManagerService$24;->val$sb:Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    .line 14323
    return-void

    .line 14337
    :catch_1
    move-exception v1

    .line 14338
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-get0()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Error reading "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/server/am/ActivityManagerService$24;->val$dataFile:Ljava/io/File;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 14367
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "buf":[C
    .restart local v4    # "input":Ljava/io/InputStreamReader;
    .restart local v7    # "logcat":Ljava/lang/Process;
    .restart local v9    # "num":I
    :cond_5
    if-eqz v4, :cond_3

    :try_start_9
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_5

    :catch_2
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_5

    .end local v0    # "buf":[C
    .end local v4    # "input":Ljava/io/InputStreamReader;
    .end local v7    # "logcat":Ljava/lang/Process;
    .end local v9    # "num":I
    :catch_3
    move-exception v1

    goto :goto_5

    .line 14366
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v11

    .line 14367
    :goto_7
    if-eqz v3, :cond_6

    :try_start_a
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    .line 14366
    :cond_6
    :goto_8
    throw v11

    .line 14367
    :catch_4
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_8

    .line 14380
    .end local v1    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v2

    .line 14381
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->-get0()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "Exception send broadcast for bmct"

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 14366
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v4    # "input":Ljava/io/InputStreamReader;
    .restart local v7    # "logcat":Ljava/lang/Process;
    :catchall_1
    move-exception v11

    move-object v3, v4

    .end local v4    # "input":Ljava/io/InputStreamReader;
    .local v3, "input":Ljava/io/InputStreamReader;
    goto :goto_7

    .line 14364
    .end local v7    # "logcat":Ljava/lang/Process;
    .local v3, "input":Ljava/io/InputStreamReader;
    :catch_6
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    goto/16 :goto_4

    .line 14358
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v7    # "logcat":Ljava/lang/Process;
    :catch_7
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    goto/16 :goto_2

    .line 14357
    .end local v1    # "e":Ljava/io/IOException;
    :catch_8
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    goto/16 :goto_1
.end method
