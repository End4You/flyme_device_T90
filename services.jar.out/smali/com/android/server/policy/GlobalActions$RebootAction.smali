.class final Lcom/android/server/policy/GlobalActions$RebootAction;
.super Lcom/android/server/policy/GlobalActions$SinglePressAction;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RebootAction"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/GlobalActions;


# direct methods
.method private constructor <init>(Lcom/android/server/policy/GlobalActions;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 596
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$RebootAction;->this$0:Lcom/android/server/policy/GlobalActions;

    .line 597
    const v0, 0x108039f

    .line 598
    const v1, 0x1040148

    .line 597
    invoke-direct {p0, v0, v1}, Lcom/android/server/policy/GlobalActions$SinglePressAction;-><init>(II)V

    .line 596
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$RebootAction;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/policy/GlobalActions$RebootAction;-><init>(Lcom/android/server/policy/GlobalActions;)V

    return-void
.end method


# virtual methods
.method public onPress()V
    .locals 5

    .prologue
    .line 615
    :try_start_0
    const-string/jumbo v2, "power"

    .line 614
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    .line 616
    .local v1, "pm":Landroid/os/IPowerManager;
    const-string/jumbo v2, "reboot"

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v1, v3, v2, v4}, Landroid/os/IPowerManager;->reboot(ZLjava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 612
    return-void

    .line 617
    .end local v1    # "pm":Landroid/os/IPowerManager;
    :catch_0
    move-exception v0

    .line 618
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "GlobalActions"

    const-string/jumbo v3, "PowerManager service died!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 619
    return-void
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    .prologue
    .line 608
    const/4 v0, 0x1

    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    .prologue
    .line 603
    const/4 v0, 0x1

    return v0
.end method
