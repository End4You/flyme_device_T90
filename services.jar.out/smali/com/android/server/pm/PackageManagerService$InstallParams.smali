.class Lcom/android/server/pm/PackageManagerService$InstallParams;
.super Lcom/android/server/pm/PackageManagerService$HandlerParams;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InstallParams"
.end annotation


# instance fields
.field final certificates:[[Ljava/security/cert/Certificate;

.field final grantedRuntimePermissions:[Ljava/lang/String;

.field installFlags:I

.field final installerPackageName:Ljava/lang/String;

.field private mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

.field private mRet:I

.field final move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

.field final observer:Landroid/content/pm/IPackageInstallObserver2;

.field final origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

.field final packageAbiOverride:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

.field final volumeUuid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$OriginInfo;Lcom/android/server/pm/PackageManagerService$MoveInfo;Landroid/content/pm/IPackageInstallObserver2;ILjava/lang/String;Ljava/lang/String;Lcom/android/server/pm/PackageManagerService$VerificationInfo;Landroid/os/UserHandle;Ljava/lang/String;[Ljava/lang/String;[[Ljava/security/cert/Certificate;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "origin"    # Lcom/android/server/pm/PackageManagerService$OriginInfo;
    .param p3, "move"    # Lcom/android/server/pm/PackageManagerService$MoveInfo;
    .param p4, "observer"    # Landroid/content/pm/IPackageInstallObserver2;
    .param p5, "installFlags"    # I
    .param p6, "installerPackageName"    # Ljava/lang/String;
    .param p7, "volumeUuid"    # Ljava/lang/String;
    .param p8, "verificationInfo"    # Lcom/android/server/pm/PackageManagerService$VerificationInfo;
    .param p9, "user"    # Landroid/os/UserHandle;
    .param p10, "packageAbiOverride"    # Ljava/lang/String;
    .param p11, "grantedPermissions"    # [Ljava/lang/String;
    .param p12, "certificates"    # [[Ljava/security/cert/Certificate;

    .prologue
    .line 13139
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 13143
    invoke-direct {p0, p1, p9}, Lcom/android/server/pm/PackageManagerService$HandlerParams;-><init>(Lcom/android/server/pm/PackageManagerService;Landroid/os/UserHandle;)V

    .line 13144
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    .line 13145
    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    .line 13146
    iput-object p4, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->observer:Landroid/content/pm/IPackageInstallObserver2;

    .line 13147
    iput p5, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    .line 13148
    iput-object p6, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installerPackageName:Ljava/lang/String;

    .line 13149
    iput-object p7, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->volumeUuid:Ljava/lang/String;

    .line 13150
    iput-object p8, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    .line 13151
    iput-object p10, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->packageAbiOverride:Ljava/lang/String;

    .line 13152
    iput-object p11, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->grantedRuntimePermissions:[Ljava/lang/String;

    .line 13153
    iput-object p12, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->certificates:[[Ljava/security/cert/Certificate;

    .line 13142
    return-void
.end method

.method private installLocationPolicy(Landroid/content/pm/PackageInfoLite;)I
    .locals 14
    .param p1, "pkgLite"    # Landroid/content/pm/PackageInfoLite;

    .prologue
    const/4 v13, 0x2

    const/4 v10, 0x1

    const/4 v1, 0x0

    .line 13163
    iget-object v8, p1, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    .line 13164
    .local v8, "packageName":Ljava/lang/String;
    iget v4, p1, Landroid/content/pm/PackageInfoLite;->installLocation:I

    .line 13165
    .local v4, "installLocation":I
    iget v11, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit8 v11, v11, 0x8

    if-eqz v11, :cond_3

    const/4 v6, 0x1

    .line 13167
    .local v6, "onSd":Z
    :goto_0
    iget-object v11, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v11, v11, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v11

    .line 13170
    :try_start_0
    iget-object v12, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v12, v12, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v12, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageParser$Package;

    .line 13175
    .local v5, "installedPkg":Landroid/content/pm/PackageParser$Package;
    move-object v0, v5

    .line 13176
    .local v0, "dataOwnerPkg":Landroid/content/pm/PackageParser$Package;
    if-nez v5, :cond_0

    .line 13177
    iget-object v12, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v12, v12, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v12, v12, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v12, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/PackageSetting;

    .line 13178
    .local v9, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v9, :cond_0

    .line 13179
    iget-object v0, v9, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    .line 13183
    .end local v9    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_0
    if-eqz v0, :cond_2

    .line 13198
    iget v12, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit16 v12, v12, 0x80

    if-eqz v12, :cond_4

    const/4 v2, 0x1

    .line 13200
    .local v2, "downgradeRequested":Z
    :goto_1
    iget-object v12, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v12, v12, 0x2

    if-eqz v12, :cond_5

    const/4 v7, 0x1

    .line 13203
    .local v7, "packageDebuggable":Z
    :goto_2
    if-eqz v2, :cond_1

    sget-boolean v12, Landroid/os/Build;->IS_DEBUGGABLE:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v12, :cond_6

    move v1, v7

    .line 13204
    .local v1, "downgradePermitted":Z
    :cond_1
    :goto_3
    if-nez v1, :cond_2

    .line 13207
    :try_start_1
    iget-object v12, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v12, v12, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v12, v12, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v12, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/PackageSetting;

    .line 13208
    .restart local v9    # "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v9, :cond_2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v12

    invoke-virtual {v9, v12}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 13209
    invoke-static {v0, p1}, Lcom/android/server/pm/PackageManagerService;->-wrap21(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageInfoLite;)V
    :try_end_1
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13219
    .end local v1    # "downgradePermitted":Z
    .end local v2    # "downgradeRequested":Z
    .end local v7    # "packageDebuggable":Z
    .end local v9    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_2
    if-eqz v5, :cond_b

    .line 13220
    :try_start_2
    iget v12, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit8 v12, v12, 0x2

    if-eqz v12, :cond_e

    .line 13222
    iget-object v12, v5, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_8

    .line 13223
    if-eqz v6, :cond_7

    .line 13224
    const-string/jumbo v10, "PackageManager"

    const-string/jumbo v12, "Cannot install update to system app on sdcard"

    invoke-static {v10, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 13225
    const/4 v10, -0x3

    monitor-exit v11

    return v10

    .line 13165
    .end local v0    # "dataOwnerPkg":Landroid/content/pm/PackageParser$Package;
    .end local v5    # "installedPkg":Landroid/content/pm/PackageParser$Package;
    .end local v6    # "onSd":Z
    :cond_3
    const/4 v6, 0x0

    .restart local v6    # "onSd":Z
    goto :goto_0

    .line 13198
    .restart local v0    # "dataOwnerPkg":Landroid/content/pm/PackageParser$Package;
    .restart local v5    # "installedPkg":Landroid/content/pm/PackageParser$Package;
    :cond_4
    const/4 v2, 0x0

    .restart local v2    # "downgradeRequested":Z
    goto :goto_1

    .line 13200
    :cond_5
    const/4 v7, 0x0

    .restart local v7    # "packageDebuggable":Z
    goto :goto_2

    :cond_6
    move v1, v10

    .line 13203
    goto :goto_3

    .line 13212
    .restart local v1    # "downgradePermitted":Z
    :catch_0
    move-exception v3

    .line 13213
    .local v3, "e":Lcom/android/server/pm/PackageManagerException;
    :try_start_3
    const-string/jumbo v10, "PackageManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Downgrade detected: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 13214
    const/4 v10, -0x7

    monitor-exit v11

    return v10

    .end local v1    # "downgradePermitted":Z
    .end local v2    # "downgradeRequested":Z
    .end local v3    # "e":Lcom/android/server/pm/PackageManagerException;
    .end local v7    # "packageDebuggable":Z
    :cond_7
    monitor-exit v11

    .line 13227
    return v10

    .line 13229
    :cond_8
    if-eqz v6, :cond_9

    monitor-exit v11

    .line 13231
    return v13

    .line 13234
    :cond_9
    if-ne v4, v10, :cond_a

    monitor-exit v11

    .line 13236
    return v10

    .line 13237
    :cond_a
    if-ne v4, v13, :cond_c

    :cond_b
    monitor-exit v11

    .line 13255
    if-eqz v6, :cond_f

    .line 13256
    return v13

    .line 13241
    :cond_c
    :try_start_4
    invoke-static {v5}, Lcom/android/server/pm/PackageManagerService;->-wrap6(Landroid/content/pm/PackageParser$Package;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v12

    if-eqz v12, :cond_d

    monitor-exit v11

    .line 13242
    return v13

    :cond_d
    monitor-exit v11

    .line 13244
    return v10

    .line 13249
    :cond_e
    const/4 v10, -0x4

    monitor-exit v11

    return v10

    .line 13167
    .end local v0    # "dataOwnerPkg":Landroid/content/pm/PackageParser$Package;
    .end local v5    # "installedPkg":Landroid/content/pm/PackageParser$Package;
    :catchall_0
    move-exception v10

    monitor-exit v11

    throw v10

    .line 13258
    .restart local v0    # "dataOwnerPkg":Landroid/content/pm/PackageParser$Package;
    .restart local v5    # "installedPkg":Landroid/content/pm/PackageParser$Package;
    :cond_f
    iget v10, p1, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    return v10
.end method


# virtual methods
.method handleReturnCode()V
    .locals 3

    .prologue
    .line 13529
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    if-eqz v0, :cond_0

    .line 13530
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    iget v2, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mRet:I

    invoke-static {v0, v1, v2}, Lcom/android/server/pm/PackageManagerService;->-wrap33(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallArgs;I)V

    .line 13525
    :cond_0
    return-void
.end method

.method handleServiceError()V
    .locals 1

    .prologue
    .line 13536
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0, p0}, Lcom/android/server/pm/PackageManagerService;->-wrap9(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallParams;)Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    .line 13537
    const/16 v0, -0x6e

    iput v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mRet:I

    .line 13535
    return-void
.end method

.method public handleStartCopy()V
    .locals 36
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 13268
    const/16 v27, 0x1

    .line 13271
    .local v27, "ret":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-boolean v4, v4, Lcom/android/server/pm/PackageManagerService$OriginInfo;->staged:Z

    if-eqz v4, :cond_0

    .line 13272
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService$OriginInfo;->file:Ljava/io/File;

    if-eqz v4, :cond_a

    .line 13273
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    or-int/lit8 v4, v4, 0x10

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    .line 13274
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit8 v4, v4, -0x9

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    .line 13283
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_c

    const/16 v22, 0x1

    .line 13284
    .local v22, "onSd":Z
    :goto_1
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_d

    const/16 v19, 0x1

    .line 13285
    .local v19, "onInt":Z
    :goto_2
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit16 v4, v4, 0x800

    if-eqz v4, :cond_e

    const/16 v16, 0x1

    .line 13286
    .local v16, "ephemeral":Z
    :goto_3
    const/16 v23, 0x0

    .line 13288
    .local v23, "pkgLite":Landroid/content/pm/PackageInfoLite;
    if-eqz v19, :cond_f

    if-eqz v22, :cond_f

    .line 13290
    const-string/jumbo v4, "PackageManager"

    const-string/jumbo v7, "Conflicting flags specified for installing on both internal and external"

    invoke-static {v4, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 13291
    const/16 v27, -0x13

    .line 13340
    .end local v23    # "pkgLite":Landroid/content/pm/PackageInfoLite;
    :cond_1
    :goto_4
    const/4 v4, 0x1

    move/from16 v0, v27

    if-ne v0, v4, :cond_2

    .line 13341
    move-object/from16 v0, v23

    iget v0, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    move/from16 v18, v0

    .line 13342
    .local v18, "loc":I
    const/4 v4, -0x3

    move/from16 v0, v18

    if-ne v0, v4, :cond_12

    .line 13343
    const/16 v27, -0x13

    .line 13382
    .end local v18    # "loc":I
    :cond_2
    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, p0

    invoke-static {v4, v0}, Lcom/android/server/pm/PackageManagerService;->-wrap9(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallParams;)Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v14

    .line 13383
    .local v14, "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    .line 13385
    const/4 v4, 0x1

    move/from16 v0, v27

    if-ne v0, v4, :cond_9

    .line 13388
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$InstallParams;->getUser()Landroid/os/UserHandle;

    move-result-object v6

    .line 13389
    .local v6, "verifierUser":Landroid/os/UserHandle;
    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    if-ne v6, v4, :cond_3

    .line 13390
    sget-object v6, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 13397
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackage:Ljava/lang/String;

    if-nez v4, :cond_1c

    const/16 v25, -0x1

    .line 13400
    .local v25, "requiredUid":I
    :goto_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-boolean v4, v4, Lcom/android/server/pm/PackageManagerService$OriginInfo;->existing:Z

    if-nez v4, :cond_1e

    const/4 v4, -0x1

    move/from16 v0, v25

    if-eq v0, v4, :cond_1e

    .line 13401
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    invoke-static {v4, v7, v8}, Lcom/android/server/pm/PackageManagerService;->-wrap7(Lcom/android/server/pm/PackageManagerService;II)Z

    move-result v4

    .line 13400
    if-eqz v4, :cond_1e

    .line 13402
    new-instance v5, Landroid/content/Intent;

    .line 13403
    const-string/jumbo v4, "android.intent.action.PACKAGE_NEEDS_VERIFICATION"

    .line 13402
    invoke-direct {v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 13404
    .local v5, "verification":Landroid/content/Intent;
    const/high16 v4, 0x10000000

    invoke-virtual {v5, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 13405
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedPath:Ljava/lang/String;

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    .line 13406
    const-string/jumbo v7, "application/vnd.android.package-archive"

    .line 13405
    invoke-virtual {v5, v4, v7}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 13407
    const/4 v4, 0x1

    invoke-virtual {v5, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 13410
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 13411
    const-string/jumbo v7, "application/vnd.android.package-archive"

    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    const/4 v9, 0x0

    .line 13410
    invoke-static {v4, v5, v7, v9, v8}, Lcom/android/server/pm/PackageManagerService;->-wrap17(Lcom/android/server/pm/PackageManagerService;Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v24

    .line 13419
    .local v24, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->-get9(Lcom/android/server/pm/PackageManagerService;)I

    move-result v33

    add-int/lit8 v7, v33, 0x1

    invoke-static {v4, v7}, Lcom/android/server/pm/PackageManagerService;->-set2(Lcom/android/server/pm/PackageManagerService;I)I

    .line 13421
    .local v33, "verificationId":I
    const-string/jumbo v4, "android.content.pm.extra.VERIFICATION_ID"

    move/from16 v0, v33

    invoke-virtual {v5, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 13423
    const-string/jumbo v4, "android.content.pm.extra.VERIFICATION_INSTALLER_PACKAGE"

    .line 13424
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installerPackageName:Ljava/lang/String;

    .line 13423
    invoke-virtual {v5, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 13426
    const-string/jumbo v4, "android.content.pm.extra.VERIFICATION_INSTALL_FLAGS"

    .line 13427
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    .line 13426
    invoke-virtual {v5, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 13429
    const-string/jumbo v4, "android.content.pm.extra.VERIFICATION_PACKAGE_NAME"

    .line 13430
    move-object/from16 v0, v23

    iget-object v7, v0, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    .line 13429
    invoke-virtual {v5, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 13432
    const-string/jumbo v4, "android.content.pm.extra.VERIFICATION_VERSION_CODE"

    .line 13433
    move-object/from16 v0, v23

    iget v7, v0, Landroid/content/pm/PackageInfoLite;->versionCode:I

    .line 13432
    invoke-virtual {v5, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 13435
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    if-eqz v4, :cond_7

    .line 13436
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->originatingUri:Landroid/net/Uri;

    if-eqz v4, :cond_4

    .line 13437
    const-string/jumbo v4, "android.intent.extra.ORIGINATING_URI"

    .line 13438
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->originatingUri:Landroid/net/Uri;

    .line 13437
    invoke-virtual {v5, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 13440
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->referrer:Landroid/net/Uri;

    if-eqz v4, :cond_5

    .line 13441
    const-string/jumbo v4, "android.intent.extra.REFERRER"

    .line 13442
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->referrer:Landroid/net/Uri;

    .line 13441
    invoke-virtual {v5, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 13444
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    iget v4, v4, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->originatingUid:I

    if-ltz v4, :cond_6

    .line 13445
    const-string/jumbo v4, "android.intent.extra.ORIGINATING_UID"

    .line 13446
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    iget v7, v7, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->originatingUid:I

    .line 13445
    invoke-virtual {v5, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 13448
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    iget v4, v4, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->installerUid:I

    if-ltz v4, :cond_7

    .line 13449
    const-string/jumbo v4, "android.content.pm.extra.VERIFICATION_INSTALLER_UID"

    .line 13450
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    iget v7, v7, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->installerUid:I

    .line 13449
    invoke-virtual {v5, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 13454
    :cond_7
    new-instance v34, Lcom/android/server/pm/PackageVerificationState;

    move-object/from16 v0, v34

    move/from16 v1, v25

    invoke-direct {v0, v1, v14}, Lcom/android/server/pm/PackageVerificationState;-><init>(ILcom/android/server/pm/PackageManagerService$InstallArgs;)V

    .line 13457
    .local v34, "verificationState":Lcom/android/server/pm/PackageVerificationState;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    move/from16 v0, v33

    move-object/from16 v1, v34

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 13459
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v34

    invoke-static {v4, v0, v1, v2}, Lcom/android/server/pm/PackageManagerService;->-wrap16(Lcom/android/server/pm/PackageManagerService;Landroid/content/pm/PackageInfoLite;Ljava/util/List;Lcom/android/server/pm/PackageVerificationState;)Ljava/util/List;

    move-result-object v32

    .line 13466
    .local v32, "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    if-eqz v32, :cond_8

    .line 13467
    invoke-interface/range {v32 .. v32}, Ljava/util/List;->size()I

    move-result v13

    .line 13468
    .local v13, "N":I
    if-nez v13, :cond_1d

    .line 13469
    const-string/jumbo v4, "PackageManager"

    const-string/jumbo v7, "Additional verifiers required, but none installed."

    invoke-static {v4, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13470
    const/16 v27, -0x16

    .line 13482
    .end local v13    # "N":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 13483
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackage:Ljava/lang/String;

    .line 13482
    move-object/from16 v0, v24

    invoke-static {v4, v7, v0}, Lcom/android/server/pm/PackageManagerService;->-wrap0(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v26

    .line 13484
    .local v26, "requiredVerifierComponent":Landroid/content/ComponentName;
    const/4 v4, 0x1

    move/from16 v0, v27

    if-ne v0, v4, :cond_9

    .line 13485
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackage:Ljava/lang/String;

    if-eqz v4, :cond_9

    .line 13487
    const-string/jumbo v4, "verification"

    const-wide/32 v8, 0x40000

    .line 13486
    move/from16 v0, v33

    invoke-static {v8, v9, v4, v0}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 13493
    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 13494
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 13495
    const-string/jumbo v7, "android.permission.PACKAGE_VERIFICATION_AGENT"

    .line 13496
    new-instance v8, Lcom/android/server/pm/PackageManagerService$InstallParams$1;

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-direct {v8, v0, v1}, Lcom/android/server/pm/PackageManagerService$InstallParams$1;-><init>(Lcom/android/server/pm/PackageManagerService$InstallParams;I)V

    .line 13504
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 13494
    invoke-virtual/range {v4 .. v12}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 13510
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    .line 13521
    .end local v5    # "verification":Landroid/content/Intent;
    .end local v6    # "verifierUser":Landroid/os/UserHandle;
    .end local v24    # "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v25    # "requiredUid":I
    .end local v26    # "requiredVerifierComponent":Landroid/content/ComponentName;
    .end local v32    # "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v33    # "verificationId":I
    .end local v34    # "verificationState":Lcom/android/server/pm/PackageVerificationState;
    :cond_9
    :goto_7
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->mRet:I

    .line 13267
    return-void

    .line 13275
    .end local v14    # "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .end local v16    # "ephemeral":Z
    .end local v19    # "onInt":Z
    .end local v22    # "onSd":Z
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService$OriginInfo;->cid:Ljava/lang/String;

    if-eqz v4, :cond_b

    .line 13276
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    or-int/lit8 v4, v4, 0x8

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    .line 13277
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit8 v4, v4, -0x11

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    goto/16 :goto_0

    .line 13279
    :cond_b
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v7, "Invalid stage location"

    invoke-direct {v4, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 13283
    :cond_c
    const/16 v22, 0x0

    .restart local v22    # "onSd":Z
    goto/16 :goto_1

    .line 13284
    :cond_d
    const/16 v19, 0x0

    .restart local v19    # "onInt":Z
    goto/16 :goto_2

    .line 13285
    :cond_e
    const/16 v16, 0x0

    .restart local v16    # "ephemeral":Z
    goto/16 :goto_3

    .line 13292
    .restart local v23    # "pkgLite":Landroid/content/pm/PackageInfoLite;
    :cond_f
    if-eqz v22, :cond_10

    if-eqz v16, :cond_10

    .line 13293
    const-string/jumbo v4, "PackageManager"

    const-string/jumbo v7, "Conflicting flags specified for installing ephemeral on external"

    invoke-static {v4, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 13294
    const/16 v27, -0x13

    goto/16 :goto_4

    .line 13296
    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->-get2(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    .line 13297
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->packageAbiOverride:Ljava/lang/String;

    .line 13296
    invoke-interface {v4, v7, v8, v9}, Lcom/android/internal/app/IMediaContainerService;->getMinimalPackageInfo(Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/PackageInfoLite;

    move-result-object v23

    .line 13299
    .local v23, "pkgLite":Landroid/content/pm/PackageInfoLite;
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->-get0()Z

    move-result v4

    if-eqz v4, :cond_11

    if-eqz v16, :cond_11

    .line 13300
    const-string/jumbo v4, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "pkgLite for install: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 13307
    :cond_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-boolean v4, v4, Lcom/android/server/pm/PackageManagerService$OriginInfo;->staged:Z

    if-nez v4, :cond_1

    move-object/from16 v0, v23

    iget v4, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    .line 13308
    const/4 v7, -0x1

    .line 13307
    if-ne v4, v7, :cond_1

    .line 13310
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v30

    .line 13312
    .local v30, "storage":Landroid/os/storage/StorageManager;
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    .line 13311
    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Landroid/os/storage/StorageManager;->getStorageLowBytes(Ljava/io/File;)J

    move-result-wide v20

    .line 13314
    .local v20, "lowThreshold":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->-get2(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v4

    .line 13315
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedPath:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$InstallParams;->isForwardLocked()Z

    move-result v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->packageAbiOverride:Ljava/lang/String;

    .line 13314
    invoke-interface {v4, v7, v8, v9}, Lcom/android/internal/app/IMediaContainerService;->calculateInstalledSize(Ljava/lang/String;ZLjava/lang/String;)J

    move-result-wide v28

    .line 13318
    .local v28, "sizeBytes":J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    add-long v8, v28, v20

    const/4 v7, 0x0

    invoke-virtual {v4, v7, v8, v9}, Lcom/android/server/pm/Installer;->freeCache(Ljava/lang/String;J)V

    .line 13319
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->-get2(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedPath:Ljava/lang/String;

    .line 13320
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->packageAbiOverride:Ljava/lang/String;

    .line 13319
    invoke-interface {v4, v7, v8, v9}, Lcom/android/internal/app/IMediaContainerService;->getMinimalPackageInfo(Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/PackageInfoLite;
    :try_end_0
    .catch Lcom/android/internal/os/InstallerConnection$InstallerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v23

    .line 13332
    :goto_8
    move-object/from16 v0, v23

    iget v4, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    .line 13333
    const/4 v7, -0x6

    .line 13332
    if-ne v4, v7, :cond_1

    .line 13335
    const/4 v4, -0x1

    .line 13334
    move-object/from16 v0, v23

    iput v4, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    goto/16 :goto_4

    .line 13321
    :catch_0
    move-exception v15

    .line 13322
    .local v15, "e":Lcom/android/internal/os/InstallerConnection$InstallerException;
    const-string/jumbo v4, "PackageManager"

    const-string/jumbo v7, "Failed to free cache"

    invoke-static {v4, v7, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 13344
    .end local v15    # "e":Lcom/android/internal/os/InstallerConnection$InstallerException;
    .end local v20    # "lowThreshold":J
    .end local v23    # "pkgLite":Landroid/content/pm/PackageInfoLite;
    .end local v28    # "sizeBytes":J
    .end local v30    # "storage":Landroid/os/storage/StorageManager;
    .restart local v18    # "loc":I
    :cond_12
    const/4 v4, -0x4

    move/from16 v0, v18

    if-ne v0, v4, :cond_13

    .line 13345
    const/16 v27, -0x1

    goto/16 :goto_5

    .line 13346
    :cond_13
    const/4 v4, -0x1

    move/from16 v0, v18

    if-ne v0, v4, :cond_14

    .line 13347
    const/16 v27, -0x4

    goto/16 :goto_5

    .line 13348
    :cond_14
    const/4 v4, -0x2

    move/from16 v0, v18

    if-ne v0, v4, :cond_15

    .line 13349
    const/16 v27, -0x2

    goto/16 :goto_5

    .line 13350
    :cond_15
    const/4 v4, -0x6

    move/from16 v0, v18

    if-ne v0, v4, :cond_16

    .line 13351
    const/16 v27, -0x3

    goto/16 :goto_5

    .line 13352
    :cond_16
    const/4 v4, -0x5

    move/from16 v0, v18

    if-ne v0, v4, :cond_17

    .line 13353
    const/16 v27, -0x14

    goto/16 :goto_5

    .line 13356
    :cond_17
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/server/pm/PackageManagerService$InstallParams;->installLocationPolicy(Landroid/content/pm/PackageInfoLite;)I

    move-result v18

    .line 13357
    const/4 v4, -0x7

    move/from16 v0, v18

    if-ne v0, v4, :cond_18

    .line 13358
    const/16 v27, -0x19

    goto/16 :goto_5

    .line 13359
    :cond_18
    if-nez v22, :cond_2

    if-nez v19, :cond_2

    .line 13361
    const/4 v4, 0x2

    move/from16 v0, v18

    if-ne v0, v4, :cond_19

    .line 13363
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    or-int/lit8 v4, v4, 0x8

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    .line 13364
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit8 v4, v4, -0x11

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    goto/16 :goto_5

    .line 13365
    :cond_19
    const/4 v4, 0x3

    move/from16 v0, v18

    if-ne v0, v4, :cond_1b

    .line 13366
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->-get0()Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 13367
    const-string/jumbo v4, "PackageManager"

    const-string/jumbo v7, "...setting INSTALL_EPHEMERAL install flag"

    invoke-static {v4, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 13369
    :cond_1a
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    or-int/lit16 v4, v4, 0x800

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    .line 13370
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit8 v4, v4, -0x19

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    goto/16 :goto_5

    .line 13375
    :cond_1b
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    or-int/lit8 v4, v4, 0x10

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    .line 13376
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit8 v4, v4, -0x9

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    goto/16 :goto_5

    .line 13398
    .end local v18    # "loc":I
    .restart local v6    # "verifierUser":Landroid/os/UserHandle;
    .restart local v14    # "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    :cond_1c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackage:Ljava/lang/String;

    .line 13399
    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    .line 13398
    const/high16 v9, 0x10000000

    invoke-virtual {v4, v7, v9, v8}, Lcom/android/server/pm/PackageManagerService;->getPackageUid(Ljava/lang/String;II)I

    move-result v25

    .restart local v25    # "requiredUid":I
    goto/16 :goto_6

    .line 13472
    .restart local v5    # "verification":Landroid/content/Intent;
    .restart local v13    # "N":I
    .restart local v24    # "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v32    # "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .restart local v33    # "verificationId":I
    .restart local v34    # "verificationState":Lcom/android/server/pm/PackageVerificationState;
    :cond_1d
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_9
    move/from16 v0, v17

    if-ge v0, v13, :cond_8

    .line 13473
    move-object/from16 v0, v32

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/content/ComponentName;

    .line 13475
    .local v35, "verifierComponent":Landroid/content/ComponentName;
    new-instance v31, Landroid/content/Intent;

    move-object/from16 v0, v31

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 13476
    .local v31, "sufficientIntent":Landroid/content/Intent;
    move-object/from16 v0, v31

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 13477
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v31

    invoke-virtual {v4, v0, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 13472
    add-int/lit8 v17, v17, 0x1

    goto :goto_9

    .line 13517
    .end local v5    # "verification":Landroid/content/Intent;
    .end local v13    # "N":I
    .end local v17    # "i":I
    .end local v24    # "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v31    # "sufficientIntent":Landroid/content/Intent;
    .end local v32    # "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v33    # "verificationId":I
    .end local v34    # "verificationState":Lcom/android/server/pm/PackageVerificationState;
    .end local v35    # "verifierComponent":Landroid/content/ComponentName;
    :cond_1e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->-get2(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v4

    const/4 v7, 0x1

    invoke-virtual {v14, v4, v7}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->copyApk(Lcom/android/internal/app/IMediaContainerService;Z)I

    move-result v27

    goto/16 :goto_7
.end method

.method public isForwardLocked()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 13541
    iget v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 13158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "InstallParams{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 13159
    const-string/jumbo v1, " file="

    .line 13158
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 13159
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService$OriginInfo;->file:Ljava/io/File;

    .line 13158
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 13159
    const-string/jumbo v1, " cid="

    .line 13158
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 13159
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService$OriginInfo;->cid:Ljava/lang/String;

    .line 13158
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 13159
    const-string/jumbo v1, "}"

    .line 13158
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
