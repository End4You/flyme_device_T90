.class Lcom/android/server/InputMethodManagerService$MyPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyPackageMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/InputMethodManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/InputMethodManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/InputMethodManagerService;

    .prologue
    .line 628
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method private isChangingPackagesOfCurrentUser()Z
    .locals 5

    .prologue
    .line 630
    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->getChangingUserId()I

    move-result v1

    .line 631
    .local v1, "userId":I
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v2, v2, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v2

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    .line 632
    .local v0, "retval":Z
    :goto_0
    sget-boolean v2, Lcom/android/server/InputMethodManagerService;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 633
    if-nez v0, :cond_0

    .line 634
    const-string/jumbo v2, "InputMethodManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "--- ignore this call back from a background user: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    :cond_0
    return v0

    .line 631
    .end local v0    # "retval":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "retval":Z
    goto :goto_0
.end method


# virtual methods
.method public onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZ)Z
    .locals 11
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "packages"    # [Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "doit"    # Z

    .prologue
    const/4 v10, 0x1

    const/4 v6, 0x0

    .line 642
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->isChangingPackagesOfCurrentUser()Z

    move-result v5

    if-nez v5, :cond_0

    .line 643
    return v6

    .line 645
    :cond_0
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v7, v5, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v7

    .line 646
    :try_start_0
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v5, v5, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v5}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v1

    .line 647
    .local v1, "curInputMethodId":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v5, v5, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 648
    .local v0, "N":I
    if-eqz v1, :cond_4

    .line 649
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_4

    .line 650
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v5, v5, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    .line 651
    .local v3, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 652
    array-length v8, p2

    move v5, v6

    :goto_1
    if-ge v5, v8, :cond_3

    aget-object v4, p2, v5

    .line 653
    .local v4, "pkg":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    if-eqz v9, :cond_2

    .line 654
    if-nez p4, :cond_1

    monitor-exit v7

    .line 655
    return v10

    .line 657
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    const-string/jumbo v6, ""

    invoke-static {v5, v6}, Lcom/android/server/InputMethodManagerService;->-wrap1(Lcom/android/server/InputMethodManagerService;Ljava/lang/String;)V

    .line 658
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-static {v5}, Lcom/android/server/InputMethodManagerService;->-wrap0(Lcom/android/server/InputMethodManagerService;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v7

    .line 659
    return v10

    .line 652
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 649
    .end local v4    # "pkg":Ljava/lang/String;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v2    # "i":I
    .end local v3    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_4
    monitor-exit v7

    .line 666
    return v6

    .line 645
    .end local v0    # "N":I
    .end local v1    # "curInputMethodId":Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit v7

    throw v5
.end method

.method public onSomePackagesChanged()V
    .locals 15

    .prologue
    .line 671
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->isChangingPackagesOfCurrentUser()Z

    move-result v10

    if-nez v10, :cond_0

    .line 672
    return-void

    .line 674
    :cond_0
    iget-object v10, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v11, v10, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v11

    .line 675
    const/4 v3, 0x0

    .line 676
    .local v3, "curIm":Landroid/view/inputmethod/InputMethodInfo;
    :try_start_0
    iget-object v10, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v10, v10, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v10}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v4

    .line 677
    .local v4, "curInputMethodId":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v10, v10, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 678
    .local v0, "N":I
    if-eqz v4, :cond_5

    .line 679
    const/4 v6, 0x0

    .end local v3    # "curIm":Landroid/view/inputmethod/InputMethodInfo;
    .local v6, "i":I
    :goto_0
    if-ge v6, v0, :cond_5

    .line 680
    iget-object v10, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v10, v10, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/inputmethod/InputMethodInfo;

    .line 681
    .local v7, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v8

    .line 682
    .local v8, "imiId":Ljava/lang/String;
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 683
    move-object v3, v7

    .line 686
    :cond_1
    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->isPackageDisappearing(Ljava/lang/String;)I

    move-result v1

    .line 687
    .local v1, "change":I
    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->isPackageModified(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 688
    iget-object v10, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-static {v10}, Lcom/android/server/InputMethodManagerService;->-get1(Lcom/android/server/InputMethodManagerService;)Lcom/android/server/InputMethodManagerService$InputMethodFileManager;

    move-result-object v10

    invoke-static {v10, v8}, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->-wrap0(Lcom/android/server/InputMethodManagerService$InputMethodFileManager;Ljava/lang/String;)V

    .line 690
    :cond_2
    const/4 v10, 0x2

    if-eq v1, v10, :cond_3

    .line 691
    const/4 v10, 0x3

    if-ne v1, v10, :cond_4

    .line 692
    :cond_3
    const-string/jumbo v10, "InputMethodManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Input method uninstalled, disabling: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 693
    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v13

    .line 692
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    iget-object v10, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v10, v12, v13}, Lcom/android/server/InputMethodManagerService;->setInputMethodEnabledLocked(Ljava/lang/String;Z)Z

    .line 679
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 699
    .end local v1    # "change":I
    .end local v6    # "i":I
    .end local v7    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v8    # "imiId":Ljava/lang/String;
    :cond_5
    iget-object v10, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Lcom/android/server/InputMethodManagerService;->buildInputMethodListLocked(Z)V

    .line 701
    const/4 v2, 0x0

    .line 703
    .local v2, "changed":Z
    if-eqz v3, :cond_7

    .line 704
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->isPackageDisappearing(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 705
    .restart local v1    # "change":I
    const/4 v10, 0x2

    if-eq v1, v10, :cond_6

    .line 706
    const/4 v10, 0x3

    if-ne v1, v10, :cond_7

    .line 707
    :cond_6
    const/4 v9, 0x0

    .line 709
    .local v9, "si":Landroid/content/pm/ServiceInfo;
    :try_start_1
    iget-object v10, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-static {v10}, Lcom/android/server/InputMethodManagerService;->-get2(Lcom/android/server/InputMethodManagerService;)Landroid/content/pm/IPackageManager;

    move-result-object v10

    .line 710
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    iget-object v13, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v13, v13, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v13}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v13

    const/4 v14, 0x0

    .line 709
    invoke-interface {v10, v12, v14, v13}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v9

    .line 713
    .end local v9    # "si":Landroid/content/pm/ServiceInfo;
    :goto_1
    if-nez v9, :cond_7

    .line 716
    :try_start_2
    const-string/jumbo v10, "InputMethodManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Current input method removed: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    iget-object v10, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v12, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v12, v12, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    iget-object v13, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    iget v13, v13, Lcom/android/server/InputMethodManagerService;->mBackDisposition:I

    const/4 v14, 0x0

    invoke-static {v10, v12, v14, v13}, Lcom/android/server/InputMethodManagerService;->-wrap3(Lcom/android/server/InputMethodManagerService;Landroid/os/IBinder;II)V

    .line 718
    iget-object v10, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-static {v10}, Lcom/android/server/InputMethodManagerService;->-wrap0(Lcom/android/server/InputMethodManagerService;)Z

    move-result v10

    if-nez v10, :cond_7

    .line 719
    const/4 v2, 0x1

    .line 720
    const/4 v3, 0x0

    .line 721
    .restart local v3    # "curIm":Landroid/view/inputmethod/InputMethodInfo;
    const-string/jumbo v10, "InputMethodManagerService"

    const-string/jumbo v12, "Unsetting current input method"

    invoke-static {v10, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    iget-object v10, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    const-string/jumbo v12, ""

    invoke-static {v10, v12}, Lcom/android/server/InputMethodManagerService;->-wrap1(Lcom/android/server/InputMethodManagerService;Ljava/lang/String;)V

    .line 728
    .end local v1    # "change":I
    .end local v3    # "curIm":Landroid/view/inputmethod/InputMethodInfo;
    :cond_7
    if-nez v3, :cond_a

    .line 731
    iget-object v10, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-static {v10}, Lcom/android/server/InputMethodManagerService;->-wrap0(Lcom/android/server/InputMethodManagerService;)Z

    move-result v2

    .line 738
    .end local v2    # "changed":Z
    :cond_8
    :goto_2
    if-eqz v2, :cond_9

    .line 739
    iget-object v10, p0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/InputMethodManagerService;

    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Lcom/android/server/InputMethodManagerService;->updateFromSettingsLocked(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_9
    monitor-exit v11

    .line 670
    return-void

    .line 732
    .restart local v2    # "changed":Z
    :cond_a
    if-nez v2, :cond_8

    :try_start_3
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->isPackageModified(Ljava/lang/String;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v10

    if-eqz v10, :cond_8

    .line 735
    const/4 v2, 0x1

    goto :goto_2

    .line 674
    .end local v0    # "N":I
    .end local v2    # "changed":Z
    .end local v4    # "curInputMethodId":Ljava/lang/String;
    :catchall_0
    move-exception v10

    monitor-exit v11

    throw v10

    .line 711
    .restart local v0    # "N":I
    .restart local v1    # "change":I
    .restart local v2    # "changed":Z
    .restart local v4    # "curInputMethodId":Ljava/lang/String;
    .restart local v9    # "si":Landroid/content/pm/ServiceInfo;
    :catch_0
    move-exception v5

    .local v5, "ex":Landroid/os/RemoteException;
    goto :goto_1
.end method
