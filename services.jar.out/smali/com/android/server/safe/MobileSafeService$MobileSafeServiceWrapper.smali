.class final Lcom/android/server/safe/MobileSafeService$MobileSafeServiceWrapper;
.super Landroid/safe/IMobileSafe$Stub;
.source "MobileSafeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/safe/MobileSafeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MobileSafeServiceWrapper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/safe/MobileSafeService;


# direct methods
.method private constructor <init>(Lcom/android/server/safe/MobileSafeService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/safe/MobileSafeService;

    .prologue
    .line 1518
    iput-object p1, p0, Lcom/android/server/safe/MobileSafeService$MobileSafeServiceWrapper;->this$0:Lcom/android/server/safe/MobileSafeService;

    invoke-direct {p0}, Landroid/safe/IMobileSafe$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/safe/MobileSafeService;Lcom/android/server/safe/MobileSafeService$MobileSafeServiceWrapper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/safe/MobileSafeService;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/safe/MobileSafeService$MobileSafeServiceWrapper;-><init>(Lcom/android/server/safe/MobileSafeService;)V

    return-void
.end method


# virtual methods
.method public addPermission(Landroid/safe/PackageInfoEx;)V
    .locals 1
    .param p1, "pkgInfoEx"    # Landroid/safe/PackageInfoEx;

    .prologue
    .line 1534
    iget-object v0, p0, Lcom/android/server/safe/MobileSafeService$MobileSafeServiceWrapper;->this$0:Lcom/android/server/safe/MobileSafeService;

    invoke-static {v0, p1}, Lcom/android/server/safe/MobileSafeService;->-wrap9(Lcom/android/server/safe/MobileSafeService;Landroid/safe/PackageInfoEx;)V

    .line 1533
    return-void
.end method

.method public addWhiteList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1610
    .local p1, "pkgNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/safe/MobileSafeService$MobileSafeServiceWrapper;->this$0:Lcom/android/server/safe/MobileSafeService;

    invoke-static {v0, p1}, Lcom/android/server/safe/MobileSafeService;->-wrap10(Lcom/android/server/safe/MobileSafeService;Ljava/util/List;)V

    .line 1609
    return-void
.end method

.method public checkPermission(IILjava/lang/String;Landroid/os/Bundle;)I
    .locals 1
    .param p1, "permID"    # I
    .param p2, "uid"    # I
    .param p3, "callingPkg"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1524
    iget-object v0, p0, Lcom/android/server/safe/MobileSafeService$MobileSafeServiceWrapper;->this$0:Lcom/android/server/safe/MobileSafeService;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/safe/MobileSafeService;->-wrap5(Lcom/android/server/safe/MobileSafeService;IILjava/lang/String;Landroid/os/Bundle;)I

    move-result v0

    return v0
.end method

.method public checkStartServicePerm(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "callingUid"    # I
    .param p2, "callingPkgName"    # Ljava/lang/String;
    .param p3, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 1566
    iget-object v0, p0, Lcom/android/server/safe/MobileSafeService$MobileSafeServiceWrapper;->this$0:Lcom/android/server/safe/MobileSafeService;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/safe/MobileSafeService;->-wrap2(Lcom/android/server/safe/MobileSafeService;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public deleteXml(ILjava/lang/String;)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 1549
    iget-object v0, p0, Lcom/android/server/safe/MobileSafeService$MobileSafeServiceWrapper;->this$0:Lcom/android/server/safe/MobileSafeService;

    invoke-static {v0, p1, p2}, Lcom/android/server/safe/MobileSafeService;->-wrap13(Lcom/android/server/safe/MobileSafeService;ILjava/lang/String;)V

    .line 1548
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1620
    iget-object v0, p0, Lcom/android/server/safe/MobileSafeService$MobileSafeServiceWrapper;->this$0:Lcom/android/server/safe/MobileSafeService;

    invoke-static {v0}, Lcom/android/server/safe/MobileSafeService;->-get2(Lcom/android/server/safe/MobileSafeService;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1623
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Permission Denial: can\'t dump mobile_safe service from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1624
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1623
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1625
    const-string/jumbo v1, ", uid="

    .line 1623
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1625
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1623
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1626
    return-void

    .line 1629
    :cond_0
    iget-object v0, p0, Lcom/android/server/safe/MobileSafeService$MobileSafeServiceWrapper;->this$0:Lcom/android/server/safe/MobileSafeService;

    invoke-static {v0, p2, p3}, Lcom/android/server/safe/MobileSafeService;->-wrap16(Lcom/android/server/safe/MobileSafeService;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1619
    return-void
.end method

.method public enable(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 1559
    iget-object v0, p0, Lcom/android/server/safe/MobileSafeService$MobileSafeServiceWrapper;->this$0:Lcom/android/server/safe/MobileSafeService;

    invoke-static {v0, p1}, Lcom/android/server/safe/MobileSafeService;->-wrap17(Lcom/android/server/safe/MobileSafeService;Z)V

    .line 1558
    return-void
.end method

.method public enterSafteyMode()V
    .locals 1

    .prologue
    .line 1600
    iget-object v0, p0, Lcom/android/server/safe/MobileSafeService$MobileSafeServiceWrapper;->this$0:Lcom/android/server/safe/MobileSafeService;

    invoke-static {v0}, Lcom/android/server/safe/MobileSafeService;->-wrap18(Lcom/android/server/safe/MobileSafeService;)V

    .line 1599
    return-void
.end method

.method public exitSafteyMode()V
    .locals 1

    .prologue
    .line 1605
    iget-object v0, p0, Lcom/android/server/safe/MobileSafeService$MobileSafeServiceWrapper;->this$0:Lcom/android/server/safe/MobileSafeService;

    invoke-static {v0}, Lcom/android/server/safe/MobileSafeService;->-wrap19(Lcom/android/server/safe/MobileSafeService;)V

    .line 1604
    return-void
.end method

.method public getAllPackageInfoEx()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/safe/PackageInfoEx;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1539
    iget-object v0, p0, Lcom/android/server/safe/MobileSafeService$MobileSafeServiceWrapper;->this$0:Lcom/android/server/safe/MobileSafeService;

    invoke-virtual {v0}, Lcom/android/server/safe/MobileSafeService;->getAllPackageInfoExL()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAssociatePkgAndState()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/safe/AutoRunPkgInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1571
    iget-object v0, p0, Lcom/android/server/safe/MobileSafeService$MobileSafeServiceWrapper;->this$0:Lcom/android/server/safe/MobileSafeService;

    invoke-static {v0}, Lcom/android/server/safe/MobileSafeService;->-wrap7(Lcom/android/server/safe/MobileSafeService;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPackageInfoExByUid(I)Landroid/safe/PackageInfoEx;
    .locals 1
    .param p1, "uid"    # I

    .prologue
    .line 1544
    iget-object v0, p0, Lcom/android/server/safe/MobileSafeService$MobileSafeServiceWrapper;->this$0:Lcom/android/server/safe/MobileSafeService;

    invoke-static {v0, p1}, Lcom/android/server/safe/MobileSafeService;->-wrap1(Lcom/android/server/safe/MobileSafeService;I)Landroid/safe/PackageInfoEx;

    move-result-object v0

    return-object v0
.end method

.method public getWhiteList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1615
    iget-object v0, p0, Lcom/android/server/safe/MobileSafeService$MobileSafeServiceWrapper;->this$0:Lcom/android/server/safe/MobileSafeService;

    invoke-static {v0}, Lcom/android/server/safe/MobileSafeService;->-wrap8(Lcom/android/server/safe/MobileSafeService;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public interceptIncomingSms(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .param p1, "phoneNum"    # Ljava/lang/String;
    .param p2, "smsText"    # Ljava/lang/String;
    .param p3, "slotId"    # I

    .prologue
    .line 1588
    iget-object v0, p0, Lcom/android/server/safe/MobileSafeService$MobileSafeServiceWrapper;->this$0:Lcom/android/server/safe/MobileSafeService;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/safe/MobileSafeService;->-wrap3(Lcom/android/server/safe/MobileSafeService;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public isInSafetyMode()Z
    .locals 1

    .prologue
    .line 1595
    iget-object v0, p0, Lcom/android/server/safe/MobileSafeService$MobileSafeServiceWrapper;->this$0:Lcom/android/server/safe/MobileSafeService;

    invoke-static {v0}, Lcom/android/server/safe/MobileSafeService;->-wrap4(Lcom/android/server/safe/MobileSafeService;)Z

    move-result v0

    return v0
.end method

.method public modifyAssociateRunAppState(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "allowAssociateRun"    # Z

    .prologue
    .line 1576
    iget-object v0, p0, Lcom/android/server/safe/MobileSafeService$MobileSafeServiceWrapper;->this$0:Lcom/android/server/safe/MobileSafeService;

    invoke-static {v0, p1, p2}, Lcom/android/server/safe/MobileSafeService;->-wrap21(Lcom/android/server/safe/MobileSafeService;Ljava/lang/String;Z)V

    .line 1575
    return-void
.end method

.method public modifyPermission(IJZ)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "action"    # J
    .param p4, "trusted"    # Z

    .prologue
    .line 1529
    iget-object v0, p0, Lcom/android/server/safe/MobileSafeService$MobileSafeServiceWrapper;->this$0:Lcom/android/server/safe/MobileSafeService;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/safe/MobileSafeService;->-wrap23(Lcom/android/server/safe/MobileSafeService;IJZ)V

    .line 1528
    return-void
.end method

.method public registerClient(Landroid/safe/IMobileSafeClient;)V
    .locals 2
    .param p1, "callback"    # Landroid/safe/IMobileSafeClient;

    .prologue
    .line 1554
    iget-object v0, p0, Lcom/android/server/safe/MobileSafeService$MobileSafeServiceWrapper;->this$0:Lcom/android/server/safe/MobileSafeService;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/android/server/safe/MobileSafeService;->-wrap24(Lcom/android/server/safe/MobileSafeService;Landroid/safe/IMobileSafeClient;I)V

    .line 1553
    return-void
.end method

.method public storeAutoRunRecord(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "allowAutoRun"    # Z

    .prologue
    .line 1581
    iget-object v0, p0, Lcom/android/server/safe/MobileSafeService$MobileSafeServiceWrapper;->this$0:Lcom/android/server/safe/MobileSafeService;

    invoke-static {v0, p1, p2}, Lcom/android/server/safe/MobileSafeService;->-wrap28(Lcom/android/server/safe/MobileSafeService;Ljava/lang/String;Z)V

    .line 1580
    return-void
.end method
