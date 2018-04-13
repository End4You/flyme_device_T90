.class Lcom/android/server/MountService$MountObbAction;
.super Lcom/android/server/MountService$ObbAction;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MountObbAction"
.end annotation


# instance fields
.field private final mCallingUid:I

.field private final mKey:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/MountService;
    .param p2, "obbState"    # Lcom/android/server/MountService$ObbState;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "callingUid"    # I

    .prologue
    .line 3954
    iput-object p1, p0, Lcom/android/server/MountService$MountObbAction;->this$0:Lcom/android/server/MountService;

    .line 3955
    invoke-direct {p0, p1, p2}, Lcom/android/server/MountService$ObbAction;-><init>(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;)V

    .line 3956
    iput-object p3, p0, Lcom/android/server/MountService$MountObbAction;->mKey:Ljava/lang/String;

    .line 3957
    iput p4, p0, Lcom/android/server/MountService$MountObbAction;->mCallingUid:I

    .line 3954
    return-void
.end method


# virtual methods
.method public handleError()V
    .locals 1

    .prologue
    .line 4036
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/android/server/MountService$MountObbAction;->sendNewStatusOrIgnore(I)V

    .line 4035
    return-void
.end method

.method public handleExecute()V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3962
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$MountObbAction;->this$0:Lcom/android/server/MountService;

    invoke-static {v13}, Lcom/android/server/MountService;->-wrap17(Lcom/android/server/MountService;)V

    .line 3963
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$MountObbAction;->this$0:Lcom/android/server/MountService;

    invoke-static {v13}, Lcom/android/server/MountService;->-wrap18(Lcom/android/server/MountService;)V

    .line 3965
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/MountService$MountObbAction;->getObbInfo()Landroid/content/res/ObbInfo;

    move-result-object v11

    .line 3967
    .local v11, "obbInfo":Landroid/content/res/ObbInfo;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$MountObbAction;->this$0:Lcom/android/server/MountService;

    iget-object v14, v11, Landroid/content/res/ObbInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/MountService$MountObbAction;->mCallingUid:I

    invoke-static {v13, v14, v15}, Lcom/android/server/MountService;->-wrap2(Lcom/android/server/MountService;Ljava/lang/String;I)Z

    move-result v13

    if-nez v13, :cond_0

    .line 3968
    const-string/jumbo v13, "MountService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Denied attempt to mount OBB "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v11, Landroid/content/res/ObbInfo;->filename:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 3969
    const-string/jumbo v15, " which is owned by "

    .line 3968
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 3969
    iget-object v15, v11, Landroid/content/res/ObbInfo;->packageName:Ljava/lang/String;

    .line 3968
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3970
    const/16 v13, 0x19

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/MountService$MountObbAction;->sendNewStatusOrIgnore(I)V

    .line 3971
    return-void

    .line 3975
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$MountObbAction;->this$0:Lcom/android/server/MountService;

    invoke-static {v13}, Lcom/android/server/MountService;->-get10(Lcom/android/server/MountService;)Ljava/util/Map;

    move-result-object v14

    monitor-enter v14

    .line 3976
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$MountObbAction;->this$0:Lcom/android/server/MountService;

    invoke-static {v13}, Lcom/android/server/MountService;->-get11(Lcom/android/server/MountService;)Ljava/util/Map;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/MountService$MountObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    iget-object v15, v15, Lcom/android/server/MountService$ObbState;->rawPath:Ljava/lang/String;

    invoke-interface {v13, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .local v8, "isMounted":Z
    monitor-exit v14

    .line 3978
    if-eqz v8, :cond_1

    .line 3979
    const-string/jumbo v13, "MountService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Attempt to mount OBB which is already mounted: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v11, Landroid/content/res/ObbInfo;->filename:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3980
    const/16 v13, 0x18

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/MountService$MountObbAction;->sendNewStatusOrIgnore(I)V

    .line 3981
    return-void

    .line 3975
    .end local v8    # "isMounted":Z
    :catchall_0
    move-exception v13

    monitor-exit v14

    throw v13

    .line 3985
    .restart local v8    # "isMounted":Z
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$MountObbAction;->mKey:Ljava/lang/String;

    if-nez v13, :cond_3

    .line 3986
    const-string/jumbo v7, "none"

    .line 4007
    .local v7, "hashedKey":Ljava/lang/String;
    :goto_0
    const/4 v12, 0x0

    .line 4009
    .local v12, "rc":I
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$MountObbAction;->this$0:Lcom/android/server/MountService;

    invoke-static {v13}, Lcom/android/server/MountService;->-get1(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v13

    const-string/jumbo v14, "obb"

    const/4 v15, 0x4

    new-array v15, v15, [Ljava/lang/Object;

    const-string/jumbo v16, "mount"

    const/16 v17, 0x0

    aput-object v16, v15, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/MountService$ObbState;->canonicalPath:Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    aput-object v16, v15, v17

    new-instance v16, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    move-object/from16 v0, v16

    invoke-direct {v0, v7}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    const/16 v17, 0x2

    aput-object v16, v15, v17

    .line 4010
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/MountService$ObbState;->ownerGid:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v17, 0x3

    aput-object v16, v15, v17

    .line 4009
    invoke-virtual {v13, v14, v15}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_2

    .line 4018
    :cond_2
    :goto_1
    if-nez v12, :cond_4

    .line 4020
    const-string/jumbo v13, "MountService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Successfully mounted OBB "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/MountService$MountObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    iget-object v15, v15, Lcom/android/server/MountService$ObbState;->canonicalPath:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4022
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$MountObbAction;->this$0:Lcom/android/server/MountService;

    invoke-static {v13}, Lcom/android/server/MountService;->-get10(Lcom/android/server/MountService;)Ljava/util/Map;

    move-result-object v14

    monitor-enter v14

    .line 4023
    :try_start_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$MountObbAction;->this$0:Lcom/android/server/MountService;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/MountService$MountObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    invoke-static {v13, v15}, Lcom/android/server/MountService;->-wrap4(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v14

    .line 4026
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/MountService$MountObbAction;->sendNewStatusOrIgnore(I)V

    .line 3961
    :goto_2
    return-void

    .line 3989
    .end local v7    # "hashedKey":Ljava/lang/String;
    .end local v12    # "rc":I
    :cond_3
    :try_start_3
    const-string/jumbo v13, "PBKDF2WithHmacSHA1"

    invoke-static {v13}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v6

    .line 3991
    .local v6, "factory":Ljavax/crypto/SecretKeyFactory;
    new-instance v10, Ljavax/crypto/spec/PBEKeySpec;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountService$MountObbAction;->mKey:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->toCharArray()[C

    move-result-object v13

    iget-object v14, v11, Landroid/content/res/ObbInfo;->salt:[B

    .line 3992
    const/16 v15, 0x400

    const/16 v16, 0x80

    .line 3991
    move/from16 v0, v16

    invoke-direct {v10, v13, v14, v15, v0}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    .line 3993
    .local v10, "ks":Ljava/security/spec/KeySpec;
    invoke-virtual {v6, v10}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v9

    .line 3994
    .local v9, "key":Ljavax/crypto/SecretKey;
    new-instance v1, Ljava/math/BigInteger;

    invoke-interface {v9}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v13

    invoke-direct {v1, v13}, Ljava/math/BigInteger;-><init>([B)V

    .line 3995
    .local v1, "bi":Ljava/math/BigInteger;
    const/16 v13, 0x10

    invoke-virtual {v1, v13}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v7

    .restart local v7    # "hashedKey":Ljava/lang/String;
    goto/16 :goto_0

    .line 4000
    .end local v1    # "bi":Ljava/math/BigInteger;
    .end local v6    # "factory":Ljavax/crypto/SecretKeyFactory;
    .end local v7    # "hashedKey":Ljava/lang/String;
    .end local v9    # "key":Ljavax/crypto/SecretKey;
    .end local v10    # "ks":Ljava/security/spec/KeySpec;
    :catch_0
    move-exception v5

    .line 4001
    .local v5, "e":Ljava/security/spec/InvalidKeySpecException;
    const-string/jumbo v13, "MountService"

    const-string/jumbo v14, "Invalid key spec when loading PBKDF2 algorithm"

    invoke-static {v13, v14, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4002
    const/16 v13, 0x14

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/MountService$MountObbAction;->sendNewStatusOrIgnore(I)V

    .line 4003
    return-void

    .line 3996
    .end local v5    # "e":Ljava/security/spec/InvalidKeySpecException;
    :catch_1
    move-exception v4

    .line 3997
    .local v4, "e":Ljava/security/NoSuchAlgorithmException;
    const-string/jumbo v13, "MountService"

    const-string/jumbo v14, "Could not load PBKDF2 algorithm"

    invoke-static {v13, v14, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3998
    const/16 v13, 0x14

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/MountService$MountObbAction;->sendNewStatusOrIgnore(I)V

    .line 3999
    return-void

    .line 4011
    .end local v4    # "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v7    # "hashedKey":Ljava/lang/String;
    .restart local v12    # "rc":I
    :catch_2
    move-exception v3

    .line 4012
    .local v3, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v3}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v2

    .line 4013
    .local v2, "code":I
    const/16 v13, 0x195

    if-eq v2, v13, :cond_2

    .line 4014
    const/4 v12, -0x1

    goto/16 :goto_1

    .line 4022
    .end local v2    # "code":I
    .end local v3    # "e":Lcom/android/server/NativeDaemonConnectorException;
    :catchall_1
    move-exception v13

    monitor-exit v14

    throw v13

    .line 4028
    :cond_4
    const-string/jumbo v13, "MountService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Couldn\'t mount OBB file: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4030
    const/16 v13, 0x15

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/MountService$MountObbAction;->sendNewStatusOrIgnore(I)V

    goto/16 :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 4041
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4042
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "MountObbAction{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4043
    iget-object v1, p0, Lcom/android/server/MountService$MountObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4044
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4045
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
