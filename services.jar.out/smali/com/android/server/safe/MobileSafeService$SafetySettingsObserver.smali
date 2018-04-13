.class Lcom/android/server/safe/MobileSafeService$SafetySettingsObserver;
.super Landroid/database/ContentObserver;
.source "MobileSafeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/safe/MobileSafeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SafetySettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/safe/MobileSafeService;


# direct methods
.method public constructor <init>(Lcom/android/server/safe/MobileSafeService;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/safe/MobileSafeService;

    .prologue
    .line 1641
    iput-object p1, p0, Lcom/android/server/safe/MobileSafeService$SafetySettingsObserver;->this$0:Lcom/android/server/safe/MobileSafeService;

    .line 1642
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1641
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v3, 0x0

    .line 1646
    iget-object v1, p0, Lcom/android/server/safe/MobileSafeService$SafetySettingsObserver;->this$0:Lcom/android/server/safe/MobileSafeService;

    invoke-static {v1}, Lcom/android/server/safe/MobileSafeService;->-get2(Lcom/android/server/safe/MobileSafeService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "safety_mode_enabled"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 1647
    .local v0, "enter":Z
    :goto_0
    const-string/jumbo v1, "MobileSafeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onChange: enter="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1648
    if-eqz v0, :cond_1

    .line 1649
    iget-object v1, p0, Lcom/android/server/safe/MobileSafeService$SafetySettingsObserver;->this$0:Lcom/android/server/safe/MobileSafeService;

    invoke-static {v1}, Lcom/android/server/safe/MobileSafeService;->-wrap18(Lcom/android/server/safe/MobileSafeService;)V

    .line 1645
    :goto_1
    return-void

    .line 1646
    .end local v0    # "enter":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "enter":Z
    goto :goto_0

    .line 1651
    :cond_1
    iget-object v1, p0, Lcom/android/server/safe/MobileSafeService$SafetySettingsObserver;->this$0:Lcom/android/server/safe/MobileSafeService;

    invoke-static {v1}, Lcom/android/server/safe/MobileSafeService;->-wrap19(Lcom/android/server/safe/MobileSafeService;)V

    goto :goto_1
.end method
