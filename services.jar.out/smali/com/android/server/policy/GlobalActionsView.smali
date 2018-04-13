.class public Lcom/android/server/policy/GlobalActionsView;
.super Landroid/widget/RelativeLayout;
.source "GlobalActionsView.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "GlobalActionsView"


# instance fields
.field private mCancelOnUp:Z

.field private mContext:Landroid/content/Context;

.field private mEnableAccessibilityController:Lcom/android/server/policy/EnableAccessibilityController;

.field private mIntercepted:Z

.field private mView:Landroid/view/View;

.field private final mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

.field private final mWindowTouchSlop:I


# direct methods
.method static synthetic -get0(Lcom/android/server/policy/GlobalActionsView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/GlobalActionsView;->mView:Landroid/view/View;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManagerFuncs"    # Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 36
    const-string/jumbo v0, "GlobalActionsView"

    const-string/jumbo v1, "FloatWindowView----------FloatWindowView(Context context)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    iput-object p1, p0, Lcom/android/server/policy/GlobalActionsView;->mContext:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Lcom/android/server/policy/GlobalActionsView;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .line 39
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x1090066

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/GlobalActionsView;->mView:Landroid/view/View;

    .line 41
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledWindowTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/GlobalActionsView;->mWindowTouchSlop:I

    .line 42
    iget-object v0, p0, Lcom/android/server/policy/GlobalActionsView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/policy/EnableAccessibilityController;->canEnableAccessibilityViaGesture(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    new-instance v0, Lcom/android/server/policy/EnableAccessibilityController;

    iget-object v1, p0, Lcom/android/server/policy/GlobalActionsView;->mContext:Landroid/content/Context;

    .line 44
    new-instance v2, Lcom/android/server/policy/GlobalActionsView$1;

    invoke-direct {v2, p0}, Lcom/android/server/policy/GlobalActionsView$1;-><init>(Lcom/android/server/policy/GlobalActionsView;)V

    .line 43
    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/EnableAccessibilityController;-><init>(Landroid/content/Context;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/server/policy/GlobalActionsView;->mEnableAccessibilityController:Lcom/android/server/policy/EnableAccessibilityController;

    .line 56
    :goto_0
    iget-object v0, p0, Lcom/android/server/policy/GlobalActionsView;->mView:Landroid/view/View;

    new-instance v1, Lcom/android/server/policy/GlobalActionsView$2;

    invoke-direct {v1, p0}, Lcom/android/server/policy/GlobalActionsView$2;-><init>(Lcom/android/server/policy/GlobalActionsView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 34
    return-void

    .line 54
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/GlobalActionsView;->mEnableAccessibilityController:Lcom/android/server/policy/EnableAccessibilityController;

    goto :goto_0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 73
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 74
    const-string/jumbo v0, "GlobalActionsView"

    const-string/jumbo v1, "dispatchKeyEvent-back!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v0, p0, Lcom/android/server/policy/GlobalActionsView;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/android/server/policy/GlobalActionsView;->mView:Landroid/view/View;

    const/16 v1, -0x1207

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 78
    :cond_0
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->removeGlobalView()V

    .line 81
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 87
    iget-object v2, p0, Lcom/android/server/policy/GlobalActionsView;->mEnableAccessibilityController:Lcom/android/server/policy/EnableAccessibilityController;

    if-eqz v2, :cond_2

    .line 88
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    .line 101
    .local v8, "action":I
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/policy/GlobalActionsView;->mIntercepted:Z

    if-nez v2, :cond_3

    .line 102
    iget-object v2, p0, Lcom/android/server/policy/GlobalActionsView;->mEnableAccessibilityController:Lcom/android/server/policy/EnableAccessibilityController;

    invoke-virtual {v2, p1}, Lcom/android/server/policy/EnableAccessibilityController;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/policy/GlobalActionsView;->mIntercepted:Z

    .line 103
    iget-boolean v2, p0, Lcom/android/server/policy/GlobalActionsView;->mIntercepted:Z

    if-eqz v2, :cond_0

    .line 104
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 106
    .local v0, "now":J
    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-wide v2, v0

    .line 105
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    .line 107
    const/16 v2, 0x1002

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setSource(I)V

    .line 108
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/policy/GlobalActionsView;->mCancelOnUp:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    .end local v0    # "now":J
    :cond_0
    if-ne v8, v10, :cond_2

    .line 115
    iget-boolean v2, p0, Lcom/android/server/policy/GlobalActionsView;->mCancelOnUp:Z

    if-eqz v2, :cond_1

    .line 118
    :cond_1
    iput-boolean v9, p0, Lcom/android/server/policy/GlobalActionsView;->mCancelOnUp:Z

    .line 119
    iput-boolean v9, p0, Lcom/android/server/policy/GlobalActionsView;->mIntercepted:Z

    .line 123
    .end local v8    # "action":I
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    return v2

    .line 111
    .restart local v8    # "action":I
    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/android/server/policy/GlobalActionsView;->mEnableAccessibilityController:Lcom/android/server/policy/EnableAccessibilityController;

    invoke-virtual {v2, p1}, Lcom/android/server/policy/EnableAccessibilityController;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .line 114
    if-ne v8, v10, :cond_5

    .line 115
    iget-boolean v3, p0, Lcom/android/server/policy/GlobalActionsView;->mCancelOnUp:Z

    if-eqz v3, :cond_4

    .line 118
    :cond_4
    iput-boolean v9, p0, Lcom/android/server/policy/GlobalActionsView;->mCancelOnUp:Z

    .line 119
    iput-boolean v9, p0, Lcom/android/server/policy/GlobalActionsView;->mIntercepted:Z

    .line 111
    :cond_5
    return v2

    .line 113
    :catchall_0
    move-exception v2

    .line 114
    if-ne v8, v10, :cond_7

    .line 115
    iget-boolean v3, p0, Lcom/android/server/policy/GlobalActionsView;->mCancelOnUp:Z

    if-eqz v3, :cond_6

    .line 118
    :cond_6
    iput-boolean v9, p0, Lcom/android/server/policy/GlobalActionsView;->mCancelOnUp:Z

    .line 119
    iput-boolean v9, p0, Lcom/android/server/policy/GlobalActionsView;->mIntercepted:Z

    .line 113
    :cond_7
    throw v2
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/server/policy/GlobalActionsView;->mView:Landroid/view/View;

    return-object v0
.end method
