.class public Landroid/security/NetworkSecurityPolicy;
.super Ljava/lang/Object;
.source "NetworkSecurityPolicy.java"


# static fields
.field private static final INSTANCE:Landroid/security/NetworkSecurityPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    new-instance v0, Landroid/security/NetworkSecurityPolicy;

    invoke-direct {v0}, Landroid/security/NetworkSecurityPolicy;-><init>()V

    sput-object v0, Landroid/security/NetworkSecurityPolicy;->INSTANCE:Landroid/security/NetworkSecurityPolicy;

    .line 43
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getApplicationConfigForPackage(Landroid/content/Context;Ljava/lang/String;)Landroid/security/net/config/ApplicationConfig;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 121
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 122
    .local v0, "appContext":Landroid/content/Context;
    new-instance v1, Landroid/security/net/config/ManifestConfigSource;

    invoke-direct {v1, v0}, Landroid/security/net/config/ManifestConfigSource;-><init>(Landroid/content/Context;)V

    .line 123
    .local v1, "source":Landroid/security/net/config/ManifestConfigSource;
    new-instance v2, Landroid/security/net/config/ApplicationConfig;

    invoke-direct {v2, v1}, Landroid/security/net/config/ApplicationConfig;-><init>(Landroid/security/net/config/ConfigSource;)V

    return-object v2
.end method

.method public static getInstance()Landroid/security/NetworkSecurityPolicy;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Landroid/security/NetworkSecurityPolicy;->INSTANCE:Landroid/security/NetworkSecurityPolicy;

    return-object v0
.end method


# virtual methods
.method public handleTrustStorageUpdate()V
    .locals 1

    .prologue
    .line 111
    invoke-static {}, Landroid/security/net/config/ApplicationConfig;->getDefaultInstance()Landroid/security/net/config/ApplicationConfig;

    move-result-object v0

    invoke-virtual {v0}, Landroid/security/net/config/ApplicationConfig;->handleTrustStorageUpdate()V

    .line 110
    return-void
.end method

.method public isCleartextTrafficPermitted()Z
    .locals 1

    .prologue
    .line 78
    invoke-static {}, Llibcore/net/NetworkSecurityPolicy;->getInstance()Llibcore/net/NetworkSecurityPolicy;

    move-result-object v0

    invoke-virtual {v0}, Llibcore/net/NetworkSecurityPolicy;->isCleartextTrafficPermitted()Z

    move-result v0

    return v0
.end method

.method public isCleartextTrafficPermitted(Ljava/lang/String;)Z
    .locals 1
    .param p1, "hostname"    # Ljava/lang/String;

    .prologue
    .line 88
    invoke-static {}, Llibcore/net/NetworkSecurityPolicy;->getInstance()Llibcore/net/NetworkSecurityPolicy;

    move-result-object v0

    invoke-virtual {v0, p1}, Llibcore/net/NetworkSecurityPolicy;->isCleartextTrafficPermitted(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSendingMMSPermittedByMobilesafe(I)Z
    .locals 8
    .param p1, "opType"    # I

    .prologue
    const/4 v7, 0x1

    .line 138
    sget-boolean v3, Landroid/safe/SafeFeature;->ENABLE:Z

    if-eqz v3, :cond_1

    .line 140
    const-string/jumbo v3, "safe"

    const-string/jumbo v4, "isSendingMMSPermittedByMobilesafe"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const/16 v2, 0x8

    .line 143
    .local v2, "permissionId":I
    if-ne p1, v7, :cond_0

    .line 144
    const/16 v2, 0x14

    .line 147
    :cond_0
    :try_start_0
    const-string/jumbo v3, "mobile_safe"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/safe/IMobileSafe$Stub;->asInterface(Landroid/os/IBinder;)Landroid/safe/IMobileSafe;

    move-result-object v1

    .line 148
    .local v1, "ims":Landroid/safe/IMobileSafe;
    if-eqz v1, :cond_1

    .line 149
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/16 v4, 0x8

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v1, v4, v3, v5, v6}, Landroid/safe/IMobileSafe;->checkPermission(IILjava/lang/String;Landroid/os/Bundle;)I

    move-result v3

    .line 150
    const/4 v4, -0x1

    .line 149
    if-ne v3, v4, :cond_1

    .line 151
    const-string/jumbo v3, "safe"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "deny callingUid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", opType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    const/4 v3, 0x0

    return v3

    .line 155
    .end local v1    # "ims":Landroid/safe/IMobileSafe;
    :catch_0
    move-exception v0

    .line 158
    .end local v2    # "permissionId":I
    :cond_1
    return v7
.end method

.method public setCleartextTrafficPermitted(Z)V
    .locals 1
    .param p1, "permitted"    # Z

    .prologue
    .line 101
    new-instance v0, Landroid/security/FrameworkNetworkSecurityPolicy;

    invoke-direct {v0, p1}, Landroid/security/FrameworkNetworkSecurityPolicy;-><init>(Z)V

    .line 102
    .local v0, "policy":Landroid/security/FrameworkNetworkSecurityPolicy;
    invoke-static {v0}, Llibcore/net/NetworkSecurityPolicy;->setInstance(Llibcore/net/NetworkSecurityPolicy;)V

    .line 100
    return-void
.end method
