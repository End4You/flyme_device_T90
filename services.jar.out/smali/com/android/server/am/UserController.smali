.class final Lcom/android/server/am/UserController;
.super Ljava/lang/Object;
.source "UserController.java"


# static fields
.field static final MAX_RUNNING_USERS:I = 0x3

.field private static final TAG:Ljava/lang/String;

.field static final USER_SWITCH_TIMEOUT:I = 0xbb8


# instance fields
.field private volatile mCurWaitingUserSwitchCallbacks:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentProfileIds:[I

.field private mCurrentUserId:I

.field private mFactoryTest:I

.field private final mHandler:Landroid/os/Handler;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private mStartedUserArray:[I

.field private final mStartedUsers:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mService"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/am/UserState;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetUserId:I

.field private final mUserLru:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mUserManager:Lcom/android/server/pm/UserManagerService;

.field private mUserManagerInternal:Landroid/os/UserManagerInternal;

.field private final mUserProfileGroupIdsSelfLocked:Landroid/util/SparseIntArray;

.field private final mUserSwitchObservers:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/app/IUserSwitchObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/am/UserController;)Landroid/util/ArraySet;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/UserController;->mCurWaitingUserSwitchCallbacks:Landroid/util/ArraySet;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/am/UserController;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/am/UserController;)Lcom/android/server/am/ActivityManagerService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/am/UserController;)Lcom/android/server/pm/UserManagerService;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/am/UserController;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/am/UserController;Lcom/android/server/am/UserState;)V
    .locals 0
    .param p1, "uss"    # Lcom/android/server/am/UserState;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/am/UserController;->finishUserUnlockedCompleted(Lcom/android/server/am/UserState;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 111
    const-string/jumbo v0, "ActivityManager"

    sput-object v0, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    .line 110
    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 3
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    const/4 v2, 0x0

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput v2, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    .line 126
    const/16 v1, -0x2710

    iput v1, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    .line 132
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    .line 137
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    .line 142
    const/4 v1, 0x1

    new-array v1, v1, [I

    aput v2, v1, v2

    iput-object v1, p0, Lcom/android/server/am/UserController;->mStartedUserArray:[I

    .line 146
    new-array v1, v2, [I

    iput-object v1, p0, Lcom/android/server/am/UserController;->mCurrentProfileIds:[I

    .line 151
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIdsSelfLocked:Landroid/util/SparseIntArray;

    .line 157
    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 156
    iput-object v1, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    .line 171
    iput-object p1, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 172
    iget-object v1, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iput-object v1, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    .line 174
    new-instance v0, Lcom/android/server/am/UserState;

    sget-object v1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-direct {v0, v1}, Lcom/android/server/am/UserState;-><init>(Landroid/os/UserHandle;)V

    .line 175
    .local v0, "uss":Lcom/android/server/am/UserState;
    iget-object v1, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 176
    iget-object v1, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/am/UserController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 178
    invoke-direct {p0}, Lcom/android/server/am/UserController;->updateStartedUserArrayLocked()V

    .line 170
    return-void
.end method

.method private finishUserBoot(Lcom/android/server/am/UserState;)V
    .locals 1
    .param p1, "uss"    # Lcom/android/server/am/UserState;

    .prologue
    .line 228
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/am/UserController;->finishUserBoot(Lcom/android/server/am/UserState;Landroid/content/IIntentReceiver;)V

    .line 227
    return-void
.end method

.method private finishUserBoot(Lcom/android/server/am/UserState;Landroid/content/IIntentReceiver;)V
    .locals 23
    .param p1, "uss"    # Lcom/android/server/am/UserState;
    .param p2, "resultTo"    # Landroid/content/IIntentReceiver;

    .prologue
    .line 232
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v18

    .line 234
    .local v18, "userId":I
    sget-object v2, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Finishing user boot "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v22, v0

    monitor-enter v22

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 237
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    move-object/from16 v0, p1

    if-eq v2, v0, :cond_0

    monitor-exit v22

    .line 235
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 237
    return-void

    .line 243
    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Lcom/android/server/am/UserState;->setState(II)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 244
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->getUserManagerInternal()Landroid/os/UserManagerInternal;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/am/UserState;->state:I

    move/from16 v0, v18

    invoke-virtual {v2, v0, v3}, Landroid/os/UserManagerInternal;->setUserState(II)V

    .line 246
    if-nez v18, :cond_1

    .line 247
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v2}, Lcom/android/server/SystemServiceManager;->isRuntimeRestarted()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 253
    :cond_1
    :goto_0
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.LOCKED_BOOT_COMPLETED"

    const/4 v3, 0x0

    invoke-direct {v5, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 254
    .local v5, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "android.intent.extra.user_handle"

    move/from16 v0, v18

    invoke-virtual {v5, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 255
    const/high16 v2, 0x9000000

    invoke-virtual {v5, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 257
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 258
    const/4 v3, 0x1

    new-array v11, v3, [Ljava/lang/String;

    const-string/jumbo v3, "android.permission.RECEIVE_BOOT_COMPLETED"

    const/4 v4, 0x0

    aput-object v3, v11, v4

    .line 259
    sget v16, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 257
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 259
    const/4 v12, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v17, 0x3e8

    move-object/from16 v7, p2

    .line 257
    invoke-virtual/range {v2 .. v18}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIII)I

    .line 264
    .end local v5    # "intent":Landroid/content/Intent;
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v2

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/android/server/pm/UserManagerService;->isManagedProfile(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 265
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v2

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/android/server/pm/UserManagerService;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v19

    .line 266
    .local v19, "parent":Landroid/content/pm/UserInfo;
    if-eqz v19, :cond_4

    .line 267
    move-object/from16 v0, v19

    iget v2, v0, Landroid/content/pm/UserInfo;->id:I

    const/4 v3, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/am/UserController;->isUserRunningLocked(II)Z

    move-result v2

    .line 266
    if-eqz v2, :cond_4

    .line 268
    sget-object v2, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "User "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " (parent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 269
    const-string/jumbo v4, "): attempting unlock because parent is unlocked"

    .line 268
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/am/UserController;->maybeUnlockUser(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v19    # "parent":Landroid/content/pm/UserInfo;
    :goto_1
    monitor-exit v22

    .line 235
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 231
    return-void

    .line 248
    :cond_3
    :try_start_2
    invoke-static {}, Lcom/android/server/am/UserController;->isFirstBootOrUpgrade()Z

    move-result v2

    if-nez v2, :cond_1

    .line 249
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v6, 0x3e8

    div-long/2addr v2, v6

    long-to-int v0, v2

    move/from16 v21, v0

    .line 250
    .local v21, "uptimeSeconds":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "framework_locked_boot_completed"

    move/from16 v0, v21

    invoke-static {v2, v3, v0}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 235
    .end local v21    # "uptimeSeconds":I
    :catchall_0
    move-exception v2

    monitor-exit v22

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    .line 272
    .restart local v19    # "parent":Landroid/content/pm/UserInfo;
    :cond_4
    if-nez v19, :cond_5

    :try_start_3
    const-string/jumbo v20, "<null>"

    .line 273
    .local v20, "parentId":Ljava/lang/String;
    :goto_2
    sget-object v2, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "User "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " (parent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 274
    const-string/jumbo v4, "): delaying unlock because parent is locked"

    .line 273
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 272
    .end local v20    # "parentId":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, v19

    iget v2, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    .restart local v20    # "parentId":Ljava/lang/String;
    goto :goto_2

    .line 277
    .end local v19    # "parent":Landroid/content/pm/UserInfo;
    .end local v20    # "parentId":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/am/UserController;->maybeUnlockUser(I)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method private finishUserUnlockedCompleted(Lcom/android/server/am/UserState;)V
    .locals 39
    .param p1, "uss"    # Lcom/android/server/am/UserState;

    .prologue
    .line 389
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v18

    .line 390
    .local v18, "userId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v38, v0

    monitor-enter v38

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 392
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    move-object/from16 v0, p1

    if-eq v2, v0, :cond_0

    monitor-exit v38

    .line 390
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 392
    return-void

    .line 393
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v37

    .line 394
    .local v37, "userInfo":Landroid/content/pm/UserInfo;
    if-nez v37, :cond_1

    monitor-exit v38

    .line 390
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 395
    return-void

    .line 399
    :cond_1
    :try_start_2
    invoke-static/range {v18 .. v18}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    if-nez v2, :cond_2

    monitor-exit v38

    .line 390
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 399
    return-void

    .line 402
    :cond_2
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/UserController;->mUserManager:Lcom/android/server/pm/UserManagerService;

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/android/server/pm/UserManagerService;->onUserLoggedIn(I)V

    .line 404
    invoke-virtual/range {v37 .. v37}, Landroid/content/pm/UserInfo;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_3

    .line 405
    if-eqz v18, :cond_3

    .line 406
    sget-object v2, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Initializing user #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.USER_INITIALIZE"

    invoke-direct {v5, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 408
    .local v5, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v5, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 409
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 410
    new-instance v7, Lcom/android/server/am/UserController$2;

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v7, v0, v1}, Lcom/android/server/am/UserController$2;-><init>(Lcom/android/server/am/UserController;Landroid/content/pm/UserInfo;)V

    .line 419
    sget v16, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 409
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 418
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    .line 419
    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v17, 0x3e8

    .line 409
    invoke-virtual/range {v2 .. v18}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIII)I

    .line 423
    .end local v5    # "intent":Landroid/content/Intent;
    :cond_3
    sget-object v2, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Sending BOOT_COMPLETE user #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    if-nez v18, :cond_4

    .line 426
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v2}, Lcom/android/server/SystemServiceManager;->isRuntimeRestarted()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 432
    :cond_4
    :goto_0
    new-instance v22, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.BOOT_COMPLETED"

    const/4 v3, 0x0

    move-object/from16 v0, v22

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 433
    .local v22, "bootIntent":Landroid/content/Intent;
    const-string/jumbo v2, "android.intent.extra.user_handle"

    move-object/from16 v0, v22

    move/from16 v1, v18

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 434
    const/high16 v2, 0x9000000

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 436
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v19, v0

    .line 437
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v28, v0

    const-string/jumbo v2, "android.permission.RECEIVE_BOOT_COMPLETED"

    const/4 v3, 0x0

    aput-object v2, v28, v3

    .line 438
    sget v33, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 436
    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    .line 438
    const/16 v29, -0x1

    const/16 v30, 0x0

    const/16 v31, 0x1

    const/16 v32, 0x0

    const/16 v34, 0x3e8

    move/from16 v35, v18

    .line 436
    invoke-virtual/range {v19 .. v35}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIII)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v38

    .line 390
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 388
    return-void

    .line 427
    .end local v22    # "bootIntent":Landroid/content/Intent;
    :cond_5
    :try_start_4
    invoke-static {}, Lcom/android/server/am/UserController;->isFirstBootOrUpgrade()Z

    move-result v2

    if-nez v2, :cond_4

    .line 428
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v6, 0x3e8

    div-long/2addr v2, v6

    long-to-int v0, v2

    move/from16 v36, v0

    .line 430
    .local v36, "uptimeSeconds":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "framework_boot_completed"

    .line 429
    move/from16 v0, v36

    invoke-static {v2, v3, v0}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 390
    .end local v36    # "uptimeSeconds":I
    .end local v37    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v2

    monitor-exit v38

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method private finishUserUnlocking(Lcom/android/server/am/UserState;)V
    .locals 5
    .param p1, "uss"    # Lcom/android/server/am/UserState;

    .prologue
    .line 287
    iget-object v2, p1, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 288
    .local v1, "userId":I
    const/4 v0, 0x0

    .line 289
    .local v0, "proceedWithUnlock":Z
    iget-object v3, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 291
    iget-object v2, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    iget-object v4, p1, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-eq v2, p1, :cond_0

    monitor-exit v3

    .line 289
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 291
    return-void

    .line 294
    :cond_0
    :try_start_1
    invoke-static {v1}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    monitor-exit v3

    .line 289
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 294
    return-void

    .line 296
    :cond_1
    const/4 v2, 0x1

    const/4 v4, 0x2

    :try_start_2
    invoke-virtual {p1, v2, v4}, Lcom/android/server/am/UserState;->setState(II)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 297
    invoke-direct {p0}, Lcom/android/server/am/UserController;->getUserManagerInternal()Landroid/os/UserManagerInternal;

    move-result-object v2

    iget v4, p1, Lcom/android/server/am/UserState;->state:I

    invoke-virtual {v2, v1, v4}, Landroid/os/UserManagerInternal;->setUserState(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 298
    const/4 v0, 0x1

    :cond_2
    monitor-exit v3

    .line 289
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 302
    if-eqz v0, :cond_3

    .line 303
    iget-object v2, p1, Lcom/android/server/am/UserState;->mUnlockProgress:Lcom/android/internal/util/ProgressReporter;

    invoke-virtual {v2}, Lcom/android/internal/util/ProgressReporter;->start()V

    .line 306
    iget-object v2, p1, Lcom/android/server/am/UserState;->mUnlockProgress:Lcom/android/internal/util/ProgressReporter;

    .line 307
    iget-object v3, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v4, #android:string@android_start_title#t

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 306
    const/4 v4, 0x5

    invoke-virtual {v2, v4, v3}, Lcom/android/internal/util/ProgressReporter;->setProgress(ILjava/lang/CharSequence;)V

    .line 308
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/pm/UserManagerService;->onBeforeUnlockUser(I)V

    .line 309
    iget-object v2, p1, Lcom/android/server/am/UserState;->mUnlockProgress:Lcom/android/internal/util/ProgressReporter;

    const/16 v3, 0x14

    invoke-virtual {v2, v3}, Lcom/android/internal/util/ProgressReporter;->setProgress(I)V

    .line 313
    iget-object v2, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3d

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 286
    :cond_3
    return-void

    .line 289
    :catchall_0
    move-exception v2

    monitor-exit v3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method private forceStopUserLocked(ILjava/lang/String;)V
    .locals 18
    .param p1, "userId"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 686
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move/from16 v9, p1

    move-object/from16 v10, p2

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/am/ActivityManagerService;->forceStopPackageLocked(Ljava/lang/String;IZZZZZILjava/lang/String;)Z

    .line 688
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.USER_STOPPED"

    invoke-direct {v4, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 689
    .local v4, "intent":Landroid/content/Intent;
    const/high16 v1, 0x50000000

    invoke-virtual {v4, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 691
    const-string/jumbo v1, "android.intent.extra.user_handle"

    move/from16 v0, p1

    invoke-virtual {v4, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 692
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 694
    sget v15, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 692
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 693
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    .line 694
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x3e8

    const/16 v17, -0x1

    .line 692
    invoke-virtual/range {v1 .. v17}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIII)I

    .line 685
    return-void
.end method

.method private getMountService()Landroid/os/storage/IMountService;
    .locals 1

    .prologue
    .line 756
    const-string/jumbo v0, "mount"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v0

    return-object v0
.end method

.method private getUserManager()Lcom/android/server/pm/UserManagerService;
    .locals 3

    .prologue
    .line 747
    iget-object v1, p0, Lcom/android/server/am/UserController;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 748
    .local v1, "userManager":Lcom/android/server/pm/UserManagerService;
    if-nez v1, :cond_0

    .line 749
    const-string/jumbo v2, "user"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 750
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/IUserManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUserManager;

    move-result-object v1

    .end local v1    # "userManager":Lcom/android/server/pm/UserManagerService;
    check-cast v1, Lcom/android/server/pm/UserManagerService;

    iput-object v1, p0, Lcom/android/server/am/UserController;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 752
    .end local v0    # "b":Landroid/os/IBinder;
    .restart local v1    # "userManager":Lcom/android/server/pm/UserManagerService;
    :cond_0
    return-object v1
.end method

.method private getUserManagerInternal()Landroid/os/UserManagerInternal;
    .locals 1

    .prologue
    .line 1577
    iget-object v0, p0, Lcom/android/server/am/UserController;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    if-nez v0, :cond_0

    .line 1578
    const-class v0, Landroid/os/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManagerInternal;

    iput-object v0, p0, Lcom/android/server/am/UserController;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    .line 1580
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/UserController;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    return-object v0
.end method

.method private getUsersToStopLocked(I)[I
    .locals 13
    .param p1, "userId"    # I

    .prologue
    const/16 v12, -0x2710

    .line 660
    iget-object v9, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 661
    .local v5, "startedUsersSize":I
    new-instance v7, Landroid/util/IntArray;

    invoke-direct {v7}, Landroid/util/IntArray;-><init>()V

    .line 662
    .local v7, "userIds":Landroid/util/IntArray;
    invoke-virtual {v7, p1}, Landroid/util/IntArray;->add(I)V

    .line 663
    iget-object v10, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIdsSelfLocked:Landroid/util/SparseIntArray;

    monitor-enter v10

    .line 664
    :try_start_0
    iget-object v9, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIdsSelfLocked:Landroid/util/SparseIntArray;

    .line 665
    const/16 v11, -0x2710

    .line 664
    invoke-virtual {v9, p1, v11}, Landroid/util/SparseIntArray;->get(II)I

    move-result v6

    .line 666
    .local v6, "userGroupId":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v5, :cond_5

    .line 667
    iget-object v9, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v9, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/UserState;

    .line 668
    .local v8, "uss":Lcom/android/server/am/UserState;
    iget-object v9, v8, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v9}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    .line 670
    .local v4, "startedUserId":I
    iget-object v9, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIdsSelfLocked:Landroid/util/SparseIntArray;

    .line 671
    const/16 v11, -0x2710

    .line 670
    invoke-virtual {v9, v4, v11}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    .line 672
    .local v3, "startedUserGroupId":I
    if-eq v6, v12, :cond_2

    .line 673
    if-ne v6, v3, :cond_1

    const/4 v1, 0x1

    .line 675
    .local v1, "sameGroup":Z
    :goto_1
    if-ne v4, p1, :cond_3

    const/4 v2, 0x1

    .line 676
    .local v2, "sameUserId":Z
    :goto_2
    if-eqz v1, :cond_0

    if-eqz v2, :cond_4

    .line 666
    :cond_0
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 673
    .end local v1    # "sameGroup":Z
    .end local v2    # "sameUserId":Z
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "sameGroup":Z
    goto :goto_1

    .line 672
    .end local v1    # "sameGroup":Z
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "sameGroup":Z
    goto :goto_1

    .line 675
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "sameUserId":Z
    goto :goto_2

    .line 679
    :cond_4
    invoke-virtual {v7, v4}, Landroid/util/IntArray;->add(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 663
    .end local v0    # "i":I
    .end local v1    # "sameGroup":Z
    .end local v2    # "sameUserId":Z
    .end local v3    # "startedUserGroupId":I
    .end local v4    # "startedUserId":I
    .end local v6    # "userGroupId":I
    .end local v8    # "uss":Lcom/android/server/am/UserState;
    :catchall_0
    move-exception v9

    monitor-exit v10

    throw v9

    .restart local v0    # "i":I
    .restart local v6    # "userGroupId":I
    :cond_5
    monitor-exit v10

    .line 682
    invoke-virtual {v7}, Landroid/util/IntArray;->toArray()[I

    move-result-object v9

    return-object v9
.end method

.method private isCurrentUserLocked(I)Z
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 1488
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getCurrentOrTargetUserIdLocked()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isFirstBootOrUpgrade()Z
    .locals 3

    .prologue
    .line 443
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 445
    .local v1, "pm":Landroid/content/pm/IPackageManager;
    :try_start_0
    invoke-interface {v1}, Landroid/content/pm/IPackageManager;->isFirstBoot()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1}, Landroid/content/pm/IPackageManager;->isUpgrade()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    .line 446
    :catch_0
    move-exception v0

    .line 447
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method private static notifyFinished(ILandroid/os/IProgressListener;)V
    .locals 2
    .param p0, "userId"    # I
    .param p1, "listener"    # Landroid/os/IProgressListener;

    .prologue
    .line 986
    if-nez p1, :cond_0

    return-void

    .line 988
    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p1, p0, v1}, Landroid/os/IProgressListener;->onFinished(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 985
    :goto_0
    return-void

    .line 989
    :catch_0
    move-exception v0

    .local v0, "ignored":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private stopBackgroundUsersIfEnforced(I)V
    .locals 4
    .param p1, "oldUserId"    # I

    .prologue
    .line 1079
    if-nez p1, :cond_0

    .line 1080
    return-void

    .line 1083
    :cond_0
    const-string/jumbo v1, "no_run_in_background"

    invoke-virtual {p0, v1, p1}, Lcom/android/server/am/UserController;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v0

    .line 1085
    .local v0, "disallowRunInBg":Z
    if-nez v0, :cond_1

    .line 1086
    return-void

    .line 1088
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1091
    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, p1, v1, v3}, Lcom/android/server/am/UserController;->stopUsersLocked(IZLandroid/app/IStopUserCallback;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 1088
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1077
    return-void

    .line 1088
    :catchall_0
    move-exception v1

    monitor-exit v2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private stopGuestOrEphemeralUserIfBackground()V
    .locals 9

    .prologue
    .line 701
    iget-object v6, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 702
    iget-object v5, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 703
    .local v1, "num":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_4

    .line 704
    iget-object v5, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 705
    .local v2, "oldUserId":Ljava/lang/Integer;
    iget-object v5, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/UserState;

    .line 706
    .local v3, "oldUss":Lcom/android/server/am/UserState;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget v7, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    if-ne v5, v7, :cond_1

    .line 703
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 707
    :cond_1
    iget v5, v3, Lcom/android/server/am/UserState;->state:I

    const/4 v7, 0x4

    if-eq v5, v7, :cond_0

    .line 708
    iget v5, v3, Lcom/android/server/am/UserState;->state:I

    const/4 v7, 0x5

    if-eq v5, v7, :cond_0

    .line 711
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    .line 712
    .local v4, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 713
    const-class v5, Landroid/os/UserManagerInternal;

    invoke-static {v5}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserManagerInternal;

    .line 714
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 713
    invoke-virtual {v5, v7}, Landroid/os/UserManagerInternal;->onEphemeralUserStop(I)V

    .line 716
    :cond_2
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 718
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct {p0, v5, v7, v8}, Lcom/android/server/am/UserController;->stopUsersLocked(IZLandroid/app/IStopUserCallback;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v2    # "oldUserId":Ljava/lang/Integer;
    .end local v3    # "oldUss":Lcom/android/server/am/UserState;
    .end local v4    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_4
    monitor-exit v6

    .line 701
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 700
    return-void

    .line 701
    .end local v0    # "i":I
    .end local v1    # "num":I
    :catchall_0
    move-exception v5

    monitor-exit v6

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v5
.end method

.method private stopSingleUserLocked(ILandroid/app/IStopUserCallback;)V
    .locals 24
    .param p1, "userId"    # I
    .param p2, "callback"    # Landroid/app/IStopUserCallback;

    .prologue
    .line 508
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/server/am/UserState;

    .line 509
    .local v21, "uss":Lcom/android/server/am/UserState;
    if-nez v21, :cond_1

    .line 512
    if-eqz p2, :cond_0

    .line 513
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/server/am/UserController$3;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p1

    invoke-direct {v5, v0, v1, v2}, Lcom/android/server/am/UserController$3;-><init>(Lcom/android/server/am/UserController;Landroid/app/IStopUserCallback;I)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 523
    :cond_0
    return-void

    .line 526
    :cond_1
    if-eqz p2, :cond_2

    .line 527
    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/android/server/am/UserState;->mStopCallbacks:Ljava/util/ArrayList;

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 530
    :cond_2
    move-object/from16 v0, v21

    iget v4, v0, Lcom/android/server/am/UserState;->state:I

    const/4 v5, 0x4

    if-eq v4, v5, :cond_3

    .line 531
    move-object/from16 v0, v21

    iget v4, v0, Lcom/android/server/am/UserState;->state:I

    const/4 v5, 0x5

    if-eq v4, v5, :cond_3

    .line 532
    const/4 v4, 0x4

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lcom/android/server/am/UserState;->setState(I)V

    .line 533
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->getUserManagerInternal()Landroid/os/UserManagerInternal;

    move-result-object v4

    move-object/from16 v0, v21

    iget v5, v0, Lcom/android/server/am/UserState;->state:I

    move/from16 v0, p1

    invoke-virtual {v4, v0, v5}, Landroid/os/UserManagerInternal;->setUserState(II)V

    .line 534
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->updateStartedUserArrayLocked()V

    .line 536
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v22

    .line 541
    .local v22, "ident":J
    :try_start_0
    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.USER_STOPPING"

    invoke-direct {v7, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 542
    .local v7, "stoppingIntent":Landroid/content/Intent;
    const/high16 v4, 0x40000000    # 2.0f

    invoke-virtual {v7, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 543
    const-string/jumbo v4, "android.intent.extra.user_handle"

    move/from16 v0, p1

    invoke-virtual {v7, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 544
    const-string/jumbo v4, "android.intent.extra.SHUTDOWN_USERSPACE_ONLY"

    const/4 v5, 0x1

    invoke-virtual {v7, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 546
    new-instance v9, Lcom/android/server/am/UserController$4;

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v21

    invoke-direct {v9, v0, v1, v2}, Lcom/android/server/am/UserController$4;-><init>(Lcom/android/server/am/UserController;ILcom/android/server/am/UserState;)V

    .line 559
    .local v9, "stoppingReceiver":Landroid/content/IIntentReceiver;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityManagerService;->clearBroadcastQueueForUserLocked(I)Z

    .line 561
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 563
    const/4 v5, 0x1

    new-array v13, v5, [Ljava/lang/String;

    const-string/jumbo v5, "android.permission.INTERACT_ACROSS_USERS"

    const/4 v6, 0x0

    aput-object v5, v13, v6

    .line 564
    sget v18, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 561
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 562
    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 563
    const/4 v14, -0x1

    .line 564
    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v19, 0x3e8

    const/16 v20, -0x1

    .line 561
    invoke-virtual/range {v4 .. v20}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 566
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 506
    .end local v7    # "stoppingIntent":Landroid/content/Intent;
    .end local v9    # "stoppingReceiver":Landroid/content/IIntentReceiver;
    .end local v22    # "ident":J
    :cond_3
    return-void

    .line 565
    .restart local v22    # "ident":J
    :catchall_0
    move-exception v4

    .line 566
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 565
    throw v4
.end method

.method private stopUsersLocked(IZLandroid/app/IStopUserCallback;)I
    .locals 8
    .param p1, "userId"    # I
    .param p2, "force"    # Z
    .param p3, "callback"    # Landroid/app/IStopUserCallback;

    .prologue
    const/4 v6, 0x0

    .line 476
    if-nez p1, :cond_0

    .line 477
    const/4 v4, -0x3

    return v4

    .line 479
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/am/UserController;->isCurrentUserLocked(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 480
    const/4 v4, -0x2

    return v4

    .line 482
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/am/UserController;->getUsersToStopLocked(I)[I

    move-result-object v3

    .line 484
    .local v3, "usersToStop":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_5

    .line 485
    aget v1, v3, v0

    .line 486
    .local v1, "relatedUserId":I
    if-eqz v1, :cond_2

    invoke-direct {p0, v1}, Lcom/android/server/am/UserController;->isCurrentUserLocked(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 490
    :cond_2
    if-eqz p2, :cond_3

    .line 491
    sget-object v4, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    .line 492
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Force stop user "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, ". Related users will not be stopped"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 491
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    invoke-direct {p0, p1, p3}, Lcom/android/server/am/UserController;->stopSingleUserLocked(ILandroid/app/IStopUserCallback;)V

    .line 494
    return v6

    .line 496
    :cond_3
    const/4 v4, -0x4

    return v4

    .line 484
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 500
    .end local v1    # "relatedUserId":I
    :cond_5
    array-length v7, v3

    move v5, v6

    :goto_1
    if-ge v5, v7, :cond_7

    aget v2, v3, v5

    .line 501
    .local v2, "userIdToStop":I
    if-ne v2, p1, :cond_6

    move-object v4, p3

    :goto_2
    invoke-direct {p0, v2, v4}, Lcom/android/server/am/UserController;->stopSingleUserLocked(ILandroid/app/IStopUserCallback;)V

    .line 500
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_1

    .line 501
    :cond_6
    const/4 v4, 0x0

    goto :goto_2

    .line 503
    .end local v2    # "userIdToStop":I
    :cond_7
    return v6
.end method

.method private updateCurrentProfileIdsLocked()V
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 1385
    invoke-direct {p0}, Lcom/android/server/am/UserController;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v5

    iget v6, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    invoke-virtual {v5, v6, v7}, Lcom/android/server/pm/UserManagerService;->getProfiles(IZ)Ljava/util/List;

    move-result-object v2

    .line 1387
    .local v2, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    new-array v0, v5, [I

    .line 1388
    .local v0, "currentProfileIds":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v0

    if-ge v1, v5, :cond_0

    .line 1389
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    aput v5, v0, v1

    .line 1388
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1391
    :cond_0
    iput-object v0, p0, Lcom/android/server/am/UserController;->mCurrentProfileIds:[I

    .line 1393
    iget-object v6, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIdsSelfLocked:Landroid/util/SparseIntArray;

    monitor-enter v6

    .line 1394
    :try_start_0
    iget-object v5, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIdsSelfLocked:Landroid/util/SparseIntArray;

    invoke-virtual {v5}, Landroid/util/SparseIntArray;->clear()V

    .line 1395
    invoke-direct {p0}, Lcom/android/server/am/UserController;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lcom/android/server/pm/UserManagerService;->getUsers(Z)Ljava/util/List;

    move-result-object v4

    .line 1396
    .local v4, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/4 v1, 0x0

    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 1397
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 1398
    .local v3, "user":Landroid/content/pm/UserInfo;
    iget v5, v3, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/16 v7, -0x2710

    if-eq v5, v7, :cond_1

    .line 1399
    iget-object v5, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIdsSelfLocked:Landroid/util/SparseIntArray;

    iget v7, v3, Landroid/content/pm/UserInfo;->id:I

    iget v8, v3, Landroid/content/pm/UserInfo;->profileGroupId:I

    invoke-virtual {v5, v7, v8}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1396
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v3    # "user":Landroid/content/pm/UserInfo;
    :cond_2
    monitor-exit v6

    .line 1384
    return-void

    .line 1393
    .end local v4    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method private updateStartedUserArrayLocked()V
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x4

    .line 1348
    const/4 v1, 0x0

    .line 1349
    .local v1, "num":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 1350
    iget-object v4, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/UserState;

    .line 1352
    .local v3, "uss":Lcom/android/server/am/UserState;
    iget v4, v3, Lcom/android/server/am/UserState;->state:I

    if-eq v4, v6, :cond_0

    .line 1353
    iget v4, v3, Lcom/android/server/am/UserState;->state:I

    if-eq v4, v7, :cond_0

    .line 1354
    add-int/lit8 v1, v1, 0x1

    .line 1349
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1357
    .end local v3    # "uss":Lcom/android/server/am/UserState;
    :cond_1
    new-array v4, v1, [I

    iput-object v4, p0, Lcom/android/server/am/UserController;->mStartedUserArray:[I

    .line 1358
    const/4 v1, 0x0

    .line 1359
    const/4 v0, 0x0

    :goto_1
    iget-object v4, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 1360
    iget-object v4, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/UserState;

    .line 1361
    .restart local v3    # "uss":Lcom/android/server/am/UserState;
    iget v4, v3, Lcom/android/server/am/UserState;->state:I

    if-eq v4, v6, :cond_2

    .line 1362
    iget v4, v3, Lcom/android/server/am/UserState;->state:I

    if-eq v4, v7, :cond_2

    .line 1363
    iget-object v4, p0, Lcom/android/server/am/UserController;->mStartedUserArray:[I

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "num":I
    .local v2, "num":I
    iget-object v5, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    aput v5, v4, v1

    move v1, v2

    .line 1359
    .end local v2    # "num":I
    .restart local v1    # "num":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1347
    .end local v3    # "uss":Lcom/android/server/am/UserState;
    :cond_3
    return-void
.end method


# virtual methods
.method continueUserSwitch(Lcom/android/server/am/UserState;II)V
    .locals 5
    .param p1, "uss"    # Lcom/android/server/am/UserState;
    .param p2, "oldUserId"    # I
    .param p3, "newUserId"    # I

    .prologue
    const/16 v4, 0x38

    const/4 v3, 0x0

    .line 1163
    sget-object v0, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Continue user switch oldUser #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", newUser #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1164
    iget-object v1, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1165
    iget-object v0, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->stopFreezingScreen()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1164
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1167
    iput-boolean v3, p1, Lcom/android/server/am/UserState;->switching:Z

    .line 1168
    iget-object v0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1169
    iget-object v0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4, p3, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1171
    invoke-direct {p0}, Lcom/android/server/am/UserController;->stopGuestOrEphemeralUserIfBackground()V

    .line 1172
    invoke-direct {p0, p2}, Lcom/android/server/am/UserController;->stopBackgroundUsersIfEnforced(I)V

    .line 1162
    return-void

    .line 1164
    :catchall_0
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method dispatchForegroundProfileChanged(I)V
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 1054
    iget-object v3, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 1055
    .local v2, "observerCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 1057
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/app/IUserSwitchObserver;

    invoke-interface {v3, p1}, Landroid/app/IUserSwitchObserver;->onForegroundProfileSwitch(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1055
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1062
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1053
    return-void

    .line 1058
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method dispatchUserSwitch(Lcom/android/server/am/UserState;II)V
    .locals 15
    .param p1, "uss"    # Lcom/android/server/am/UserState;
    .param p2, "oldUserId"    # I
    .param p3, "newUserId"    # I

    .prologue
    .line 1104
    sget-object v3, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Dispatch onUserSwitching oldUser #"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, p2

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " newUser #"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, p3

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    iget-object v3, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v14

    .line 1106
    .local v14, "observerCount":I
    if-lez v14, :cond_0

    .line 1107
    new-instance v7, Landroid/util/ArraySet;

    invoke-direct {v7}, Landroid/util/ArraySet;-><init>()V

    .line 1108
    .local v7, "curWaitingUserSwitchCallbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v9, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v9

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1109
    const/4 v3, 0x1

    move-object/from16 v0, p1

    iput-boolean v3, v0, Lcom/android/server/am/UserState;->switching:Z

    .line 1110
    iput-object v7, p0, Lcom/android/server/am/UserController;->mCurWaitingUserSwitchCallbacks:Landroid/util/ArraySet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v9

    .line 1108
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1112
    new-instance v8, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v8, v14}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 1113
    .local v8, "waitingCallbacksCount":Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 1114
    .local v4, "dispatchStartedTime":J
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    if-ge v13, v14, :cond_1

    .line 1117
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "#"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v9, " "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v9, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v9, v13}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1118
    .local v6, "name":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v9
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1119
    invoke-virtual {v7, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    monitor-exit v9

    .line 1118
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1121
    new-instance v2, Lcom/android/server/am/UserController$7;

    move-object v3, p0

    move-object/from16 v9, p1

    move/from16 v10, p2

    move/from16 v11, p3

    invoke-direct/range {v2 .. v11}, Lcom/android/server/am/UserController$7;-><init>(Lcom/android/server/am/UserController;JLjava/lang/String;Landroid/util/ArraySet;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/android/server/am/UserState;II)V

    .line 1143
    .local v2, "callback":Landroid/os/IRemoteCallback;
    iget-object v3, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v13}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/app/IUserSwitchObserver;

    move/from16 v0, p3

    invoke-interface {v3, v0, v2}, Landroid/app/IUserSwitchObserver;->onUserSwitching(ILandroid/os/IRemoteCallback;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1114
    .end local v2    # "callback":Landroid/os/IRemoteCallback;
    .end local v6    # "name":Ljava/lang/String;
    :goto_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 1108
    .end local v4    # "dispatchStartedTime":J
    .end local v8    # "waitingCallbacksCount":Ljava/util/concurrent/atomic/AtomicInteger;
    .end local v13    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v9

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v3

    .line 1118
    .restart local v4    # "dispatchStartedTime":J
    .restart local v6    # "name":Ljava/lang/String;
    .restart local v8    # "waitingCallbacksCount":Ljava/util/concurrent/atomic/AtomicInteger;
    .restart local v13    # "i":I
    :catchall_1
    move-exception v3

    :try_start_4
    monitor-exit v9

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v3
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1144
    .end local v6    # "name":Ljava/lang/String;
    :catch_0
    move-exception v12

    .local v12, "e":Landroid/os/RemoteException;
    goto :goto_1

    .line 1148
    .end local v4    # "dispatchStartedTime":J
    .end local v7    # "curWaitingUserSwitchCallbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v8    # "waitingCallbacksCount":Ljava/util/concurrent/atomic/AtomicInteger;
    .end local v12    # "e":Landroid/os/RemoteException;
    .end local v13    # "i":I
    :cond_0
    iget-object v9, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v9

    :try_start_5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1149
    invoke-virtual/range {p0 .. p3}, Lcom/android/server/am/UserController;->sendContinueUserSwitchLocked(Lcom/android/server/am/UserState;II)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    monitor-exit v9

    .line 1148
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1152
    :cond_1
    iget-object v3, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1103
    return-void

    .line 1148
    :catchall_2
    move-exception v3

    monitor-exit v9

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v3
.end method

.method dispatchUserSwitchComplete(I)V
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 1067
    iget-object v3, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 1068
    .local v2, "observerCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 1070
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/app/IUserSwitchObserver;

    invoke-interface {v3, p1}, Landroid/app/IUserSwitchObserver;->onUserSwitchComplete(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1068
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1074
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1066
    return-void

    .line 1071
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method dump(Ljava/io/PrintWriter;Z)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "dumpAll"    # Z

    .prologue
    .line 1584
    const-string/jumbo v2, "  mStartedUsers:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1585
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1586
    iget-object v2, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/UserState;

    .line 1587
    .local v1, "uss":Lcom/android/server/am/UserState;
    const-string/jumbo v2, "    User #"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 1588
    const-string/jumbo v2, ": "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2, p1}, Lcom/android/server/am/UserState;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1585
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1590
    .end local v1    # "uss":Lcom/android/server/am/UserState;
    :cond_0
    const-string/jumbo v2, "  mStartedUserArray: ["

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1591
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/android/server/am/UserController;->mStartedUserArray:[I

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 1592
    if-lez v0, :cond_1

    const-string/jumbo v2, ", "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1593
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/UserController;->mStartedUserArray:[I

    aget v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 1591
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1595
    :cond_2
    const-string/jumbo v2, "]"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1596
    const-string/jumbo v2, "  mUserLru: ["

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1597
    const/4 v0, 0x0

    :goto_2
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 1598
    if-lez v0, :cond_3

    const-string/jumbo v2, ", "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1599
    :cond_3
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 1597
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1601
    :cond_4
    const-string/jumbo v2, "]"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1602
    if-eqz p2, :cond_5

    .line 1603
    const-string/jumbo v2, "  mStartedUserArray: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/UserController;->mStartedUserArray:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1605
    :cond_5
    iget-object v3, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIdsSelfLocked:Landroid/util/SparseIntArray;

    monitor-enter v3

    .line 1606
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIdsSelfLocked:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-lez v2, :cond_6

    .line 1607
    const-string/jumbo v2, "  mUserProfileGroupIds:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1608
    const/4 v0, 0x0

    :goto_3
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIdsSelfLocked:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_6

    .line 1609
    const-string/jumbo v2, "    User #"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1610
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIdsSelfLocked:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 1611
    const-string/jumbo v2, " -> profile #"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1612
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIdsSelfLocked:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1608
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    monitor-exit v3

    .line 1583
    return-void

    .line 1605
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method exists(I)Z
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 1515
    invoke-direct {p0}, Lcom/android/server/am/UserController;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    return v0
.end method

.method finishUserStopped(Lcom/android/server/am/UserState;)V
    .locals 8
    .param p1, "uss"    # Lcom/android/server/am/UserState;

    .prologue
    .line 611
    iget-object v5, p1, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    .line 614
    .local v4, "userId":I
    iget-object v6, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 615
    new-instance v0, Ljava/util/ArrayList;

    iget-object v5, p1, Lcom/android/server/am/UserState;->mStopCallbacks:Ljava/util/ArrayList;

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 616
    .local v0, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/IStopUserCallback;>;"
    iget-object v5, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    if-eq v5, p1, :cond_0

    .line 617
    const/4 v3, 0x0

    .local v3, "stopped":Z
    :goto_0
    monitor-exit v6

    .line 614
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 635
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 637
    if-eqz v3, :cond_2

    :try_start_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/IStopUserCallback;

    invoke-interface {v5, v4}, Landroid/app/IStopUserCallback;->userStopped(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 635
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 618
    .end local v2    # "i":I
    .end local v3    # "stopped":Z
    :cond_0
    :try_start_2
    iget v5, p1, Lcom/android/server/am/UserState;->state:I

    const/4 v7, 0x5

    if-eq v5, v7, :cond_1

    .line 619
    const/4 v3, 0x0

    .restart local v3    # "stopped":Z
    goto :goto_0

    .line 621
    .end local v3    # "stopped":Z
    :cond_1
    const/4 v3, 0x1

    .line 623
    .restart local v3    # "stopped":Z
    iget-object v5, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->remove(I)V

    .line 624
    invoke-direct {p0}, Lcom/android/server/am/UserController;->getUserManagerInternal()Landroid/os/UserManagerInternal;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/os/UserManagerInternal;->removeUserState(I)V

    .line 625
    iget-object v5, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 626
    invoke-direct {p0}, Lcom/android/server/am/UserController;->updateStartedUserArrayLocked()V

    .line 628
    iget-object v5, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5, v4}, Lcom/android/server/am/ActivityManagerService;->onUserStoppedLocked(I)V

    .line 631
    const-string/jumbo v5, "finish user"

    invoke-direct {p0, v4, v5}, Lcom/android/server/am/UserController;->forceStopUserLocked(ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 614
    .end local v0    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/IStopUserCallback;>;"
    .end local v3    # "stopped":Z
    :catchall_0
    move-exception v5

    monitor-exit v6

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v5

    .line 638
    .restart local v0    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/IStopUserCallback;>;"
    .restart local v2    # "i":I
    .restart local v3    # "stopped":Z
    :cond_2
    :try_start_3
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/IStopUserCallback;

    invoke-interface {v5, v4}, Landroid/app/IStopUserCallback;->userStopAborted(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 639
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_2

    .line 643
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_3
    if-eqz v3, :cond_4

    .line 644
    iget-object v5, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v5, v4}, Lcom/android/server/SystemServiceManager;->cleanupUser(I)V

    .line 645
    iget-object v6, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6

    :try_start_4
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 646
    iget-object v5, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v5, v4}, Lcom/android/server/am/ActivityStackSupervisor;->removeUserLocked(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit v6

    .line 645
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 649
    invoke-virtual {p0, v4}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 650
    iget-object v5, p0, Lcom/android/server/am/UserController;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v5, v4}, Lcom/android/server/pm/UserManagerService;->removeUser(I)Z

    .line 610
    :cond_4
    return-void

    .line 645
    :catchall_1
    move-exception v5

    monitor-exit v6

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v5
.end method

.method finishUserStopping(ILcom/android/server/am/UserState;)V
    .locals 20
    .param p1, "userId"    # I
    .param p2, "uss"    # Lcom/android/server/am/UserState;

    .prologue
    .line 573
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v5, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 575
    .local v5, "shutdownIntent":Landroid/content/Intent;
    new-instance v7, Lcom/android/server/am/UserController$5;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v7, v0, v1}, Lcom/android/server/am/UserController$5;-><init>(Lcom/android/server/am/UserController;Lcom/android/server/am/UserState;)V

    .line 588
    .local v7, "shutdownReceiver":Landroid/content/IIntentReceiver;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 589
    move-object/from16 v0, p2

    iget v2, v0, Lcom/android/server/am/UserState;->state:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x4

    if-eq v2, v4, :cond_0

    monitor-exit v3

    .line 588
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 591
    return-void

    .line 593
    :cond_0
    const/4 v2, 0x5

    :try_start_1
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/android/server/am/UserState;->setState(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    .line 588
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 595
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->getUserManagerInternal()Landroid/os/UserManagerInternal;

    move-result-object v2

    move-object/from16 v0, p2

    iget v3, v0, Lcom/android/server/am/UserState;->state:I

    move/from16 v0, p1

    invoke-virtual {v2, v0, v3}, Landroid/os/UserManagerInternal;->setUserState(II)V

    .line 597
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    .line 599
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 598
    const/16 v4, 0x4007

    .line 597
    move/from16 v0, p1

    invoke-virtual {v2, v4, v3, v0}, Lcom/android/server/am/BatteryStatsService;->noteEvent(ILjava/lang/String;I)V

    .line 600
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/server/SystemServiceManager;->stopUser(I)V

    .line 602
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v19, v0

    monitor-enter v19

    :try_start_2
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 603
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 606
    sget v16, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 603
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 604
    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 605
    const/4 v12, -0x1

    .line 606
    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v17, 0x3e8

    move/from16 v18, p1

    .line 603
    invoke-virtual/range {v2 .. v18}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIII)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v19

    .line 602
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 571
    return-void

    .line 588
    :catchall_0
    move-exception v2

    monitor-exit v3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    .line 602
    :catchall_1
    move-exception v2

    monitor-exit v19

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method finishUserSwitch(Lcom/android/server/am/UserState;)V
    .locals 2
    .param p1, "uss"    # Lcom/android/server/am/UserState;

    .prologue
    .line 182
    iget-object v1, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 183
    invoke-direct {p0, p1}, Lcom/android/server/am/UserController;->finishUserBoot(Lcom/android/server/am/UserState;)V

    .line 185
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->startProfilesLocked()V

    .line 186
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/server/am/UserController;->stopRunningUsersLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 182
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 181
    return-void

    .line 182
    :catchall_0
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method finishUserUnlocked(Lcom/android/server/am/UserState;)V
    .locals 39
    .param p1, "uss"    # Lcom/android/server/am/UserState;

    .prologue
    .line 323
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v18

    .line 324
    .local v18, "userId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v38, v0

    monitor-enter v38

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 326
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    move-object/from16 v0, p1

    if-eq v2, v0, :cond_0

    monitor-exit v38

    .line 324
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 326
    return-void

    .line 329
    :cond_0
    :try_start_1
    invoke-static/range {v18 .. v18}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    monitor-exit v38

    .line 324
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 329
    return-void

    .line 331
    :cond_1
    const/4 v2, 0x2

    const/4 v3, 0x3

    :try_start_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Lcom/android/server/am/UserState;->setState(II)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 332
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->getUserManagerInternal()Landroid/os/UserManagerInternal;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/am/UserState;->state:I

    move/from16 v0, v18

    invoke-virtual {v2, v0, v3}, Landroid/os/UserManagerInternal;->setUserState(II)V

    .line 333
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/am/UserState;->mUnlockProgress:Lcom/android/internal/util/ProgressReporter;

    invoke-virtual {v2}, Lcom/android/internal/util/ProgressReporter;->finish()V

    .line 336
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.USER_UNLOCKED"

    invoke-direct {v5, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 337
    .local v5, "unlockedIntent":Landroid/content/Intent;
    const-string/jumbo v2, "android.intent.extra.user_handle"

    move/from16 v0, v18

    invoke-virtual {v5, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 339
    const/high16 v2, 0x50000000

    .line 338
    invoke-virtual {v5, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 340
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 341
    sget v16, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 340
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 341
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x3e8

    .line 340
    invoke-virtual/range {v2 .. v18}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIII)I

    .line 344
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 345
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v2

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/android/server/pm/UserManagerService;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v37

    .line 346
    .local v37, "parent":Landroid/content/pm/UserInfo;
    if-eqz v37, :cond_2

    .line 347
    new-instance v22, Landroid/content/Intent;

    .line 348
    const-string/jumbo v2, "android.intent.action.MANAGED_PROFILE_UNLOCKED"

    .line 347
    move-object/from16 v0, v22

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 349
    .local v22, "profileUnlockedIntent":Landroid/content/Intent;
    const-string/jumbo v2, "android.intent.extra.USER"

    invoke-static/range {v18 .. v18}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 351
    const/high16 v2, 0x50000000

    .line 350
    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 353
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v19, v0

    .line 355
    sget v33, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 356
    move-object/from16 v0, v37

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v35, v0

    .line 353
    const/16 v20, 0x0

    const/16 v21, 0x0

    .line 354
    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, -0x1

    .line 355
    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v34, 0x3e8

    .line 353
    invoke-virtual/range {v19 .. v35}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIII)I

    .line 363
    .end local v22    # "profileUnlockedIntent":Landroid/content/Intent;
    .end local v37    # "parent":Landroid/content/pm/UserInfo;
    :cond_2
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v36

    .line 364
    .local v36, "info":Landroid/content/pm/UserInfo;
    move-object/from16 v0, v36

    iget-object v2, v0, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    sget-object v3, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 369
    invoke-virtual/range {v36 .. v36}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 370
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/android/server/am/UserState;->tokenProvided:Z

    if-eqz v2, :cond_4

    .line 371
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/UserController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v20, 0x0

    .line 375
    .local v20, "quiet":Z
    :goto_0
    new-instance v15, Lcom/android/server/am/UserController$1;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v17, v0

    const/16 v19, 0x0

    move-object/from16 v16, p0

    move-object/from16 v21, p1

    invoke-direct/range {v15 .. v21}, Lcom/android/server/am/UserController$1;-><init>(Lcom/android/server/am/UserController;Lcom/android/server/am/ActivityManagerService;ILcom/android/internal/util/ProgressReporter;ZLcom/android/server/am/UserState;)V

    invoke-virtual {v15}, Lcom/android/server/am/UserController$1;->sendNext()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v5    # "unlockedIntent":Landroid/content/Intent;
    .end local v20    # "quiet":Z
    .end local v36    # "info":Landroid/content/pm/UserInfo;
    :cond_3
    :goto_1
    monitor-exit v38

    .line 324
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 322
    return-void

    .line 370
    .restart local v5    # "unlockedIntent":Landroid/content/Intent;
    .restart local v36    # "info":Landroid/content/pm/UserInfo;
    :cond_4
    const/16 v20, 0x1

    .restart local v20    # "quiet":Z
    goto :goto_0

    .line 371
    .end local v20    # "quiet":Z
    :cond_5
    const/16 v20, 0x1

    .restart local v20    # "quiet":Z
    goto :goto_0

    .line 373
    .end local v20    # "quiet":Z
    :cond_6
    const/16 v20, 0x0

    .restart local v20    # "quiet":Z
    goto :goto_0

    .line 382
    .end local v20    # "quiet":Z
    :cond_7
    :try_start_3
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/UserController;->finishUserUnlockedCompleted(Lcom/android/server/am/UserState;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 324
    .end local v5    # "unlockedIntent":Landroid/content/Intent;
    .end local v36    # "info":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v2

    monitor-exit v38

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method getCurrentOrTargetUserIdLocked()I
    .locals 2

    .prologue
    .line 1480
    iget v0, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    goto :goto_0
.end method

.method getCurrentProfileIdsLocked()[I
    .locals 1

    .prologue
    .line 1551
    iget-object v0, p0, Lcom/android/server/am/UserController;->mCurrentProfileIds:[I

    return-object v0
.end method

.method getCurrentUser()Landroid/content/pm/UserInfo;
    .locals 3

    .prologue
    .line 1458
    iget-object v1, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v2, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService;->checkCallingPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 1460
    iget-object v1, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService;->checkCallingPermission(Ljava/lang/String;)I

    move-result v1

    .line 1459
    if-eqz v1, :cond_0

    .line 1462
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Permission Denial: getCurrentUser() from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1463
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 1462
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1464
    const-string/jumbo v2, ", uid="

    .line 1462
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1464
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1462
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1465
    const-string/jumbo v2, " requires "

    .line 1462
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1465
    const-string/jumbo v2, "android.permission.INTERACT_ACROSS_USERS"

    .line 1462
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1466
    .local v0, "msg":Ljava/lang/String;
    sget-object v1, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1467
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1469
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1470
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getCurrentUserLocked()Landroid/content/pm/UserInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v2

    .line 1469
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1470
    return-object v1

    .line 1469
    :catchall_0
    move-exception v1

    monitor-exit v2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method getCurrentUserIdLocked()I
    .locals 1

    .prologue
    .line 1484
    iget v0, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    return v0
.end method

.method getCurrentUserLocked()Landroid/content/pm/UserInfo;
    .locals 3

    .prologue
    .line 1475
    iget v1, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    const/16 v2, -0x2710

    if-eq v1, v2, :cond_0

    iget v0, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    .line 1476
    .local v0, "userId":I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    return-object v1

    .line 1475
    .end local v0    # "userId":I
    :cond_0
    iget v0, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    goto :goto_0
.end method

.method getProfileIds(I)Ljava/util/Set;
    .locals 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1523
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 1524
    .local v3, "userIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Lcom/android/server/am/UserController;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v4

    .line 1525
    const/4 v5, 0x0

    .line 1524
    invoke-virtual {v4, p1, v5}, Lcom/android/server/pm/UserManagerService;->getProfiles(IZ)Ljava/util/List;

    move-result-object v0

    .line 1526
    .local v0, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "user$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 1527
    .local v1, "user":Landroid/content/pm/UserInfo;
    iget v4, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1529
    .end local v1    # "user":Landroid/content/pm/UserInfo;
    :cond_0
    return-object v3
.end method

.method getStartedUserArrayLocked()[I
    .locals 1

    .prologue
    .line 1406
    iget-object v0, p0, Lcom/android/server/am/UserController;->mStartedUserArray:[I

    return-object v0
.end method

.method getStartedUserStateLocked(I)Lcom/android/server/am/UserState;
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 1340
    iget-object v0, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/UserState;

    return-object v0
.end method

.method getUserIds()[I
    .locals 1

    .prologue
    .line 1511
    invoke-direct {p0}, Lcom/android/server/am/UserController;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v0

    return-object v0
.end method

.method getUserInfo(I)Landroid/content/pm/UserInfo;
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 1507
    invoke-direct {p0}, Lcom/android/server/am/UserController;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method getUsers()[I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1502
    invoke-direct {p0}, Lcom/android/server/am/UserController;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    .line 1503
    .local v0, "ums":Lcom/android/server/pm/UserManagerService;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [I

    aput v2, v1, v2

    goto :goto_0
.end method

.method handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I
    .locals 12
    .param p1, "callingPid"    # I
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I
    .param p4, "allowAll"    # Z
    .param p5, "allowMode"    # I
    .param p6, "name"    # Ljava/lang/String;
    .param p7, "callerPackage"    # Ljava/lang/String;

    .prologue
    .line 1237
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    .line 1238
    .local v9, "callingUserId":I
    if-ne v9, p3, :cond_0

    .line 1239
    return p3

    .line 1248
    :cond_0
    invoke-virtual {p0, p3}, Lcom/android/server/am/UserController;->unsafeConvertIncomingUserLocked(I)I

    move-result v11

    .line 1250
    .local v11, "targetUserId":I
    if-eqz p2, :cond_1

    const/16 v1, 0x3e8

    if-eq p2, v1, :cond_1

    .line 1252
    iget-object v1, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 1253
    const/4 v5, -0x1

    const/4 v6, 0x1

    move v3, p1

    move v4, p2

    .line 1252
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v1

    if-nez v1, :cond_2

    .line 1255
    const/4 v7, 0x1

    .line 1273
    :goto_0
    if-nez v7, :cond_1

    .line 1274
    const/4 v1, -0x3

    if-ne p3, v1, :cond_7

    .line 1277
    move v11, v9

    .line 1302
    :cond_1
    if-nez p4, :cond_a

    if-gez v11, :cond_a

    .line 1303
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 1304
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Call does not support special user #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1303
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1256
    :cond_2
    const/4 v1, 0x2

    move/from16 v0, p5

    if-ne v0, v1, :cond_3

    .line 1258
    const/4 v7, 0x0

    .local v7, "allow":Z
    goto :goto_0

    .line 1259
    .end local v7    # "allow":Z
    :cond_3
    iget-object v1, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v2, "android.permission.INTERACT_ACROSS_USERS"

    .line 1260
    const/4 v5, -0x1

    const/4 v6, 0x1

    move v3, p1

    move v4, p2

    .line 1259
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v1

    if-eqz v1, :cond_4

    .line 1262
    const/4 v7, 0x0

    .restart local v7    # "allow":Z
    goto :goto_0

    .line 1263
    .end local v7    # "allow":Z
    :cond_4
    if-nez p5, :cond_5

    .line 1265
    const/4 v7, 0x1

    .restart local v7    # "allow":Z
    goto :goto_0

    .line 1266
    .end local v7    # "allow":Z
    :cond_5
    const/4 v1, 0x1

    move/from16 v0, p5

    if-ne v0, v1, :cond_6

    .line 1269
    invoke-virtual {p0, v9, v11}, Lcom/android/server/am/UserController;->isSameProfileGroup(II)Z

    move-result v7

    .local v7, "allow":Z
    goto :goto_0

    .line 1271
    .end local v7    # "allow":Z
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1279
    :cond_7
    new-instance v8, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v8, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1280
    .local v8, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "Permission Denial: "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1281
    move-object/from16 v0, p6

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1282
    if-eqz p7, :cond_8

    .line 1283
    const-string/jumbo v1, " from "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1284
    move-object/from16 v0, p7

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1286
    :cond_8
    const-string/jumbo v1, " asks to run as user "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1287
    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1288
    const-string/jumbo v1, " but is calling from user "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1289
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1290
    const-string/jumbo v1, "; this requires "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1291
    const-string/jumbo v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1292
    const/4 v1, 0x2

    move/from16 v0, p5

    if-eq v0, v1, :cond_9

    .line 1293
    const-string/jumbo v1, " or "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1294
    const-string/jumbo v1, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1296
    :cond_9
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1297
    .local v10, "msg":Ljava/lang/String;
    sget-object v1, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    invoke-static {v1, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1298
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v10}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1307
    .end local v8    # "builder":Ljava/lang/StringBuilder;
    .end local v10    # "msg":Ljava/lang/String;
    :cond_a
    const/16 v1, 0x7d0

    if-ne p2, v1, :cond_b

    if-ltz v11, :cond_b

    .line 1308
    const-string/jumbo v1, "no_debugging_features"

    invoke-virtual {p0, v1, v11}, Lcom/android/server/am/UserController;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1309
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Shell does not have permission to access user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1310
    const-string/jumbo v3, "\n "

    .line 1309
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1310
    const/4 v3, 0x3

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    .line 1309
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1313
    :cond_b
    return v11
.end method

.method hasStartedUserState(I)Z
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 1344
    iget-object v0, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method hasUserRestriction(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "restriction"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 1519
    invoke-direct {p0}, Lcom/android/server/am/UserController;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method isCurrentProfileLocked(I)Z
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 1547
    iget-object v0, p0, Lcom/android/server/am/UserController;->mCurrentProfileIds:[I

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v0

    return v0
.end method

.method isLockScreenDisabled(I)Z
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 1573
    iget-object v0, p0, Lcom/android/server/am/UserController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v0

    return v0
.end method

.method isSameProfileGroup(II)Z
    .locals 8
    .param p1, "callingUserId"    # I
    .param p2, "targetUserId"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v7, -0x2710

    .line 1533
    if-ne p1, p2, :cond_0

    .line 1534
    return v2

    .line 1536
    :cond_0
    iget-object v4, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIdsSelfLocked:Landroid/util/SparseIntArray;

    monitor-enter v4

    .line 1537
    :try_start_0
    iget-object v5, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIdsSelfLocked:Landroid/util/SparseIntArray;

    .line 1538
    const/16 v6, -0x2710

    .line 1537
    invoke-virtual {v5, p1, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 1539
    .local v0, "callingProfile":I
    iget-object v5, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIdsSelfLocked:Landroid/util/SparseIntArray;

    .line 1540
    const/16 v6, -0x2710

    .line 1539
    invoke-virtual {v5, p2, v6}, Landroid/util/SparseIntArray;->get(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 1541
    .local v1, "targetProfile":I
    if-eq v0, v7, :cond_2

    .line 1542
    if-ne v0, v1, :cond_1

    :goto_0
    monitor-exit v4

    .line 1541
    return v2

    :cond_1
    move v2, v3

    .line 1542
    goto :goto_0

    :cond_2
    move v2, v3

    .line 1541
    goto :goto_0

    .line 1536
    .end local v0    # "callingProfile":I
    .end local v1    # "targetProfile":I
    :catchall_0
    move-exception v2

    monitor-exit v4

    throw v2
.end method

.method isUserRunningLocked(II)Z
    .locals 4
    .param p1, "userId"    # I
    .param p2, "flags"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1419
    invoke-virtual {p0, p1}, Lcom/android/server/am/UserController;->getStartedUserStateLocked(I)Lcom/android/server/am/UserState;

    move-result-object v0

    .line 1420
    .local v0, "state":Lcom/android/server/am/UserState;
    if-nez v0, :cond_0

    .line 1421
    return v2

    .line 1423
    :cond_0
    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_1

    .line 1424
    return v3

    .line 1426
    :cond_1
    and-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_2

    .line 1427
    iget v1, v0, Lcom/android/server/am/UserState;->state:I

    packed-switch v1, :pswitch_data_0

    .line 1432
    return v2

    .line 1430
    :pswitch_0
    return v3

    .line 1435
    :cond_2
    and-int/lit8 v1, p2, 0x8

    if-eqz v1, :cond_3

    .line 1436
    iget v1, v0, Lcom/android/server/am/UserState;->state:I

    packed-switch v1, :pswitch_data_1

    .line 1441
    return v2

    .line 1439
    :pswitch_1
    return v3

    .line 1444
    :cond_3
    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_4

    .line 1445
    iget v1, v0, Lcom/android/server/am/UserState;->state:I

    packed-switch v1, :pswitch_data_2

    .line 1449
    return v2

    .line 1447
    :pswitch_2
    return v3

    .line 1454
    :cond_4
    return v3

    .line 1427
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 1436
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 1445
    :pswitch_data_2
    .packed-switch 0x3
        :pswitch_2
    .end packed-switch
.end method

.method isUserStoppingOrShuttingDownLocked(I)Z
    .locals 5
    .param p1, "userId"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1410
    invoke-virtual {p0, p1}, Lcom/android/server/am/UserController;->getStartedUserStateLocked(I)Lcom/android/server/am/UserState;

    move-result-object v0

    .line 1411
    .local v0, "state":Lcom/android/server/am/UserState;
    if-nez v0, :cond_0

    .line 1412
    return v2

    .line 1414
    :cond_0
    iget v3, v0, Lcom/android/server/am/UserState;->state:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1

    .line 1415
    iget v3, v0, Lcom/android/server/am/UserState;->state:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_2

    .line 1414
    :cond_1
    :goto_0
    return v1

    :cond_2
    move v1, v2

    .line 1415
    goto :goto_0
.end method

.method maybeUnlockUser(I)Z
    .locals 1
    .param p1, "userId"    # I

    .prologue
    const/4 v0, 0x0

    .line 982
    invoke-virtual {p0, p1, v0, v0, v0}, Lcom/android/server/am/UserController;->unlockUserCleared(I[B[BLandroid/os/IProgressListener;)Z

    move-result v0

    return v0
.end method

.method moveUserToForegroundLocked(Lcom/android/server/am/UserState;II)V
    .locals 3
    .param p1, "uss"    # Lcom/android/server/am/UserState;
    .param p2, "oldUserId"    # I
    .param p3, "newUserId"    # I

    .prologue
    .line 1176
    iget-object v1, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, p3, p1}, Lcom/android/server/am/ActivityStackSupervisor;->switchUserLocked(ILcom/android/server/am/UserState;)Z

    move-result v0

    .line 1177
    .local v0, "homeInFront":Z
    if-eqz v0, :cond_0

    .line 1178
    iget-object v1, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v2, "moveUserToForeground"

    invoke-virtual {v1, p3, v2}, Lcom/android/server/am/ActivityManagerService;->startHomeActivityLocked(ILjava/lang/String;)Z

    .line 1182
    :goto_0
    invoke-static {p3}, Lcom/android/server/am/EventLogTags;->writeAmSwitchUser(I)V

    .line 1183
    invoke-virtual {p0, p2, p3}, Lcom/android/server/am/UserController;->sendUserSwitchBroadcastsLocked(II)V

    .line 1175
    return-void

    .line 1180
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    goto :goto_0
.end method

.method onSystemReady()V
    .locals 0

    .prologue
    .line 1376
    invoke-direct {p0}, Lcom/android/server/am/UserController;->updateCurrentProfileIdsLocked()V

    .line 1375
    return-void
.end method

.method registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    .locals 3
    .param p1, "observer"    # Landroid/app/IUserSwitchObserver;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 1322
    const-string/jumbo v1, "Observer name cannot be null"

    invoke-static {p2, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1323
    iget-object v1, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService;->checkCallingPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 1325
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Permission Denial: registerUserSwitchObserver() from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1326
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 1325
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1327
    const-string/jumbo v2, ", uid="

    .line 1325
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1327
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1325
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1328
    const-string/jumbo v2, " requires "

    .line 1325
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1328
    const-string/jumbo v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 1325
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1329
    .local v0, "msg":Ljava/lang/String;
    sget-object v1, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1330
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1332
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1, p2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    .line 1321
    return-void
.end method

.method sendBootCompletedLocked(Landroid/content/IIntentReceiver;)V
    .locals 3
    .param p1, "resultTo"    # Landroid/content/IIntentReceiver;

    .prologue
    .line 1369
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1370
    iget-object v2, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/UserState;

    .line 1371
    .local v1, "uss":Lcom/android/server/am/UserState;
    invoke-direct {p0, v1, p1}, Lcom/android/server/am/UserController;->finishUserBoot(Lcom/android/server/am/UserState;Landroid/content/IIntentReceiver;)V

    .line 1369
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1368
    .end local v1    # "uss":Lcom/android/server/am/UserState;
    :cond_0
    return-void
.end method

.method sendContinueUserSwitchLocked(Lcom/android/server/am/UserState;II)V
    .locals 3
    .param p1, "uss"    # Lcom/android/server/am/UserState;
    .param p2, "oldUserId"    # I
    .param p3, "newUserId"    # I

    .prologue
    .line 1156
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/UserController;->mCurWaitingUserSwitchCallbacks:Landroid/util/ArraySet;

    .line 1157
    iget-object v0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1158
    iget-object v0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x23

    invoke-virtual {v1, v2, p2, p3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1155
    return-void
.end method

.method sendUserSwitchBroadcastsLocked(II)V
    .locals 41
    .param p1, "oldUserId"    # I
    .param p2, "newUserId"    # I

    .prologue
    .line 1187
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v38

    .line 1190
    .local v38, "ident":J
    if-ltz p1, :cond_0

    .line 1192
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v2

    const/4 v3, 0x0

    move/from16 v0, p1

    invoke-virtual {v2, v0, v3}, Lcom/android/server/pm/UserManagerService;->getProfiles(IZ)Ljava/util/List;

    move-result-object v40

    .line 1193
    .local v40, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface/range {v40 .. v40}, Ljava/util/List;->size()I

    move-result v36

    .line 1194
    .local v36, "count":I
    const/16 v37, 0x0

    .local v37, "i":I
    :goto_0
    move/from16 v0, v37

    move/from16 v1, v36

    if-ge v0, v1, :cond_0

    .line 1195
    move-object/from16 v0, v40

    move/from16 v1, v37

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    iget v0, v2, Landroid/content/pm/UserInfo;->id:I

    move/from16 v18, v0

    .line 1196
    .local v18, "profileUserId":I
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.USER_BACKGROUND"

    invoke-direct {v5, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1197
    .local v5, "intent":Landroid/content/Intent;
    const/high16 v2, 0x50000000

    invoke-virtual {v5, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1199
    const-string/jumbo v2, "android.intent.extra.user_handle"

    move/from16 v0, v18

    invoke-virtual {v5, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1200
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 1202
    sget v16, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 1200
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1201
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    .line 1202
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x3e8

    .line 1200
    invoke-virtual/range {v2 .. v18}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIII)I

    .line 1194
    add-int/lit8 v37, v37, 0x1

    goto :goto_0

    .line 1205
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v18    # "profileUserId":I
    .end local v36    # "count":I
    .end local v37    # "i":I
    .end local v40    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_0
    if-ltz p2, :cond_2

    .line 1207
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v2

    const/4 v3, 0x0

    move/from16 v0, p2

    invoke-virtual {v2, v0, v3}, Lcom/android/server/pm/UserManagerService;->getProfiles(IZ)Ljava/util/List;

    move-result-object v40

    .line 1208
    .restart local v40    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface/range {v40 .. v40}, Ljava/util/List;->size()I

    move-result v36

    .line 1209
    .restart local v36    # "count":I
    const/16 v37, 0x0

    .restart local v37    # "i":I
    :goto_1
    move/from16 v0, v37

    move/from16 v1, v36

    if-ge v0, v1, :cond_1

    .line 1210
    move-object/from16 v0, v40

    move/from16 v1, v37

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    iget v0, v2, Landroid/content/pm/UserInfo;->id:I

    move/from16 v18, v0

    .line 1211
    .restart local v18    # "profileUserId":I
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.USER_FOREGROUND"

    invoke-direct {v5, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1212
    .restart local v5    # "intent":Landroid/content/Intent;
    const/high16 v2, 0x50000000

    invoke-virtual {v5, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1214
    const-string/jumbo v2, "android.intent.extra.user_handle"

    move/from16 v0, v18

    invoke-virtual {v5, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1215
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 1217
    sget v16, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 1215
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1216
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    .line 1217
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x3e8

    .line 1215
    invoke-virtual/range {v2 .. v18}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIII)I

    .line 1209
    add-int/lit8 v37, v37, 0x1

    goto :goto_1

    .line 1219
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v18    # "profileUserId":I
    :cond_1
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.USER_SWITCHED"

    invoke-direct {v5, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1220
    .restart local v5    # "intent":Landroid/content/Intent;
    const/high16 v2, 0x50000000

    invoke-virtual {v5, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1222
    const-string/jumbo v2, "android.intent.extra.user_handle"

    move/from16 v0, p2

    invoke-virtual {v5, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v19, v0

    .line 1225
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v28, v0

    const-string/jumbo v2, "android.permission.MANAGE_USERS"

    const/4 v3, 0x0

    aput-object v2, v28, v3

    .line 1226
    sget v33, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 1223
    const/16 v20, 0x0

    const/16 v21, 0x0

    .line 1224
    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    .line 1226
    const/16 v29, -0x1

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v34, 0x3e8

    .line 1227
    const/16 v35, -0x1

    move-object/from16 v22, v5

    .line 1223
    invoke-virtual/range {v19 .. v35}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1230
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v36    # "count":I
    .end local v37    # "i":I
    .end local v40    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_2
    invoke-static/range {v38 .. v39}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1186
    return-void

    .line 1229
    :catchall_0
    move-exception v2

    .line 1230
    invoke-static/range {v38 .. v39}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1229
    throw v2
.end method

.method setFactoryMode(I)V
    .locals 0
    .param p1, "mFactoryMode"    # I

    .prologue
    .line 1497
    iput p1, p0, Lcom/android/server/am/UserController;->mFactoryTest:I

    .line 1496
    return-void
.end method

.method setTargetUserIdLocked(I)I
    .locals 0
    .param p1, "targetUserId"    # I

    .prologue
    .line 1492
    iput p1, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    return p1
.end method

.method shouldConfirmCredentials(I)Z
    .locals 4
    .param p1, "userId"    # I

    .prologue
    const/4 v1, 0x0

    .line 1559
    iget-object v2, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1560
    iget-object v3, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    if-nez v3, :cond_0

    monitor-exit v2

    .line 1559
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1561
    return v1

    :cond_0
    monitor-exit v2

    .line 1559
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1564
    iget-object v2, p0, Lcom/android/server/am/UserController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1565
    return v1

    .line 1559
    :catchall_0
    move-exception v1

    monitor-exit v2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 1567
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 1568
    const-string/jumbo v3, "keyguard"

    .line 1567
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 1569
    .local v0, "km":Landroid/app/KeyguardManager;
    invoke-virtual {v0, p1}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, p1}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result v1

    :cond_2
    return v1
.end method

.method showUserSwitchDialog(Landroid/util/Pair;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair",
            "<",
            "Landroid/content/pm/UserInfo;",
            "Landroid/content/pm/UserInfo;",
            ">;)V"
        }
    .end annotation

    .prologue

    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/UserController;->startFlymeUser(Landroid/util/Pair;)V

    return-void

    .local p1, "fromToUserPair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;>;"
    new-instance v0, Lcom/android/server/am/UserSwitchingDialog;

    iget-object v1, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/content/pm/UserInfo;

    iget-object v4, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/content/pm/UserInfo;

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/UserSwitchingDialog;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;Z)V

    .local v0, "d":Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method startProfilesLocked()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    invoke-direct {p0}, Lcom/android/server/am/UserController;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v6

    iget v7, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    invoke-virtual {v6, v7, v8}, Lcom/android/server/pm/UserManagerService;->getProfiles(IZ)Ljava/util/List;

    move-result-object v1

    .local v1, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    .local v2, "profilesToStart":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "user$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .local v4, "user":Landroid/content/pm/UserInfo;
    iget v6, v4, Landroid/content/pm/UserInfo;->flags:I

    and-int/lit8 v6, v6, 0x10

    const/16 v7, 0x10

    if-ne v6, v7, :cond_0

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    iget v7, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    if-eq v6, v7, :cond_0

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isQuietModeEnabled()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v4    # "user":Landroid/content/pm/UserInfo;
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "profilesToStartSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v3, :cond_2

    const/4 v6, 0x2

    if-ge v0, v6, :cond_2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    iget v6, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v6, v8}, Lcom/android/server/am/UserController;->startUser(IZ)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    if-ge v0, v3, :cond_3

    sget-object v6, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    const-string v7, "More profiles than MAX_RUNNING_USERS"

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method startUser(IZ)Z
    .locals 32
    .param p1, "userId"    # I
    .param p2, "foreground"    # Z

    .prologue
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v5, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityManagerService;->checkCallingPermission(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Permission Denial: switchUser() from pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " requires "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .local v24, "msg":Ljava/lang/String;
    sget-object v4, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/SecurityException;

    move-object/from16 v0, v24

    invoke-direct {v4, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .end local v24    # "msg":Ljava/lang/String;
    :cond_0
    sget-object v4, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Starting userid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " fg:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v22

    .local v22, "ident":J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v31, v0

    monitor-enter v31
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    move/from16 v26, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .local v26, "oldUserId":I
    move/from16 v0, v26

    move/from16 v1, p1

    if-ne v0, v1, :cond_1

    :try_start_2
    monitor-exit v31

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v4, 0x1

    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :cond_1
    :try_start_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const-string v5, "startUser"

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v4, v6, v8, v5, v9}, Lcom/android/server/am/ActivityStackSupervisor;->setLockTaskModeLocked(Lcom/android/server/am/TaskRecord;ILjava/lang/String;Z)V

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v28

    .local v28, "userInfo":Landroid/content/pm/UserInfo;
    if-nez v28, :cond_2

    sget-object v4, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No user info for user #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v31

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const/4 v4, 0x0

    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :cond_2
    if-eqz p2, :cond_3

    :try_start_5
    invoke-virtual/range {v28 .. v28}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v4, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot switch to User #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": not a full user"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    monitor-exit v31

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    const/4 v4, 0x0

    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :cond_3
    if-eqz p2, :cond_4

    :try_start_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const v5, #android:anim@screen_user_exit#t

    const v6, #android:anim@screen_user_enter#t

    invoke-virtual {v4, v5, v6}, Lcom/android/server/wm/WindowManagerService;->startFreezingScreen(II)V

    :cond_4
    const/16 v25, 0x0

    .local v25, "needStart":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_5

    new-instance v29, Lcom/android/server/am/UserState;

    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-direct {v0, v4}, Lcom/android/server/am/UserState;-><init>(Landroid/os/UserHandle;)V

    .local v29, "userState":Lcom/android/server/am/UserState;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    move/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->getUserManagerInternal()Landroid/os/UserManagerInternal;

    move-result-object v4

    move-object/from16 v0, v29

    iget v5, v0, Lcom/android/server/am/UserState;->state:I

    move/from16 v0, p1

    invoke-virtual {v4, v0, v5}, Landroid/os/UserManagerInternal;->setUserState(II)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->updateStartedUserArrayLocked()V

    const/16 v25, 0x1

    .end local v29    # "userState":Lcom/android/server/am/UserState;
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/android/server/am/UserState;

    .local v30, "uss":Lcom/android/server/am/UserState;
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    .local v27, "userIdInt":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_b

    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/UserController;->mCurrentUserId:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->updateUserConfigurationLocked()V

    const/16 v4, -0x2710

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/am/UserController;->mTargetUserId:I

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->updateCurrentProfileIdsLocked()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/UserController;->mCurrentProfileIds:[I

    move/from16 v0, p1

    invoke-virtual {v4, v0, v5}, Lcom/android/server/wm/WindowManagerService;->setCurrentUser(I[I)V

    goto :goto_flyme_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowManagerService;->lockNow(Landroid/os/Bundle;)V

    :goto_0
    :goto_flyme_0
    move-object/from16 v0, v30

    iget v4, v0, Lcom/android/server/am/UserState;->state:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_c

    move-object/from16 v0, v30

    iget v4, v0, Lcom/android/server/am/UserState;->lastState:I

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Lcom/android/server/am/UserState;->setState(I)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->getUserManagerInternal()Landroid/os/UserManagerInternal;

    move-result-object v4

    move-object/from16 v0, v30

    iget v5, v0, Lcom/android/server/am/UserState;->state:I

    move/from16 v0, p1

    invoke-virtual {v4, v0, v5}, Landroid/os/UserManagerInternal;->setUserState(II)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->updateStartedUserArrayLocked()V

    const/16 v25, 0x1

    :cond_6
    :goto_1
    move-object/from16 v0, v30

    iget v4, v0, Lcom/android/server/am/UserState;->state:I

    if-nez v4, :cond_7

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/server/pm/UserManagerService;->onBeforeStartUser(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x2a

    const/4 v8, 0x0

    move/from16 v0, p1

    invoke-virtual {v5, v6, v0, v8}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_7
    if-eqz p2, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x2b

    move/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v5, v6, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x22

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x24

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x22

    move/from16 v0, v26

    move/from16 v1, p1

    move-object/from16 v2, v30

    invoke-virtual {v5, v6, v0, v1, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x24

    move/from16 v0, v26

    move/from16 v1, p1

    move-object/from16 v2, v30

    invoke-virtual {v5, v6, v0, v1, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    const-wide/16 v8, 0xbb8

    invoke-virtual {v4, v5, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_8
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/am/UserController;->mFactoryTest:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_d

    :cond_9
    :goto_2
    if-eqz p2, :cond_e

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v26

    move/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/UserController;->moveUserToForegroundLocked(Lcom/android/server/am/UserState;II)V

    :goto_3
    if-eqz v25, :cond_a

    new-instance v7, Landroid/content/Intent;

    const-string v4, "android.intent.action.USER_STARTING"

    invoke-direct {v7, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v7, "intent":Landroid/content/Intent;
    const/high16 v4, 0x40000000    # 2.0f

    invoke-virtual {v7, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v4, "android.intent.extra.user_handle"

    move/from16 v0, p1

    invoke-virtual {v7, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    new-instance v9, Lcom/android/server/am/UserController$6;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/android/server/am/UserController$6;-><init>(Lcom/android/server/am/UserController;)V

    const/4 v5, 0x1

    new-array v13, v5, [Ljava/lang/String;

    const-string v5, "android.permission.INTERACT_ACROSS_USERS"

    const/4 v6, 0x0

    aput-object v5, v13, v6

    sget v18, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, -0x1

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v19, 0x3e8

    const/16 v20, -0x1

    invoke-virtual/range {v4 .. v20}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIII)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .end local v7    # "intent":Landroid/content/Intent;
    :cond_a
    :try_start_8
    monitor-exit v31

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v4, 0x1

    return v4

    :cond_b
    :try_start_9
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    .local v21, "currentUserIdInt":Ljava/lang/Integer;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->updateCurrentProfileIdsLocked()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/UserController;->mCurrentProfileIds:[I

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowManagerService;->setCurrentProfileIds([I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_0

    .end local v21    # "currentUserIdInt":Ljava/lang/Integer;
    .end local v25    # "needStart":Z
    .end local v26    # "oldUserId":I
    .end local v27    # "userIdInt":Ljava/lang/Integer;
    .end local v28    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v30    # "uss":Lcom/android/server/am/UserState;
    :catchall_0
    move-exception v4

    :try_start_a
    monitor-exit v31

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :catchall_1
    move-exception v4

    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .restart local v25    # "needStart":Z
    .restart local v26    # "oldUserId":I
    .restart local v27    # "userIdInt":Ljava/lang/Integer;
    .restart local v28    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v30    # "uss":Lcom/android/server/am/UserState;
    :cond_c
    :try_start_b
    move-object/from16 v0, v30

    iget v4, v0, Lcom/android/server/am/UserState;->state:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_6

    const/4 v4, 0x0

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Lcom/android/server/am/UserState;->setState(I)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->getUserManagerInternal()Landroid/os/UserManagerInternal;

    move-result-object v4

    move-object/from16 v0, v30

    iget v5, v0, Lcom/android/server/am/UserState;->state:I

    move/from16 v0, p1

    invoke-virtual {v4, v0, v5}, Landroid/os/UserManagerInternal;->setUserState(II)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->updateStartedUserArrayLocked()V

    const/16 v25, 0x1

    goto/16 :goto_1

    :cond_d
    if-eqz v25, :cond_9

    new-instance v7, Landroid/content/Intent;

    const-string v4, "android.intent.action.USER_STARTED"

    invoke-direct {v7, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v7    # "intent":Landroid/content/Intent;
    const/high16 v4, 0x50000000

    invoke-virtual {v7, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v4, "android.intent.extra.user_handle"

    move/from16 v0, p1

    invoke-virtual {v7, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    sget v18, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x3e8

    move/from16 v20, p1

    invoke-virtual/range {v4 .. v20}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIII)I

    goto/16 :goto_2

    .end local v7    # "intent":Landroid/content/Intent;
    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    move-object/from16 v0, v30

    invoke-direct {v4, v0}, Lcom/android/server/am/UserController;->finishUserBoot(Lcom/android/server/am/UserState;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_3
.end method

.method startUserInForeground(ILandroid/app/Dialog;)Z
    .locals 2
    .param p1, "userId"    # I
    .param p2, "dlg"    # Landroid/app/Dialog;

    .prologue
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/am/UserController;->startUser(IZ)Z

    move-result v0

    .local v0, "result":Z
    invoke-virtual {p2}, Landroid/app/Dialog;->dismiss()V

    return v0
.end method

.method stopRunningUsersLocked(I)V
    .locals 8
    .param p1, "maxRunningUsers"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "num":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-le v1, p1, :cond_7

    iget-object v4, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_7

    iget-object v4, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .local v2, "oldUserId":Ljava/lang/Integer;
    iget-object v4, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/UserState;

    .local v3, "oldUss":Lcom/android/server/am/UserState;
    if-nez v3, :cond_0

    iget-object v4, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    iget v4, v3, Lcom/android/server/am/UserState;->state:I

    const/4 v5, 0x4

    if-eq v4, v5, :cond_1

    iget v4, v3, Lcom/android/server/am/UserState;->state:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_2

    :cond_1
    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget v5, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    if-ne v4, v5, :cond_5

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Landroid/content/pm/UserInfo;->isSystemOnly(I)Z

    move-result v4

    if-eqz v4, :cond_4

    add-int/lit8 v1, v1, -0x1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v4, v6, v7}, Lcom/android/server/am/UserController;->stopUsersLocked(IZLandroid/app/IStopUserCallback;)I

    move-result v4

    if-eqz v4, :cond_6

    add-int/lit8 v1, v1, -0x1

    :cond_6
    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v2    # "oldUserId":Ljava/lang/Integer;
    .end local v3    # "oldUss":Lcom/android/server/am/UserState;
    :cond_7
    return-void
.end method

.method stopUser(IZLandroid/app/IStopUserCallback;)I
    .locals 4
    .param p1, "userId"    # I
    .param p2, "force"    # Z
    .param p3, "callback"    # Landroid/app/IStopUserCallback;

    .prologue
    iget-object v1, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService;->checkCallingPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission Denial: switchUser() from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " requires "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "msg":Ljava/lang/String;
    sget-object v1, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    if-ltz p1, :cond_1

    if-nez p1, :cond_2

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t stop system user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget-object v1, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v2, "no_debugging_features"

    invoke-virtual {v1, v2, p1}, Lcom/android/server/am/ActivityManagerService;->enforceShellRestriction(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/UserController;->stopUsersLocked(IZLandroid/app/IStopUserCallback;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method timeoutUserSwitch(Lcom/android/server/am/UserState;II)V
    .locals 4
    .param p1, "uss"    # Lcom/android/server/am/UserState;
    .param p2, "oldUserId"    # I
    .param p3, "newUserId"    # I

    .prologue
    iget-object v1, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    sget-object v0, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User switch timeout: from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Observers that didn\'t send results: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/UserController;->mCurWaitingUserSwitchCallbacks:Landroid/util/ArraySet;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/UserController;->sendContinueUserSwitchLocked(Lcom/android/server/am/UserState;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method unlockUser(I[B[BLandroid/os/IProgressListener;)Z
    .locals 5
    .param p1, "userId"    # I
    .param p2, "token"    # [B
    .param p3, "secret"    # [B
    .param p4, "listener"    # Landroid/os/IProgressListener;

    .prologue
    iget-object v3, p0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v4, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityManagerService;->checkCallingPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission Denial: unlockUser() from pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " requires "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .local v2, "msg":Ljava/lang/String;
    sget-object v3, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/SecurityException;

    invoke-direct {v3, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .end local v2    # "msg":Ljava/lang/String;
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, "binderToken":J
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/am/UserController;->unlockUserCleared(I[B[BLandroid/os/IProgressListener;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method unlockUserCleared(I[B[BLandroid/os/IProgressListener;)Z
    .locals 16
    .param p1, "userId"    # I
    .param p2, "token"    # [B
    .param p3, "secret"    # [B
    .param p4, "listener"    # Landroid/os/IProgressListener;

    .prologue
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v13

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    invoke-static/range {p1 .. p1}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z

    move-result v12

    if-nez v12, :cond_0

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v10

    .local v10, "userInfo":Landroid/content/pm/UserInfo;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->getMountService()Landroid/os/storage/IMountService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .local v6, "mountService":Landroid/os/storage/IMountService;
    :try_start_1
    iget v12, v10, Landroid/content/pm/UserInfo;->serialNumber:I

    move/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-interface {v6, v0, v12, v1, v2}, Landroid/os/storage/IMountService;->unlockUserKey(II[B[B)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v6    # "mountService":Landroid/os/storage/IMountService;
    .end local v10    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_0
    :goto_0
    :try_start_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/UserState;

    .local v11, "uss":Lcom/android/server/am/UserState;
    if-nez v11, :cond_1

    move/from16 v0, p1

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lcom/android/server/am/UserController;->notifyFinished(ILandroid/os/IProgressListener;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v12, 0x0

    monitor-exit v13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v12

    .end local v11    # "uss":Lcom/android/server/am/UserState;
    .restart local v6    # "mountService":Landroid/os/storage/IMountService;
    .restart local v10    # "userInfo":Landroid/content/pm/UserInfo;
    :catch_0
    move-exception v4

    .local v4, "e":Ljava/lang/Exception;
    :try_start_3
    sget-object v12, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Failed to unlock: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .end local v4    # "e":Ljava/lang/Exception;
    .end local v6    # "mountService":Landroid/os/storage/IMountService;
    .end local v10    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v12

    monitor-exit v13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v12

    .restart local v11    # "uss":Lcom/android/server/am/UserState;
    :cond_1
    :try_start_4
    iget-object v12, v11, Lcom/android/server/am/UserState;->mUnlockProgress:Lcom/android/internal/util/ProgressReporter;

    move-object/from16 v0, p4

    invoke-virtual {v12, v0}, Lcom/android/internal/util/ProgressReporter;->addListener(Landroid/os/IProgressListener;)V

    if-eqz p2, :cond_3

    const/4 v12, 0x1

    :goto_1
    iput-boolean v12, v11, Lcom/android/server/am/UserState;->tokenProvided:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/server/am/UserController;->finishUserUnlocking(Lcom/android/server/am/UserState;)V

    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .local v3, "childProfilesToUnlock":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/UserController;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v13

    :try_start_5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v12

    if-ge v5, v12, :cond_4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v12, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    .local v9, "testUserId":I
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v12

    invoke-virtual {v12, v9}, Lcom/android/server/pm/UserManagerService;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v7

    .local v7, "parent":Landroid/content/pm/UserInfo;
    if-eqz v7, :cond_2

    iget v12, v7, Landroid/content/pm/UserInfo;->id:I

    move/from16 v0, p1

    if-ne v12, v0, :cond_2

    move/from16 v0, p1

    if-eq v9, v0, :cond_2

    sget-object v12, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "User "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " (parent "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "): attempting unlock because parent was just unlocked"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v3, v12}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .end local v3    # "childProfilesToUnlock":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .end local v5    # "i":I
    .end local v7    # "parent":Landroid/content/pm/UserInfo;
    .end local v9    # "testUserId":I
    :cond_3
    const/4 v12, 0x0

    goto :goto_1

    .restart local v3    # "childProfilesToUnlock":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .restart local v5    # "i":I
    :cond_4
    monitor-exit v13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v8

    .local v8, "size":I
    const/4 v5, 0x0

    :goto_3
    if-ge v5, v8, :cond_5

    invoke-virtual {v3, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/server/am/UserController;->maybeUnlockUser(I)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .end local v5    # "i":I
    .end local v8    # "size":I
    :catchall_1
    move-exception v12

    monitor-exit v13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v12

    .restart local v5    # "i":I
    .restart local v8    # "size":I
    :cond_5
    const/4 v12, 0x1

    return v12
.end method

.method unregisterUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/app/IUserSwitchObserver;

    .prologue
    iget-object v0, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    return-void
.end method

.method unsafeConvertIncomingUserLocked(I)I
    .locals 1
    .param p1, "userId"    # I

    .prologue
    const/4 v0, -0x2

    if-eq p1, v0, :cond_0

    const/4 v0, -0x3

    if-ne p1, v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getCurrentUserIdLocked()I

    move-result p1

    .end local p1    # "userId":I
    :cond_1
    return p1
.end method

.method private startFlymeUser(Landroid/util/Pair;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair",
            "<",
            "Landroid/content/pm/UserInfo;",
            "Landroid/content/pm/UserInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1048
    .local p1, "fromToUserPair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;>;"
    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/content/pm/UserInfo;

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/UserController;->startUser(IZ)Z

    return-void
.end method
