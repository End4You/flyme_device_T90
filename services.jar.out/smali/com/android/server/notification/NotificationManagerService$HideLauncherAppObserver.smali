.class Lcom/android/server/notification/NotificationManagerService$HideLauncherAppObserver;
.super Landroid/database/ContentObserver;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HideLauncherAppObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationManagerService;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 4648
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$HideLauncherAppObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 4649
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4648
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 4660
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$HideLauncherAppObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-wrap21(Lcom/android/server/notification/NotificationManagerService;)V

    .line 4659
    return-void
.end method

.method startObserving()V
    .locals 4

    .prologue
    .line 4653
    const-string/jumbo v1, "NotificationService"

    const-string/jumbo v2, "HideLauncherAppObserver startObserving()"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4654
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$HideLauncherAppObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 4656
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v1, "launcher_hide_apps"

    .line 4655
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 4656
    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 4655
    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 4652
    return-void
.end method

.method stopObserving()V
    .locals 2

    .prologue
    .line 4664
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$HideLauncherAppObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 4665
    .local v0, "resolver":Landroid/content/ContentResolver;
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 4663
    return-void
.end method
