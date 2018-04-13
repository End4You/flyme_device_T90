.class Lcom/android/server/policy/HmctPhoneWindowManager$ProximitySensor;
.super Ljava/lang/Object;
.source "HmctPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/HmctPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProximitySensor"
.end annotation


# instance fields
.field count:I

.field final synthetic this$0:Lcom/android/server/policy/HmctPhoneWindowManager;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/policy/HmctPhoneWindowManager$ProximitySensor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/HmctPhoneWindowManager$ProximitySensor;->disableSensor()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/policy/HmctPhoneWindowManager$ProximitySensor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/HmctPhoneWindowManager$ProximitySensor;->enableSensor()V

    return-void
.end method

.method private constructor <init>(Lcom/android/server/policy/HmctPhoneWindowManager;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/policy/HmctPhoneWindowManager;

    .prologue
    .line 3549
    iput-object p1, p0, Lcom/android/server/policy/HmctPhoneWindowManager$ProximitySensor;->this$0:Lcom/android/server/policy/HmctPhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3578
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/policy/HmctPhoneWindowManager$ProximitySensor;->count:I

    .line 3550
    const-string/jumbo v0, "HmctWindowManager"

    const-string/jumbo v1, "ProximitySensor init"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3549
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/policy/HmctPhoneWindowManager;Lcom/android/server/policy/HmctPhoneWindowManager$ProximitySensor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/HmctPhoneWindowManager;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/policy/HmctPhoneWindowManager$ProximitySensor;-><init>(Lcom/android/server/policy/HmctPhoneWindowManager;)V

    return-void
.end method

.method private declared-synchronized disableSensor()V
    .locals 3

    .prologue
    monitor-enter p0

    .line 3565
    :try_start_0
    iget v0, p0, Lcom/android/server/policy/HmctPhoneWindowManager$ProximitySensor;->count:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/policy/HmctPhoneWindowManager$ProximitySensor;->count:I

    .line 3566
    iget v0, p0, Lcom/android/server/policy/HmctPhoneWindowManager$ProximitySensor;->count:I

    if-gez v0, :cond_0

    .line 3567
    const-string/jumbo v0, "HmctWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ProximitySensor warning current val : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/policy/HmctPhoneWindowManager$ProximitySensor;->count:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3568
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/policy/HmctPhoneWindowManager$ProximitySensor;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    .line 3564
    return-void

    .line 3570
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/android/server/policy/HmctPhoneWindowManager$ProximitySensor;->count:I

    if-lez v0, :cond_1

    .line 3571
    const-string/jumbo v0, "HmctWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ProximitySensor disable current val : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/policy/HmctPhoneWindowManager$ProximitySensor;->count:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 3573
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/android/server/policy/HmctPhoneWindowManager$ProximitySensor;->this$0:Lcom/android/server/policy/HmctPhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/HmctPhoneWindowManager;->-get11(Lcom/android/server/policy/HmctPhoneWindowManager;)Lcom/android/server/policy/ProximitySensorManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/policy/ProximitySensorManager;->disable(Z)V

    .line 3574
    const-string/jumbo v0, "HmctWindowManager"

    const-string/jumbo v1, "ProximitySensor disable end"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private declared-synchronized enableSensor()V
    .locals 3

    .prologue
    monitor-enter p0

    .line 3554
    :try_start_0
    iget v0, p0, Lcom/android/server/policy/HmctPhoneWindowManager$ProximitySensor;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/policy/HmctPhoneWindowManager$ProximitySensor;->count:I

    .line 3555
    iget v0, p0, Lcom/android/server/policy/HmctPhoneWindowManager$ProximitySensor;->count:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3556
    iget-object v0, p0, Lcom/android/server/policy/HmctPhoneWindowManager$ProximitySensor;->this$0:Lcom/android/server/policy/HmctPhoneWindowManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/policy/HmctPhoneWindowManager;->-set2(Lcom/android/server/policy/HmctPhoneWindowManager;Z)Z

    .line 3557
    iget-object v0, p0, Lcom/android/server/policy/HmctPhoneWindowManager$ProximitySensor;->this$0:Lcom/android/server/policy/HmctPhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/HmctPhoneWindowManager;->-get11(Lcom/android/server/policy/HmctPhoneWindowManager;)Lcom/android/server/policy/ProximitySensorManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/policy/ProximitySensorManager;->enable()V

    .line 3558
    const-string/jumbo v0, "HmctWindowManager"

    const-string/jumbo v1, "ProximitySensor enable end"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    .line 3553
    return-void

    .line 3560
    :cond_0
    :try_start_1
    const-string/jumbo v0, "HmctWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ProximitySensor enable current val : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/policy/HmctPhoneWindowManager$ProximitySensor;->count:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
