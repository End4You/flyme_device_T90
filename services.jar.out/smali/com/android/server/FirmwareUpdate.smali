.class Lcom/android/server/FirmwareUpdate;
.super Ljava/lang/Object;
.source "SystemServer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FirmwareUpdate"

.field private static final UPDATE_CTL_FILE:Ljava/lang/String; = "/sys/ctp/ctp_update/"

.field private static final UP_CHECK_INTERVAL:I = 0x3e8

.field private static final UP_RES_FAIL:I = 0x1

.field private static final UP_RES_OK:I = 0x0

.field private static final UP_RES_ONGOING:I = 0x2

.field private static final UP_TIMEOUT:I = 0x1d4c0

.field private static mContext:Landroid/content/Context;

.field private static mCurMsgId:I

.field private static mWaitingUpdateThreadRuning:Z

.field private static step:I


# direct methods
.method static synthetic -wrap0()Z
    .locals 1

    invoke-static {}, Lcom/android/server/FirmwareUpdate;->triggerUpdate()Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 153
    sput v0, Lcom/android/server/FirmwareUpdate;->mCurMsgId:I

    .line 155
    sput-boolean v0, Lcom/android/server/FirmwareUpdate;->mWaitingUpdateThreadRuning:Z

    .line 314
    sput v0, Lcom/android/server/FirmwareUpdate;->step:I

    .line 142
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkIfUpdateNeeded()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 188
    const-string/jumbo v1, "FirmwareUpdate"

    const-string/jumbo v2, "checkIfUpdateNeeded()."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    const/4 v0, 0x0

    .line 190
    .local v0, "mFwstate":Ljava/lang/String;
    const-string/jumbo v1, "/sys/ctp/ctp_update/fwstate"

    invoke-static {v1}, Lcom/android/server/FirmwareUpdate;->getFileData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 191
    .local v0, "mFwstate":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 192
    return v3

    .line 194
    :cond_0
    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 195
    const/4 v1, 0x1

    return v1

    .line 197
    :cond_1
    return v3
.end method

.method private static checkUpdateStatus()I
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 214
    const-string/jumbo v1, "FirmwareUpdate"

    const-string/jumbo v2, "checkUpdateStatus()"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    const/4 v0, 0x0

    .line 216
    .local v0, "mFwstate":Ljava/lang/String;
    const-string/jumbo v1, "/sys/ctp/ctp_update/fwupdate"

    invoke-static {v1}, Lcom/android/server/FirmwareUpdate;->getFileData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 217
    .local v0, "mFwstate":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 218
    return v3

    .line 220
    :cond_0
    const-string/jumbo v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 221
    return v3

    .line 222
    :cond_1
    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 223
    const/4 v1, 0x0

    return v1

    .line 225
    :cond_2
    const/4 v1, 0x2

    return v1
.end method

.method private static getFileData(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "filepath"    # Ljava/lang/String;

    .prologue
    .line 261
    const/4 v3, 0x0

    .line 262
    .local v3, "in":Ljava/io/BufferedReader;
    const/4 v0, 0x0

    .line 264
    .local v0, "data":Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    .end local v3    # "in":Ljava/io/BufferedReader;
    .local v4, "in":Ljava/io/BufferedReader;
    :try_start_1
    const-string/jumbo v5, "FirmwareUpdate"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "++open file:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ",success!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 267
    .local v0, "data":Ljava/lang/String;
    const-string/jumbo v5, "FirmwareUpdate"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "++read file:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ",data:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 274
    if-eqz v4, :cond_0

    .line 275
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    move-object v3, v4

    .line 280
    .end local v0    # "data":Ljava/lang/String;
    .end local v4    # "in":Ljava/io/BufferedReader;
    :cond_1
    :goto_1
    return-object v0

    .line 276
    .restart local v0    # "data":Ljava/lang/String;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    :catch_0
    move-exception v2

    .line 277
    .local v2, "e":Ljava/io/IOException;
    const-string/jumbo v5, "FirmwareUpdate"

    const-string/jumbo v6, "Error closing"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 270
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "in":Ljava/io/BufferedReader;
    .local v0, "data":Ljava/lang/String;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    :catch_1
    move-exception v2

    .line 271
    .end local v0    # "data":Ljava/lang/String;
    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    const-string/jumbo v5, "FirmwareUpdate"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "read fail"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 274
    if-eqz v3, :cond_1

    .line 275
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 276
    :catch_2
    move-exception v2

    .line 277
    const-string/jumbo v5, "FirmwareUpdate"

    const-string/jumbo v6, "Error closing"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 268
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "data":Ljava/lang/String;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    :catch_3
    move-exception v1

    .line 269
    .end local v0    # "data":Ljava/lang/String;
    .end local v3    # "in":Ljava/io/BufferedReader;
    .local v1, "e":Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_5
    const-string/jumbo v5, "FirmwareUpdate"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "read fail:file not found"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 274
    if-eqz v3, :cond_1

    .line 275
    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_1

    .line 276
    :catch_4
    move-exception v2

    .line 277
    .restart local v2    # "e":Ljava/io/IOException;
    const-string/jumbo v5, "FirmwareUpdate"

    const-string/jumbo v6, "Error closing"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 272
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 274
    :goto_4
    if-eqz v3, :cond_2

    .line 275
    :try_start_7
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 272
    :cond_2
    :goto_5
    throw v5

    .line 276
    :catch_5
    move-exception v2

    .line 277
    .restart local v2    # "e":Ljava/io/IOException;
    const-string/jumbo v6, "FirmwareUpdate"

    const-string/jumbo v7, "Error closing"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 272
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "in":Ljava/io/BufferedReader;
    .local v3, "in":Ljava/io/BufferedReader;
    goto :goto_4

    .line 268
    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    :catch_6
    move-exception v1

    .restart local v1    # "e":Ljava/io/FileNotFoundException;
    move-object v3, v4

    .end local v4    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    goto :goto_3

    .line 270
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    :catch_7
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    move-object v3, v4

    .end local v4    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method private static showMessage(I)V
    .locals 7
    .param p0, "msgId"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 316
    const-string/jumbo v1, ""

    .line 317
    .local v1, "msgText":Ljava/lang/String;
    sget-object v3, Lcom/android/server/FirmwareUpdate;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e00e7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    if-ne v3, v6, :cond_1

    .line 318
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "vision:::"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/server/FirmwareUpdate;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 322
    :goto_0
    sget v3, Lcom/android/server/FirmwareUpdate;->mCurMsgId:I

    if-ne v3, p0, :cond_2

    .line 323
    sget v3, Lcom/android/server/FirmwareUpdate;->step:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/android/server/FirmwareUpdate;->step:I

    .line 324
    sget v3, Lcom/android/server/FirmwareUpdate;->step:I

    const/4 v4, 0x6

    if-le v3, v4, :cond_0

    .line 325
    sput v5, Lcom/android/server/FirmwareUpdate;->step:I

    .line 327
    :cond_0
    sget v2, Lcom/android/server/FirmwareUpdate;->step:I

    .line 328
    .local v2, "n":I
    :goto_1
    if-lez v2, :cond_2

    .line 329
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 330
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 320
    .end local v2    # "n":I
    :cond_1
    sget-object v3, Lcom/android/server/FirmwareUpdate;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 333
    :cond_2
    sput p0, Lcom/android/server/FirmwareUpdate;->mCurMsgId:I

    .line 336
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v1, v4}, Landroid/app/IActivityManager;->showBootMessage(Ljava/lang/CharSequence;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    :goto_2
    return-void

    .line 337
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_2
.end method

.method public static triggerTouchButtonUpdate()Z
    .locals 2

    .prologue
    .line 343
    const-string/jumbo v0, "FirmwareUpdate"

    const-string/jumbo v1, "triggerTouchButtonUpdate()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    const-string/jumbo v0, "/sys/touchbutton/fwupdate"

    const-string/jumbo v1, "1"

    invoke-static {v0, v1}, Lcom/android/server/FirmwareUpdate;->writeFileData(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static triggerUpdate()Z
    .locals 2

    .prologue
    .line 205
    const-string/jumbo v0, "FirmwareUpdate"

    const-string/jumbo v1, "triggerUpdate()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/FirmwareUpdate;->mWaitingUpdateThreadRuning:Z

    .line 207
    const-string/jumbo v0, "/sys/ctp/ctp_update/fwupdate"

    invoke-static {v0}, Lcom/android/server/FirmwareUpdate;->writeFileData(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static updateIfNeeded(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 159
    sput-object p0, Lcom/android/server/FirmwareUpdate;->mContext:Landroid/content/Context;

    .line 160
    sget-boolean v0, Lcom/android/server/SystemServer;->mcheckIfUpdateNeeded:Z

    if-eqz v0, :cond_0

    .line 161
    const-string/jumbo v0, "FirmwareUpdate"

    const-string/jumbo v1, "Firmware update is needed."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/FirmwareUpdate;->mWaitingUpdateThreadRuning:Z

    .line 163
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/FirmwareUpdate$1;

    invoke-direct {v1}, Lcom/android/server/FirmwareUpdate$1;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 176
    const-string/jumbo v0, "FirmwareUpdate"

    const-string/jumbo v1, "Firmware update show start."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-static {}, Lcom/android/server/FirmwareUpdate;->waitingUpdateComplete()V

    .line 178
    const-string/jumbo v0, "FirmwareUpdate"

    const-string/jumbo v1, "Firmware update show ended."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :goto_0
    return-void

    .line 181
    :cond_0
    const-string/jumbo v0, "FirmwareUpdate"

    const-string/jumbo v1, "Firmware Update is not needed."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static waitingUpdateComplete()V
    .locals 7

    .prologue
    .line 232
    const/16 v1, 0x78

    .local v1, "n":I
    move v2, v1

    .line 235
    .end local v1    # "n":I
    .local v2, "n":I
    :goto_0
    :try_start_0
    sget-boolean v4, Lcom/android/server/FirmwareUpdate;->mWaitingUpdateThreadRuning:Z

    if-eqz v4, :cond_0

    .line 236
    const-string/jumbo v4, "FirmwareUpdate"

    const-string/jumbo v5, "waitting for update thread scheduled "

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    const v4, 0x1040659

    invoke-static {v4}, Lcom/android/server/FirmwareUpdate;->showMessage(I)V

    .line 238
    const-wide/16 v4, 0x3e8

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 257
    :goto_1
    add-int/lit8 v1, v2, -0x1

    .end local v2    # "n":I
    .restart local v1    # "n":I
    if-lez v2, :cond_1

    move v2, v1

    .end local v1    # "n":I
    .restart local v2    # "n":I
    goto :goto_0

    .line 241
    :cond_0
    invoke-static {}, Lcom/android/server/FirmwareUpdate;->checkUpdateStatus()I

    move-result v3

    .line 242
    .local v3, "res":I
    const-string/jumbo v4, "FirmwareUpdate"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "checkUpdateStatus return "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " at n = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    if-nez v3, :cond_2

    .line 244
    const-string/jumbo v4, "FirmwareUpdate"

    const-string/jumbo v5, "show the update message is ok "

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 231
    .end local v2    # "n":I
    .end local v3    # "res":I
    .restart local v1    # "n":I
    :cond_1
    :goto_2
    return-void

    .line 246
    .end local v1    # "n":I
    .restart local v2    # "n":I
    .restart local v3    # "res":I
    :cond_2
    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 247
    const-string/jumbo v4, "FirmwareUpdate"

    const-string/jumbo v5, "show the update message is FAIL "

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 248
    .end local v2    # "n":I
    .restart local v1    # "n":I
    goto :goto_2

    .line 250
    .end local v1    # "n":I
    .restart local v2    # "n":I
    :cond_3
    const-string/jumbo v4, "FirmwareUpdate"

    const-string/jumbo v5, "show the update message IS UPDATING"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    const v4, 0x1040659

    invoke-static {v4}, Lcom/android/server/FirmwareUpdate;->showMessage(I)V

    .line 252
    const-wide/16 v4, 0x3e8

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 255
    .end local v3    # "res":I
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_1
.end method

.method private static writeFileData(Ljava/lang/String;)Z
    .locals 9
    .param p0, "filepath"    # Ljava/lang/String;

    .prologue
    .line 285
    const/4 v3, 0x0

    .line 286
    .local v3, "out":Ljava/io/FileWriter;
    const-string/jumbo v0, "UPDATE"

    .line 287
    .local v0, "data":Ljava/lang/String;
    const/4 v5, 0x1

    .line 290
    .local v5, "result":Z
    :try_start_0
    new-instance v4, Ljava/io/FileWriter;

    invoke-direct {v4, p0}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    .end local v3    # "out":Ljava/io/FileWriter;
    .local v4, "out":Ljava/io/FileWriter;
    :try_start_1
    const-string/jumbo v6, "FirmwareUpdate"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "++open file:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ",success!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    invoke-virtual {v4, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 293
    const-string/jumbo v6, "FirmwareUpdate"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "++write file:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ",data:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 302
    if-eqz v4, :cond_0

    .line 303
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    move-object v3, v4

    .line 308
    .end local v4    # "out":Ljava/io/FileWriter;
    :cond_1
    :goto_1
    return v5

    .line 304
    .restart local v4    # "out":Ljava/io/FileWriter;
    :catch_0
    move-exception v2

    .line 305
    .local v2, "e":Ljava/io/IOException;
    const-string/jumbo v6, "FirmwareUpdate"

    const-string/jumbo v7, "Error closing"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 297
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "out":Ljava/io/FileWriter;
    .restart local v3    # "out":Ljava/io/FileWriter;
    :catch_1
    move-exception v2

    .line 298
    .end local v3    # "out":Ljava/io/FileWriter;
    .restart local v2    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    const-string/jumbo v6, "FirmwareUpdate"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "write fail"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 299
    const/4 v5, 0x0

    .line 302
    if-eqz v3, :cond_1

    .line 303
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 304
    :catch_2
    move-exception v2

    .line 305
    const-string/jumbo v6, "FirmwareUpdate"

    const-string/jumbo v7, "Error closing"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 294
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v3    # "out":Ljava/io/FileWriter;
    :catch_3
    move-exception v1

    .line 295
    .end local v3    # "out":Ljava/io/FileWriter;
    .local v1, "e":Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_5
    const-string/jumbo v6, "FirmwareUpdate"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "write fail:file not found"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 296
    const/4 v5, 0x0

    .line 302
    if-eqz v3, :cond_1

    .line 303
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_1

    .line 304
    :catch_4
    move-exception v2

    .line 305
    .restart local v2    # "e":Ljava/io/IOException;
    const-string/jumbo v6, "FirmwareUpdate"

    const-string/jumbo v7, "Error closing"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 300
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 302
    :goto_4
    if-eqz v3, :cond_2

    .line 303
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 300
    :cond_2
    :goto_5
    throw v6

    .line 304
    :catch_5
    move-exception v2

    .line 305
    .restart local v2    # "e":Ljava/io/IOException;
    const-string/jumbo v7, "FirmwareUpdate"

    const-string/jumbo v8, "Error closing"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 300
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v4    # "out":Ljava/io/FileWriter;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "out":Ljava/io/FileWriter;
    .local v3, "out":Ljava/io/FileWriter;
    goto :goto_4

    .line 294
    .end local v3    # "out":Ljava/io/FileWriter;
    .restart local v4    # "out":Ljava/io/FileWriter;
    :catch_6
    move-exception v1

    .restart local v1    # "e":Ljava/io/FileNotFoundException;
    move-object v3, v4

    .end local v4    # "out":Ljava/io/FileWriter;
    .restart local v3    # "out":Ljava/io/FileWriter;
    goto :goto_3

    .line 297
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .end local v3    # "out":Ljava/io/FileWriter;
    .restart local v4    # "out":Ljava/io/FileWriter;
    :catch_7
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    move-object v3, v4

    .end local v4    # "out":Ljava/io/FileWriter;
    .restart local v3    # "out":Ljava/io/FileWriter;
    goto :goto_2
.end method

.method private static writeFileData(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p0, "filepath"    # Ljava/lang/String;
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 348
    const/4 v2, 0x0

    .line 349
    .local v2, "out":Ljava/io/FileWriter;
    const/4 v4, 0x1

    .line 352
    .local v4, "result":Z
    :try_start_0
    new-instance v3, Ljava/io/FileWriter;

    invoke-direct {v3, p0}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 353
    .end local v2    # "out":Ljava/io/FileWriter;
    .local v3, "out":Ljava/io/FileWriter;
    :try_start_1
    const-string/jumbo v5, "FirmwareUpdate"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "++open file:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ",success!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    invoke-virtual {v3, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 355
    const-string/jumbo v5, "FirmwareUpdate"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "++write file:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ",data:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 364
    if-eqz v3, :cond_0

    .line 365
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    move-object v2, v3

    .line 370
    .end local v3    # "out":Ljava/io/FileWriter;
    :cond_1
    :goto_1
    return v4

    .line 366
    .restart local v3    # "out":Ljava/io/FileWriter;
    :catch_0
    move-exception v1

    .line 367
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v5, "FirmwareUpdate"

    const-string/jumbo v6, "Error closing"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 359
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "out":Ljava/io/FileWriter;
    .restart local v2    # "out":Ljava/io/FileWriter;
    :catch_1
    move-exception v1

    .line 360
    .end local v2    # "out":Ljava/io/FileWriter;
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    const-string/jumbo v5, "FirmwareUpdate"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "write fail"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 361
    const/4 v4, 0x0

    .line 364
    if-eqz v2, :cond_1

    .line 365
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 366
    :catch_2
    move-exception v1

    .line 367
    const-string/jumbo v5, "FirmwareUpdate"

    const-string/jumbo v6, "Error closing"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 356
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v2    # "out":Ljava/io/FileWriter;
    :catch_3
    move-exception v0

    .line 357
    .end local v2    # "out":Ljava/io/FileWriter;
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_5
    const-string/jumbo v5, "FirmwareUpdate"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "write fail:file not found"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 358
    const/4 v4, 0x0

    .line 364
    if-eqz v2, :cond_1

    .line 365
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_1

    .line 366
    :catch_4
    move-exception v1

    .line 367
    .restart local v1    # "e":Ljava/io/IOException;
    const-string/jumbo v5, "FirmwareUpdate"

    const-string/jumbo v6, "Error closing"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 362
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 364
    :goto_4
    if-eqz v2, :cond_2

    .line 365
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 362
    :cond_2
    :goto_5
    throw v5

    .line 366
    :catch_5
    move-exception v1

    .line 367
    .restart local v1    # "e":Ljava/io/IOException;
    const-string/jumbo v6, "FirmwareUpdate"

    const-string/jumbo v7, "Error closing"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 362
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v3    # "out":Ljava/io/FileWriter;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "out":Ljava/io/FileWriter;
    .local v2, "out":Ljava/io/FileWriter;
    goto :goto_4

    .line 356
    .end local v2    # "out":Ljava/io/FileWriter;
    .restart local v3    # "out":Ljava/io/FileWriter;
    :catch_6
    move-exception v0

    .restart local v0    # "e":Ljava/io/FileNotFoundException;
    move-object v2, v3

    .end local v3    # "out":Ljava/io/FileWriter;
    .restart local v2    # "out":Ljava/io/FileWriter;
    goto :goto_3

    .line 359
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v2    # "out":Ljava/io/FileWriter;
    .restart local v3    # "out":Ljava/io/FileWriter;
    :catch_7
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    move-object v2, v3

    .end local v3    # "out":Ljava/io/FileWriter;
    .restart local v2    # "out":Ljava/io/FileWriter;
    goto :goto_2
.end method
