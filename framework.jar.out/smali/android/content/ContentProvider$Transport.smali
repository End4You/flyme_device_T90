.class Landroid/content/ContentProvider$Transport;
.super Landroid/content/ContentProviderNative;
.source "ContentProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/ContentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Transport"
.end annotation


# instance fields
.field mAppOpsManager:Landroid/app/AppOpsManager;

.field mReadOp:I

.field mWriteOp:I

.field final synthetic this$0:Landroid/content/ContentProvider;


# direct methods
.method constructor <init>(Landroid/content/ContentProvider;)V
    .locals 2
    .param p1, "this$0"    # Landroid/content/ContentProvider;

    .prologue
    const/4 v1, -0x1

    .line 200
    iput-object p1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-direct {p0}, Landroid/content/ContentProviderNative;-><init>()V

    .line 201
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/ContentProvider$Transport;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 202
    iput v1, p0, Landroid/content/ContentProvider$Transport;->mReadOp:I

    .line 203
    iput v1, p0, Landroid/content/ContentProvider$Transport;->mWriteOp:I

    .line 200
    return-void
.end method

.method private enforceFilePermission(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "mode"    # Ljava/lang/String;
    .param p4, "callerToken"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 556
    if-eqz p3, :cond_0

    const/16 v0, 0x77

    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 557
    invoke-direct {p0, p1, p2, p4}, Landroid/content/ContentProvider$Transport;->enforceWritePermission(Ljava/lang/String;Landroid/net/Uri;Landroid/os/IBinder;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 559
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string/jumbo v1, "App op not allowed"

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 562
    :cond_0
    invoke-direct {p0, p1, p2, p4}, Landroid/content/ContentProvider$Transport;->enforceReadPermission(Ljava/lang/String;Landroid/net/Uri;Landroid/os/IBinder;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 564
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string/jumbo v1, "App op not allowed"

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 555
    :cond_1
    return-void
.end method

.method private enforceReadPermission(Ljava/lang/String;Landroid/net/Uri;Landroid/os/IBinder;)I
    .locals 4
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "callerToken"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 571
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v1, p2, p1, p3}, Landroid/content/ContentProvider;->enforceReadPermissionInner(Landroid/net/Uri;Ljava/lang/String;Landroid/os/IBinder;)I

    move-result v0

    .line 572
    .local v0, "mode":I
    if-eqz v0, :cond_0

    .line 573
    return v0

    .line 576
    :cond_0
    iget v1, p0, Landroid/content/ContentProvider$Transport;->mReadOp:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 577
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget v2, p0, Landroid/content/ContentProvider$Transport;->mReadOp:I

    invoke-virtual {v1, v2, p1}, Landroid/app/AppOpsManager;->noteProxyOp(ILjava/lang/String;)I

    move-result v1

    return v1

    .line 580
    :cond_1
    return v3
.end method

.method private enforceWritePermission(Ljava/lang/String;Landroid/net/Uri;Landroid/os/IBinder;)I
    .locals 4
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "callerToken"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 585
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v1, p2, p1, p3}, Landroid/content/ContentProvider;->enforceWritePermissionInner(Landroid/net/Uri;Ljava/lang/String;Landroid/os/IBinder;)I

    move-result v0

    .line 586
    .local v0, "mode":I
    if-eqz v0, :cond_0

    .line 587
    return v0

    .line 590
    :cond_0

    invoke-direct/range {p0 .. p1}, Landroid/content/ContentProvider$Transport;->isFlymeAllowedWriteSms(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_flyme_0

    const/4 v1, 0x0

    return v1

    :cond_flyme_0

    iget v1, p0, Landroid/content/ContentProvider$Transport;->mWriteOp:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 591
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget v2, p0, Landroid/content/ContentProvider$Transport;->mWriteOp:I

    invoke-virtual {v1, v2, p1}, Landroid/app/AppOpsManager;->noteProxyOp(ILjava/lang/String;)I

    move-result v1

    return v1

    .line 594
    :cond_1
    return v3
.end method


# virtual methods
.method public applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 12
    .param p1, "callingPkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .prologue
    .line 336
    .local p2, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 337
    .local v2, "numOperations":I
    new-array v8, v2, [I

    .line 338
    .local v8, "userIds":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_7

    .line 339
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentProviderOperation;

    .line 340
    .local v3, "operation":Landroid/content/ContentProviderOperation;
    invoke-virtual {v3}, Landroid/content/ContentProviderOperation;->getUri()Landroid/net/Uri;

    move-result-object v7

    .line 341
    .local v7, "uri":Landroid/net/Uri;
    iget-object v9, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v9, v7}, Landroid/content/ContentProvider;->-wrap3(Landroid/content/ContentProvider;Landroid/net/Uri;)V

    .line 342
    invoke-static {v7}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;)I

    move-result v9

    aput v9, v8, v1

    .line 343
    aget v9, v8, v1

    const/4 v10, -0x2

    if-eq v9, v10, :cond_0

    .line 345
    new-instance v4, Landroid/content/ContentProviderOperation;

    const/4 v9, 0x1

    invoke-direct {v4, v3, v9}, Landroid/content/ContentProviderOperation;-><init>(Landroid/content/ContentProviderOperation;Z)V

    .line 346
    .end local v3    # "operation":Landroid/content/ContentProviderOperation;
    .local v4, "operation":Landroid/content/ContentProviderOperation;
    invoke-virtual {p2, v1, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-object v3, v4

    .line 348
    .end local v4    # "operation":Landroid/content/ContentProviderOperation;
    .restart local v3    # "operation":Landroid/content/ContentProviderOperation;
    :cond_0
    invoke-virtual {v3}, Landroid/content/ContentProviderOperation;->isReadOperation()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 349
    const/4 v9, 0x0

    invoke-direct {p0, p1, v7, v9}, Landroid/content/ContentProvider$Transport;->hook_enforceReadPermission(Ljava/lang/String;Landroid/net/Uri;Landroid/os/IBinder;)I

    move-result v9

    if-eqz v9, :cond_1

    .line 351
    new-instance v9, Landroid/content/OperationApplicationException;

    const-string/jumbo v10, "App op not allowed"

    const/4 v11, 0x0

    invoke-direct {v9, v10, v11}, Landroid/content/OperationApplicationException;-><init>(Ljava/lang/String;I)V

    throw v9

    .line 354
    :cond_1
    sget-boolean v9, Landroid/safe/SafeFeature;->ENABLE:Z

    if-eqz v9, :cond_2

    .line 355
    iget-object v9, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v3}, Landroid/content/ContentProviderOperation;->getUri()Landroid/net/Uri;

    move-result-object v10

    invoke-static {v9, v10, p1}, Landroid/content/ContentProvider;->-wrap0(Landroid/content/ContentProvider;Landroid/net/Uri;Ljava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_2

    .line 356
    new-instance v9, Landroid/content/OperationApplicationException;

    const-string/jumbo v10, "App r-op not allowed"

    const/4 v11, 0x0

    invoke-direct {v9, v10, v11}, Landroid/content/OperationApplicationException;-><init>(Ljava/lang/String;I)V

    throw v9

    .line 361
    :cond_2
    invoke-virtual {v3}, Landroid/content/ContentProviderOperation;->isWriteOperation()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 362
    const/4 v9, 0x0

    invoke-direct {p0, p1, v7, v3}, Landroid/content/ContentProvider$Transport;->hook_enforceWritePermission_isWrite(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentProviderOperation;)I

    move-result v9

    if-eqz v9, :cond_3

    .line 364
    new-instance v9, Landroid/content/OperationApplicationException;

    const-string/jumbo v10, "App op not allowed"

    const/4 v11, 0x0

    invoke-direct {v9, v10, v11}, Landroid/content/OperationApplicationException;-><init>(Ljava/lang/String;I)V

    throw v9

    .line 367
    :cond_3
    sget-boolean v9, Landroid/safe/SafeFeature;->ENABLE:Z

    if-eqz v9, :cond_6

    .line 368
    const/4 v0, 0x3

    .line 369
    .local v0, "batch_op":I
    invoke-virtual {v3}, Landroid/content/ContentProviderOperation;->isInsert()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 370
    const/4 v0, 0x1

    .line 374
    :cond_4
    :goto_1
    iget-object v9, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v9, v7, p1, v0}, Landroid/content/ContentProvider;->-wrap1(Landroid/content/ContentProvider;Landroid/net/Uri;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_6

    .line 375
    new-instance v9, Landroid/content/OperationApplicationException;

    const-string/jumbo v10, "App batch-w-op not allowed"

    const/4 v11, 0x0

    invoke-direct {v9, v10, v11}, Landroid/content/OperationApplicationException;-><init>(Ljava/lang/String;I)V

    throw v9

    .line 371
    :cond_5
    invoke-virtual {v3}, Landroid/content/ContentProviderOperation;->isUpdate()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 372
    const/4 v0, 0x2

    goto :goto_1

    .line 338
    .end local v0    # "batch_op":I
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 381
    .end local v3    # "operation":Landroid/content/ContentProviderOperation;
    .end local v7    # "uri":Landroid/net/Uri;
    :cond_7
    iget-object v9, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v9, p1}, Landroid/content/ContentProvider;->-wrap2(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 383
    .local v5, "original":Ljava/lang/String;
    :try_start_0
    iget-object v9, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v9, p2}, Landroid/content/ContentProvider;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v6

    .line 384
    .local v6, "results":[Landroid/content/ContentProviderResult;
    if-eqz v6, :cond_9

    .line 385
    const/4 v1, 0x0

    :goto_2
    array-length v9, v6

    if-ge v1, v9, :cond_9

    .line 386
    aget v9, v8, v1

    const/4 v10, -0x2

    if-eq v9, v10, :cond_8

    .line 388
    new-instance v9, Landroid/content/ContentProviderResult;

    aget-object v10, v6, v1

    aget v11, v8, v1

    invoke-direct {v9, v10, v11}, Landroid/content/ContentProviderResult;-><init>(Landroid/content/ContentProviderResult;I)V

    aput-object v9, v6, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 385
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 394
    :cond_9
    iget-object v9, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v9, v5}, Landroid/content/ContentProvider;->-wrap2(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    .line 392
    return-object v6

    .line 393
    .end local v6    # "results":[Landroid/content/ContentProviderResult;
    :catchall_0
    move-exception v9

    .line 394
    iget-object v10, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v10, v5}, Landroid/content/ContentProvider;->-wrap2(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    .line 393
    throw v9
.end method

.method public bulkInsert(Ljava/lang/String;Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 4
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "initialValues"    # [Landroid/content/ContentValues;

    .prologue
    const/4 v3, 0x0

    .line 312
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v1, p2}, Landroid/content/ContentProvider;->-wrap3(Landroid/content/ContentProvider;Landroid/net/Uri;)V

    .line 313
    invoke-static {p2}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 314
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Landroid/content/ContentProvider$Transport;->hook_enforceWritePermission(Ljava/lang/String;Landroid/net/Uri;Landroid/os/IBinder;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 315
    return v3

    .line 318
    :cond_0
    sget-boolean v1, Landroid/safe/SafeFeature;->ENABLE:Z

    if-eqz v1, :cond_1

    .line 319
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    const/4 v2, 0x1

    invoke-static {v1, p2, p1, v2}, Landroid/content/ContentProvider;->-wrap1(Landroid/content/ContentProvider;Landroid/net/Uri;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    .line 320
    return v3

    .line 324
    :cond_1
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v1, p1}, Landroid/content/ContentProvider;->-wrap2(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 326
    .local v0, "original":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v1, p2, p3}, Landroid/content/ContentProvider;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 328
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v2, v0}, Landroid/content/ContentProvider;->-wrap2(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    .line 326
    return v1

    .line 327
    :catchall_0
    move-exception v1

    .line 328
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v2, v0}, Landroid/content/ContentProvider;->-wrap2(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    .line 327
    throw v1
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "arg"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 478
    const/4 v1, 0x1

    invoke-static {p4, v1}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 479
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v1, p1}, Landroid/content/ContentProvider;->-wrap2(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 481
    .local v0, "original":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v1, p2, p3, p4}, Landroid/content/ContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 483
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v2, v0}, Landroid/content/ContentProvider;->-wrap2(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    .line 481
    return-object v1

    .line 482
    :catchall_0
    move-exception v1

    .line 483
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v2, v0}, Landroid/content/ContentProvider;->-wrap2(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    .line 482
    throw v1
.end method

.method public canonicalize(Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 4
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    .line 524
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v2, p2}, Landroid/content/ContentProvider;->-wrap3(Landroid/content/ContentProvider;Landroid/net/Uri;)V

    .line 525
    invoke-static {p2}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;)I

    move-result v1

    .line 526
    .local v1, "userId":I
    invoke-static {p2}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 527
    invoke-direct {p0, p1, p2, v3}, Landroid/content/ContentProvider$Transport;->enforceReadPermission(Ljava/lang/String;Landroid/net/Uri;Landroid/os/IBinder;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 528
    return-object v3

    .line 530
    :cond_0
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v2, p1}, Landroid/content/ContentProvider;->-wrap2(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 532
    .local v0, "original":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v2, p2}, Landroid/content/ContentProvider;->canonicalize(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 534
    iget-object v3, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v3, v0}, Landroid/content/ContentProvider;->-wrap2(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    .line 532
    return-object v2

    .line 533
    :catchall_0
    move-exception v2

    .line 534
    iget-object v3, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v3, v0}, Landroid/content/ContentProvider;->-wrap2(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    .line 533
    throw v2
.end method

.method public createCancellationSignal()Landroid/os/ICancellationSignal;
    .locals 1

    .prologue
    .line 519
    invoke-static {}, Landroid/os/CancellationSignal;->createTransport()Landroid/os/ICancellationSignal;

    move-result-object v0

    return-object v0
.end method

.method public delete(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 400
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v1, p2}, Landroid/content/ContentProvider;->-wrap3(Landroid/content/ContentProvider;Landroid/net/Uri;)V

    .line 401
    invoke-static {p2}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 402
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Landroid/content/ContentProvider$Transport;->hook_enforceWritePermission_isDel(Ljava/lang/String;Landroid/net/Uri;Landroid/os/IBinder;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 403
    return v3

    .line 406
    :cond_0
    sget-boolean v1, Landroid/safe/SafeFeature;->ENABLE:Z

    if-eqz v1, :cond_1

    .line 407
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    const/4 v2, 0x3

    invoke-static {v1, p2, p1, v2}, Landroid/content/ContentProvider;->-wrap1(Landroid/content/ContentProvider;Landroid/net/Uri;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    .line 408
    return v3

    .line 412
    :cond_1
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v1, p1}, Landroid/content/ContentProvider;->-wrap2(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 414
    .local v0, "original":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v1, p2, p3, p4}, Landroid/content/ContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 416
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v2, v0}, Landroid/content/ContentProvider;->-wrap2(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    .line 414
    return v1

    .line 415
    :catchall_0
    move-exception v1

    .line 416
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v2, v0}, Landroid/content/ContentProvider;->-wrap2(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    .line 415
    throw v1
.end method

.method getContentProvider()Landroid/content/ContentProvider;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    return-object v0
.end method

.method public getProviderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    invoke-virtual {p0}, Landroid/content/ContentProvider$Transport;->getContentProvider()Landroid/content/ContentProvider;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProvider;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimeTypeFilter"    # Ljava/lang/String;

    .prologue
    .line 489
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v0, p1}, Landroid/content/ContentProvider;->-wrap3(Landroid/content/ContentProvider;Landroid/net/Uri;)V

    .line 490
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    .line 491
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentProvider;->getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 282
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v0, p1}, Landroid/content/ContentProvider;->-wrap3(Landroid/content/ContentProvider;Landroid/net/Uri;)V

    .line 283
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    .line 284
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p1}, Landroid/content/ContentProvider;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public insert(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 4
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "initialValues"    # Landroid/content/ContentValues;

    .prologue
    .line 289
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v2, p2}, Landroid/content/ContentProvider;->-wrap3(Landroid/content/ContentProvider;Landroid/net/Uri;)V

    .line 290
    invoke-static {p2}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;)I

    move-result v1

    .line 291
    .local v1, "userId":I
    invoke-static {p2}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 293
    sget-boolean v2, Landroid/safe/SafeFeature;->ENABLE:Z

    if-eqz v2, :cond_0

    .line 294
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    const/4 v3, 0x1

    invoke-static {v2, p2, p1, v3}, Landroid/content/ContentProvider;->-wrap1(Landroid/content/ContentProvider;Landroid/net/Uri;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    .line 295
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v2, p2, p3}, Landroid/content/ContentProvider;->rejectInsert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    return-object v2

    .line 299
    :cond_0
    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, v2}, Landroid/content/ContentProvider$Transport;->hook_enforceWritePermission(Ljava/lang/String;Landroid/net/Uri;Landroid/os/IBinder;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 300
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v2, p2, p3}, Landroid/content/ContentProvider;->rejectInsert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    return-object v2

    .line 302
    :cond_1
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v2, p1}, Landroid/content/ContentProvider;->-wrap2(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 304
    .local v0, "original":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v2, p2, p3}, Landroid/content/ContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 306
    iget-object v3, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v3, v0}, Landroid/content/ContentProvider;->-wrap2(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    .line 304
    return-object v2

    .line 305
    :catchall_0
    move-exception v2

    .line 306
    iget-object v3, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v3, v0}, Landroid/content/ContentProvider;->-wrap2(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    .line 305
    throw v2
.end method

.method public openAssetFile(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .locals 3
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "mode"    # Ljava/lang/String;
    .param p4, "cancellationSignal"    # Landroid/os/ICancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 463
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v1, p2}, Landroid/content/ContentProvider;->-wrap3(Landroid/content/ContentProvider;Landroid/net/Uri;)V

    .line 464
    invoke-static {p2}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 465
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3, v1}, Landroid/content/ContentProvider$Transport;->enforceFilePermission(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/IBinder;)V

    .line 466
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v1, p1}, Landroid/content/ContentProvider;->-wrap2(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 468
    .local v0, "original":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    .line 469
    invoke-static {p4}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object v2

    .line 468
    invoke-virtual {v1, p2, p3, v2}, Landroid/content/ContentProvider;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 471
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v2, v0}, Landroid/content/ContentProvider;->-wrap2(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    .line 468
    return-object v1

    .line 470
    :catchall_0
    move-exception v1

    .line 471
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v2, v0}, Landroid/content/ContentProvider;->-wrap2(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    .line 470
    throw v1
.end method

.method public openFile(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/ICancellationSignal;Landroid/os/IBinder;)Landroid/os/ParcelFileDescriptor;
    .locals 3
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "mode"    # Ljava/lang/String;
    .param p4, "cancellationSignal"    # Landroid/os/ICancellationSignal;
    .param p5, "callerToken"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 447
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v1, p2}, Landroid/content/ContentProvider;->-wrap3(Landroid/content/ContentProvider;Landroid/net/Uri;)V

    .line 448
    invoke-static {p2}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 449
    invoke-direct {p0, p1, p2, p3, p5}, Landroid/content/ContentProvider$Transport;->enforceFilePermission(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/IBinder;)V

    .line 450
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v1, p1}, Landroid/content/ContentProvider;->-wrap2(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 452
    .local v0, "original":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    .line 453
    invoke-static {p4}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object v2

    .line 452
    invoke-virtual {v1, p2, p3, v2}, Landroid/content/ContentProvider;->openFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 455
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v2, v0}, Landroid/content/ContentProvider;->-wrap2(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    .line 452
    return-object v1

    .line 454
    :catchall_0
    move-exception v1

    .line 455
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v2, v0}, Landroid/content/ContentProvider;->-wrap2(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    .line 454
    throw v1
.end method

.method public openTypedAssetFile(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .locals 3
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "mimeType"    # Ljava/lang/String;
    .param p4, "opts"    # Landroid/os/Bundle;
    .param p5, "cancellationSignal"    # Landroid/os/ICancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 497
    const/4 v1, 0x1

    invoke-static {p4, v1}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 498
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v1, p2}, Landroid/content/ContentProvider;->-wrap3(Landroid/content/ContentProvider;Landroid/net/Uri;)V

    .line 499
    invoke-static {p2}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 500
    const-string/jumbo v1, "r"

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, v1, v2}, Landroid/content/ContentProvider$Transport;->enforceFilePermission(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/IBinder;)V

    .line 502
    sget-boolean v1, Landroid/safe/SafeFeature;->ENABLE:Z

    if-eqz v1, :cond_0

    .line 503
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v1, p2, p1}, Landroid/content/ContentProvider;->-wrap0(Landroid/content/ContentProvider;Landroid/net/Uri;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 504
    new-instance v1, Ljava/io/FileNotFoundException;

    const-string/jumbo v2, "App r-op not allowed"

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 508
    :cond_0
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v1, p1}, Landroid/content/ContentProvider;->-wrap2(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 510
    .local v0, "original":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    .line 511
    invoke-static {p5}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object v2

    .line 510
    invoke-virtual {v1, p2, p3, p4, v2}, Landroid/content/ContentProvider;->openTypedAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 513
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v2, v0}, Landroid/content/ContentProvider;->-wrap2(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    .line 510
    return-object v1

    .line 512
    :catchall_0
    move-exception v1

    .line 513
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v2, v0}, Landroid/content/ContentProvider;->-wrap2(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    .line 512
    throw v1
.end method

.method public query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;
    .locals 9
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "projection"    # [Ljava/lang/String;
    .param p4, "selection"    # Ljava/lang/String;
    .param p5, "selectionArgs"    # [Ljava/lang/String;
    .param p6, "sortOrder"    # Ljava/lang/String;
    .param p7, "cancellationSignal"    # Landroid/os/ICancellationSignal;

    .prologue
    .line 218
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v0, p2}, Landroid/content/ContentProvider;->-wrap3(Landroid/content/ContentProvider;Landroid/net/Uri;)V

    .line 219
    invoke-static {p2}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 222
    sget-boolean v0, Landroid/safe/SafeFeature;->ENABLE:Z

    if-eqz v0, :cond_2

    .line 223
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v0, p2, p1}, Landroid/content/ContentProvider;->-wrap0(Landroid/content/ContentProvider;Landroid/net/Uri;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 224
    if-eqz p3, :cond_0

    .line 225
    new-instance v0, Landroid/database/MatrixCursor;

    const/4 v1, 0x0

    invoke-direct {v0, p3, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    return-object v0

    .line 232
    :cond_0
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    .line 233
    invoke-static/range {p7 .. p7}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object v6

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 232
    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v7

    .line 235
    .local v7, "cursor":Landroid/database/Cursor;
    if-nez v7, :cond_1

    .line 236
    const/4 v0, 0x0

    return-object v0

    .line 240
    :cond_1
    new-instance v0, Landroid/database/MatrixCursor;

    invoke-interface {v7}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    return-object v0

    .line 245
    .end local v7    # "cursor":Landroid/database/Cursor;
    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/content/ContentProvider$Transport;->hook_enforceReadPermission(Ljava/lang/String;Landroid/net/Uri;Landroid/os/IBinder;)I

    move-result v0

    if-eqz v0, :cond_5

    .line 252
    if-eqz p3, :cond_3

    .line 253
    new-instance v0, Landroid/database/MatrixCursor;

    const/4 v1, 0x0

    invoke-direct {v0, p3, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    return-object v0

    .line 260
    :cond_3
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    .line 261
    invoke-static/range {p7 .. p7}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object v6

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 260
    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v7

    .line 263
    .restart local v7    # "cursor":Landroid/database/Cursor;
    if-nez v7, :cond_4

    .line 264
    const/4 v0, 0x0

    return-object v0

    .line 268
    :cond_4
    new-instance v0, Landroid/database/MatrixCursor;

    invoke-interface {v7}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    return-object v0

    .line 270
    .end local v7    # "cursor":Landroid/database/Cursor;
    :cond_5
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v0, p1}, Landroid/content/ContentProvider;->-wrap2(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 272
    .local v8, "original":Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    .line 274
    invoke-static/range {p7 .. p7}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object v6

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 272
    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 276
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v1, v8}, Landroid/content/ContentProvider;->-wrap2(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    .line 272
    return-object v0

    .line 275
    :catchall_0
    move-exception v0

    .line 276
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v1, v8}, Landroid/content/ContentProvider;->-wrap2(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    .line 275
    throw v0
.end method

.method public uncanonicalize(Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 4
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    .line 540
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v2, p2}, Landroid/content/ContentProvider;->-wrap3(Landroid/content/ContentProvider;Landroid/net/Uri;)V

    .line 541
    invoke-static {p2}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;)I

    move-result v1

    .line 542
    .local v1, "userId":I
    invoke-static {p2}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 543
    invoke-direct {p0, p1, p2, v3}, Landroid/content/ContentProvider$Transport;->enforceReadPermission(Ljava/lang/String;Landroid/net/Uri;Landroid/os/IBinder;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 544
    return-object v3

    .line 546
    :cond_0
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v2, p1}, Landroid/content/ContentProvider;->-wrap2(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 548
    .local v0, "original":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v2, p2}, Landroid/content/ContentProvider;->uncanonicalize(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 550
    iget-object v3, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v3, v0}, Landroid/content/ContentProvider;->-wrap2(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    .line 548
    return-object v2

    .line 549
    :catchall_0
    move-exception v2

    .line 550
    iget-object v3, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v3, v0}, Landroid/content/ContentProvider;->-wrap2(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    .line 549
    throw v2
.end method

.method public update(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "values"    # Landroid/content/ContentValues;
    .param p4, "selection"    # Ljava/lang/String;
    .param p5, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 423
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v1, p2}, Landroid/content/ContentProvider;->-wrap3(Landroid/content/ContentProvider;Landroid/net/Uri;)V

    .line 424
    invoke-static {p2}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 425
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Landroid/content/ContentProvider$Transport;->hook_enforceWritePermission(Ljava/lang/String;Landroid/net/Uri;Landroid/os/IBinder;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 426
    return v3

    .line 429
    :cond_0
    sget-boolean v1, Landroid/safe/SafeFeature;->ENABLE:Z

    if-eqz v1, :cond_1

    .line 430
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    const/4 v2, 0x2

    invoke-static {v1, p2, p1, v2}, Landroid/content/ContentProvider;->-wrap1(Landroid/content/ContentProvider;Landroid/net/Uri;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    .line 431
    return v3

    .line 435
    :cond_1
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v1, p1}, Landroid/content/ContentProvider;->-wrap2(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 437
    .local v0, "original":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v1, p2, p3, p4, p5}, Landroid/content/ContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 439
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v2, v0}, Landroid/content/ContentProvider;->-wrap2(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    .line 437
    return v1

    .line 438
    :catchall_0
    move-exception v1

    .line 439
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v2, v0}, Landroid/content/ContentProvider;->-wrap2(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    .line 438
    throw v1
.end method

.method private hook_enforceReadPermission(Ljava/lang/String;Landroid/net/Uri;Landroid/os/IBinder;)I
    .locals 1
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "callerToken"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentProvider;->isFlymeCurentLockApp(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Landroid/content/ContentProvider$Transport;->enforceReadPermission(Ljava/lang/String;Landroid/net/Uri;Landroid/os/IBinder;)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private hook_enforceWritePermission(Ljava/lang/String;Landroid/net/Uri;Landroid/os/IBinder;)I
    .locals 1
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "callerToken"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lmeizu/security/FlymePermissionManager;->checkWritePrivilege(Ljava/lang/String;Landroid/net/Uri;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentProvider;->isFlymeCurentLockApp(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Landroid/content/ContentProvider$Transport;->enforceWritePermission(Ljava/lang/String;Landroid/net/Uri;Landroid/os/IBinder;)I

    move-result v0

    return v0
.end method

.method private hook_enforceWritePermission_isDel(Ljava/lang/String;Landroid/net/Uri;Landroid/os/IBinder;)I
    .locals 2
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "callerToken"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    invoke-static {p1, p2, v1}, Lmeizu/security/FlymePermissionManager;->checkWritePrivilege(Ljava/lang/String;Landroid/net/Uri;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentProvider;->isFlymeCurentLockApp(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return v1

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Landroid/content/ContentProvider$Transport;->enforceWritePermission(Ljava/lang/String;Landroid/net/Uri;Landroid/os/IBinder;)I

    move-result v0

    return v0
.end method

.method private hook_enforceWritePermission_isWrite(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentProviderOperation;)I
    .locals 1
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "operation"    # Landroid/content/ContentProviderOperation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    invoke-virtual {p3}, Landroid/content/ContentProviderOperation;->isDeleteOperation()Z

    move-result v0

    invoke-static {p1, p2, v0}, Lmeizu/security/FlymePermissionManager;->checkWritePrivilege(Ljava/lang/String;Landroid/net/Uri;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentProvider;->isFlymeCurentLockApp(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/content/ContentProvider$Transport;->enforceWritePermission(Ljava/lang/String;Landroid/net/Uri;Landroid/os/IBinder;)I

    move-result v0

    return v0
.end method

.method private isFlymeAllowedWriteSms(Ljava/lang/String;)I
    .locals 5
    .param p1, "callingPkg"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    iget v2, p0, Landroid/content/ContentProvider$Transport;->mWriteOp:I

    const/16 v3, 0xf

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v2, v2, 0x81

    if-eqz v2, :cond_0

    return v4

    :cond_0
    invoke-static {p1}, Lmeizu/security/FlymePermissionManager;->isSystemSignatures(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_1

    return v4

    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v0

    :cond_1
    const/4 v2, 0x1

    return v2
.end method
